---
title: Manage spoofed senders using the spoof intelligence policy and spoof intelligence insight
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: overview

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 59a3ecaf-15ed-483b-b824-d98961d88bdd
ms.collection:
  - M365-security-compliance
description: Admins can learn how to use the spoof intelligence policy and the spoof intelligence insight to allow or block detected spoofed senders.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ROBOTS: NOINDEX, NOFOLLOW
---

# Manage spoofed senders using the spoof intelligence policy and spoof intelligence insight in EOP

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> Spoofed sender management in the Microsoft 365 Defender portal is now available only on the **Spoofed senders** tab in the Tenant Allow/Block List. For current procedures in the Microsoft 365 Defender portal, see [Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md).
>
> Spoofed sender management in Exchange Online PowerShell or Standalone EOP PowerShell is in the process of being migrated exclusively to the related **\*-TenantAllowBlockListSpoofItems**, **Get-SpoofIntelligenceInsight**, and **Get-SpoofMailReport** cmdlets. For procedures using these cmdlets, see the following articles:
>
> - [Use PowerShell to view allow or block entries for spoofed senders in the Tenant Allow/Block List](allow-block-email-spoof.md#use-powershell-to-view-allow-or-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to create allow entries for spoofed senders](allow-block-email-spoof.md#use-powershell-to-create-allow-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to create block entries for spoofed senders](allow-block-email-spoof.md#use-powershell-to-create-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to modify allow or block entries for spoofed senders in the Tenant Allow/Block List](allow-block-email-spoof.md#use-powershell-to-modify-allow-or-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to remove allow or block entries for spoofed senders from the Tenant Allow/Block List](allow-block-email-spoof.md#use-powershell-to-remove-allow-or-block-entries-for-spoofed-senders-from-the-tenant-allowblock-list)
>
> The older spoofed sender management experience using the **Get-PhishFilterPolicy** and **Set-PhishFilterPolicy** cmdlets is in the process of being deprecated, but is still presented in this article for completeness until the cmdlets are removed everywhere.

## What do you need to know before you begin?

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To modify the spoof intelligence policy or enable or disable spoof intelligence, you need to be a member of:
    - **Organization Management**
    - **Security Administrator** <u>and</u> **View-Only Configuration** or **View-Only Organization Management**.
  - For read-only access to the spoof intelligence policy, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- The options for spoof intelligence are described in [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings).

- You can enable, disable, and configure the spoof intelligence settings in anti-phishing policies. For instructions based on your subscription, see one of the following topics:

  - [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).
  - [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md).

- For our recommended settings for spoof intelligence, see [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings).

## Use PowerShell to manage spoofed senders

To view allowed and blocked senders in spoof intelligence, use the following syntax:

```powershell
Get-PhishFilterPolicy [-AllowedToSpoof <Yes | No | Partial>] [-ConfidenceLevel <Low | High>] [-DecisionBy <Admin | SpoofProtection>] [-Detailed] [-SpoofType <Internal | External>]
```

This example returns detailed information about all senders that are allowed to spoof users in your domains.

```powershell
Get-PhishFilterPolicy -AllowedToSpoof Yes -Detailed -SpoofType Internal
```

For detailed syntax and parameter information, see [Get-PhishFilterPolicy](/powershell/module/exchange/get-phishfilterpolicy).

To configure allowed and blocked senders in spoof intelligence, follow these steps:

1. Capture the current list of detected spoofed senders by writing the output of the **Get-PhishFilterPolicy** cmdlet to a CSV file by running the following command:

   ```powershell
   Get-PhishFilterPolicy -Detailed | Export-CSV "C:\My Documents\Spoofed Senders.csv"
   ```

2. Edit the CSV file to add or modify the following values:
   - **Sender** (domain in source server's PTR record, IP/24 address, or verified DKIM domain)
   - **SpoofedUser**: One of the following values:
     - The internal user's email address.
     - The external user's email domain.
     - A blank value that indicates you want to block or allow any and all spoofed messages from the specified **Sender**, regardless of the spoofed email address.
   - **AllowedToSpoof** (Yes or No)
   - **SpoofType** (Internal or External)

   Save the file, read the file, and store the contents as a variable named `$UpdateSpoofedSenders` by running the following command:

   ```powershell
   $UpdateSpoofedSenders = Get-Content -Raw "C:\My Documents\Spoofed Senders.csv"
   ```

3. Use the `$UpdateSpoofedSenders` variable to configure the spoof intelligence policy by running the following command:

   ```powershell
   Set-PhishFilterPolicy -Identity Default -SpoofAllowBlockList $UpdateSpoofedSenders
   ```

For detailed syntax and parameter information, see [Set-PhishFilterPolicy](/powershell/module/exchange/set-phishfilterpolicy).

## How do you know these procedures worked?

To verify that you've configured spoof intelligence with senders who are allowed and not allowed to spoof, run the following commands in PowerShell to view the senders who are allowed and not allowed to spoof:

  ```powershell
  Get-PhishFilterPolicy -AllowedToSpoof Yes -SpoofType Internal
  Get-PhishFilterPolicy -AllowedToSpoof No -SpoofType Internal
  Get-PhishFilterPolicy -AllowedToSpoof Yes -SpoofType External
  Get-PhishFilterPolicy -AllowedToSpoof No -SpoofType External
  ```

- In PowerShell, run the following command to export the list of all spoofed senders to a CSV file:

   ```powershell
   Get-PhishFilterPolicy -Detailed | Export-CSV "C:\My Documents\Spoofed Senders.csv"
   ```
