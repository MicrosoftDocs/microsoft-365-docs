---
title: Allow or block files using the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
description: Admins can learn how to allow or block files in the Tenant Allow/Block List in the Security portal.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Allow or block files using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

This article describes how to manage file allow and block entries that are available in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage your allows and blocks in the Tenant Allow/Block List](manage-tenant-allow-block-list.md).

You manage allow and block entries for files in the Microsoft 365 Defender Portal or in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You specify files by using the SHA256 hash value of the file. To find the SHA256 hash value of a file in Windows, run the following command in a Command Prompt:

  ```DOS
  certutil.exe -hashfile "<Path>\<Filename>" SHA256
  ```

  An example value is `768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3a`. Perceptual hash (pHash) values are not supported.

- For files, the maximum number of allow entries is 500, and the maximum number of block entries is 500 (1000 file entries total).

- You can enter a maximum of 64 characters in a file entry.

- An entry should be active within 30 minutes, but it might take up to 24 hours for the entry to be active.

- You need to be assigned permissions in Exchange Online before you can do the procedures in this article:
  - To add and remove values from the Tenant Allow/Block List, you need to be a member of one of the following role groups:
    - **Organization Management** or **Security Administrator** role group (**Security admin role**)
    - **Security Operator** role group (**Tenant AllowBlockList Manager**).
  - For read-only access to the Tenant Allow/Block List, you need to be a member of one of the following role groups:
    - **Global Reader**  role group
    - **Security Reader** role group
    - **View-Only configuration** role group

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions *and* permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

## Create block entries for files

You have the following options to create block entries for files:

- [The Submissions page in the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-block-entries-for-files-in-the-submissions-portal)
- The Tenant Allow/Block List in [the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-block-entries-for-files-in-the-tenant-allowblock-list) or in [PowerShell](#use-powershell-to-create-block-entries-for-files-in-the-tenant-allowblock-list)

### Use the Microsoft 365 Defender portal to create block entries for files in the Submissions portal

When you use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report files as **Should have been blocked (False negative)**, you can select **Block this file** to add a block entry on the **Files** tab in the Tenant Allow/Block List.

For instructions, see [Report questionable email attachments to Microsoft](admin-submission.md#report-questionable-email-attachments-to-microsoft).

### Use the Microsoft 365 Defender portal to create block entries for files in the Tenant Allow/Block List

You can create block entries for files directly in the Tenant Allow/Block List.

Email messages that contain these blocked files are blocked as *malware*.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, select the **Files** tab.

3. On the **Files** tab, click ![Block icon.](../../media/m365-cc-sc-create-icon.png) **Block**.

4. In the **Block files** flyout that appears, configure the following settings:

   - **Add file hashes**: Enter one SHA256 hash value per line, up to a maximum of 20.

   - **Remove block entry after**: The default value is **30 days**, but you can select from the following values:
     - **1 day**
     - **7 days**
     - **30 days**
     - **Never expire**
     - **Specific date**: The maximum value is 90 days from today.

   - **Optional note**: Enter descriptive text for the entries.

5. When you're finished, click **Add**.

#### Use PowerShell to create block entries for files in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType <FileHash> -Block -Entries "Value1","Value2",..."ValueN" <-ExpirationDate Date | -NoExpiration> [-Notes <String>]
```

This example adds a block entry for the specified files that never expires.

```powershell
New-TenantAllowBlockListItems -ListType FileHash -Block -Entries "768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3","2c0a35409ff0873cfa28b70b8224e9aca2362241c1f0ed6f622fef8d4722fd9a" -NoExpiration
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to create allow entries for files in the Submissions portal

You can't create allow entries for files directly in the Tenant Allow/Block List. Instead, you use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report the message attachment as a false positive, which also adds an allow entry on the **Files** tab in the Tenant Allow/Block List.

For instructions, see [Report good email attachments to Microsoft](admin-submission.md#report-good-email-attachments-to-microsoft).

> [!IMPORTANT]
> Because Microsoft manages allow entries for you, unneeded allow entries for files will be removed. This behavior protects your organization and helps prevent misconfigured allow entries. If you disagree with the verdict, you might need to open a support case to help determine why a file is still considered bad.

## Use the Microsoft 365 Defender portal to view allow or block entries for files in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Files** tab. The following columns are available:

   - **Value**: The file hash.
   - **Action**: The value **Allow** or **Block**.
   - **Modified by**
   - **Last updated**
   - **Remove on**: The expiration date.
   - **Notes**

   You can click on a column heading to sort in ascending or descending order.

   Click ![Group icon.](../../media/m365-cc-sc-group-icon.png) **Group** to group the results by **None** or **Action**.

   Click ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon.](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the results. The following values are available in the **Filter** flyout that appears:

   - **Action**: **Allow** and **Block**.
   - **Never expire**: ![Toggle on.](../../media/scc-toggle-on.png) or ![Toggle off.](../../media/scc-toggle-off.png)
   - **Last updated**: Select **From** and **To** dates.
   - **Remove on**: Select **From** and **To** dates.

   When you're finished, click **Apply**. To clear existing filters, click ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters** in the **Filter** flyout.

### Use PowerShell to view allow or block entries for files in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType FileHash [-Allow] [-Block] [-Entry <FileHashValue>] [<-ExpirationDate Date | -NoExpiration>]
```

This example returns all allowed and blocked files.

```powershell
Get-TenantAllowBlockListItems -ListType FileHash
```

This example returns information for the specified file hash value.

```powershell
Get-TenantAllowBlockListItems -ListType FileHash -Entry "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"
```

This example filters the results by blocked files.

```powershell
Get-TenantAllowBlockListItems -ListType FileHash -Block
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to modify allow or block entries for files in the Tenant Allow/Block List

When you modify allow or block entries for files in the Tenant Allow/Block list, you can only modify the expiration date and notes.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Files** tab

3. On the **Files** tab, select the check box of the entry that you want to modify, and then click the ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** button that appears.

4. The following settings are available in the **Edit file** flyout that appears:

   - **Remove allow entry after** or **Remove block entry after**:
     - You can extend allow entries for a maximum of 30 days after the creation date.
     - You can extend block entries for a maximum of 90 days after the creation date or set them to **Never expire**.

   - **Optional note**

   When you're finished, click **Save**.

> [!NOTE]
> For allow entries only, if you select the entry by clicking anywhere in the row other than the check box, you can select ![View submission icon.](../../media/m365-cc-sc-view-submission-icon.png) **View submission** in the details flyout that appears to go to the **Submissions** page at <https://security.microsoft.com/reportsubmission>.

### Use PowerShell to modify allow or block entries for files in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType <FileHash> <-Ids <Identity value> | -Entries <Value value>> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the specified file block entry.

```powershell
Set-TenantAllowBlockListItems -ListType FileHash -Entries "27c5973b2451db9deeb01114a0f39e2cbcd2f868d08cedb3e210ab3ece102214" -ExpirationDate "9/1/2022"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to remove allow or block entries for files from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Files** tab.

3. On the **Files** tab, do one of the following steps:

   - Select the check box of the entry that you want to remove, and then click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears.
   - Select the entry that you want to remove by clicking anywhere in the row other than the check box. In the details flyout that appears, click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.

> [!NOTE]
> You can select multiple entries by selecting each check box, or select all entries by selecting the check box next to the **Value** column header.

### Use PowerShell to remove allow or block entries for files from the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType FileHash <-Ids <Identity value> | -Entries <Value value>>
```

This example removes the specified file block from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType FileHash -Entries "27c5973b2451db9deeb01114a0f39e2cbcd2f868d08cedb3e210ab3ece102214"
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## Related articles

- [Use the Submissions portal to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](admin-submission.md)
- [Report false positives and false negatives](report-false-positives-and-false-negatives.md)
- [Manage your allows and blocks in the Tenant Allow/Block List](manage-tenant-allow-block-list.md)
- [Allow or block emails in the Tenant Allow/Block List](allow-block-email-spoof.md)
- [Allow or block URLs in the Tenant Allow/Block List](allow-block-urls.md)
