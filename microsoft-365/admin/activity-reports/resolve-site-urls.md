---
title: "Use PowerShell to resolve site URLs in reports"
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

# Use PowerShell to resolve site URLs in reports

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

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2067268" target="_blank">Microsoft Entra admin center</a> > **Applications** > **App registrations**.

2. On the App registrations page, select **New registrations**.

3. Pick a name for this application, and use the default configuration to register the app.

Remember, the **client id** and **tenant id** are displayed in the app's **Essentials** section.

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

Before downloading the reports, make sure to turn off the privacy setting for user details. For details, see [Microsoft 365 admin center activity reports](activity-reports.md).

For SharePoint site usage, go to the <a href="https://admin.cloud.microsoft/?#/reportsUsage/SharePointSiteUsageV1" target="_blank">SharePoint site usage</a> page in the Microsoft 365 admin center.

For OneDrive site usage, go to the <a href="https://admin.cloud.microsoft/?#/reportsUsage/OneDriveSiteUsage" target="_blank">OneDrive site usage</a> page in the Microsoft 365 admin center.

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
    param(
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
 ```

### Prepare the cache and client secret

  ```PowerShell
if ($reportPaths.Count -eq 0) {
    Write-Host "Please provide at least one report path" -ForegroundColor Red
    exit
}
$cache = New-Object 'System.Collections.Generic.Dictionary[[String],[String]]'
$clientSecret = Read-Host "Please enter client secret" -AsSecureString
 ```

### Fetch site info from Graph API

  ```PowerShell
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
 ```

### Update the report using cached site info

  ```PowerShell
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
 ```

### Finalize

```PowerShell
Write-Host
Read-Host "Press any key to exit..."
   ```

## Additional option for small-scale scenarios

For smaller scale scenarios, admins with appropriate access can use the SharePoint REST API or Microsoft Graph API to retrieve information about site IDs referenced in affected reports. The SharePoint REST API can be used to retrieve information about a specific site ID.

For example, the following SharePoint REST API request retrieves information about the Contoso site with site ID 15d43f38-ce4e-4f6b-bac6-766ece1fbcb4:

`https://contoso.sharepoint.com/_api/v2.1/sites/contoso.sharepoint.com,15d43f38-ce4e-4f6b-bac6-766ece1fbcb4`

The Microsoft Graph API can be used to list SharePoint sites or retrieve information about a specific site ID. For details, see [site resource type](/graph/api/resources/site).

For example:

- `https://graph.microsoft.com/v1.0/sites?search=*&$select=sharepointIds`
- `https://graph.microsoft.com/v1.0/sites/{siteId}`

The Microsoft Graph API can also be used to retrieve information about a given user's OneDrive for Business site. For details, see [drive resource type](/graph/api/resources/drive).

For example:

- `https://graph.microsoft.com/v1.0/users/{userId}/drives?$select=sharepointIds`
