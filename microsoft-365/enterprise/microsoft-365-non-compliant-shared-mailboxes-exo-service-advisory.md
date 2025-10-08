---
title: "Service advisory for non-compliant shared mailboxes in Exchange Online"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 02/20/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Learn about service advisories for non-compliant shared mailboxes in Exchange Online."
---

# Service advisory for non-compliant shared mailboxes in Exchange Online

An Exchange Online service advisory informs you about shared mailboxes which are out of compliance. These service advisories provide visibility to the number of shared mailboxes in your organization that might require admin intervention. 

These service advisories are displayed in the Microsoft 365 admin center. To view these service advisories, you can go to **Health > Service health > Overview** and then look for **Shared mailbox(es) have exceeded the 50 GB storage limit in your tenant**, or you can go to **Health > Service health > Exchange Online** and select the **Active issues** tab. Here's an example of a non-compliant shared mailbox service advisory under Service Health.

:::image type="content" source="../media/m365-non-compliant-shared-mailboxes-exo-service-advisory-1.png" alt-text="Service health - issues for your organization to act on":::

## What does this service advisory indicate?

The service advisories for non-compliant shared mailboxes inform admins about their tenants having shared mailboxes that exceed 50 GB storage without having the required licenses. These advisories provide awareness so that you can take these limits into consideration when managing and troubleshooting shared mailboxes.

Here’s an example of the advisory:

:::image type="content" source="../media/m365-non-compliant-shared-mailboxes-exo-service-advisory-2.png" alt-text="Example of an advisory for non-compliant mailboxes in Exchange Online":::

## How often will I see these service advisories?

You can expect to see this type of advisory until the time when shared mailbox storage and licensing aren't within the defined limit.

## More information

Identifying non-compliant shared mailboxes is a two-step process:

1.	Identify shared mailboxes with > 50 GB storage.
2.	Check licensing for those shared mailboxes.

## Identifying non-compliant shared mailboxes in Exchange Online via Exchange Admin Center

To ensure your shared mailboxes comply with Exchange storage limits, follow these steps to identify those exceeding 50 GB and to check their licensing status.

### Retrieve shared mailboxes exceeding 50 GB

1.	Access the Microsoft 365 admin center portal.
2.	Generate Usage Reports:
    1. Go to **Reports -> Usage -> Exchange**.
    1. Select **Mailbox Usage**.
3.	Export Mailbox Data:
    1. Ensure the **Recipient type** column is checked.
    1. Select **Export** to download the report.
4.	Filter Shared Mailboxes:
    1. Open the downloaded CSV file.
    1. Filter the **Recipient type** column to show only "**Shared**" mailboxes.
5.	Convert Storage Data:
    1. The **Storage Used (Byte)** column displays data in "Bytes". Convert this to Gigabytes (GB) by dividing the values by 1,073,741,824 (1024^3).
6.	Identify mailboxes with Storage > 50 GB:
    1. Filter the converted storage data to identify mailboxes with sizes greater than 50 GB.

### Check licensing for shared mailboxes exceeding 50 GB

1.	Access active users:
    1. Go to **Home -> Active Users**.
2.	Locate mailboxes with storage > 50 GB:
    1. Select the mailboxes identified in the earlier step that have more than 50 GB of storage.
3.	Verify licensing:
    1. Go to **License and Apps** for the selected user.
    1. If the mailbox is assigned Exchange Online (Plan 1), it isn't in compliance. You need to either assign Exchange Online (Plan 2) or reduce the storage to less than 50 GB.

## Identifying non-compliant shared mailboxes in Exchange Online through PowerShell

You can use PowerShell to identify non-compliant shared mailboxes. Save the following script to your local hard drive and run it in PowerShell:

```powershell
<# GatherSharedMailboxLicenseCompliance.ps1

Parameters:

- LoginUserPrincipalName (Required): The UPN to be used to connect to Microsoft Online
- OutputFile (Optional): Full path to the CSV output of the shared mailbox license compliance report

#>

param(
    [Parameter(Mandatory)]
    [string]$LoginUserPrincipalName,
    [Parameter()]
    [string]$OutputFile = ".\UnlicensedSharedMailboxes.csv"
)

$tempProcessFile = ".\MailboxUsageBetaReport.csv"

# Verify output file path
Write-Host "Verifying path of $($OutputFile)"
$outputPath = Split-Path -Path $OutputFile -Parent
$isValidPath = Test-Path $outputPath

if (!$isValidPath)
{
    Write-Error "Please specify a valid output path and file name ($($OutputFile))"
}

# Attempt to import Microsoft Graph Modules
Write-Host "Attempting to import Microsoft.Graph.Authentication"
Import-Module Microsoft.Graph.Authentication
$GraphAuthModule = Get-Module Microsoft.Graph.Authentication

if (!$GraphAuthModule)
{
    Write-Error "Please install the Microsoft Graph PowerShell module."
    return
}

Write-Host "Attempting to import Microsoft.Graph.Users"
Import-Module Microsoft.Graph.Users
$GraphUserModule = Get-Module Microsoft.Graph.Users

if (!$GraphUserModule)
{
    Write-Error "Please install the Microsoft Graph PowerShell module."
    return
}

Write-Host "Checking for necessary command from Microsoft.Graph.Beta"
$GraphBetaCmdlet = Get-Command Get-MgBetaReportMailboxUsageDetail

if (!$GraphBetaCmdlet)
{
    Write-Error "Please install the Microsoft Graph Beta PowerShell module."
    return
}

# Connect to Exchange Online
Write-Host "Connecting to Microsoft Online using $($LoginUserPrincipalName)"
Connect-ExchangeOnline -UserPrincipalName $LoginUserPrincipalName

# Connect to Microsoft Graph and Generate Usage Report
Write-Host "Attempting to connect to Microsoft Graph with particular read scopes"
Connect-MgGraph -Scopes "User.Read.All", "Organization.Read.All", "Reports.Read.All"

Write-Host "Fetching mailbox usage detail report via Graph beta endpoint"
Get-MgBetaReportMailboxUsageDetail -Period D7 -OutFile $tempProcessFile

# Filter the Report to get only shared recipient types and records with "Storage Used (Byte)" greater than 50 GB
Write-Host "Processing CSV export to categorize mailboxes that are over 50GB"
$report = Import-Csv -Path $tempProcessFile
$SharedMailboxUsage = $report | Where-Object {($_.'Recipient Type' -eq "Shared") -and ([int64]$_.'Storage Used (Byte)' -gt 50Gb) }

# Check Licensing for Shared Mailboxes exceeding 50 GB
Write-Host "Categorizing mailboxes that may be out of license compliance"
$outFile = $OutputFile
$output = @()

foreach ($mailbox in $SharedMailboxUsage) {
    $upn = $mailbox.'User Principal Name'
    $licenseDetails = Get-MgUserLicenseDetail -UserId $upn
    $servicePlans = $licenseDetails.ServicePlans.ServicePlanName
    if (($servicePlans -contains "EXCHANGE_S_STANDARD" -or $servicePlans -eq $null) -and ($servicePlans -notcontains "EXCHANGE_S_ENTERPRISE")) {
        $mailbox | Add-Member -MemberType NoteProperty -Name "State" -Value "Non-compliant"
        $output += $mailbox
    }
}

Write-Host "Generating output CSV report at $($OutputFile)"
$output | Export-Csv -Path $outFile -NoTypeInformation

Write-Host "Cleaning up temporary files"
del $tempProcessFile
```
