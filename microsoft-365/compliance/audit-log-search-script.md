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

-   The [Office 365 Management Activity API](https://msdn.microsoft.com/en-us/office-365/office-365-management-activity-api-reference)

-   The audit log search tool in the [Microsoft](https://support.office.com/en-us/article/Search-the-audit-log-in-the-Office-365-Security-Compliance-Center-0d4d0f35-390b-4518-800e-0c7ec95e946c?ui=en-US&rs=en-US&ad=US) 365 compliance center

-   The **Search-UnifiedAuditLog** cmdlet in Exchange Online PowerShell

If you need to retrieve audit logs on a regular basis, you should consider a solution that uses the Office 365 Management Activity API because it that can provide large organizations with the scalability and performance to retrieve millions of audit records on a ongoing basis. Using the audit log search tool in Microsoft 365 compliance center is a good way to quickly find audit records for specific operations that occur in shorter time range. Using longer time ranges in the audit log search tool, especially for large organizations, might return too many records to easily manage or export.

When there are situations where you need to manually retrieve auditing data for a specific investigation or incident, particularly for longer date ranges in larger organizations, using the **Search-UnifiedAuditLog** cmdlet may be the best option. This article includes a PowerShell script that uses the cmdlet to retrieve up to 50,000 audit records and then export them to a CSV file that you can format using Power Query in Excel to help with your review. Using the script in this article also minimize the chance that large audit log searches will time out in the service.

The maximum number of records that you can retrieve for a given criteria and SessionId is 50,000. The following script mitigates that limitation and will break a search into several smaller intervals (15 minutes by default, but configurable). The smaller intervals will ensure that you are not hitting the max limit of how many records can be retrieved in a single session. For each smaller interval, the script will use a new SessionId. Smaller intervals will also mean there will be a lesser chance of the session timing out on the server side.

## Before you run the script

- Audit logging has to be enabled for your organization to successfully use the script to return audit records. Audit logging is turned on by default for Microsoft 365 and Office 365 enterprise organizations. To verify that audit log search is turned on, you can run the following command in Exchange Online PowerShell:

  ```powershell
  Get-AdminAuditLogConfig | FL UnifiedAuditLogIngestionEnabled
  ```
  
  The value of `True` for the **UnifiedAuditLogIngestionEnabled** property indicates that audit log search is turned on.

- You have to be assigned the View-Only Audit Logs or Audit Logs role in Exchange Online to run successfully the script. By default, these roles are assigned to the Compliance Management and Organization Management role groups on the Permissions page in the Exchange admin center. For more information, see …

-   

## Step 1: Connect to Exchange Online PowerShell

The first step is to connect to Exchange Online PowerShell. You can connect using modern authentication or with multi-factor authentication (MFA). For step-by-step instructions, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/en-us/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps).

## Step 2: Modify and run the script to retrieve audit records

After you’ve connected to Exchange Online PowerShell, the next step is to run the script to retrieve the audit data.

1.  Save the following text to a Windows PowerShell script by using a filename suffix of .ps1. For example, SearchAuditLogs.ps1.

2.  Configure the script parameters (in lines according to your search criteria. The script includes sample default values for the following parameters, but you will need to modify them for your specific requirements.

> $logFile = "d:\\temp\\MyLog.txt"
>
> $outputFile = "d:\\temp\\AuditRecords.csv"
>
> \[DateTime\]$start = \[DateTime\]::UtcNow.AddDays(-1)
>
> \[DateTime\]$end = \[DateTime\]::UtcNow
>
> $record = "AzureActiveDirectory"
>
> $resultSize = 5000
>
> $intervalMinutes = 15

-   $logFile parameter specifies the file location for the search progress log. Choose a location on your local computer where you want the progress log saved.

-   $outputFile parameter specifies the file location for the audit records results. Choose a location on your local computer where you want the audit results saved.

-   $record parameter specifies the [Audit Log Record Type](https://docs.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema#auditlogrecordtype) that you wish to filter on.

-   $intervalMinutes parameter specifies the time interval for each result set.

-   Additional Search-UnifiedAuditLog cmdlet parameters may be set according to [Search-UnifiedAuditLog (ExchangePowerShell) cmdlet](https://docs.microsoft.com/en-us/powershell/module/exchange/search-unifiedauditlog?view=exchange-ps) documentation.

-   @resultSize is the number of results returned for each cmdlet call. 5000 is the default maximum value and should not be changed.

-   $start and $end determine the start and end date/times for your search session.

-   NOTE: There is a 50,000 limit for records retrieved per session. If the output log or if the script displays an error message stating “maximum results limitation reached”, the intervalMinutes parameter should be adjusted to a lower value.

1.  On your local computer, open Windows PowerShell and go to the folder where you saved the script.

2.  Run the script.

## Step 3: Format and view the audit records

After you’ve exported your audit logs to a .csv, you may need to format your results. The next step is to use the JSON transform feature to split each property in the JSON object in the AuditData column into its own column.

[Format the exported audit log using Power Query Editor](https://docs.microsoft.com/en-us/microsoft-365/compliance/export-view-audit-log-records?view=o365-worldwide)

**More information**

After the script is finished running, it will:

-   The script will log it's progress in a log file

-   The output will be saved in a CSV file
