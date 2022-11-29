---
title: "Get started with Activity explorer"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1 
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid: 
- MOE150
- MET150
description: "Activity explorer lets you see and filter on the actions users are taking on your labeled content."
---

# Get started with activity explorer

The [data classification overview](data-classification-overview.md) and [content explorer](data-classification-content-explorer.md) tabs give you visibility into what content has been discovered and labeled, and where that content is. [Activity explorer](https://compliance.microsoft.com/dataclassification?viewid=activitiesexplorer) rounds out this suite of functionality by allowing you to monitor what's being done with your labeled content. Activity explorer provides a historical view of activities on your labeled content. The activity information is collected from the Microsoft 365 unified audit logs, transformed, and made available in the Activity explorer UI. Activity explorer reports on up to 30 days worth of data.

![placeholder screenshot overview activity explorer.](../media/data-classification-activity-explorer-1.png)

There are over 30 different filters available for use, some are:

- Date range
- Activity type
- Location
- User
- Sensitivity label
- Retention label
- File path
- DLP policy



[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Prerequisites

Every account that accesses and uses data classification must have a license assigned to it from one of these subscriptions:

- Microsoft 365 (E5)
- Office 365 (E5)
- Advanced Compliance (E5) add-on
- Advanced Threat Intelligence (E5) add-on
- Microsoft 365 E5/A5 Info Protection & Governance
- Microsoft 365 E5/A5 Compliance

### Permissions

An account must be explicitly assigned membership in any one of these role groups or explicitly granted the role.

### Roles and Role Groups

There are roles and role groups that you can use to fine-tune your access controls.

Here's a list of applicable roles that you can use. To learn more about them, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups that you can use. To learn more about the, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

<!--
> [!IMPORTANT]
> Access to Activity explorer via the Security reader or Device Management role groups or other has been removed-->

**Microsoft 365 role groups**

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

**Microsoft 365 roles**

- Compliance administrator
- Security administrator
- Security Reader

## Activity types

Activity explorer gathers activity information from the audit logs on multiple sources of activities. For more detailed information on what labeling activity makes it to Activity explorer, see [Labeling events available in Activity explorer](data-classification-activity-explorer-available-events.md).

**Sensitivity label activities** and **Retention labeling activities** from Office native applications, the Azure Information Protection (AIP) unified labeling client and scanner, SharePoint Online, Exchange Online (sensitivity labels only), and OneDrive. Some examples are:

- Label applied
- Label changed (upgraded, downgraded, or removed)
- Autolabeling simulation
- File read

**Azure Information Protection (AIP) scanner and AIP clients**

- Protection applied
- Protection changed
- Protection removed
- Files discovered

Activity explorer also gathers **DLP policy matches** events from Exchange Online, SharePoint Online, OneDrive, Teams Chat and Channel (preview), on-premises SharePoint folders and libraries, and on-premises file shares, and Windows 10 devices via **Endpoint data loss prevention (DLP)**. Some examples events from Windows 10 devices are file:

- Deletions
- Creations
- Copied to clipboard
- Modified
- Read
- Printed
- Renamed
- Copied to network share
- Accessed by unallowed app 

Understanding what actions are being taken with your sensitive labeled content helps you see if the controls that you have in place, such as [Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) policies are effective or not. If not, or if you discover something unexpected, such as a large number of items that are labeled `highly confidential` and are downgraded `general`, you can manage your various policies and take new actions to restrict the undesired behavior.

> [!NOTE]
> Activity explorer doesn't currently monitor retention activities for Exchange Online.

## See also

- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Learn about sensitive information types](sensitive-information-type-learn-about.md)
- [Learn about data classification](data-classification-overview.md)
