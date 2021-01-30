---
title: "Use a PowerShell script to search the audit log"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
description: "Use a PowerShell script, the runs the Search-UnifiedAuditLog cmdlet, to search the audit log. This script is optimized to return a large set (up to 50,000) audit records. The script exports these records to a CSV file that you can view or transform using Power Query in Excel."
---

# Use a PowerShell script to search the audit log

Security, compliance, and auditing have become a top priority for IT administrators in today’s world. Microsoft 365 has several built-in capabilities to help organizations manage security, compliance, and auditing. In particular, unified audit logging can help you investigate security incidents and compliance issues. You can retrieve audit logs by using the following methods:

- [The Office 365 Management Activity API](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference)

- The [audit log search tool](search-the-audit-log-in-security-and-compliance.md) in the Microsoft 365 compliance center

- The [Search-UnifiedAuditLog](https://docs.microsoft.com/powershell/module/exchange/search-unifiedauditlog) cmdlet in Exchange Online PowerShell

If you need to retrieve audit logs on a regular basis, you should consider a solution that uses the Office 365 Management Activity API because it that can provide large organizations with the scalability and performance to retrieve millions of audit records on a ongoing basis. Using the audit log search tool in Microsoft 365 compliance center is a good way to quickly find audit records for specific operations that occur in shorter time range. Using longer time ranges in the audit log search tool, especially for large organizations, might return too many records to easily manage or export.

When there are situations where you need to manually retrieve auditing data for a specific investigation or incident, particularly for longer date ranges in larger organizations, using the **Search-UnifiedAuditLog** cmdlet may be the best option. This article includes a PowerShell script that uses the cmdlet to retrieve up to 50,000 audit records and then export them to a CSV file that you can format using Power Query in Excel to help with your review. Using the script in this article also minimize the chance that large audit log searches will time out in the service.

## Before you run the script

- Audit logging has to be enabled for your organization to successfully use the script to return audit records. Audit logging is turned on by default for Microsoft 365 and Office 365 enterprise organizations. To verify that audit log search is turned on for your organization, you can run the following command in Exchange Online PowerShell:

  ```powershell
  Get-AdminAuditLogConfig | FL UnifiedAuditLogIngestionEnabled
  ```
  
  The value of `True` for the **UnifiedAuditLogIngestionEnabled** property indicates that audit log search is turned on.

- You have to be assigned the View-Only Audit Logs or Audit Logs role in Exchange Online to run successfully the script. By default, these roles are assigned to the Compliance Management and Organization Management role groups on the Permissions page in the Exchange admin center. For more information, see the "Requirements to search the audit log" section in [Search the audit log in the compliance center](search-the-audit-log-in-security-and-compliance.md#requirements-to-search-the-audit-log).

- It may take a long time for the script to complete. How long it takes to run is based on the date range and that interval that you configure the script to retrieve audit records for. Larger date ranges and small intervals will result in a long running time. See the table in Step 2 for more information about the date range and intervals.

- The maximum number of records that you can retrieve for a given criteria and SessionId is 50,000. The following script mitigates that limitation and will break a search into several smaller intervals (15 minutes by default, but configurable). The smaller intervals will ensure that you are not hitting the max limit of how many records can be retrieved in a single session. For each smaller interval, the script will use a new SessionId. Smaller intervals will also mean there will be a lesser chance of the session timing out on the server side.

- The sample script provided in this article isn't supported under any Microsoft standard support program or service. The sample script is provided AS IS without warranty of any kind. Microsoft further disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a particular purpose. The entire risk arising out of the use or performance of the sample script and documentation remains with you. In no event shall Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the script be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample script or documentation, even if Microsoft has been advised of the possibility of such damages.

## Step 1: Connect to Exchange Online PowerShell

The first step is to connect to Exchange Online PowerShell. You can connect using modern authentication or with multi-factor authentication (MFA). For step-by-step instructions, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

## Step 2: Modify and run the script to retrieve audit records

After you've connected to Exchange Online PowerShell, the next step is to create, modify, and run the script to retrieve the auditing data. The first seven lines in the audit log search script contain the following variables that you have to modify to configure your search. See step 2 in the following procedure for a description of these variables.

1. Save the following text to a Windows PowerShell script by using a filename suffix of .ps1. For example, SearchAuditLog.ps1.

2. Modify the variables listed in the following table to configure the search criteria. The script includes sample values for these variables, but you should change them (unless stated otherwise) to meet your specific requirements.

   |Variable  |Sample value  |Description  |
   |:---------|:---------|:---------|
   |`$logFile`     |"d:\temp\AuditSearchLog.txt"|Specifies the name and location for the log file that contains information about the progress of the audit log search performed by the script.|
   |`$outputFile`     |"d:\temp\AuditRecords.csv"|Specifies the name and location of the CSV file that contains the audit records returned by the script.|
   |`[DateTime]$start` and `[DateTime]$end`    |[DateTime]::UtcNow.AddDays(-1) <br/>[DateTime]::UtcNow       | Specifies the date range for the audit log search. The script will return records for audit activities that occurred within the specified date range. For example, to return activities performed in January 2021, you can use a start date of `2021-01-01` and an end date of `2021-01-31`. The sample value in the script returns records for activities performed in the previous 24 hours. If you don't include a timestamp in the value, the default timestamp is 12:00 AM (midnight) on the specified date.  |
   |`$record`     |"AzureActiveDirectory"         |specifies the [Audit Log Record Type](https://docs.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema#auditlogrecordtype) that you wish to filter on.       Tip: To return audit records for all record types, use the value $null (no quotations marks).  |
   |`$resultSize`     |5000  |Specifies the number of results returned each time the **Search-UnifiedAuditLog** cmdlet is called by the script (called a *result set*). The value of 5000 is the maximum value supported by the cmdlet. Leave this value as-is.         |
   |`$intervalMinutes`     |15 | Specifies the time interval (in minutes) for each result set. This means that each time the **Search-UnifiedAuditLog** cmdlet is called by the script, it searches for audit records with a date/time stamp that occurred within the specified interval. The script adds each of these result sets to the exported CSV file. For large organizations that may generate thousands (or even millions) of audit records per day, this interval is necessary to ensure that the maximum size for a result set isn't exceeded. Leave this value as-is. However, if the log file or script displays an error message saying `maximum results limitation reached`, then you should decrease the value of this variable and rerun the script. |
   ||||

   Most of the variables listed in the previous table correspond to parameters for the **Search-UnifiedAuditLog** cmdlet. For more information about these parameters, see [Search-UnifiedAuditLog](https://docs.microsoft.com/powershell/module/exchange/search-unifiedauditlog).

3. On your local computer, open Windows PowerShell and go to the folder where you saved the modified script.

4. Run the script in Exchange Online PowerShell; for example:

   ```powershell
   .\SearchAuditLog.ps1
   ```

After the script is finished running, it creates the log file and the CSV file that contains the audit records and saves them to the folders defined by the `$logFile` and `$outputFile` variables.

> [!IMPORTANT]
> There is a 50,000 limit for the maximum number of audit records returned each time you run this script. If you run this script and it returns 50,000 results, then it's likely that audit records for activities that occurred within the date range were not included. If this happens, we recommend that you divide the date range into smaller durations and then rerun the script. For example, if a date range of 90 days returns 50,000 results then you rerun the script twice, once for the first 45 days in the date range and then again for the next 45 days.

## Step 3: Format and view the audit records

After you’ve exported your audit logs to a .csv, you may need to format your results. The next step is to use the JSON transform feature to split each property in the JSON object in the AuditData column into its own column.

[Format the exported audit log using Power Query Editor](https://docs.microsoft.com/en-us/microsoft-365/compliance/export-view-audit-log-records?view=o365-worldwide)

**More information**

After the script is finished running, it will:

-   The script will log it's progress in a log file

-   The output will be saved in a CSV file
