---
title: Modify and remove entries in the Tenant Allow/Block List
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
description: Admins can learn how to modify and remove entries in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Modify and remove entries in the Tenant Allow/Block List

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

You can use the Microsoft 365 Defender portal or PowerShell to modify and remove entries in the Tenant Allow/Block List.

## Use the Microsoft 365 Defender portal

### Modify entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab that contains the type of entry that you want to modify:
   - **Senders)
   - **URLs**
   - **Files**
   - **Spoofing**

3. Select the entry that you want to modify, and then click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**. The values that you are able to modify in the flyout that appears depend on the tab you selected in the previous step:
   - **Senders**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **URLs**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Files**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Spoofing**
     - **Action**: You can change the value to **Allow** or **Block**.
4. When you're finished, click **Save**.

> [!NOTE]
> You can only extend allows for a maximum of 30 days after the creation date. Blocks can be extended for up to 90 days, but unlike allows, they can also be set to Never expire.

### Remove entries from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab that contains the type of entry that you want to remove:
   - **Senders**
   - **URLs**
   - **Files**
   - **Spoofing**

3. Select the entry that you want to remove, and then click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.

## Use PowerShell

### Modify block file and URL entries in the Tenant Allow/Block List

To modify block sender, file, and URL entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType <Sender | FileHash | Url> -Ids <"Id1","Id2",..."IdN"> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the specified block URL entry.

```powershell
Set-TenantAllowBlockListItems -ListType Url -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSRAAAA" -ExpirationDate "5/30/2020"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

### Remove URL or file entries from the Tenant Allow/Block List

To remove sender, file, and URL entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType <Sender | FileHash | Url> -Ids <"Id1","Id2",..."IdN">
```

This example removes the specified block URL entry from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Url -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSPAAAA0"
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

### Modify allow or block spoofed sender entries

To modify allow or block spoofed sender entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListSpoofItems -Ids <"Id1","Id2",..."IdN"> -Action <Allow | Block>
```

This example changes spoofed sender entry from allow to block.

```powershell
Set-TenantAllowBlockListItems -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSRAAAA" -Action Block
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListSpoofItems](/powershell/module/exchange/set-tenantallowblocklistspoofitems).

### Remove allow or block spoofed sender entries

To remove allow or block spoof sender entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListSpoofItems -Ids <"Id1","Id2",..."IdN">
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListSpoofItems](/powershell/module/exchange/remove-tenantallowblocklistspoofitems).
