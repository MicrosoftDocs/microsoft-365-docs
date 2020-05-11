---
title: "Manage groups in EOP"
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
ms.assetid: 212e68ac-6330-47e9-a169-6cf5e2f21e13
ms.custom:
- seo-marvel-apr2020
description: "In this article, you'll learn how to create and manage mail-enabled groups for an Exchange organization in Exchange Online Protection (EOP)."
---

# Manage groups in EOP

 You can use Exchange Online Protection (EOP) to create mail-enabled groups for an Exchange organization. You can also use EOP to define or update group properties that specify membership, email addresses, and other aspects of groups. You can create distribution groups and security groups, depending on your needs. These groups can be created by using the Exchange admin center (EAC) or via remote Windows PowerShell.

## Types of mail-enabled groups

You can create two types of groups for your Exchange organization:

- Distribution groups are collections of email users, such as a team or other ad hoc group, who need to receive or send email regarding a common area of interest. Distribution groups are exclusively for distributing email messages. In EOP, a distribution group refers to any mail-enabled group, whether or not it has a security context.

- Security groups are collections of email users who need access permissions for Admin roles. For example, you might want to give specific group of users admin role permissions so they can configure anti-spam and anti-malware settings.

    > [!NOTE]
    > By default, all new mail-enabled security groups require that all senders be authenticated. This prevents external senders from sending messages to mail-enabled security groups.

## Before you begin

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Distribution Groups and Security Groups" entry in the [Feature permissions in EOP](feature-permissions-in-eop.md) topic.

- To open the Exchange admin center, see [Exchange admin center in Exchange Online Protection](exchange-admin-center-in-exchange-online-protection-eop.md).

- Be aware that when creating and managing groups by using Exchange Online Protection PowerShell cmdlets, you may encounter throttling.

- The PowerShell procedures in this topic use a batch processing method that results in a propagation delay of a few minutes before the results of the commands are visible.

- To learn how to use Windows PowerShell to connect to Exchange Online Protection, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Create a group in the EAC

1. In the EAC, go to **Recipients** \> **Groups**.

2. Click **New** ![Add Icon](../../media/ITPro-EAC-AddIcon.gif), and then click **Distribution group** or **Security group**, depending on your needs.

3. On the **New distribution group** or **New security group** page, configure the following settings:

   - **Display name**: Type a display name that's unique to your organization and meaningful to EOP users. The display name is required.

   - **Alias**: Type a group alias of up to 64 characters that's unique to your organization. EOP users type the alias in the To: line of email messages and the alias resolves to the group's display name. If you change the alias, the primary SMTP address for the group also changes and will contain the new alias. The alias is required.

   - **Description**: Type a description of the group so that people will know the purpose of the group.

   - **Owners**: By default, the person who creates the group is the owner. You can add an owner by choosing **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.gif). All groups must have at least one owner.

     > [!NOTE]
     > Owners don't have to be members of the group.

   - **Members**: Use this section to add group members and to specify whether approval is required for people to join or leave the group. To add members to the group, click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.gif).

4. Click **OK** to return to the original page.

5. When you've finished, click **Save** to create the group. The new group should appear in the list of groups.

## Edit or remove a group in the EAC

1. In the EAC, navigate to **Recipients** \> **Groups**.

2. Do one of the following steps:

   - To edit a group: In the list of groups, click the group that you want to view or change, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.gif). You can update general settings, add or remove group owners, and add or remove group members as needed.

   - To remove a group: Select the group and click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

3. When you're finished making your changes, click **Save**.

## Create, edit, or remove a group using remote Windows PowerShell

This section provides information about creating groups and changing their properties in Exchange Online Protection PowerShell. It also shows how to remove an existing group.

### Create a group using remote Windows PowerShell

This example uses the [New-EOPDistributionGroup](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/New-EOPDistributionGroup) cmdlet to create a distribution group with an alias of itadmin and the name IT Administrators. It also adds users as members of the group.

```PowerShell
New-EOPDistributionGroup -Type Distribution -Name "IT Administrators" -Alias itadmin -Members @("Member1","Member2","Member3") -ManagedBy Member1
```

**Note**: To create a security group instead of a distribution group, use the value `Security` for the *Type* parameter.

To verify that you've successfully created the IT Administrators group, run the following command to display information about the new group:

```PowerShell
Get-Recipient "IT Administrators" | Format-List
```

For detailed syntax and parameter information, see [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/Get-Recipient).

To get a list of members in the group, run the following command:

```PowerShell
Get-DistributionGroupMember "IT Administrators"
```

For detailed syntax and parameter information, see [Get-DistributionGroupMember](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/get-distributiongroupmember).

To get a full list of all your groups, run the following command:

```PowerShell
Get-Recipient -RecipientType "MailUniversalDistributionGroup" | Format-Table | more
```

### Change the properties of a group using remote Windows PowerShell

An advantage of using PowerShell instead of the EAC is the ability to change properties for multiple groups.

Here are some examples of using Exchange Online Protection PowerShell to change group properties.

This example uses changes the primary SMTP address (also called the reply address) for the Seattle Employees group to sea.employees@contoso.com.

```PowerShell
Set-EOPDistributionGroup "Seattle Employees" -PrimarysmptAddress "sea.employees@contoso.com"
```

For detailed syntax and parameter information, see [Set-EOPDistributionGroup](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/set-eopdistributiongroup).

To verify that you've successfully changed the properties for the group, run the following command to verify the new value:

```PowerShell
Get-Recipient "Seattle Employees" | Format-List "PrimarySmtpAddress"
```

This example updates all the members of the Seattle Employees group. Use a comma to separate all members.

```PowerShell
Update-EOPDistributionGroupMember -Identity "Seattle Employees" -Members @("Member1","Member2","Member3","Member4","Member5")
```

For detailed syntax and parameter information, see [Update-EOPDistributionGroupMember](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/update-eopdistributiongroupmember).

To get the list of all the members in the group Seattle Employees, run the following command:

```PowerShell
Get-DistributionGroupMember "Seattle Employees"
```

### Remove a group using remote Windows PowerShell

This example uses removes the distribution group named IT Administrators.

```PowerShell
Remove-EOPDistributionGroup -Identity "IT Administrators"
```

For detailed syntax and parameter information, see [Remove-EOPDistributionGroup](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/remove-eopdistributiongroup).

To verify that the group was removed, run the following command, and confirm that the group (in this case "It Administrators") was deleted.

```PowerShell
Get-Recipient -RecipientType "MailUniversalDistributionGroup"
```
