---
title: Give users access to the Security & Compliance Center
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: how-to
f1_keywords: 
  - 'ms.o365.cc.PermissionsHelp'

localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid: 
  - MOE150
  - MET150
ms.assetid: 2cfce2c8-20c5-47f9-afc4-24b059c1bd76
description: Users need to be assigned permissions in the Microsoft 365 Security & Compliance Center before they can manage any of its security or compliance features.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Give users access to the Security & Compliance Center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

Users need to be assigned permissions in the Security & Compliance Center before they can manage any of its security or compliance features. As a global admin or member of the OrganizationManagement role group in the Security & Compliance Center, you can give these permissions to users. Users will only be able to manage the security or compliance features that you give them access to.

For more information about the different permissions you can give to users in the Security & Compliance Center, check out [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## What do you need to know before you begin?

- You need to be a global admin, or a member of the OrganizationManagement role group in the Security & Compliance Center, to complete the steps in this article.

- Role groups for the Security & Compliance Center might have similar names to the role groups in Exchange Online, but they're not the same.

- Role group memberships aren't shared between Exchange Online and the Security & Compliance Center.

- Delegated Access Permission (DAP) partners with Administer On Behalf Of (AOBO) permissions can't access the Security & Compliance Center.

## Use the Security & Compliance Center to give another user access to the Security & Compliance Center

1. Open the Security & Compliance Center at <https://protection.office.com> and then go to **Permissions**. To go directly to the **Permissions** tab, open <https://protection.office.com/permissions>.

2. From the list of role groups, choose the role group, and then click **Edit** ![Edit icon](../../media/O365-MDM-CreatePolicy-EditIcon.gif).

3. In the role group's properties page under **Members**, click **Add**![Add Icon](../../media/ITPro-EAC-AddIcon.gif) and select the name of the user (or users) you want to add.

4. When you've selected all of the users you want to add to the role group, click **add-\>** and then **OK**.

5. When you're finished, click **Save**.

## Use Security & Compliance Center PowerShell to give another user access to the Security & Compliance Center

1. [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell).

2. Use the following syntax:

   ```powershell
   Add-RoleGroupMember -Identity <RoleGroup> -Member <UserIdentity>

   - _Identity_ is the role group.
   - _Member_ is the user or universal security group (USG). You can specify only one member at a time.

   This example adds MatildaS to the Organization Management role group.

   ```PowerShell
   Add-RoleGroupMember -Identity "Organization Management" -Member MatildaS
   ```

For detailed syntax and parameter issues, see [Add-RoleGroupMember](https://docs.microsoft.com/powershell/module/exchange/add-rolegroupmember)

### How do you know this worked?

To verify that you've successfully granted access to the Security & Compliance Center, do either of the following steps:

- In the Security & Compliance Center, go to **Permissions** and select the role group. In the details flyout that opens, verify the members of the role group.

- In Security & Compliance Center PowerShell, replace \<RoleGroupName\> with the name of the role group, and run the following command:

  ```powershell
  Get-RoleGroupMember -Identity "<RoleGroupName>"
  ```

  For detailed syntax and parameter information, see [Get-RoleGroupMember](https://docs.microsoft.com/powershell/module/exchange/Get-RoleGroupMember).
