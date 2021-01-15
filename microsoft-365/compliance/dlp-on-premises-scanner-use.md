---
title: "Use Microsoft 365 data loss prevention on-premises scanner"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/21/2020
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MET150
description: "Learn how to use the Microsoft 365  data loss prevention on premises scanner to monitor file activities and implement protective actions for on premises file shares and on-premises SharePoint folders and document libraries."
---

# Use Microsoft 365 data loss prevention on-premises scanner



## PUT THIS INTO A USING DLP ON PREMISES SCANNER TOPIC viewing results 

### Scenario: Discover files matching DLP rules

Microsoft DLP for on-premises detects DLP rule matches and reports them to the  Activity Explorer (https://compliance.microsoft.com/dataclassification?viewid=activitiesexplorer)

And to Audit log in the Security & Compliance Center (https://security.microsoft.com/auditlogsearch). During the private preview the DLP rule matches are available in Audit log UI or accessible by [Search-UnifiedAuditLog](https://docs.microsoft.com/en-us/powershell/module/exchange/search-unifiedauditlog?view=exchange-ps) PowerShell. 


Permissions for crawled files is available in Azure Log Analytics under NetworkScan_CL table. You must [enable AIP analytics](https://docs.microsoft.com/en-us/azure/information-protection/reports-aip#configure-a-log-analytics-workspace-for-the-reports) to get this table populated.

Use this query to get list of all files, folders and file shares:
NetworkScan_CL
| where TimeGenerated >= ago(30d)
| extend rootPath = tolower(ObjectId_s)
| project TimeGen = TimeGenerated, Path = rootPath, EffectivePublicAccess = EffectivePublicAccess_s, ScannerAccess = ScannerAccess_s,               RepositoryPermissions = RepositoryPermissions_s, SharePermissions = SharePermissions_s
| summarize arg_max(TimeGen,*) by Path

Discovery data is also available in local csv report stored under %localappdata%\Microsoft\MSIP\Scanner\Reports\DetailedReport_%timestamp%.csv report. Look for the following columns:
•	DLP Mode
•	DLP Status
•	DLP Comment
•	DLP Rule Name	DLP Actions
•	Owner
•	Current NTFS Permissions (SDDL)
•	Applied NTFS Permissions (SDDL)
•	NTFS permissions type
 
### Scenario: Enforce DLP rule 
To enforce DLP rules on the scanned files enforcement should be enabled on both content scan job and policy level.
To enable scanner to enforce actions on the files connect to Azure Information Protection extension in Azure portal https://portal.azure.com/#blade/Microsoft_Azure_InformationProtection/DataClassGroupEditBlade/scannerProfilesBlade, and enable Enforce option under the conte

You can also set this setting per repository: some of the repositories in the same content scan job can set to enforce policy while others will only match and report.

To complete enablement of enforce scenario you should set at least one DLP policy scoped to the on-premises scanner:

## Next steps
Now that you have onboarded devices and can view the activity data in Activity explorer, you are ready to move on to your next step where you create DLP policies that protect your sensitive items.

- [Using Endpoint data loss prevention (preview)](endpoint-dlp-using.md)

## See also

- [Learn about Endpoint data loss prevention ](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention ](endpoint-dlp-using.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
