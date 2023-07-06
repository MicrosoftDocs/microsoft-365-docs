---
title: "Exchange Multi-Geo"
ms.reviewer: adwood
ms.date: 6/20/2023
ms.author: chrisda
author: chrisda
manager: serdars
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.localizationpriority: medium
description: Learn about multi-geo capabilities in Exchange Online, such as feature limitations and mailbox placement.
---

# Multi-Geo Capabilities in Exchange Online

In a multi-geo environment, you can select the location of Exchange Online mailbox content (data at rest) on a per-user basis.

You can place mailboxes in satellite geo locations by:

- Creating a new Exchange Online mailbox directly in a satellite geo location.
- Moving an existing Exchange Online mailbox to a satellite geo location by changing the user's preferred data location.
- Onboarding a mailbox from an on-premises Exchange organization directly into a satellite geo location.

> [!NOTE]
> This feature doesn't guarantee email routing through a dedicated geo-specific region (data in transit).

## Mailbox placement and moves

After Microsoft completes the prerequisite multi-geo configuration steps, Exchange Online will honor the **PreferredDataLocation** attribute on user objects in Microsoft Azure Active Directory (Azure AD).

Exchange Online synchronizes the **PreferredDataLocation** property from Azure AD into the **MailboxRegion** property in the Exchange Online directory service. The value of **MailboxRegion** determines the geo location where user mailboxes and any associated archive mailboxes are placed. It isn't possible to configure a user's primary mailbox and archive mailboxes to reside in different geo locations. Only one geo location per user object is allowed.

- When **PreferredDataLocation** is configured on a user with an existing mailbox, the mailbox is put into a relocation queue and automatically moved to the specified geo location.
- When **PreferredDataLocation** is configured on a user without an existing mailbox, the mailbox is provisioned into the specified geo location when you provision the mailbox.
- When **PreferredDataLocation** isn't specified on a user, the mailbox is provisioned in the central geo location when you provision the mailbox.
- If the **PreferredDataLocation** code is incorrect (for example, a typo of NAN instead of NAM), the mailbox is provisioned in the central geo location.

> [!NOTE]
> Multi-geo capabilities and Microsoft Teams regionally hosted meetings both use the **PreferredDataLocation** property on user objects to locate services. If you configure **PreferredDataLocation** values on user objects for regionally hosted meetings, the mailbox for those users will be automatically moved to the specified geo location after multi-geo is enabled on the Microsoft 365 tenant.

## Feature limitations for multi-geo in Exchange Online

- Outlook for Mac users may experience a temporary loss of access to their Online Archive folder while you move their mailbox to a new geo location. This condition occurs when the user's the primary and archive mailboxes are in different geo locations, because cross-geo mailbox moves may complete at different times.

- Users can't share *mailbox folders* across geo locations in Outlook on the web (formerly known as Outlook Web App or OWA). For example, a user in the European Union can't use Outlook on the web to open a shared folder in a mailbox that's located in the United States. However, Outlook on the Web users can open *other mailboxes* in different geo locations by using a separate browser window as described in [Open another person's mailbox in a separate browser window in Outlook Web App](https://support.office.com/article/A909AD30-E413-40B5-A487-0EA70B763081#__toc372210362).

  **Note**: Cross-geo mailbox folder sharing is supported in Outlook on Windows.

- Public folders are supported in multi-geo organizations. However, the public folders must remain in the central geo location. You can't move public folders to satellite geo locations.

- In a multi-geo environment, cross-geo mailbox auditing isn't supported. For example, if a user is assigned permissions to access a shared mailbox in a different geo location, mailbox actions performed by that user aren't logged in the mailbox audit log of the shared mailbox. Exchange admin audit events are available for all locations via [Microsoft Purview](/microsoft-365/compliance/audit-solutions-overview) and the [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog) cmdlet. For more information, see [Manage mailbox auditing](../compliance/enable-mailbox-auditing.md).
