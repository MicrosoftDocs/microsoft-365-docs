---
ms.date: 01/26/2026
ms.update-cycle: 180-days
title: "Requirements for Loop components and Loop workspaces"
ms.reviewer: dancost, tonchan
ms.author: odocspr
author: officedocspr5
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
description: "Requirements for Loop components and Loop workspaces in your organization"
ai-usage: ai-assisted
---

# Requirements for Loop components and Loop workspaces

## At a glance

| Requirement | Details |
| --- | --- |
| **Loop components license** | OneDrive or SharePoint license |
| **Loop workspaces license** | Loop with workspaces service plan ([see eligible licenses](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa)) |
| **Network** | Allow connections per [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) |
| **Real-time collaboration** | Allow WebSocket traffic to `*.svc.ms` and `*.office.com` |
| **Full features** | Exchange Online mailbox required for @mentions and workspace sharing |

## Overview

Loop components create `.loop` files (earlier releases created `.fluid` files), stored in OneDrive, SharePoint, or SharePoint Embedded. Storage counts against your organization's SharePoint quota. For details, see [storage](loop-storage.md). To control creation, see [admin policies](loop-admin-configuration.md).

## Network requirements

### URLs and IP address ranges

Verify that required network connections are allowed. Loop relies on core Microsoft 365 and SharePoint infrastructure. Configure your firewall or proxy settings according to [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges).

### WebSocket connections

Allow WebSocket traffic to `*.svc.ms` and `*.office.com` endpoints. WebSocket connections enable real-time collaboration features including live editing, presence indicators, and shared cursors.

## License requirements

### Loop components

Users need a OneDrive or SharePoint license.

### Loop workspaces

Users need a license that includes the Loop with workspaces service plan. This covers creating new workspaces and managing workspace members. See [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa) for eligible licenses.

## Exchange Online requirement

For full functionality including @mentions and workspace sharing, users need an Exchange Online mailbox. Users with Exchange On-Premises mailboxes have limited capabilities.

## Related articles

- [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa)
- [Admin policies](loop-admin-configuration.md)
- [UX examples for admin policy states](loop-ux-examples.md)
- [Storage](loop-storage.md)
- [Permissions](loop-permission.md)
- [Summary of compliance capabilities](loop-compliance-summary.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
