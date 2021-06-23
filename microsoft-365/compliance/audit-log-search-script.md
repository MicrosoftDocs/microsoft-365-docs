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
description: "Use a PowerShell script that runs the Search-UnifiedAuditLog cmdlet in Exchange Online to search the audit log. This script is optimized to return a large set (up to 50,000) of audit records. The script exports these records to a CSV file that you can view or transform using Power Query in Excel."
---

# Use a PowerShell script to search the audit log

Security, compliance, and auditing have become a top priority for IT administrators in today’s world. Microsoft 365 has several built-in capabilities to help organizations manage security, compliance, and auditing. In particular, unified audit logging can help you investigate security incidents and compliance issues. You can retrieve audit logs by using the following methods:

- [The Office 365 Management Activity API](/office/office-365-management-api/office-365-management-activity-api-reference)

- The [audit log search tool](search-the-audit-log-in-security-and-compliance.md) in the Microsoft 365 compliance center

- The [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog) cmdlet in Exchange Online PowerShell

If you need to retrieve audit logs on a regular basis, you should consider a solution that uses the Office 365 Management Activity API because it that can provide large organizations with the scalability and performance to retrieve millions of audit records on an ongoing basis. Using the audit log search tool in Microsoft 365 compliance center is a good way to quickly find audit records for specific operations that occur in shorter time range. Using longer time ranges in the audit log search tool, especially for large organizations, might return too many records to easily manage or export.

When there are situations where you need to manually retrieve auditing data for a specific investigation or incident, particularly for longer date ranges in larger organizations, using the **Search-UnifiedAuditLog** cmdlet may be the best option. This article includes a PowerShell script that uses the cmdlet to retrieve up to 50,000 audit records and then export them to a CSV file that you can format using Power Query in Excel to help with your review. Using the script in this article also minimizes the chance that large audit log searches will time out in the service.

## Before you run the script

- Audit logging has to be enabled for your organization to successfully use the script to return audit records. Audit logging is turned on by default for Microsoft 365 and Office 365 enterprise organizations. To verify that audit log search is turned on for your organization, you can run the following command in Exchange Online PowerShell:

  ```powershell
  Get-AdminAuditLogConfig | FL UnifiedAuditLogIngestionEnabled
  ```

  The value of `True` for the **UnifiedAuditLogIngestionEnabled** property indicates that audit log search is turned on.

- You have to be assigned the View-Only Audit Logs or Audit Logs role in Exchange Online to run successfully the script. By default, these roles are assigned to the Compliance Management and Organization Management role groups on the Permissions page in the Exchange admin center. For more information, see the "Requirements to search the audit log" section in [Search the audit log in the compliance center](search-the-audit-log-in-security-and-compliance.md#requirements-to-search-the-audit-log).

- It may take a long time for the script to complete. How long it takes to run depends on the date range and the size of the interval that you configure the script to retrieve audit records for. Larger date ranges and smaller intervals will result in a long running time. See the table in Step 2 for more information about the date range and intervals.

- The sample script provided in this article isn't supported under any Microsoft standard support program or service. The sample script is provided AS IS without warranty of any kind. Microsoft further disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a particular purpose. The entire risk arising out of the use or performance of the sample script and documentation remains with you. In no event shall Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the script be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample script or documentation, even if Microsoft has been advised of the possibility of such damages.

## Step 1: Connect to Exchange Online PowerShell

The first step is to connect to Exchange Online PowerShell. You can connect using modern authentication or with multi-factor authentication (MFA). For step-by-step instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

## Step 2: Modify and run the script to retrieve audit records

After you've connected to Exchange Online PowerShell, the next step is to create, modify, and run the script to retrieve the auditing data. The first seven lines in the audit log search script contain the following variables that you can modify to configure your search. See the table in step 2 for a description of these variables.

1. Save the following text to a Windows PowerShell script by using a filename suffix of .ps1. For example, SearchAuditLog.ps1.

   ```powershell
   #Modify the values for the following variables to configure the audit log search.
   $logFile = "d:\AuditLogSearch\AuditLogSearchLog.txt"
   $outputFile = "d:\AuditLogSearch\AuditLogRecords.csv"
   [DateTime]$start = [DateTime]::UtcNow.AddDays(-1)
   [DateTime]$end = [DateTime]::UtcNow
   $record = "AzureActiveDirectory"
   $resultSize = 5000
   $intervalMinutes = 60
   
   #Start script
   [DateTime]$currentStart = $start
   [DateTime]$currentEnd = $start
   
   Function Write-LogFile ([String]$Message)
   {
       $final = [DateTime]::Now.ToUniversalTime().ToString("s") + ":" + $Message
       $final | Out-File $logFile -Append
   }
   
   Write-LogFile "BEGIN: Retrieving audit records between $($start) and $($end), RecordType=$record, PageSize=$resultSize."
   Write-Host "Retrieving audit records for the date range between $($start) and $($end), RecordType=$record, ResultsSize=$resultSize"
   
   $totalCount = 0
   while ($true)
   {
       $currentEnd = $currentStart.AddMinutes($intervalMinutes)
       if ($currentEnd -gt $end)
       {
           $currentEnd = $end
       }
   
       if ($currentStart -eq $currentEnd)
       {
           break
       }
   
       $sessionID = [Guid]::NewGuid().ToString() + "_" +  "ExtractLogs" + (Get-Date).ToString("yyyyMMddHHmmssfff")
       Write-LogFile "INFO: Retrieving audit records for activities performed between $($currentStart) and $($currentEnd)"
       Write-Host "Retrieving audit records for activities performed between $($currentStart) and $($currentEnd)"
       $currentCount = 0
   
       $sw = [Diagnostics.StopWatch]::StartNew()
       do
       {
           $results = Search-UnifiedAuditLog -StartDate $currentStart -EndDate $currentEnd -RecordType $record -SessionId $sessionID -SessionCommand ReturnLargeSet -ResultSize $resultSize
   
           if (($results | Measure-Object).Count -ne 0)
           {
               $results | export-csv -Path $outputFile -Append -NoTypeInformation
   
               $currentTotal = $results[0].ResultCount
               $totalCount += $results.Count
               $currentCount += $results.Count
               Write-LogFile "INFO: Retrieved $($currentCount) audit records out of the total $($currentTotal)"
   
               if ($currentTotal -eq $results[$results.Count - 1].ResultIndex)
               {
                   $message = "INFO: Successfully retrieved $($currentTotal) audit records for the current time range. Moving on!"
                   Write-LogFile $message
                   Write-Host "Successfully retrieved $($currentTotal) audit records for the current time range. Moving on to the next interval." -foregroundColor Yellow
                   ""
                   break
               }
           }
       }
       while (($results | Measure-Object).Count -ne 0)
   
       $currentStart = $currentEnd
   }
   
   Write-LogFile "END: Retrieving audit records between $($start) and $($end), RecordType=$record, PageSize=$resultSize, total count: $totalCount."
   Write-Host "Script complete! Finished retrieving audit records for the date range between $($start) and $($end). Total count: $totalCount" -foregroundColor Green
   ```

2. Modify the variables listed in the following table to configure the search criteria. The script includes sample values for these variables, but you should change them (unless stated otherwise) to meet your specific requirements.

   <br>

   ****

   |Variable|Sample value|Description|
   |---|---|---|
   |`$logFile`|"d:\temp\AuditSearchLog.txt"|Specifies the name and location for the log file that contains information about the progress of the audit log search performed by the script. The script writes UTC timestamps to the log file.|
   |`$outputFile`|"d:\temp\AuditRecords.csv"|Specifies the name and location of the CSV file that contains the audit records returned by the script.|
   |`[DateTime]$start` and `[DateTime]$end`|[DateTime]::UtcNow.AddDays(-1) <br/>[DateTime]::UtcNow|Specifies the date range for the audit log search. The script will return records for audit activities that occurred within the specified date range. For example, to return activities performed in January 2021, you can use a start date of `"2021-01-01"` and an end date of `"2021-01-31"` (be sure to surround the values in double-quotation marks) The sample value in the script returns records for activities performed in the previous 24 hours. If you don't include a timestamp in the value, the default timestamp is 12:00 AM (midnight) on the specified date.|
   |`$record`|"AzureActiveDirectory"|Specifies the record type of the audit activities (also called *operations*) to search for. This property indicates the service or feature that an activity was triggered in. For a list of record types that you can use for this variable, see [Audit log record type](/office/office-365-management-api/office-365-management-activity-api-schema#auditlogrecordtype). You can use the record type name or ENUM value. <br/><br/>**Tip:** To return audit records for all record types, use the value `$null` (without double-quotations marks).|
   |`$resultSize`|5000|Specifies the number of results returned each time the **Search-UnifiedAuditLog** cmdlet is called by the script (called a *result set*). The value of 5,000 is the maximum value supported by the cmdlet. Leave this value as-is.|
   |`$intervalMinutes`|60|To help overcome the limit of 5000 records returned, this variable takes the data range you specified and slices it up into smaller time intervals. Now each interval, not the entire date range, is subject to the 5000 record output limit of the command. The default value of 5000 records per 60-minute interval within the date range should be sufficient for most organizations. But, if the script returns an error that says, `maximum results limitation reached`, decrease the time interval (for example, to 30 minutes or even 15 minutes) and rerun the script.|
   ||||

   Most of the variables listed in the previous table correspond to parameters for the **Search-UnifiedAuditLog** cmdlet. For more information about these parameters, see [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog).

3. On your local computer, open Windows PowerShell and go to the folder where you saved the modified script.

4. Run the script in Exchange Online PowerShell; for example:

   ```powershell
   .\SearchAuditLog.ps1
   ```

The script displays progress messages while it's running. After the script is finished running, it creates the log file and the CSV file that contains the audit records and saves them to the folders defined by the `$logFile` and `$outputFile` variables.

> [!IMPORTANT]
> There is a 50,000 limit for the maximum number of audit records returned each time you run this script. If you run this script and it returns 50,000 results, then it's likely that audit records for activities that occurred within the date range weren't included. If this happens, we recommend that you divide the date range into smaller durations and then rerun the script for each date range. For example, if a date range of 90 days returns 50,000 results then you can rerun the script twice, once for the first 45 days in the date range and then again for the next 45 days.

## Step 3: Format and view the audit records

After you've run the script and exported the audit records to a CSV file, you may want to format the CSV to make easier to review and analyze the audit records. One way to do this is to the Power Query JSON transform feature in Excel to split each property in the JSON object in the **AuditData** column into its own column. For step-by-step instructions, see "Step 2: Format the exported audit log using the Power Query Editor" in [Export, configure, and view audit log records](export-view-audit-log-records.md#step-2-format-the-exported-audit-log-using-the-power-query-editor).
