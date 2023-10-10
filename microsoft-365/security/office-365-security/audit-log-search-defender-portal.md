---
title: Audit log search in the Microsoft 365 Defender portal
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.collection: 
  - m365-security
  - tier2
ms.localizationpriority: medium
ms.assetid:
ms.custom: 
  - seo-marvel-apr2020
description: Admins can use the Audit page in the Microsoft 365 Defender portal to search the unified audit log for user and admin actions in the organization.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 10/9/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Audit log search in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, the unified audit log records supported user and admin operations. Audit records for these events are searchable by security ops, IT admins, insider risk teams, and compliance and legal investigators in the organization. This capability provides visibility into the activities performed across your Microsoft 365 organization.

> [!TIP]
> Audit log search in Microsoft 365 Defender portal is identical to audit log search in the Microsoft Purview compliance portal at <https://compliance.microsoft.com/auditlogsearch>.

## What do you need to know before you begin?

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online permissions](/exchange/permissions-exo/permissions-exo): Membership in the **Organization Management** or **Compliance Management** role groups.
  - [Azure AD permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator** or **Compliance Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Open audit log search

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Audit**. Or, to go directly to the **Audit** page, use <https://security.microsoft.com/auditlogsearch>.

On the **Audit** page, create the audit log search. For instructions, see the following articles:

- [Audit New Search](/purview/audit-new-search)
- [Use a PowerShell script to search the audit log](/purview/audit-log-search-script)
