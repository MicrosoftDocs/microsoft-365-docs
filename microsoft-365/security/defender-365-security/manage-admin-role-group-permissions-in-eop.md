---
title: Manage role groups in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
ms.assetid: 125834f4-1024-4325-ad5a-d2573cfb005e
description: Admins can learn how to assign or remove permissions in the Exchange admin center (EAC) in Exchange Online Protection.
ms.technology: mdo
ms.prod: m365-security
---

# Manage role groups in standalone EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
-  [Exchange Online Protection standalone](exchange-online-protection-overview.md)

In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you can use the Exchange admin center (EAC) to add users to role groups. Adding a users to a role group gives the user permissions to do specific admin tasks. You can also remove users from role groups.

For more information about roles and role groups, see [Permissions in standalone EOP](feature-permissions-in-eop.md).

## What do you need to know before you begin?

- To open the Exchange admin center (EAC), see [Exchange admin center in standalone EOP](exchange-admin-center-in-exchange-online-protection-eop.md).

- To open standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in Exchange Online Protection before you can do the procedures in this article. Specifically, you need the **Role Management** role, which is assigned to the **Organization Management** role group by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- For information about keyboard shortcuts that may apply to the procedures in this article, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://social.technet.microsoft.com/Forums/forefront/home?forum=FOPE) forum.

## Use the EAC to manage role groups

### Use the EAC to view role groups

1. In the EAC, go to **Permissions** \> **Admin roles**. All of the role groups in your organization are listed here.

2. Select a role group. The Details pane shows the **Name**, **Description**, **Assigned roles**, and **Managed by** of the role group. You can also see this information by clicking **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).

### Use the EAC to create role groups

When you create a new role group, you can configure all of the settings yourself (during the creation of the group or after). Or, you can copy an existing role group and modify it.

1. In the EAC, go to **Permissions** \> **Admin roles**, and then do one of the following steps:

   - **Manually create a new role group**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png).

   - **Copy an existing role group**: Select the role group that you want to copy and then click **Copy** ![Copy icon](../../media/ITPro-EAC-CopyIcon.png).

2. In the **New role group** window that appears, configure the following settings:

    - **Name**: Enter a unique name for the role group.

    - **Description**: Enter an optional description for the role group.

    - **Roles**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png) or **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif) to select or modify the roles that are assigned to the role group.

    - **Members**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png) or **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif) to modify the role group membership.

3. When you're finished, click **Save** to create the role group.

### Use the EAC to modify role groups

In the EAC, go to **Permissions** \> **Admin roles**, select the role group you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).

The same options are available when you modify role groups as when you create role groups. You can:

- Change the name and description.

- Add and remove management roles (create or remove role assignments).

- Add and remove members.

**Note**: Some role groups (for example, Organization Management) restrict the roles that you can remove from group.

#### Use the EAC modify the list of members in role groups

1. In the EAC, go to **Permissions** \> **Admin roles**, select the role group that you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).

2. In the role group properties page that opens, in the **Members** section, do either of the following steps:

   - Click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.png). In the page that appears, find the user that wou want to add, and then click **add ->**. Select users and click **add ->** many times as necessary. When you're finished, click **OK**.

   - Select the users that you want to remove, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

3. When you're finished, click **Save**.

   > [!NOTE]
   > Users may have to sign out and sign in again to see the change in their administrative rights after you add or remove members from the role group.

### Use the EAC to remove role groups

You can't remove built-in role groups, but you can remove custom role groups that you've created.

1. In the EAC, go to **Permissions** \> **Admin roles**.

2. Select the role group you want to remove and then click **Delete** ![Delete icon](../../media/ITPro-EAC-DeleteIcon.png).

3. Click **Yes** in the confirmation window that appears.

## Use PowerShell to manage role groups

### Use standalone EOP PowerShell to view role groups

To view a role group, use the following syntax:

```PowerShell
Get-RoleGroup [-Identity "<Role Group Name>"] [-Filter <Filter>]
```

This example returns a summary list of all role groups.

```PowerShell
Get-RoleGroup
```

This example returns detailed information for the role group named Recipient Administrators.

```PowerShell
Get-RoleGroup -Identity "Recipient Administrators" | Format-List
```

This example returns all role groups where the user Julia is a member. You need to use the DistinguishedName (DN) value for Julia, which you can find by running the command: `Get-User -Identity Julia | Format-List DistinguishedName`.

```PowerShell
Get-RoleGroup -Filter "Members -eq 'CN=Julia,OU=contoso.onmicrosoft.com,OU=Microsoft Exchange Hosted Organizations,DC=NAMPR001,DC=PROD,DC=OUTLOOK,DC=COM'"
```

For detailed syntax and parameter information, see [Get-RoleGroup](https://docs.microsoft.com/powershell/module/exchange/Get-RoleGroup).

### Use standalone EOP PowerShell to create role groups

When you create a new role group, you can configure all of the settings manually (during the creation of the group or after). Or, you can copy an existing role group and modify it.

- To manually create a new role group, use the following syntax:

  ```PowerShell
  New-RoleGroup -Name "Unique Name" -Description "Descriptive text" -Roles <"Role1","Role2"...>
  ```

  - The _Roles_ parameter specifies the management roles to assign to the role group by using the following syntax `"Role1","Role1",..."RoleN"`. You can see the available roles by using the **Get-ManagementRole** cmdlet.

  - The _Members_ parameter specifies the members of the role group by using the following syntax: `"Member1","Member2",..."MemberN"`. You can specify users, mail-enabled universal security groups (USGs), or other role groups (security principals).

  This example creates a new role group named "Limited Recipient Management" with the following settings:

  - The Mail Recipients role is assigned to the role group.

  - The users Kim and Martin are added as members.

  ```PowerShell
  New-RoleGroup -Name "Limited Recipient Management" -Roles "Mail Recipients" -Members "Kim","Martin"
  ```

- To copy an existing role group, do the following steps:

  1. Store the role group that you want to copy in a variable using the following syntax:

     ```PowerShell
     $RoleGroup = Get-RoleGroup "<Existing Role Group Name>"
     ```

  2. Create the new role group using the following syntax:

     ```PowerShell
     New-RoleGroup -Name "<Unique Name>" -Roles $RoleGroup.Roles [-Members <Members>]
     ```

     The _Members_ parameter specifies the members of the role group by using the following syntax: `"Member1","Member2",..."MemberN"`. You can specify users, mail-enabled universal security groups (USGs), or other role groups (security principals).

     This example copies the Organization Management role group to the new role group named "Limited Organization Management". The role group members are Isabelle, Carter, and Lukas.

     ```PowerShell
     $RoleGroup = Get-RoleGroup "Organization Management"
     New-RoleGroup "Limited Organization Management" -Roles $RoleGroup.Roles -Members "Isabelle","Carter","Lukas"
     ```

For detailed syntax and parameter information, [New-RoleGroup](https://docs.microsoft.com/powershell/module/exchange/New-RoleGroup).

### Use standalone EOP PowerShell modify the list of members in role groups

- The **Add-RoleGroupMember** and **Remove-RoleGroupMember** cmdlets add or remove individual members one at a time. The **Update-RoleGroupMember** cmdlet can replace or modify the existing list of members.

- The members of a role group can be users, mail-enabled universal security groups (USGs), or other role groups (security principals).

To modify the members of a role group, use the following syntax:

```PowerShell
Update-RoleGroupMember -Identity "<Role Group Name>" -Members <Members>
```

- To _replace_ the existing list of members with the values you specify, use the following syntax: `"Member1","Member2",..."MemberN"`.

- To _selectively modify_ the existing list of members, use the following syntax: `@{Add="Member1","Member2"...; Remove="Member3","Member4"...}`.

This example replaces all current members of the Help Desk role group with the specified users.

```PowerShell
Update-RoleGroupMember -Identity "Help Desk" -Members "Gabriela Laureano","Hyun-Ae Rim","Jacob Berger"
```

This example adds Daigoro Akai and removes Valeria Barrio from the list of members on the Help Desk role group.

```PowerShell
Update-RoleGroupMember -Identity "Help Desk" -Members @{Add="Daigoro Akai"; Remove="Valeria Barrios"}
```

For detailed syntax and parameter information, see [Update-RoleGroupMember](https://docs.microsoft.com/powershell/module/exchange/Update-RoleGroupMember).

### Use standalone EOP PowerShell to remove role groups

You can't remove built-in role groups, but you can remove custom role groups that you've created.

To remove a custom role group, use the following syntax:

```PowerShell
Remove-RoleGroup -Identity "<Role Group Name>" [-BypassSecurityGroupManagerCheck]
```

This example removes the Training Administrators role group.

```PowerShell
Remove-RoleGroup -Identity "Training Administrators"
```

For detailed syntax and parameter information, see [Remove-RoleGroup](https://docs.microsoft.com/powershell/module/exchange/Remove-RoleGroup).

### How do you know these procedures worked?

To verify that you've successfully copied a role group, do either of the following steps:

- In the EAC, go to **Permissions** \> **Admin roles**, and verify the role group is listed (or not listed). Select the role group, and verify the settings in the Details pane or click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png) to verify the settings.

- In Exchange Online PowerShell, replace \<Role Group Name\> with the name of the role group, and run the following command to verify the role group exists (or doesn't exist) and verify the settings:

    ```PowerShell
    Get-RoleGroup -Identity "<Role Group Name>" | Format-List
    ```
