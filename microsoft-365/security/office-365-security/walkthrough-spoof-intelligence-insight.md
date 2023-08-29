---
title: Manage spoofed senders using the spoof intelligence policy and spoof intelligence insight
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: overview
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 59a3ecaf-15ed-483b-b824-d98961d88bdd
ms.collection:
  - m365-security
  - tier2
description: Admins can learn how to use the spoof intelligence policy and the spoof intelligence insight to allow or block detected spoofed senders.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ROBOTS: NOINDEX, NOFOLLOW
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Manage spoofed senders using the spoof intelligence policy and spoof intelligence insight in EOP

> [!IMPORTANT]
> Spoofed sender management in the Microsoft 365 Defender portal is now available only on the **Spoofed senders** tab in the Tenant Allow/Block List. For current procedures in the Microsoft 365 Defender portal, see [Spoof intelligence insight in EOP](anti-spoofing-spoof-intelligence.md).
>
> Spoofed sender management in Exchange Online PowerShell or Standalone EOP PowerShell is in the process of being migrated exclusively to the related **\*-TenantAllowBlockListSpoofItems**, **Get-SpoofIntelligenceInsight**, and **Get-SpoofMailReport** cmdlets. For procedures using these cmdlets, see the following articles:
>
> - [Use PowerShell to view entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-view-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to create allow entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-create-allow-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to create block entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-create-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to modify entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-modify-entries-for-spoofed-senders-in-the-tenant-allowblock-list)
> - [Use PowerShell to remove entries for spoofed senders from the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-remove-entries-for-spoofed-senders-from-the-tenant-allowblock-list)
>
> The older spoofed sender management experience using the **Get-PhishFilterPolicy** and **Set-PhishFilterPolicy** cmdlets is in the process of being deprecated, but is still presented in this article for completeness until the cmdlets are removed everywhere.

## What do you need to know before you begin?

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Modify the spoof intelligence policy or turn on or turn off spoof intelligence_: Membership in one of the following role groups:
      - **Organization Management**
      - **Security Administrator** <u>and</u> **View-Only Configuration** or **View-Only Organization Management**.
    - _Read-only access to the spoof intelligence policy_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- The options for spoof intelligence are described in [Spoof settings in anti-phishing policies](anti-phishing-policies-about.md#spoof-settings).

- You can enable, disable, and configure the spoof intelligence settings in anti-phishing policies. For instructions based on your subscription, see one of the following topics:

  - [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md).
  - [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md).

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
