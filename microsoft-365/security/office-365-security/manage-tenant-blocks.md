---
title: Manage your blocks in the Tenant Allow/Block List
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to configure blocks in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Manage blocks in the Tenant Allow/Block List

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

## Use the Microsoft 365 Defender portal 

### Create block URL entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, verify that the **URLs** tab is selected, and then click ![Block icon](../../media/m365-cc-sc-create-icon.png) **Block**.

3. In the **Block URLs** flyout that appears, configure the following settings:
   - **Add URLs with wildcards**: Enter one URL per line, up to a maximum of 20. For details about the syntax for URL entries, see the URL syntax section in [Manage the Tenant Allow/Block List](tenant-allow-block-list.md).
   - **Never expire**: Do one of the following steps:
     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Remove on** box to specify the expiration date for the entries.

       or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on](../../media/scc-toggle-on.png).
   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

### Create block file entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, select the **Files** tab, and then click ![Block icon](../../media/m365-cc-sc-create-icon.png) **Block**.

3. In the **Block files** flyout that appears, configure the following settings:
   - **Add file hashes**: Enter one SHA256 hash value per line, up to a maximum of 20.
   - **Never expire**: Do one of the following steps:
     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Remove on** box to specify the expiration date for the entries.

     or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on](../../media/scc-toggle-on.png).
   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

### View entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab you want. The columns that are available depend on the tab you selected:

   - **URLs**:
     - **Value**: The URL.
     - **Action**: The value **Block**.
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Files**
     - **Value**: The file hash.
     - **Action**: The value **Block**.
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Spoofing**
     - **Spoofed user**
     - **Sending infrastructure**
     - **Spoof type**: The value **Internal** or **External**.
     - **Action**: The value **Block** or **Allow**.

   You can click on a column heading to sort in ascending or descending order.

   You can click **Group** to group the results. The values that are available depend on the tab you selected:

   - **URLs**: You can group the results by **Action**.
   - **Files**: You can group the results by **Action**.
   - **Spoofing**: You can group the results by **Action** or **Spoof type**.

   Click **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click **Filter** to filter the results. The values that are available in **Filter** flyout that appears depend on the tab you selected:

   - **URLs**
     - **Action**
     - **Never expire**
     - **Last updated date**
     - **Remove on**
   - **Files**
     - **Action**
     - **Never expire**
     - **Last updated**
     - **Remove on**
   - **Spoofing**
     - **Action**
     - **Spoof type**

   When you're finished, click **Apply**. To clear existing filters, click **Filter**, and in the **Filter** flyout that appears, click **Clear filters**.

### Modify entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab that contains the type of entry that you want to modify:
   - **URLs**
   - **Files**
   - **Spoofing**

3. Select the entry that you want to modify, and then click ![Edit icon](../../media/m365-cc-sc-edit-icon.png) **Edit**. The values that you are able to modify in the flyout that appears depend on the tab you selected in the previous step:
   - **URLs**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Files**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Spoofing**
     - **Action**: You can change the value to **Allow** or **Block**.
4. When you're finished, click **Save**.

### Remove entries from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab that contains the type of entry that you want to remove:
   - **URLs**
   - **Files**
   - **Spoofing**

3. Select the entry that you want to remove, and then click ![Delete icon](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.

## Use PowerShell

### Add block file or URL entries to the Tenant Allow/Block List

To add block file or URL entries in the Tenant Allow/Block List, use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType <FileHash | Url> -Block -Entries "Value1","Value2",..."ValueN" <-ExpirationDate Date | -NoExpiration> [-Notes <String>]
```

This example adds a block file entry for the specified files that never expires.

```powershell
New-TenantAllowBlockListItems -ListType FileHash -Block -Entries "768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3","2c0a35409ff0873cfa28b70b8224e9aca2362241c1f0ed6f622fef8d4722fd9a" -NoExpiration
```

This example adds a block URL entry for contoso.com and all subdomains (for example, contoso.com, www.contoso.com, and xyz.abc.contoso.com). Because we didn't use the ExpirationDate or NoExpiration parameters, the entry expires after 30 days.

```powershell
New-TenantAllowBlockListItems -ListType Url -Block -Entries ~contoso.com
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

### View block file or URL entries in the Tenant Allow/Block List

To view block file or URL entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType <FileHash | URL> [-Entry <FileHashValue | URLValue>] [<-ExpirationDate Date | -NoExpiration>]
```

This example returns information for the specified file hash value.

```powershell
Get-TenantAllowBlockListItems -ListType FileHash -Entry "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"
```

This example returns all blocked URLs.

```powershell
Get-TenantAllowBlockListItems -ListType Url -Block
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

### Modify block file and URL entries in the Tenant Allow/Block List

To modify block file and URL entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType <FileHash | Url> -Ids <"Id1","Id2",..."IdN"> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the specified block URL entry.

```powershell
Set-TenantAllowBlockListItems -ListType Url -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSRAAAA" -ExpirationDate "5/30/2020"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

### Remove URL or file entries from the Tenant Allow/Block List

To remove file and URL entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType <FileHash | Url> -Ids <"Id1","Id2",..."IdN">
```

This example removes the specified block URL entry from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Url -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSPAAAA0"
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).
