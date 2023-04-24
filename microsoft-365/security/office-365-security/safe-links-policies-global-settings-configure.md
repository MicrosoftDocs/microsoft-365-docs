---
title: Configure global settings for Safe Links settings in Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid:
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Admins can learn how to view and configure the 'Block the following URLs' list for Safe Links in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 4/20/2023
---

# Configure the "Block the following URLs" list for Safe Links in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> As of April 1 2023, the **Block the following URLs** list for Safe Links no longer works. For more information, see [MC373880](https://admin.microsoft.com/AdminPortal/Home#/MessageCenter/:/messages/MC373880). Instead, use [block entries for URLs in the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list). Messages that are blocked by URL entries in the Tenant Allow/Block List are quarantined as high confidence phishing.
>
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you're a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

In organizations with Microsoft Defender for Office 365, Safe Links provides URL scanning of links in messages, Microsoft Teams, and supported Office 365 apps. For more information, see [Safe Links in Microsoft Defender for Office 365](safe-links-about.md).

The "Block the following URLs" list for Safe Links applies to all users who are included in any Safe Links policies. For more information, see ["Block the following URLs" list for Safe Links](safe-links-about.md#block-the-following-urls-list-for-safe-links).

You configure the "Block the following URLs" list for Safe Links in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

## What do you need to know before you begin?

- Although there's no default Safe Links policy, the **Built-in protection** preset security policy provides Safe Links protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md). You can also create Safe Links policies to apply to specific users, group, or domains. For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): **configuration/security (manage)** or **configuration/security (read)**. Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Configure global settings for Safe Links_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to global settings for Safe Links_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended values for the global settings for Safe Links, see [Safe Links settings](recommended-settings-for-eop-and-office365.md#safe-links-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

## Configure the "Block the following URLs" list in the Microsoft 365 Defender portal

> [!NOTE]
> As described in [MC373880](https://admin.microsoft.com/AdminPortal/Home#/MessageCenter/:/messages/MC373880), the ability to add entries to the "Block the following URLs" list for Safe Links was deprecated in June 2022, and the list no longer works as of April 1 2023.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. Or, to go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, select :::image type="icon" source="../../media/m365-cc-sc-gear-icon.png" border="false"::: **Global settings**.

3. On the **Safe Links settings for your organization** flyout that opens, the following options are available:

   - Use the :::image type="icon" source="../../media/search-icon.png" border="false"::: **Search URL** box to find URL entries.

   - Use the **Filter** drop down list to filter the list of URL entries by the following values:
     - **All**
     - **Migrated**: Entries that were automatically migrated as [URL block entries in the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#create-block-entries-for-urls) from June 2022 to December 2022.
     - **Manually migrate**: Entries that couldn't be automatically migrated to the Tenant Allow/Block List. Automatic migration of URL entries to the Tenant Allow/Block List ended in December 2022.

     - Use **Delete all URLs in the current list** to remove entries (affected by the **Filter** value).

   When you're finished on the **Safe Links settings for your organization** flyout that opens, select **Save**.

### Configure the "Block the following URLs" list in PowerShell

You can use the [Get-AtpPolicyForO365](/powershell/module/exchange/get-atppolicyforo365) cmdlet in Exchange Online PowerShell to view existing entries in the _BlockURLs_ property.

For example:

  ```powershell
  Get-AtpPolicyForO365 | Format-List BlockUrls
  ```

For details about the entry syntax, see [Entry syntax for the "Block the following URLs" list](safe-links-about.md#entry-syntax-for-the-block-the-following-urls-list).
