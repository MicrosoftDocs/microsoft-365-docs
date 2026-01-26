---
title: "Apps for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: rickki
author: rickki
manager: aljerabe
ms.date: 01/20/2026
audience: Admin
ms.topic: get-started
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_TOC
- operations-pod
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "An overview of Apps for Microsoft 365."
---

# Apps for Microsoft 365

All of the Microsoft 365 applications, including Teams, Microsoft 365 Copilot, Office (Excel, Outlook, PowerPoint, Word, etc.), OneDrive, and SharePoint are extensible. Most of these extensions are made by either independent software vendors (ISVs) and distributed publicly through [Microsoft Marketplace](https://marketplace.microsoft.com), or by line of business (LOB) developers are deployed internally with an admin portal.

A subset of these extensions are called **Apps for Microsoft 365**. Technically, the common denominator of all apps for Microsoft 365 is that they all use the [unified manifest for Microsoft 365](/microsoft-365/extensibility/schema). Notionally, an app for Microsoft 365 is a unit of installation and management. It contains at least one extension of a Microsoft 365 application, and may contain functionally related extensions of multiple Microsoft 365 applications. 

Teams, Microsoft 365 Copilot, and Office can be hosts for apps for Microsoft 365. The following are the major categories of apps for Microsoft 365.

- Office Add-ins
- Teams apps
- Copilot agents

Currently, the following types of extensions can't be included in the package of an app for Microsoft 365, and aren't considered apps for Microsoft 365.

- OneDrive and SharePoint extensions. But note that these types of extensions can be combined with an app for Microsoft 365 in a [SAAS (software as a service) linked bundle](saas-linked-apps.md). Also, some apps for Microsoft 365, such as personal tabs can be implemented as SharePoint Framework pages.
- Office Add-ins that use the add-in only manifest instead of the unified manifest for Microsoft 365. For more information about the difference, see [Office Add-in manifest](/office/dev/add-ins/develop/add-in-manifests).
- Copilot extensions that do not use the unified manifest for Microsoft 365.

For guidance about managing extensions of Microsoft 365, including apps for Microsoft 365, in the Integrated App portal, see the following articles.

- [Manage Office Add-ins](office-addins.md)
- [Manage Teams-only apps](teams-apps-work-only-on-teams.md)
- [Manage agents for Copilot](manage-copilot-agents-integrated-apps.md)

There's a type of extension that can surface in multiple host applications even though it's just a single app, not multiple apps configured in the same manifest. For guidance in managing them, see the following article. 

- [Apps for Microsoft 365 that work across application hosts](teams-apps-work-on-outlook-and-m365.md)