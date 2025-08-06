---
ms.date: 07/02/2025
title: "Manage Copilot Pages, Copilot Notebooks, and Loop components in your organization"
ms.reviewer: dancost, tonchan
ms.author: jenz
author: jenzamora
manager: jtremper
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: how-to
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
- essentials-manage
- magic-ai-copilot
search.appverid:
- SPO160
- MET150
description: "Manage Copilot Pages, Copilot Notebooks, and Loop in your organization"
---

# Requirements for Copilot Pages, Copilot Notebooks, Loop components, and Loop workspaces

Copilot Pages and Copilot Notebooks and their integrations create `.loop` files, stored in user-owned SharePoint Embedded containers. Learn more about [storage and lifecycle](cpcn-storage.md), which is quota combined with SharePoint in your tenant. IT admins can [manage creation of Copilot Pages and Copilot Notebooks](cpcn-admin-configuration.md) using Cloud Policy.

Loop components and integrations create `.loop` files (earlier releases of Loop created `.fluid` files), stored in OneDrive, SharePoint, or SharePoint Embedded. Learn more about [storage](loop-storage.md), which is quota combined with SharePoint in your tenant. IT admins can manage creation of Loop components and Loop workspaces by following instructions in this [admin configuration](loop-admin-configuration.md) article.

## URLs and IP address ranges

To ensure Copilot Pages, Copilot Notebooks, and Loop work correctly in your organization, verify that required network connections are allowed. These services rely on core Microsoft 365 and SharePoint infrastructure. Review and configure your firewall or proxy settings according to the [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) documentation to enable access to all necessary endpoints for Copilot Pages, Copilot Notebooks, and Loop experiences.

## WebSocket connections

Copilot Pages, Copilot Notebooks, and Loop rely on secure WebSocket connections to enable real-time collaboration features such as live editing, presence indicators, and shared cursors. To ensure these features work correctly, allow WebSocket traffic to the `*.svc.ms` and `*.office.com` endpoints in your network configuration.

## License requirements

### Copilot Pages and Copilot Notebooks

Copilot Pages are available to anyone in Entra ID accounts with a OneDrive license. Copilot pages require a OneDrive site to function. However, if a OneDrive site exists and the license is later removed, Copilot pages continue to work.

Copilot Notebooks require the [Microsoft 365 Copilot license](/copilot/microsoft-365/microsoft-365-copilot-licensing).

### Loop

Loop components are available to anyone in Entra ID accounts with a OneDrive or SharePoint license.

Licensing through the Loop with workspaces service plan covers the creation of new workspaces and management of workspace members. The full set of experiences enabled and the specific licenses that include the Loop with workspaces service plan are covered in [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa). 

## Exchange Online mailboxes

To utilize all features, including at mentions and Loop workspace sharing, it's necessary for all users to have an Exchange Online mailbox. Those with Exchange On-Premises mailboxes won't have access to the full range of capabilities.

## Related topics

### Admin

- [Copilot Pages and Notebooks, Summary of Compliance, Lifecycle, Governance](cpcn-compliance-summary.md)
- [Copilot Pages and Notebooks Storage](cpcn-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Copilot Pages and Notebooks Admin toggles](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview and SharePoint Embedded containers](cpcn-loop-purview-management.md)
- [Loop Summary of Compliance, Lifecycle, Governance](cpcn-compliance-summary.md)
- [Loop Storage](cpcn-storage.md)
- [Loop Admin toggles](loop-admin-configuration.md)
- [Data Integrations Admin Settings](loop-data-integrations-configuration.md)
- [UX examples for admin toggle states](loop-ux-examples.md)
- [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa)

### End-User Experience

- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
- [Use Loop components in Outlook](https://support.microsoft.com/office/9b47c279-011d-4042-bd7f-8bbfca0cb136)
- [Use Loop components in OneNote](https://support.microsoft.com/office/use-loop-components-in-onenote-ed8a43d9-f6fd-4ad6-bc9d-8841db4da459)
- [Loop components in Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347)
- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
