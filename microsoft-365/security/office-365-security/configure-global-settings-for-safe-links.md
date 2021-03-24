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

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to view and configure global settings (the 'Block the following URLs' list and protection for Office 365 apps) for Safe Links in Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---

# Configure global settings for Safe Links in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Microsoft Defender for Office 365](defender-for-office-365.md) that provides URL scanning of inbound email messages in mail flow, and time of click verification of URLs and links in email messages and in other locations. For more information, see [Safe Links in Microsoft Defender for Office 365](safe-links.md).

You configure most Safe Links settings in Safe Links policies. For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md).

But, Safe Links also uses global settings that apply to all users who are included in any active Safe Links policies. These global settings area:

- The **Block the following URLs** list. For more information, see ["Block the following URLs" list for Safe Links](safe-links.md#block-the-following-urls-list-for-safe-links)
- Safe Links protection for Office 365 apps. For more information, see [Safe Links settings for Office 365 apps](safe-links.md#safe-links-settings-for-office-365-apps).

You can configure the global Safe Links settings in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Microsoft Defender for Office 365 add-on subscriptions).

## What do you need to know before you begin?

- The features provided by global settings for Safe Links are only applied to users who are included in active Safe Links policies. There is no built-in or default Safe Links policy, so you need to create at least one Safe Links policy in order for these global settings to be active. For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md).

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Safe Links** page, use <https://protection.office.com/safelinksv2>.

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

## Configure the "Block the following URLs" list in the Security & Compliance Center

The **Block the following URLs** list identifies the links that should always be blocked by Safe Links scanning in supported apps. For more information, see ["Block the following URLs" list for Safe Links](safe-links.md#block-the-following-urls-list-for-safe-links).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**, and then click **Global settings**.

2. In the **Safe Links policy for your organization** fly out that appears, go to the **Block the following URLs** box.

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

## Configure Safe Links protection for Office 365 apps in the Security & Compliance Center

Safe Links protection for Office 365 apps applies to documents in supported Office desktop, mobile, and web apps. For more information, see [Safe Links settings for Office 365 apps](safe-links.md#safe-links-settings-for-office-365-apps).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**, and then click **Global settings**.

2. In the **Safe Links policy for your organization** fly out that appears, configure the following settings in the **Settings that apply to content except email** section:

   - **Office 365 applications**: Verify the toggle is to the right to enable Safe Links for supported Office 365 apps: ![Toggle on](../../media/scc-toggle-on.png).

   - **Do not track when users click Safe Links**: Move the toggle to the left to track user clicks related to blocked URLs in supported Office 365 apps: ![Toggle off](../../media/scc-toggle-off.png).

   - **Do not let users click through Safe Links to the original URL**: Verify the toggle is to the right to prevent users from clicking through to the original blocked URL in supported Office 365 apps: ![Toggle on](../../media/scc-toggle-on.png).

   When you're finished, click **Save**.

### Configure Safe Links protection for Office 365 apps in PowerShell

If you'd rather use PowerShell to configure Safe Links protection for Office 365 apps, use the following syntax in Exchange Online PowerShell or Exchange Online Protection PowerShell:

```powershell
Set-AtpPolicyForO365 [-EnableSafeLinksForO365Clients <$true | $false> [-AllowClickThrough <$true | $false>] [-TrackClicks <$true | $false>]
```

This example configures the following settings for Safe Links protection in Office 365 apps:

- Safe Links for Office 365 apps is turned on (we aren't using the _EnableSafeLinksForO365Clients_ parameter, and the default value is $true).
- User clicks related to blocked URLs in supported Office 365 apps are tracked.
- Users are not allowed to click through to the original blocked URL in supported Office 365 apps (we aren't using the _AllowClickThrough_ parameter, and the default value is $false).

```powershell
Set-AtpPolicyForO365 -TrackClicks $true
```

For detailed syntax and parameter information, see [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365).

## How do you know these procedures worked?

To verify that you've successfully configured the global settings for Safe Links (the **Block the following URLs** list and the Office 365 app protection settings), do any of the following steps:

- In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**, click **Global settings**, and verify the settings in the fly out that appears.

- In Exchange Online PowerShell or Exchange Online Protection PowerShell, run the following command and verify the settings:

  ```powershell
  Get-AtpPolicyForO365 | Format-List BlockUrls,EnableSafeLinksForO365Clients,AllowClickThrough,TrackClicks
  ```

  For detailed syntax and parameter information, see [Get-AtpPolicyForO365](/powershell/module/exchange/get-atppolicyforo365).