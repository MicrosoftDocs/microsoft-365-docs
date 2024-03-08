---
title: "Use Powershell to resolve site URLs in reports"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 03/08/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn about using PowerShell to resolve site URLs in reports for the Microsoft 365 admin center."
---

# Use Powershell to resolve site URLs in reports

This article covers how to use PowerShell to display site URLs in reports.

## How it works

The Graph API provides an API that allows you to list all the sites within an organization. To use this API, you need to have an application with the Sites.Read.All permission.

The script invokes this API endpoint to get the mapping between site IDs and site URLs, and then adds the site URLs into the exported CSV reports.

### Why not use delegated permissions?

- The /sites/getAllSites API only accepts application permissions.

- The /sites?search=\* API accepts delegated permissions, but it doesn’t return all the sites, even using an admin account.

## Steps

To display site URLs using PowerShell, follow these steps.

### Create an Entra ID Application

1. Go to the [Microsoft Entra admin center](https://entra.microsoft.com/) **>** Applications **>** App registrations.

2. On the App registrations page, select **New registrations**.

3. Pick a name for this application, and use the default configuration to register the app.

Remember, the **client id** and **tenant id** are displayed in the app’s **Essentials** section.

:::image type="content" source="../../media/client-tenant-id-field.png" alt-text="Screenshot showing the fields for client and field ID highlighted.":::

### Add Graph API permission to the app

In the new application’s **Request API permissions** page, add the Sites.Read.All permission.

:::image type="content" source="../../media/api-sites-read-all-permission.png" alt-text="Screenshot showing the Sites.Read.All permission selected." lightbox="../../media/api-sites-read-all-permission.png":::

Then, grant admin consent.

:::image type="content" source="../../media/grant-admin-consent.png" alt-text="Screenshot showing the grant admin consent setting selected." lightbox="../../media/grant-admin-consent.png":::

### Create a client secret

In the new application’s **Certificates & secrets** section, create a new client secret. Then, store the **secret’s value** in a safe and secure place.

:::image type="content" source="../../media/new-client-secret.png" alt-text="Screenshot showing the steps to create a new client secret." lightbox="../../media/new-client-secret.png":::

### Download the reports in Microsoft 365 admin center

Download the site details report on the two report pages and put the CSV report files under a local folder.

Before downloading the reports, turn off the privacy setting. For details, see [Microsoft 365 admin center activity reports - Microsoft 365 admin \| Microsoft Learn](activity-reports.md)

For SharePoint site usage, go to the [SharePoint site usage page in the Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home#/reportsUsage/SharePointSiteUsageV1).

For OneDrive site usage, go to the [OneDrive site usage page in the Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/Home#/reportsUsage/OneDriveSiteUsage).

### Update the reports with site URLs

To update the reports with site URLs, execute the PowerShell script.

   ```PowerShell
   .\Update-Report.ps1 -**tenantId** {tenant id above} -**clientId** {client id above} -**reportPaths** @("file path for report \#1", "file path for report \#2")
   ```

To view the full Update-Report PowerShell script, see [Update-Report PowerShell](#update-report-powershell-script).

The script will ask you to enter the **secret’s value** created above.

:::image type="content" source="../../media/enter-client-secret-ps.png" alt-text="Screenshot showing the PowerShell command for client secret." lightbox="../../media/enter-client-secret-ps.png":::

After executing the script, new versions of the reports are created with site URLs added.

:::image type="content" source="../../media/site-url-in-report.png" alt-text="Screenshot showing the list of site URLs included in usage report." lightbox="../../media/site-url-in-report.png":::

### Clean up the environment

To clean up the environment, go back to the application's **Certificates & secrets** page and delete the secret that was created earlier.

>[!TIP]
> Use SSD (Solid State Drive) to improve the IO performance.
> Execute the script on a machine with enough free/unused memory. The cache takes roughly 2GB for the 15 million sites.

## Update-Report PowerShell script

The following is the PowerShell script for Update-Report.

   ```PowerShell
       [Parameter(Mandatory=$true)]
    [string]$tenantId,
    [Parameter(Mandatory=$true)]
    [string]$clientId,
    [Parameter(Mandatory=$false)]
    [string[]]$reportPaths
)

function Get-AccessToken {
    param(
        [Parameter(Mandatory=$true)]
        [string]$tenantId,
        [Parameter(Mandatory=$true)]
        [string]$clientId,
        [Parameter(Mandatory=$true)]
        [System.Security.SecureString]$clientSecret,
        [Parameter(Mandatory=$false)]
        [string]$scope = "https://graph.microsoft.com/.default"
    )

    $tokenEndpoint = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"
    $tokenRequest = @{
        client_id     = $clientId
        scope         = $scope
        client_secret = ConvertFrom-SecureString $clientSecret -AsPlainText
        grant_type    = "client_credentials"
    }

    $tokenResponse = Invoke-RestMethod -Uri $tokenEndpoint -Method Post -Body $tokenRequest
    return $tokenResponse.access_token
}

# Prepare the cache and client secret
if ($reportPaths.Count -eq 0) {
    Write-Host "Please provide at least one report path" -ForegroundColor Red
    exit
}
$cache = New-Object 'System.Collections.Generic.Dictionary[[String],[String]]'
$clientSecret = Read-Host "Please enter client secret" -AsSecureString

# Fetch site info from Graph API
Write-Host
Write-Host "Getting information for all the sites..." -ForegroundColor Cyan

$uri = "https://graph.microsoft.com/v1.0/sites/getAllSites?`$select=sharepointIds&`$top=10000"
while ($uri -ne $null) {

    Write-Host $uri

    $isSuccess = $false
    while (-not $isSuccess) {
        try {
            $accessToken = Get-AccessToken -tenantId $tenantId -clientId $clientId -clientSecret $clientSecret
            $restParams = @{Headers=@{Authorization="Bearer $accessToken"}}
        }
        catch {
            Write-Host "Retrying...  $($_.Exception.Message)" -ForegroundColor Yellow
            continue
        }
        try {
            $sites = Invoke-RestMethod $uri @restParams
            $isSuccess = $true
        }
        catch {
            if ($_.Exception.Response -and $_.Exception.Response.Headers['Retry-After']) {
                $retryAfter = [int]$_.Exception.Response.Headers['Retry-After']
                Write-Output "Waiting for $retryAfter seconds before retrying..." -ForegroundColor Yellow
                Start-Sleep -Seconds $retryAfter
            }
            Write-Host "Retrying...  $($_.Exception.Message)" -ForegroundColor Yellow
            continue
        }
    }

    $sites.value | ForEach-Object {
        $cache[$_.sharepointIds.siteId] = $_.sharepointIds.siteUrl
    }

    $uri = $sites."@odata.nextLink"

    Write-Host "Total sites received: $($cache.Count)"
}

# Update the report using cached site info
foreach ($reportPath in $reportPaths) {
    Write-Host
    Write-Host "Updating report $($reportPath) ..." -ForegroundColor Cyan

    $outputPath = "$($reportPath)_$([Math]::Floor((Get-Date -UFormat %s))).csv"
    $writer = [System.IO.StreamWriter]::new($outputPath)
    $reader = [System.IO.StreamReader]::new($reportPath)
    $rowCount = 0

    while ($null -ne ($line = $reader.ReadLine())) {
        $rowCount++

        $columns = $line.Split(",")
        $siteId = $columns[1]

        $_guid = New-Object System.Guid
        if ([System.Guid]::TryParse($siteId, [ref]$_guid)) {
            $siteUrl = $cache[$siteId]
            $columns[2] = $siteUrl
            $line = $columns -join ","
        }
        
        $writer.WriteLine($line)

        if ($rowCount%1000 -eq 0) {
            Write-Host "Processed $($rowCount) rows"
        }
    }
    $writer.Close()
    $reader.Close()

    Write-Host "Processed $($rowCount) rows"
    Write-Host "Report updated: $($outputPath)" -ForegroundColor Cyan
}

# Finalize
Write-Host
Read-Host "Press any key to exit..."

   ```