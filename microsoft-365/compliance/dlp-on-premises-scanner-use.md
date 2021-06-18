---
title: "Use Microsoft 365 data loss prevention on-premises scanner (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: how-to
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
description: "Learn how to use the Microsoft 365  data loss prevention on premises scanner to scan data at rest and implement protective actions for on premises file shares and on-premises SharePoint folders and document libraries."
---

# Use the Microsoft 365 data loss prevention on-premises scanner (preview)

To help familiarize you with DLP on-premises features and how they surface in DLP policies, we've put together some scenarios for you to follow.

> [!IMPORTANT]
> These DLP on-premises scenarios are not the official procedures for creating and tuning DLP policies. Refer to the below topics when you need to work with DLP policies in general situations:
>- [Learn about data loss prevention](dlp-learn-about-dlp.md)
>- [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)
>- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
>- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)

### Scenario: Discover files matching DLP rules

Data from DLP on-premises scanner surfaces in several areas

#### Activity explorer

 Microsoft DLP for on-premises detects DLP rule matches and reports them to [Activity Explorer](https://compliance.microsoft.com/dataclassification?viewid=activitiesexplorer). 
 
#### Microsoft 365 Audit log

During the public preview the DLP rule matches are available in Audit log UI, see [Search the audit log in the compliance center](search-the-audit-log-in-security-and-compliance.md)  or accessible by [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog?view=exchange-ps) PowerShell.

#### AIP

Discovery data is available in a local report in csv format which is stored under:

**%localappdata%\Microsoft\MSIP\Scanner\Reports\DetailedReport_%timestamp%.csv report**.

 Look for the following columns:
- DLP Mode
- DLP Status
- DLP Comment
- DLP Rule Name	DLP Actions
- Owner
- Current NTFS Permissions (SDDL)
- Applied NTFS Permissions (SDDL)
- NTFS permissions type
 
### Scenario: Enforce DLP rule 

If you want to enforce DLP rules on the scanned files, enforcement must be enabled on both the content scan job in AIP and at the policy level in DLP.


#### Configure DLP to enforce policy actions

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies) and select the DLP policy that is targeted to the on-premises location repositories you have configured in AIP. 
2. Edit the policy.
3. On the **Test or turn on the policy** page, select **Yes, turn it on right away**. 

## See also

- [Learn about DLP on-premises scanner (preview)](dlp-on-premises-scanner-learn.md)
- [Get started with  DLP on-premises scanner (preview)](dlp-on-premises-scanner-get-started.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)