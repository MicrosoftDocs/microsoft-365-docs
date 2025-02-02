---
title: "Manage security groups with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/06/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom:
  - PowerShell
  - Ent_Office_Other
  - O365ITProTrain
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
description: "Learn how to use PowerShell to manage security groups."
---

# Manage security groups with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use PowerShell for Microsoft 365 as an alternative to the Microsoft 365 admin center to manage security groups. 

This article describes listing, creating, changing settings, and removing security groups. 

When a command block in this article requires that you specify variable values, use these steps.

1. Copy the command block to the clipboard and paste it into Notepad or the PowerShell Integrated Script Environment (ISE).
2. Fill in the variable values and remove the "<" and ">" characters.
3. Run the commands in the PowerShell window or the PowerShell ISE.

## Manage security groups using Microsoft Graph PowerShell

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md).

Managing security groups requires the **Group.ReadWrite.All** permission scope or one of the other permissions listed in the ['List subscribedSkus' Graph API reference page](/graph/api/subscribedsku-list). Some commands in this article may require different permission scopes, in which case this will be noted in the relevant section.

```powershell
Connect-Graph -Scopes Group.ReadWrite.All
```

### List your groups

Use this command to list all of your groups.

```powershell
Get-MgGroup -All
```

Use these commands to display the settings of a specific group by its display name.

```powershell
$groupName="<display name of the group>"
Get-MgGroup -All | Where-Object { $_.DisplayName -eq $groupName }
```

### Create a new group

Use this command to create a new security group.

```powershell
Connect-MgGraph -Scopes "Group.Create"
New-MgGroup -Description "<group purpose>" -DisplayName "<name>" -MailEnabled:$false -SecurityEnabled -MailNickname "<email name>"
```

### Display the settings of a group

Display the settings of the group with these commands.

```powershell
$groupName="<display name of the group>"
Get-MgGroup -All | Where-Object { $_.DisplayName -eq $groupName } | Select-Object *
```

### Remove a security group

Use these commands to remove a security group.

```powershell
$groupName="<display name of the group>"
$group = Get-MgGroup -Filter "displayName eq '$groupName'"
Remove-MgGroup -GroupId $group.Id
```

### Manage the owners of a security group

Use these commands to display the current owners of a security group.

```powershell
$groupName="<display name of the group>"

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "GroupMember.Read.All"

# Display group owners
Get-MgGroupOwner -GroupId (Get-MgGroup | Where-Object { $_.DisplayName -eq $groupName }).Id
```

Use these commands to add a user account by its **user principal name (UPN)** to the current owners of a security group.

```powershell
$userUPN="<UPN of the user account to add>"
$groupName="<display name of the group>"

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.ReadWrite.All", "User.ReadBasic.All"

# Get the group and user
$group = Get-MgGroup -Filter "displayName eq '$groupName'"
$userId = (Get-MgUser -Filter "userPrincipalName eq '$userUPN'").Id

# Add the user as an owner to the group
$newGroupOwner =@{
  "@odata.id"= "https://graph.microsoft.com/v1.0/users/$userId"
  }

New-MgGroupOwnerByRef -GroupId $group.Id -BodyParameter $newGroupOwner
```

Use these commands to add a user account by its **display name** to the current owners of a security group.

```powershell
$userName="<Display name of the user account to add>"
$groupName="<display name of the group>"

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.ReadWrite.All", "Directory.Read.All", "User.ReadBasic.All"

# Get the group and user
$group = Get-MgGroup -All | Where-Object { $_.DisplayName -eq $groupName }
$userId = (Get-MgUser -All | Where-Object { $_.DisplayName -eq $userName }).Id

# Add the user as an owner to the group
$newGroupOwner =@{
  "@odata.id"= "https://graph.microsoft.com/v1.0/users/$userId"
  }

New-MgGroupOwnerByRef -GroupId $group.Id -BodyParameter $newGroupOwner
```

Use these commands to remove a user account by its **UPN** from the current owners of a security group.

```powershell
$userUPN="<UPN of the user account to remove>"
$groupName="<display name of the group>"

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.ReadWrite.All", "Directory.ReadWrite.All"

# Get the group and user
$group = Get-MgGroup -Filter "displayName eq '$groupName'" | Select-Object -First 1
$user = Get-MgUser -Filter "userPrincipalName eq '$userUPN'" | Select-Object -First 1

# Remove the user from the group
Remove-MgGroupOwnerByRef -GroupId $group.Id -DirectoryObjectId $user.Id
```

Use these commands to remove a user account by its **display name** from the current owners of a security group.

```powershell
$userName="<Display name of the user account to remove>"
$groupName="<display name of the group>"
$group = Get-MgGroup | Where-Object { $_.DisplayName -eq $groupName }
$user = Get-MgUser | Where-Object { $_.DisplayName -eq $userName }

Remove-MgGroupOwnerByRef -GroupId $group.Id -DirectoryObjectId $user.Id
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
