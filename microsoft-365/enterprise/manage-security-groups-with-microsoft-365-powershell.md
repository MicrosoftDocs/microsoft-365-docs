---
title: "Manage security groups with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
- PowerShell
- Ent_Office_Other
- O365ITProTrain
description: "Learn how to use PowerShell to manage security groups."
---

# Manage security groups with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use PowerShell for Microsoft 365 as an alternative to the Microsoft 365 admin center to manage security groups. 

This article describes listing, creating, changing settings, and removing security groups. 

See [Maintain Microsoft 365 group membership](maintain-group-membership-with-microsoft-365-powershell.md) to manage group membership with PowerShell.

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).


### List your groups

Use this command to list all of your groups.

```powershell
Get-AzureADGroup
```

To list all groups whose group name begins with a specifed string: 

1. Copy the command block to the clipboard and paste them into Notepad or the PowerShell Integrated Script Environment (ISE).
2. Fill in the string value and remove the "<" and ">" characters.
3. Run the commands in the PowerShell window or the PowerShell ISE.

```powershell
Get-AzureADGroup -Filter "DisplayName eq '<string>'"
```
Use these commands to display the settings of a specific group by its display name.

```powershell
$groupName="<display name of the group>"
Get-AzureADGroup -Filter "DisplayName eq $groupName"
```
Alternately, you can use these commands.

```powershell
$groupName="<display name of the group>"
Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }
```

### Create a new group

Use this command to create a new security group.

```powershell
New-AzureADGroup -Description "<group purpose>" -DisplayName "<name>" -MailEnabled $false -SecurityEnabled $true -MailNickName "<email name>"
```

### Change the settings on a group

Display the settings of the group with these commands.

```powershell
$groupName="<display name of the group>"
Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }
```
Use this command to change a specific setting for a group.

```powershell
Set-AzureADGroup -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId -Description "Intune Device Administrators"
```
How to specify the property being changed?: Add a table with the -parameter and description

### Remove a security group

Use these commands to remove a security group.

```powershell
$groupName="<display name of the group>"
Remove-AzureADGroup -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId
```

### Manage the owners of a security group

Use these commands to display the current owners of a security group.

```powershell
$groupName="<display name of the group>"
Get-AzureADGroupOwner -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId
```
Use these commands to add a user account by its **user principal name (UPN)** to the current owners of a security group.

```powershell
$userUPN="<UPN of the user account to add>"
$groupName="<display name of the group>"
Add-AzureADGroupOwner -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId -RefObjectId (Get-AzureADUser | Where { $_.UserPrincipleName -eq $userUPN }).ObjectId
```
Use these commands to add a user account by its **display name** to the current owners of a security group.

```powershell
$userName="<Display name of the user account to add>"
$groupName="<display name of the group>"
Add-AzureADGroupOwner -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $userName }).ObjectId
```
Use these commands to remove a user account by its **UPN** to the current owners of a security group.

```powershell
$userUPN="<UPN of the user account to add>"
$groupName="<display name of the group>"
Remove-AzureADGroupOwner -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId -OwnerId (Get-AzureADUser | Where { $_.UserPrincipleName -eq $userUPN }).ObjectId
```

Use these commands to remove a user account by its **display name** to the current owners of a security group.

```powershell
$userName="<Display name of the user account to remove>"
$groupName="<display name of the group>"
Remove-AzureADGroupOwner -ObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectId -OwnerId (Get-AzureADUser | Where { $_.DisplayName -eq $userName }).ObjectId
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)

