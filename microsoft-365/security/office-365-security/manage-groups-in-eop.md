---
title: Manage groups in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
ms.assetid: 212e68ac-6330-47e9-a169-6cf5e2f21e13
ms.custom: 
  - seo-marvel-apr2020
description: Admins in standalone Exchange Online Protection (EOP) organizations can learn how to create, modify, and remove distribution groups and mail-enabled security groups in the Exchange admin center (EAC) and in standalone Exchange Online Protection (EOP) PowerShell.
ms.technology: mdo
ms.prod: m365-security
---

# Manage groups in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you can create, modify, and remove the following types of groups:

- **Distribution groups**: A collection of mail users or other distribution groups. For example, teams or other ad hoc groups who need to receive or send email in a common area of interest. Distribution groups are exclusively for distributing email messages, and are not security principals (they can't have permissions assigned to them).

- **Mail-enabled security groups**: A collection of mail users and other security groups who need access permissions for admin roles. For example, you might want to give specific group of users admin permissions so they can configure anti-spam and anti-malware settings.

    > [!NOTE]
    >
    > - By default, new mail-enabled security groups reject messages from external (unauthenticated) senders.
    >
    > - Don't add distribution groups to mail-enabled security groups.

You can manage groups in the Exchange admin center (EAC) and in standalone EOP PowerShell.

## What do you need to know before you begin?

- To open the Exchange admin center, see [Exchange admin center in standalone EOP](exchange-admin-center-in-exchange-online-protection-eop.md).

- To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- When you manage groups in standalone EOP PowerShell, you might encounter throttling. The PowerShell procedures in this article use a batch processing method that results in a propagation delay of a few minutes before the results of the commands are visible.

- You need to be assigned permissions in Exchange Online Protection before you can do the procedures in this article. Specifically, you need the **Distribution Groups** role, which is assigned to the **Organization Management** and **Recipient Management** role groups by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- For information about keyboard shortcuts that may apply to the procedures in this article, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Use the Exchange admin center to manage distribution groups

### Use the EAC to create groups

1. In the EAC, go to **Recipients** \> **Groups**.

2. Click **New** ![New icon](../../media/ITPro-EAC-AddIcon.png), and then select one of the following options:

   - **Distribution group**

   - **Mail-enabled security group**

3. In the new group page that opens, configure the following settings. Settings marked with an <sup>\*</sup> are required.

   - <sup>\*</sup>**Display name**: This name appears in your organization's address book, on the To: line when email is sent to this group, and in the **Groups** list in the EAC. The display name is required, must be unique, and should be user-friendly so people recognize what it is.

   - <sup>\*</sup>**Alias**: Use this box to type the name of the alias for the group. The alias can't exceed 64 characters and must be unique. When a user types the alias in the To line of an email message, it resolves to the group's display name.

   - <sup>\*</sup>**Email address**: The email address consists of the alias on the left side of the at (@) symbol, and a domain on the right side. By default, the value of **Alias** is used for the alias value, but you can change it. For the domain value, click the drop down and select and accepted domain in your organization.

   - **Description**: This description appears in the address book and in the Details pane in the EAC.

   - <sup>\*</sup>**Owners**: A group owner can manage group membership. By default, the person who creates a group is the owner. All groups must have at least one owner.

     To add owners, click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). In the dialog that appears, find and select a recipient or group, and then click **add ->**. Repeat this step as many times as necessary. When you're finished, click **OK**.

     To remove an owner, select the owner, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

   - **Members**: Add and remove group members.

     To add members, click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). In the dialog that appears, find and select a recipient or group, and then click **add ->**. Repeat this step as many times as necessary. When you're finished, click **OK**.

     To remove a member, select the member, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

4. When you're finished, click **Save** to create the distribution group.

### Use the EAC to modify distribution groups

1. In the EAC, go to **Recipients** \> **Groups**.

2. In the list of groups, select the distribution group or mail-enabled security group that you want to modify, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-AddIcon.png).

3. On the distribution group properties page that opens, click one of the following tabs to view or change properties.

   When you're finished, click **Save**.

#### General

Use this tab to view or change basic information about the group.

- **Display name**: This name appears in the address book, on the To line when email is sent to this group, and in the **Groups list**. The display name is required and should be user-friendly so people recognize what it is. It also has to be unique in your domain.

  If you've implemented a group naming policy, the display name has to conform to the naming format defined by the policy.

- **Alias**: This is the portion of the email address that appears to the left of the at (@) symbol. If you change the alias, the primary SMTP address for the group will also be changed, and contain the new alias. Also, the email address with the previous alias will be kept as a proxy address for the group.

- **Email address**: The email address consists of the alias on the left side of the at (@) symbol, and a domain on the right side. By default, the value of **Alias** is used for the alias value, but you can change it. For the domain value, click the drop down and select and accepted domain in your organization.

- **Description**: This description appears in the address book and in the Details pane in the EAC.

#### Ownership

Use this tab to assign group owners. A group owner can manage group membership. By default, the person who creates a group is the owner. All groups must have at least one owner.

To add owners, click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). In the dialog that appears, find and select a recipient, and then click **add ->**. Repeat this step as many times as necessary. When you're finished, click **OK**.

To remove an owner, select the owner, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

#### Membership

Use this tab to add or remove group members. Group owners don't need to be members of the group.

To add members, click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png). In the dialog that appears, find and select a recipient or group, and then click **add ->**. Repeat this step as many times as necessary. When you're finished, click **OK**.

To remove a member, select the member, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

### Use the EAC to remove groups

1. In the EAC, go to **Recipients** \> **Groups**.

2. In the list of groups, select the distribution group that you want to remove, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

## Use PowerShell to manage groups

### Use standalone EOP PowerShell to view groups

To return a summary list of all distribution groups and mail-enabled security groups in standalone EOP PowerShell, run the following command:

```powershell
Get-Recipient -RecipientType MailUniversalDistributionGroup,MailUniversalSecurityGroup -ResultSize unlimited
```

To return the list of group members, replace \<GroupIdentity\> with the name, alias, or email address of the group, and run the following command:

```powershell
Get-DistributionGroupMember -Identity <GroupIdentity>
```

For detailed syntax and parameter information, see [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/get-recipient) and [Get-DistributionGroupMember](https://docs.microsoft.com/powershell/module/exchange/get-distributiongroupmember).

### Use standalone EOP PowerShell to create groups

To create distribution groups or mail-enabled security groups in standalone EOP PowerShell, use the following syntax:

```PowerShell
New-EOPDistributionGroup -Name "<Unique Name>" -ManagedBy @("UserOrGroup1","UserOrGroup2",..."UserOrGroupN">) [-Alias <text>] [-DisplayName "<Descriptive Name>"] [-Members @("UserOrGroup1","UserOrGroup2",..."UserOrGroupN">)] [-Notes "<Optional Text>"] [-PrimarySmtpAddress <SmtpAddress>] [-Type <Distribution | Security>]
```

**Notes**:

- The _Name_ parameter is required, has a maximum length of 64 characters, and must be unique. If you don't use the _DisplayName_ parameter, the value of the _Name_ parameter is used for the display name.

- If you don't use the _Alias_ parameter, the _Name_ parameter is used for the alias value. Spaces are removed and unsupported characters are converted to question marks (?).

- If you don't use the _PrimarySmtpAddress_ parameter, the alias value is used in the _PrimarySmtpAddress_ parameter.

- If you don't use the _Type_ parameter, the default value is Distribution.

This example creates a distribution group named IT Administrators with the specified properties.

```PowerShell
New-EOPDistributionGroup -Name "IT Administrators" -Alias itadmin -Members @("michelle@contoso.com","laura@contoso.com","julia@contoso.com") -ManagedBy "chris@contoso.com"
```

For detailed syntax and parameter information, see [New-EOPDistributionGroup](https://docs.microsoft.com/powershell/module/exchange/New-EOPDistributionGroup).

### Use standalone EOP PowerShell to modify groups

To modify groups in standalone EOP PowerShell, use the following syntax:

```powershell
Set-EOPDistributionGroup -Identity <GroupIdentity> [-Alias <Text>] [-DisplayName <Text>] [-ManagedBy @("User1","User2",..."UserN")] [-PrimarySmtpAddress <SmtpAddress>]

```powershell
Update-EOPDistributionGroupMember -Identity <GroupIdentity> -Members @("User1","User2",..."UserN")
```

This example uses changes the primary SMTP address (also called the reply address) for the Seattle Employees group to sea.employees@contoso.com.

```PowerShell
Set-EOPDistributionGroup "Seattle Employees" -PrimarySmtpAddress "sea.employees@contoso.com"
```

This example replaces the current members of the Security Team group with Kitty Petersen and Tyson Fawcett.

```powershell
Update-EOPDistributionGroupMember -Identity "Security Team" -Members @("Kitty Petersen","Tyson Fawcett")
```

This example adds a new user named Tyson Fawcett to the group named Security Team while preserving the current members of the group.

```powershell
$CurrentMemberObjects = Get-DistributionGroupMember "Security Team"
$CurrentMemberNames = $CurrentMemberObjects | % {$_.name}
$CurrentMemberNames += "Tyson Fawcett"
Update-EOPDistributionGroupMember -Identity "Security Team" -Members $CurrentMemberNames
```

For detailed syntax and parameter information, see [Set-EOPDistributionGroup](https://docs.microsoft.com/powershell/module/exchange/set-eopdistributiongroup) and [Update-EOPDistributionGroupMember](https://docs.microsoft.com/powershell/module/exchange/update-eopdistributiongroupmember).

### Remove a group using remote Windows PowerShell

This example uses removes the distribution group named IT Administrators.

```PowerShell
Remove-EOPDistributionGroup -Identity "IT Administrators"
```

For detailed syntax and parameter information, see [Remove-EOPDistributionGroup](https://docs.microsoft.com/powershell/module/exchange/remove-eopdistributiongroup).

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed a distribution group or a mail-enabled security group, do any of the following steps:

- In the EAC, go to **Recipients** \> **Groups**. Verify that the group is listed (or not listed), and verify the **Group Type** value. Select the group and view the information in the Details pane, or click **Edit** ![Edit icon](../../media/ITPro-EAC-AddIcon.png) to view the settings.

- In standalone EOP PowerShell, run the following command to verify the group is listed (or isn't listed):

  ```PowerShell
  Get-Recipient -RecipientType MailUniversalDistributionGroup,MailUniversalSecurityGroup -ResultSize unlimited
  ```

- Replace \<GroupIdentity\> with the name, alias, or email address of the group and run the following command to verify the settings:

  ```PowerShell
  Get-Recipient -Identity <GroupIdentity> | Format-List
  ```

- To view the group members, replace \<GroupIdentity\> with the name, alias, or email address of the group and run the following command:

  ```PowerShell
  Get-DistributionGroupMember -Identity "<GroupIdentity>"
  ```
