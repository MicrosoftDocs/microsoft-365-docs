---
title: "Assign roles to Microsoft 365 user accounts with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/23/2020
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
- O365ITProTrain
- PowerShell
- Ent_Office_Other
- seo-marvel-apr2020
ms.assetid: ede7598c-b5d5-4e3e-a488-195f02f26d93
description: In this article, learn how quickly and easily use PowerShell for Microsoft 365 to assign admin roles to user accounts.
---

# Assign admin roles to Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can easily assign roles to user accounts by using PowerShell for Microsoft 365.

>[!Note]
>Learn how to  [assign admin roles](../admin/add-users/assign-admin-roles.md) to user accounts with the Microsoft 365 admin center.
>
>For a list of additional resources, see [Manage users and groups](../admin/add-users/index.yml).
>

## Use the Azure Active Directory PowerShell for Graph module

First, use a global administrator account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
  
Next, identify the sign-in name of the user account that you want to add to a role (example: fredsm\@contoso.com). This is also known as the user principal name (UPN).

Next, determine the name of the role. See [administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles).

>[!Note]
>Pay attention to the notes in this article. Some role names are different for Azure Active Directory (Azure AD) PowerShell. For example, the *SharePoint Administrator* role in the Microsoft 365 admin center is *SharePoint Service Administrator* in Azure AD PowerShell.
>

Next, fill in the sign-in and role names and run these commands:
  
```powershell
$userName="<sign-in name of the account>"
$roleName="<admin role name>"
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
if ($role -eq $null) {
$roleTemplate = Get-AzureADDirectoryRoleTemplate | Where {$_.displayName -eq $roleName}
Enable-AzureADDirectoryRole -RoleTemplateId $roleTemplate.ObjectId
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
}
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId (Get-AzureADUser | Where {$_.UserPrincipalName -eq $userName}).ObjectID
```

Here's an example of a completed command set that assigns the SharePoint Service Administrator role to the *belindan\@contoso.com* account:
  
```powershell
$userName="belindan@contoso.com"
$roleName="SharePoint Service Administrator"
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
if ($role -eq $null) {
$roleTemplate = Get-AzureADDirectoryRoleTemplate | Where {$_.displayName -eq $roleName}
Enable-AzureADDirectoryRole -RoleTemplateId $roleTemplate.ObjectId
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
}
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId (Get-AzureADUser | Where {$_.UserPrincipalName -eq $userName}).ObjectID
```

To display the list of user names for a specific admin role, use these commands.

```powershell
$roleName="<role name>"
Get-AzureADDirectoryRole | Where { $_.DisplayName -eq $roleName } | Get-AzureADDirectoryRoleMember | Ft DisplayName
```

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, use a global administrator account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).
  
### For a single role change

The most common ways to specify the user account is by using its display name or its email name, which also known as its sign-in name or user principal name (UPN).

#### Display names of user accounts

If you're used to working with the display names of user accounts, determine the following information:
  
- The user account that you want to configure
    
    To specify the user account, you must determine its Display Name. To get a complete list of accounts, use this command:
    
  ```powershell
  Get-MsolUser -All | Sort DisplayName | Select DisplayName | More
  ```

    This command lists the Display Name of your user accounts, sorted by the Display Name, one screen at a time. You can filter the list to a smaller set by using the **Where** cmdlet. See the following example.

   >[!Note]
   >PowerShell Core doesn't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with *Msol* in their name. Run these cmdlets from Windows PowerShell.
   >
    
  ```powershell
  Get-MsolUser -All | Where DisplayName -like "John*" | Sort DisplayName | Select DisplayName | More
  ```

    This command lists only the user accounts for which the Display Name starts with "John".
    
- The role you want to assign
    
    To display the list of available admin roles that you can assign to user accounts, use this command:
    
  ```powershell
  Get-MsolRole | Sort Name | Select Name,Description
  ```

After you determine the Display Name of the account and the name of the role, use these commands to assign the role to the account:
  
```powershell
$dispName="<The Display Name of the account>"
$roleName="<The admin role name you want to assign to the account>"
Add-MsolRoleMember -RoleMemberEmailAddress (Get-MsolUser -All | Where DisplayName -eq $dispName).UserPrincipalName -RoleName $roleName
```

Paste the commands into Notepad. For the *$dispName* and *$roleName* variables, replace the description text with their values. Remove the \< and > characters but keep the quotation marks. Paste the modified lines into the Microsoft Azure Active Directory Module for Windows PowerShell window to run them. Alternately, you can use the Windows PowerShell Integrated Script Environment (ISE).
  
Here's an example of a completed command set:
  
```powershell
$dispName="Scott Wallace"
$roleName="SharePoint Service Administrator"
Add-MsolRoleMember -RoleMemberEmailAddress (Get-MsolUser -All | Where DisplayName -eq $dispName).UserPrincipalName -RoleName $roleName
```

#### Sign-in names of user accounts

If you're used to working with the sign-in names or UPNs of user accounts, determine the following information:
  
- The user account's UPN
    
    If you don't know the UPN, use this command:
    
  ```powershell
  Get-MsolUser -All | Sort UserPrincipalName | Select UserPrincipalName | More
  ```

    This command lists the UPN of your user accounts, sorted by UPN, one screen at a time. You can use the **Where** cmdlet to filter the list. Here's an example:
    
  ```powershell
  Get-MsolUser -All | Where DisplayName -like "John*" | Sort UserPrincipalName | Select UserPrincipalName | More
  ```

    This command lists only the user accounts for which the Display Name starts with "John".
    
- The role you want to assign
    
    To display the list of available roles that you can assign to user accounts, use this command:
    
  ```powershell
  Get-MsolRole | Sort Name | Select Name,Description
  ```

After you have the UPN of the account and the name of the role, use these commands to assign the role to the account:
  
```powershell
$upnName="<The UPN of the account>"
$roleName="<The role name you want to assign to the account>"
Add-MsolRoleMember -RoleMemberEmailAddress $upnName -RoleName $roleName
```

Copy the commands and paste them into Notepad. For the **$upnName** and **$roleName** variables. Replace the description text with their values. Remove the \< and > characters but keep the quotation marks. Paste the modified lines into Microsoft Azure Active Directory Module for Windows PowerShell window to run them. Alternately, you can use the Windows PowerShell ISE.
  
Here's an example of a completed command set:
  
```powershell
$upnName="scottw@contoso.com"
$roleName="SharePoint Service Administrator"
Add-MsolRoleMember -RoleMemberEmailAddress $upnName -RoleName $roleName
```

### Multiple role changes

For multiple role changes, determine the following information:
  
- Which user accounts you want to configure. You can use the methods in the previous section to gather the set of display names or UPNs.
    
- Which roles you want to assign to each user account. To display the list of available roles that you can assign to user accounts, use this command:
    
  ```powershell
  Get-MsolRole | Sort Name | Select Name,Description
  ```

Next, create a comma-separated value (CSV) text file that has the display name or UPN and role name fields. You can do this easily in Microsoft Excel.

Here's an example for display names:
  
```powershell
DisplayName,RoleName
"Belinda Newman","Billing Administrator"
"Scott Wallace","SharePoint Service Administrator"
```

Next, fill in the location of the CSV file and run the resulting commands at the PowerShell command prompt.
  
```powershell
$fileName="<path and file name of the input CSV file that has the role changes, example: C:\admin\RoleUpdates.CSV>"
$roleChanges=Import-Csv $fileName | ForEach {Add-MsolRoleMember -RoleMemberEmailAddress (Get-MsolUser | Where DisplayName -eq $_.DisplayName).UserPrincipalName -RoleName $_.RoleName }

```

Here's an example for UPNs:
  
```powershell
UserPrincipalName,RoleName
"belindan@contoso.com","Billing Administrator"
"scottw@contoso.com","SharePoint Service Administrator"
```

Next, fill in the location of the CSV file and run the resulting commands at the PowerShell command prompt.
  
```powershell
$fileName="<path and file name of the input CSV file that has the role changes, example: C:\admin\RoleUpdates.CSV>"
$roleChanges=Import-Csv $fileName | ForEach { Add-MsolRoleMember -RoleMemberEmailAddress $_.UserPrincipalName -RoleName $_.RoleName }

```

## See also

- [Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
- [Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
- [Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)