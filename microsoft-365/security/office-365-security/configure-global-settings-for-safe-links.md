---
title: Configure global settings for Safe Links settings in Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.date:

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid:
ms.collection:
  - m365-security
ms.custom:
description: Admins can learn how to view and configure global settings (the 'Block the following URLs' list and protection for Office 365 apps) for Safe Links in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Configure global settings for Safe Links in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> The **Global settings** menu and the **Block the following URLs** list for Safe Links are in the process of being deprecated. Use block entries for URLs in the [Tenant Allow/Block List](allow-block-urls.md#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list) instead.
>
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Microsoft Defender for Office 365](defender-for-office-365.md) that provides URL scanning of inbound email messages in mail flow, and time of click verification of URLs and links in email messages and in other locations. For more information, see [Safe Links in Microsoft Defender for Office 365](safe-links.md).

You configure most Safe Links settings in Safe Links policies, including [Safe Links settings for supported Office Apps](safe-links.md#safe-links-settings-for-office-apps). For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md).

But, Safe Links also uses the following global settings that you configure outside of the Safe Links policies themselves:

- The **Block the following URLs** list. This setting applies to all users who are included in any active Safe Links policies. For more information, see ["Block the following URLs" list for Safe Links](safe-links.md#block-the-following-urls-list-for-safe-links)

You can configure the global Safe Links settings in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Microsoft Defender for Office 365 add-on subscriptions).

## What do you need to know before you begin?

- Although there's no default Safe Links policy, the **Built-in protection** preset security policy provides Safe Links protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md). You can also create Safe Links policies to apply to specific users, group, or domains. For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md).

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To configure the global settings for Safe Links, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to the global settings for Safe Links, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended values for the global settings for Safe Links, see [Safe Links settings](recommended-settings-for-eop-and-office365.md#safe-links-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

- [New features are continually being added to Microsoft Defender for Office 365](defender-for-office-365.md#new-features-in-microsoft-defender-for-office-365). As new features are added, you may need to make adjustments to your existing Safe Links policies.

## Configure the "Block the following URLs" list in the Microsoft 365 Defender portal

> [!NOTE]
> You can now manage block URL entries in the [Tenant Allow/Block List](allow-block-urls.md#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list). The "Block the following URLs" list is in the process of being deprecated. We'll attempt to migrate existing entries from the "Block the following URLs" list to block URL entries in the Tenant Allow/Block List. Messages containing the blocked URL will be quarantined.

The **Block the following URLs** list identifies the links that should always be blocked by Safe Links scanning in supported apps. For more information, see ["Block the following URLs" list for Safe Links](safe-links.md#block-the-following-urls-list-for-safe-links).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, click **Global settings**. In the **Safe Links policy for your organization** fly out that appears, go to the **Block the following URLs** box.

3. Configure one or more entries as described in [Entry syntax for the "Block the following URLs" list](safe-links.md#entry-syntax-for-the-block-the-following-urls-list).

   When you're finished, click **Save**.

### Configure the "Block the following URLs" list in PowerShell

For details about the entry syntax, see [Entry syntax for the "Block the following URLs" list](safe-links.md#entry-syntax-for-the-block-the-following-urls-list).

You can use the **Get-AtpPolicyForO365** cmdlet to view existing entries in the _BlockURLs_ property.

- To add values that will replace any existing entries, use the following syntax in Exchange Online PowerShell or Exchange Online Protection PowerShell:

  ```powershell
  Set-AtpPolicyForO365 -BlockUrls "Entry1","Entry2",..."EntryN"
  ```

  This example adds the following entries to the list:

  - Block the domain, subdomains, and paths for fabrikam.com.
  - Block the subdomain research, but not the parent domain or other subdomains in tailspintoys.com

  ```powershell
  Set-AtpPolicyForO365 -BlockUrls "fabrikam.com","https://research.tailspintoys.com*"
  ```

- To add or remove values without affecting other existing entries, use the following syntax:

  ```powershell
  Set-AtpPolicyForO365 -BlockUrls @{Add="Entry1","Entry2"...; Remove="Entry3","Entry4"...}
  ```

  This example adds a new entry for adatum.com, and removes the entry for fabrikam.com.

  ```powershell
  Set-AtpPolicyForO365 -BlockUrls @{Add="adatum.com"; Remove="fabrikam"}
  ```

## How do you know these procedures worked?

To verify that you've successfully configured the global settings for Safe Links (the **Block the following URLs** list and the Office 365 app protection settings), do any of the following steps:

- On the **Safe Links** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safelinksv2>, click **Global settings**, and verify the settings in the fly out that appears.

- In Exchange Online PowerShell or Exchange Online Protection PowerShell, run the following command and verify the settings:

  ```powershell
  Get-AtpPolicyForO365 | Format-List BlockUrls
  ```

  For detailed syntax and parameter information, see [Get-AtpPolicyForO365](/powershell/module/exchange/get-atppolicyforo365).
