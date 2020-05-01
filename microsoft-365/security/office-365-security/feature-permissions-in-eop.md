---
title: "Feature permissions in EOP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 34674847-a6b7-4a7e-9eaa-b64f22bc150d
description: "Learn about the permission that are required for tasks in standalone Exchange Online Protection"
---

# Permissions in standalone EOP

Standalone Exchange Online Protection (EOP) without Exchange Online mailboxes uses the Role Based Access Control (RBAC) permissions model, which you can use right away to easily grant permissions to your admins and users. You can use the permission features in standalone EOP to get your new organization up and running quickly.

For more information about permissions across Microsoft 365, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).

## Role-based permissions

The permissions that you grant to admins and users are based on management roles. A management role defines the set of tasks that an admin or user can do. For example, a management role called `Mail Recipients` defines the tasks that someone can perform on a set of mail users, and distribution groups. When a management role is assigned to an admin or user, that person is granted the permissions provided by the management role.

In standalone EOP, administrative roles are the only type of management role that's available (there are no end-user roles or role assignment policies).

Management roles give permissions to perform tasks to admins and users by making cmdlets available to those who are assigned the roles. Because the Exchange admin center (EAC) and standalone EOP PowerShell use cmdlets, granting access to a cmdlet gives the admin or user permission to do tasks in the EAC or in standalone EOP PowerShell.

## Role groups

To make it easier to assign multiple roles to an admin, Exchange Online includes role groups. When a role is assigned to a role group, the permissions granted by the role are granted to all the members of the role group. This enables you to assign many roles to many role group members at once. Role groups typically encompass broader management areas, such as recipient management. Role group members can be mail users, users from the Microsoft 365 admin center, and other role groups.

> [!NOTE]
> It's possible to assign a role directly to a user without using a role group. However, that method of role assignment is an advanced procedure and isn't covered in this topic. We recommend that you use role groups to manage permissions.

The following figure shows the relationship between users, role groups, and roles.

![Role, role group and member relationship](../../../media/ITPro_Security_RBAC_EXO_SimplifiedRoleGroupRelationship.png)

Standalone EOP includes several built-in role groups, each one providing permissions to manage specific areas in EOP. Some role groups may overlap with other role groups. The following table lists each role group with a description, and the roles that are assigned to the role group by default.

**Note**:

Many of the roles that are visible in standalone EOP are related to Exchange Online, and basically do nothing.

||||
|---|---|---|
|**Role group**|**Description**|**Default roles assigned**|
|Compliance Management|Users who are members of the Compliance Management role group are responsible for compliance, to properly configure and manage compliance settings within EOP in accordance with their policy.|Audit Logs <br/><br/> Compliance Admin <br/><br/> Data Loss Prevention <br/><br/> Information Rights Management <br/><br/> Journaling <br/><br/> Message Tracking <br/><br/> Retention Management <br/><br/> Transport Rules <br/><br/> View-Only Audit Logs <br/><br/> View-Only Configuration <br/><br/> View-Only Recipients|
|Discovery Management|Administrators or users who are members of the Discovery Management role group can perform mailbox searches for data that meets specific criteria and can also configure legal holds on mailboxes.|Legal Hold <br/><br/> Mailbox Search|
|Help Desk|Members of this management role group can view and manage the configuration for individual recipients and view recipients.|Reset Password <br/><br/> User Options <br/><br/> View-Only Recipients|
|Hygiene Management|Manage protection features (anti-spam, anti-malware, etc.).|Transport Hygiene <br/><br/> View-Only Configuration <br/><br/> View-Only Recipients|
|Organization Management|Admins who are members of the Organization Management role group have administrative access to the entire EOP organization and can perform almost any task. <br/><br/> **Important**: Because the Organization Management role group is a powerful role, only users that perform organizational-level administrative tasks should be members of this role group.|Audit Logs <br/><br/> Compliance Admin <br/><br/> Data Loss Prevention <br/><br/> Distribution Groups <br/><br/> E-Mail Address Policies <br/><br/> Federated Sharing <br/><br/> Information Rights Management <br/><br/> Journaling <br/><br/> Legal Hold <br/><br/> Mail Enabled Public Folders <br/><br/> Mail Recipient Creation <br/><br/> Mail Recipients <br/><br/> Mail Tips <br/><br/> Message Tracking <br/><br/> Migration <br/><br/> Move Mailboxes <br/><br/> Org Custom Apps <br/><br/> Org Marketplace Apps <br/><br/> Organization Client Access <br/><br/> Organization Configuration <br/><br/> Organization Transport Settings <br/><br/> Public Folders <br/><br/> Recipient Policies <br/><br/> Remote and Accepted Domains <br/><br/> Reset Password <br/><br/> Retention Management <br/><br/> Role Management <br/><br/> Security Admin <br/><br/> Security Group Creation and Membership <br/><br/> Security Reader <br/><br/> Team Mailboxes <br/><br/> TenantPlacesManagement <br/><br/> Transport Hygiene <br/><br/> Transport Rules <br/><br/> UM Mailboxes <br/><br/> UM Prompts <br/><br/> Unified Messaging <br/><br/> User Options <br/><br/> View-Only Audit Logs <br/><br/> View-Only Configuration <br/><br/> View-Only Recipients|
|Recipient Management|Create, manage, and remove recipient objects in the organization.|Distribution Groups <br/><br/> Mail Recipient Creation <br/><br/> Mail Recipients <br/><br/> Message Tracking <br/><br/> Migration <br/><br/> Move Mailboxes <br/><br/> Recipient Policies <br/><br/> Reset Password <br/><br/> Team Mailboxes|
|Records Management|Configure compliance features, such as retention policy tags, message classifications, and mail flow rules (also known as transport rules).|Audit Logs <br/><br/> Journaling <br/><br/> Message Tracking <br/><br/> Retention Management <br/><br/> Transport Rules|
|RIM-MailboxAdmins\<GUID\>|This role group is reserved for internal Microsoft use.|ApplicationImpersonation|
|Security Administrator|Membership in this role group is synchronized across services and managed centrally. For more information, see [Security Administrator](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#security-administrator).|Security Admin <br/><br/> SensitivityLabelAdministrator|
|Security Reader|Membership in this role group is synchronized across services and managed centrally. For more information, see [Security Reader](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#security-reader).|Security Reader|
|TenantAdmins\_\<Number\>|Membership in this role group is synchronized across services and managed centrally. By default, this group is not assigned any roles. However, it will be a member of the Organization Management role group and will inherit the capabilities of that role group.|none|
|UM Management|Manage Unified Messaging organization, server, and recipient configuration.|UM Mailboxes <br/><br/> UM Prompts <br/><br/> Unified Messaging|
|View-Only Organization Management|View the properties of any object in the organization.|View-Only Configuration <br/><br/> View-Only Recipients|
|

If you work in a small organization that has only a few admins, you might need to add those users to the Organization Management role group only, and you may never need to use the other role groups. If you work in a larger organization, you might have admins who perform specific tasks, such as recipient configuration. In those cases, you might add one admin to the Recipient Management role group, and another admin to the Organization Management role group. Those admins can then manage their specific areas, but they won't have permissions to manage areas they're not responsible for.

If the built-in role groups in Exchange Online don't match the job function of your administrators, you can create role groups and add roles to them. For more information, see the [Work with role groups](#work-with-role-groups) section later in this topic.

## Roles

The built-in roles that are available in standalone EOP are described in the following table.

|
||||
|**Role**|**Description**|**Default role group assignments**|
|AntiMalware|Allows viewing and modifying the configuration and reports for anti-malware features|Organization Management <br/><br/> Security Administrator|
|AntiSpam||Organization Management <br/><br/> Security Administrator|
|Audit Logs||Compliance Management <br/><br/> Organization Management <br/><br/> Security Administrator|
|Compliance Administrator|Compliance Management <br/><br/> Organization Management <br/><br/> View-Only Organization Management|
|Data Classification Content Viewer|Content Explorer ContentViewer|
|Data Classification List Viewer|Content Explorer List Viewer|
|Distribution Groups|Organization Management <br/><br/> Recipient Management|
|Information Rights Management|Compliance Management <br/><br/> Organization Management|
|Mail Recipient Creation|Organization Management <br/><br/> Recipient Management|
|Mail Recipients|Organization Management <br/><br/> Recipient Management|
|Message Tracking|Organization Management <br/><br/> Recipient Management <br/><br/> Records Management|
|Migration|Organization Management <br/><br/> Recipient Management|
|Organization Client Access|Organization Management|
|Organization Configuration|Organization Management|
|Organization Transport Settings|Organization Management|
|Quarantine|Organization Management <br/><br/> Quarantine Administrator <br/><br/> Security Administrator|
|Recipient Policies|Organization Management <br/><br/> Recipient Management|
|Remote and Accepted Domains|Mail Flow Administrator <br/><br/> Organization Management|
|Reset Password|Help Desk <br/><br/> Organization Management <br/><br/> Recipient Management|
|Retention Management|Compliance Management <br/><br/> Organization Management <br/><br/> Records Management|
|Role Management|Organization Management|
|Security Administrator|Organization Management <br/><br/> Security Administrator <br/><br/> View Only Organization Management|
|Security Group Creation and Membership|Organization Management|
|Security Reader|Organization Management <br/><br/> Security Reader <br/><br/> View Only Organization Management|
|Sensitivity Label Administrator|Organization Management <br/><br/> SecurityAdministrator <br/><br/> View Only Organization Management|
|Supervision|Organization Management|
|Transport Hygiene|Hygiene Management <br/><br/> Organization Management|
|Transport Rules|Organization Management <br/><br/> Records Management|
|User Options|Help Desk <br/><br/> Organization Management|
|View-Only AntiMalware||Organization Management <br/><br/> Security Administrator <br/><br/> Security Reader|
|View-Only AntiSpam|Allows viewing the configuration and reports for the anti-spam features.|Organization Management <br/><br/> Security Administrator <br/><br/> Security Reader|
|View-Only Audit Logs|ComplianceManagement <br/><br/> Organization Management <br/><br/> Security Administrator|
|View-Only Configuration|Compliance Management <br/><br/> Hygiene Management <br/><br/> Organization Management <br/><br/> View Only Organization Management|
|View-Only Quarantine|Organization Management <br/><br/> Security Administrator <br/><br/> Security Reader|
|View-Only Recipients|Compliance Management <br/><br/> Help Desk <br/><br/> Hygiene Management <br/><br/> Mail Flow Administrator <br/><br/>  Organization Management <br/><br/> View Only Organization Management|
|View-Only Threat Intelligence||Organization Management <br/><br/> Security Administrator <br/><br/> Security Reader|
|

## Microsoft 365 permissions in standalone EOP

When you create a user in the Microsoft 365 admin center, you can choose whether to assign various administrative roles, such as Global admin, Service admin, Password admin, and so on, to the user. Some, but not all, Microsoft 365 roles grant the user administrative permissions in EOP.

> [!NOTE]
> The user that was used to create your standalone EOP organization is automatically assigned to the Global admin role.

The following table lists the Microsoft 365 roles and the standalone EOP role groups that they correspond to. For more information about these roles, see [About admin roles(https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).

|||
|---|---|
|**Microsoft 365 role**|**EOP role group**|
|Exchange admin|Organization management|
|Global admin|Organization Management <br/><br/> **Note**: The Global admin role and the Organization Management role group are tied together using a special Company Administrator role group. The Company Administrator role group is managed internallyand can't be modified directly.|
|Password admin|Help Desk administrator|
|Global reader|View-Only Organization Management|
|Security admin|Security Administrator|
|Security reader|Security Reader|
|

Other Microsoft 365 roles don't have a corresponding EOP role group and won't grant administrative permissions in EOP. For more information about assigning an Microsoft 365 role to a user, see [Assign admin roles](https://docs.microsoft.com/office365/admin/add-users/assign-admin-roles).

Users can be granted administrative rights in EOP without adding them to Microsoft 365 roles. You do this by adding the user as a member of an EOP role group. The user will get permissions in EOP, but they won't get permissions in other Microsoft 365 workloads.

## Manage role groups in standalone EOP

- To open the Exchange admin center (EAC), see [Exchange admin center in standalone EOP](exchange-admin-center-in-exchange-online-protection-eop.md). To open standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- The procedures in this topic require the Role Management RBAC role in EOP. Typically, you get this permission via membership in the Organization Management role group (the Microsoft 365 Global admin role).

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center](../../accessibility/keyboard-shortcuts-in-admin-center.md).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

### Use the EAC to manage role groups

#### Use the EAC to view role groups

1. In the EAC, go to **Permissions** \> **Admin Roles**. All of the role groups in your organization are listed here.

2. Select a role group. The Details pane shows the **Name**, **Description**, **Assigned roles**, **Members**, **Managed by**, and **Write scope** of the role group. You can also see this information by clicking **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).

#### Use the EAC to create role groups

When you create a new role group, you can configure all of the settings yourself (during the creation of the group or after). Or, you can copy an existing role group and modify it.

1. In the EAC, go to **Permissions** \> **Admin Roles**, and then do one of the following steps:

   - **Manually create a new role group**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png).

   - **Copy an existing role group**: Select the role group that you want to copy and then click **Copy** ![Copy icon](../../media/ITPro-EAC-CopyIcon.png).

2. In the **New role group** window that appears, configure the following settings:

    - **Name**: Enter a unique name for the role group.

    - **Description**: Enter an optional description for the role group.

    - **Roles**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png) or **Remove** ![ITPro-EAC-RemoveIcon.png](../../media/ITPro-EAC-RemoveIcon.png) to select or modify the roles that are assigned to the role group.

    - **Members**: Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png) or **Remove** ![ITPro-EAC-RemoveIcon.png](../../media/ITPro-EAC-RemoveIcon.png) to modify the role group membership.

3. When you're finished, click **Save** to create the role group.

#### Use the EAC to modify role groups

In the EAC, go to **Permissions** \> **Admin Roles**, select the role group you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).

The same options are available when you modify role groups as when you create role groups. You can:

- Change the name and description.

- Add and remove management roles (create or remove role assignments).

- Add and remove members.

**Note**: Some role groups (for example, Organization Management) restrict the roles that you can remove from group.

#### Use the EAC to remove a role group

You can't remove built-in role groups, but you can remove custom role groups that you've created.

1. In the EAC, go to **Permissions** \> **Admin Roles**.

2. Select the role group you want to remove and then click **Delete** ![Delete icon](../../media/ITPro-EAC-DeleteIcon.png).

3. Click **Yes** in the confirmation window that appears.

### Use PowerShell to manage role groups

#### Use standalone EOP PowerShell to view role groups

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

For detailed syntax and parameter information, see [Get-RoleGroup](https://docs.microsoft.com/powershell/module/exchange/role-based-access-control/Get-RoleGroup).

#### Use standalone EOP PowerShell to create role groups

When you create a new role group, you can configure all of the settings yourself (during the creation of the group or after). Or, you can copy an existing role group and modify it.

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

For detailed syntax and parameter information, [New-RoleGroup](https://docs.microsoft.com/powershell/module/exchange/role-based-access-control/New-RoleGroup).

#### Use standalone EOP PowerShell modify the list of members in role groups

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

For detailed syntax and parameter information, see [Update-RoleGroupMember](https://docs.microsoft.com/powershell/module/exchange/role-based-access-control/Update-RoleGroupMember).

#### Use standalone EOP PowerShell to remove role groups

You can't remove built-in role groups, but you can remove custom role groups that you've created.

To remove a custom role group, use the following syntax:

```PowerShell
Remove-RoleGroup -Identity "<Role Group Name>" [-BypassSecurityGroupManagerCheck]
```

This example removes the Training Administrators role group.

```PowerShell
Remove-RoleGroup -Identity "Training Administrators"
```

For detailed syntax and parameter information, see [Remove-RoleGroup](https://docs.microsoft.com/powershell/module/exchange/role-based-access-control/Remove-RoleGroup).

#### How do you know these procedures worked?

To verify that you've successfully copied a role group, do either of the following steps:

- In the EAC, go to **Permissions** \> **Admin Roles**, and verify the role group is listed (or not listed). Select the role group, and verify the settings in the Details pane or click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png) to verify the settings.

- In Exchange Online PowerShell, replace \<Role Group Name\> with the name of the role group, and run the following command to verify the role group exists (or doesn't exist) and verify the settings:

    ```PowerShell
    Get-RoleGroup -Identity "<Role Group Name>" | Format-List
    ```

### How do you know this worked?

To verify that you've successfully copied a role group, do either of the following steps:

- In the EAC, go to **Permissions** \> **Admin Roles**, and verify the role group is listed (or not listed). Select the role group, and verify the settings in the Details pane or click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png) to verify the settings.

- In Exchange Online PowerShell, replace \<Role Group Name\> with the name of the role group, and run the following command to verify the role group exists (or doesn't exist) and verify the settings:

    ```PowerShell
    Get-RoleGroup -Identity "<Role Group Name>" | Format-List
    ```

## Feature permissions in standalone EOP

The permissions required to perform tasks to manage Exchange Online Protection (EOP) vary depending on the feature you are managing.

To set up EOP, you must be a global admin, or an Exchange Company Administrator (the Organization Management role group).

## Exchange Online Protection permissions

To find out what permissions you need to manage EOP features, see the following table. If a feature lists more than one role group, you only need to be assigned one of the role groups to use the feature.

|**Feature**|**Permissions required**|
|:-----|:-----|
|Anti-malware|Organization Management <br/><br/> Hygiene Management|
|Anti-spam|Organization Management <br/><br/> Hygiene Management|
|Mail flow rules|Organization Management <br/><br/> Records Management|
|Domains|Organization Management <br/><br/> View-Only Organization Management|
|Advanced Threat Protection (ATP)|Organization Management <br/><br/> Hygiene Management|
|Connectors|Organization Management|
|Message trace|Organization Management <br/><br/> View-Only Organization Management|
|Organization configuration|Organization Management|
|Quarantine|Organization Management <br/><br/> View-Only Organization Management <br/><br/> Hygiene Management|
|Users, Contacts, and Role Groups|Organization Management <br/><br/> View-Only Organization Management <br/><br/> Hygiene Management|
|Distribution Groups and Security Groups|Organization Management <br/><br/> View-Only Organization Management <br/><br/> Hygiene Management|
|View reports|Organization Management: Access to mail protection reports. <br/><br/> View-Only Recipients: Access to mail protection reports.  <br/><br/> Compliance Management: Access to mail protection reports and Data Loss Prevention (DLP) reports (if your subscription has DLP capabilities).|
