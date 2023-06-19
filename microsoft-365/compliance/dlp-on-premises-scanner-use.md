---
title: "Use data loss prevention on-premises repositories"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/16/2023
audience: ITPro
ms.topic: how-to
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid:
- MET150
description: "Learn how to use data loss prevention on premises repositories location to scan data at rest and implement protective actions for on premises file shares and on-premises SharePoint folders and document libraries."
---

# Use the data loss prevention on-premises repositories location

To help familiarize you with Microsoft Purview Data Loss Prevention on-premises features and how they surface in DLP policies, we've put together a couple of scenarios for you to follow.

> [!IMPORTANT]
> These DLP on-premises scenarios are not the official procedures for creating and tuning DLP policies. Refer to the following topics when you need to work with DLP policies in general situations:
>
> - [Learn about data loss prevention](dlp-learn-about-dlp.md)
> - [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)
> - [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)

## Scenario: Discover files matching DLP rules

Data from DLP surfaces in several areas

### Activity explorer

 DLP reports rule matches in [Activity Explorer](https://compliance.microsoft.com/dataclassification?viewid=activitiesexplorer).

### Microsoft 365 Audit log

The DLP rule matches are also available in the Audit log UI (see [Search the audit log in the Microsoft Purview compliance portal](audit-log-search.md)) and are accessible via PowerShell through the[Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog).

### AIP

Discovery data is available in a local report in .csv format and is stored under:

**%localappdata%\Microsoft\MSIP\Scanner\Reports\DetailedReport_%timestamp%.csv report**.

 Look for the following columns:

- DLP Mode
- DLP Status
- DLP Comment
- DLP Rule Name
- DLP Actions
- Owner
- Current NTFS Permissions (SDDL)
- Applied NTFS Permissions (SDDL)
- NTFS permissions type

## Scenario: Enforce DLP rule

If you want to enforce DLP rules on scanned files, enforcement must be enabled on both the content scan job and at the policy level in DLP.

### Configure DLP to enforce policy actions

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies) and select the DLP policy that is targeted to the on-premises location repositories you have configured in AIP.
2. Edit the policy.
3. On the **Test or turn on the policy** page, select **Yes, turn it on right away**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## See also

- [Learn about the data loss prevention on-premises repositories](dlp-on-premises-scanner-learn.md)
- [Get started with data loss prevention on-premises repositories](dlp-on-premises-scanner-get-started.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
