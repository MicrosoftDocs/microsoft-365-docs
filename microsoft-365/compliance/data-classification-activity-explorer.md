---
title: "Get started with Activity explorer"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/13/2023
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

The [data classification overview](data-classification-overview.md) and [content explorer](data-classification-content-explorer.md) tabs give you visibility into what content has been discovered and labeled, and where that content is. [Activity explorer](https://compliance.microsoft.com/dataclassification?viewid=activitiesexplorer) rounds out this suite of functionality by allowing you to monitor what's being done with your labeled content. Activity explorer provides a historical view of activities on your labeled content. The activity information is collected from the Microsoft 365 unified audit logs, transformed, and then made available in the Activity explorer UI. Activity explorer reports on up to 30 days worth of data.

![placeholder screenshot overview activity explorer.](../media/data-classification-activity-explorer-1.png)

There are more than 30 different filters available for use, some are:

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

An account must be explicitly assigned membership in any one of these role groups, or must be explicitly granted the role.

### Roles and Role Groups

There are roles and role groups that you can use to fine-tune your access controls. To learn more about them, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

| Microsoft Purview Roles | Microsoft Purview Role Groups | Microsoft 365 Roles | Microsoft 365 Role Groups |
|:------------------------|:------------------------------|:--------------------|:-------------------------|
| Information Protection Admin| Information Protection | Global Admins |Compliance Administrator |
| Information Protection Analyst | Information Protection Admins | Compliance Admins | Security Administrator |
| Information Protection Investigator | Information Protection Investigators |Security Admins | Security Reader |
| Information Protection Reader | Information Protection Analysts | Compliance Data Admins |  |
|                   | Information Protection Readers   |   |            |

## Activity types

Activity explorer gathers information from the audit logs of multiple sources of activities.

Some examples of the **Sensitivity label activities** and **Retention labeling activities** from applications native to Microsoft Office, the Azure Information Protection (AIP) unified labeling client and scanner, SharePoint, Exchange  (sensitivity labels only), and OneDrive include:

- Label applied
- Label changed (upgraded, downgraded, or removed)
- Autolabeling simulation
- File read

Labeling activity particular to **Azure Information Protection (AIP) scanner and AIP clients** that comes into Activity explorer includes:

- Protection applied
- Protection changed
- Protection removed
- Files discovered

For more detailed information on what labeling activity makes it into Activity explorer, see [Labeling events available in Activity explorer](data-classification-activity-explorer-available-events.md).

In addition, using **Endpoint data loss prevention (DLP)**, Activity explorer gathers **DLP policy matches** events from Exchange, SharePoint, OneDrive, Teams Chat and Channel, on-premises SharePoint folders and libraries, on-premises file shares, and devices running Windows 10, Windows 11, and any of the three most recent major macOS versions. Some example events gathered from Windows 10 devices include the following actions taken on files:

- Deletion
- Creation
- Copy to clipboard
- Modify
- Read
- Print
- Rename
- Copy to network share
- Access by an unallowed app

Understanding the actions that are taken on content with sensitivity labels helps you determine whether the controls that you have in place, such as [Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) policies, are effective. If not, or if you discover something unexpected (such as a large number of items labeled `highly confidential` that are downgraded to `general`), you can manage your policies and take new actions to restrict the undesired behavior.

> [!NOTE]
> Activity explorer doesn't currently monitor retention activities for Exchange.

## See also

- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Learn about sensitive information types](sensitive-information-type-learn-about.md)
- [Learn about data classification](data-classification-overview.md)
