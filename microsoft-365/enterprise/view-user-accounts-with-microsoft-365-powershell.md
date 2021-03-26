---
title: "View Microsoft 365 user accounts with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/17/2020
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
- LIL_Placement
- PowerShell
- Ent_Office_Other
- seo-marvel-apr2020
ms.assetid: bb12f49d-a85d-4f3b-ada2-5c4e33977b10

description: Learn how to view, list, or display your Microsoft 365 user accounts in different ways with PowerShell.
---

# View Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use the Microsoft 365 admin center to view the accounts for your Microsoft 365 tenant. PowerShell for Microsoft 365 enables this but also provides additional functionality.
  
## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
  
### View all accounts

To display the full list of user accounts, run this command:
  
```powershell
Get-AzureADUser
```

You should get information similar to this:
  
```powershell
ObjectId                             DisplayName                                           UserPrincipalName
--------                             -----------                                           -----------------
032fc1fc-b5a2-46f1-8635-3d7dcb52c48d Adele Vance                                           AdeleV@litwareinc.OnMicr...
bd1e6af1-41e7-4f77-a2ac-5b209950135c Global Administrator                                  admin@litwareinc.onmicro...
ec37a4d6-232e-4eb7-82a5-1613490642a5 Alex Wilber                                           AlexW@litwareinc.OnMicro...
be4bdddd-c790-424c-9f96-a0cf609b7815 Allan Deyoung                                         AllanD@litwareinc.OnMicr...
598ab87b-76f0-4bf9-9538-bd46b10f4438 Christie Cline                                        ChristieC@litwareinc.OnM...
40722671-e520-4a5f-97d4-0bc9e9b2dc0f Debra Berger                                          DebraB@litwareinc.OnMicr...
```

### View a specific account

To display a specific user account, run the following command. Fill in the sign-in account name of the user account, which is also known as the user principal name (UPN). Remove the "<" and ">" characters.
  
```powershell
Get-AzureADUser -ObjectID <sign-in name of the user account>
```

Here's an example:
  
```powershell
Get-AzureADUser -ObjectID BelindaN@litwareinc.onmicosoft.com
```

### View additional property values for a specific account

By default, the **Get-AzureADUser** cmdlet only displays the *ObjectID*, *DisplayName*, and *UserPrincipalName* properties of accounts.

To be more selective about the properties to display, use the **Select** cmdlet in combination with the **Get-AzureADUser** cmdlet. To combine the two cmdlets, use the "pipe" character ("|"), which tells Azure Active Directory PowerShell for Graph to take the results of one command and send it to the next command. Here's an example command that displays the *DisplayName*, *Department*, and *UsageLocation* for every user account:
  
```powershell
Get-AzureADUser | Select DisplayName,Department,UsageLocation
```

This command instructs PowerShell to:
  
1. Get all the information on the user accounts (**Get-AzureADUser**) and send it to the next command (**|**).
    
1.  Display only the user account name, department, and usage location (**Select DisplayName, Department, UsageLocation**).
  
To see all the properties for a specific user account, use the **Select** cmdlet and the wildcard character (*). Here's an example:
  
```powershell
Get-AzureADUser -ObjectID BelindaN@litwareinc.onmicosoft.com | Select *
```

As another example, run the following command to check the enabled status of a specific user account:
  
```powershell
Get-AzureADUser -ObjectID <sign-in name of the user account> | Select DisplayName,UserPrincipalName,AccountEnabled
```

### View account synchronization status

User accounts have two sources: 

- Windows Server Active Directory (AD), which are accounts that sync from on-premises AD to the cloud.

- Azure Active Directory (Azure AD) AD accounts, which are created directly in the cloud.


The following command instructs PowerShell to get all users who have the attribute *DirSyncEnabled* set to *True*. You can use it to find accounts that are synchronizing from on-premise AD.

```powershell
Get-AzureADUser | Where {$_.DirSyncEnabled -eq $true}
```

The following command instructs PowerShell to get all users who have the attribute *DirSyncEnabled* set to *False*. You can use it to find cloud-only accounts.

```powershell
Get-AzureADUser | Where {$_.DirSyncEnabled -ne $false}
```

### View accounts based on a common property

To be more selective about the list of accounts to display, you can use the **Where** cmdlet in combination with the **Get-AzureADUser** cmdlet. To combine the two cmdlets, use the "pipe" character ("|"), which tells Azure Active Directory PowerShell for Graph to take the results of one command and send it to the next command. Here's an example command that displays only those user accounts that have an unspecified usage location:
  
```powershell
Get-AzureADUser | Where {$_.UsageLocation -eq $Null}
```

This command instructs Azure Active Directory PowerShell for Graph to:
  
1. Get all the information on the user accounts (**Get-AzureADUser**) and send it to the next command (**|**).
    
1. Find all the user accounts that have an unspecified usage location (**Where {$\_.UsageLocation -eq $Null}**). Inside the braces, the command instructs PowerShell to only find the set of accounts for which the UsageLocation user account property (**$\_.UsageLocation**) is not specified (**-eq $Null**).
    
The **UsageLocation** property is only one of many properties associated with a user account. To display all the properties for a specific user account, use the **Select** cmdlet and the wildcard character (*). Here's an example:
  
```powershell
Get-AzureADUser -ObjectID BelindaN@litwareinc.onmicosoft.com | Select *
```

For example, **City** is the name of a user account property. You can use the following command to list all accounts of users who live in London:
  
```powershell
Get-AzureADUser | Where {$_.City -eq "London"}
```

> [!TIP]
>  The syntax for the **Where** cmdlet in these examples is **Where {$\_.** [user account property name] [comparison operator] [value] **}**.> [comparison operator] is **-eq** for equals, **-ne** for not equals, **-lt** for less than, **-gt** for greater than, and others.  [value] is typically a string (a sequence of letters, numbers, and other characters), a numerical value, or **$Null** for unspecified. For more information, see [Where](/powershell/module/microsoft.powershell.core/where-object?view=powershell-7).
  

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

### View all accounts

To display the full list of user accounts, run this command:
  
```powershell
Get-MsolUser
```

>[!Note]
>PowerShell Core doesn't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with *Msol* in their name. Run these cmdlets from Windows PowerShell.
>

You should get information similar to this:
  
```powershell
UserPrincipalName                     DisplayName           isLicensed
-----------------                     -----------           ----------
BonnieK@litwareinc.onmicrosoft.com    Bonnie Kearney        True
FabriceC@litwareinc.onmicrosoft.com   Fabrice Canel         True
BrianJ@litwareinc.onmicrosoft.com     Brian Johnson         False 
AnneWlitwareinc.onmicrosoft.com       Anne Wallace          True
ScottW@litwareinc.onmicrosoft.com     Scott Wallace         False
```

The **Get-MsolUser** cmdlet also has a set of parameters to filter the set of user accounts displayed. For example, for the list of unlicensed users (users who have been added to Microsoft 365 but haven't yet been licensed to use any of the services), run this command:
  
```powershell
Get-MsolUser -UnlicensedUsersOnly
```

You should get information similar to this:
  
```powershell
UserPrincipalName                     DisplayName           isLicensed
-----------------                     -----------           ----------
BrianJ@litwareinc.onmicrosoft.com     Brian Johnson         False
ScottW@litwareinc.onmicrosoft.com     Scott Wallace         False
```

For information about additional parameters to filter the set of user accounts that are displayed, see [Get-MsolUser](/previous-versions/azure/dn194133(v=azure.100)).
  
### View a specific account

To display a specific user account, run the following command. Fill in the sign-in name of the user account, which is also known as the user principal name (UPN). Remove the "<" and ">" characters.
  
```powershell
Get-MsolUser -UserPrincipalName <sign-in name of the user account>
```

### View accounts based on a common property

To be more selective about the list of accounts to display, you can use the **Where** cmdlet in combination with the **Get-MsolUser** cmdlet. To combine the two cmdlets, use the "pipe" character ("|"), which tells PowerShell to take the results of one command and send it to the next command. Here's an example that displays only those user accounts that have an unspecified usage location:
  
```powershell
Get-MsolUser | Where {$_.UsageLocation -eq $Null}
```

This command instructs PowerShell to:
  
1. Get all the information on the user accounts (**Get-MsolUser**) and send it to the next command (**|**).
    
1. Find all user accounts that have an unspecified usage location (**Where {$\_.UsageLocation -eq $Null}**). Inside the braces, the command instructs PowerShell to find only the set of accounts for which the UsageLocation user account property (**$\_.UsageLocation**) is not specified (**-eq $Null**).
    
You should get information similar to this:
  
```powershell
UserPrincipalName                     DisplayName           isLicensed
-----------------                     -----------           ----------
BrianJ@litwareinc.onmicrosoft.com     Brian Johnson         False 
ScottW@litwareinc.onmicrosoft.com     Scott Wallace         False

```

The *UsageLocation* property is only one of many properties associated with a user account. To see all of the properties for user accounts, use the **Select** cmdlet and the wildcard character (*) to display them all for a specific user account. Here's an example:
  
```powershell
Get-MsolUser -UserPrincipalName BelindaN@litwareinc.onmicosoft.com | Select *
```

For example, *City* is the name of a user account property. You can use the following command to list all of the user accounts for users who live in London:
  
```powershell
Get-MsolUser | Where {$_.City -eq "London"}
```

> [!TIP]
>  The syntax for the **Where** cmdlet in these examples is **Where {$\_.** [user account property name] [comparison operator] [value] **}**.  [comparison operator] is **-eq** for equals, **-ne** for not equals, **-lt** for less than, **-gt** for greater than, and others.  [value] is typically a string (a sequence of letters, numbers, and other characters), a numerical value, or **$Null** for unspecified. For more information, see [Where](/powershell/module/microsoft.powershell.core/where-object?view=powershell-7).
  
To check the blocked status of a user account, use the following command:
  
```powershell
Get-MsolUser -UserPrincipalName <UPN of user account> | Select DisplayName,BlockCredential
```

### View additional property values for accounts

By default, the **Get-MsolUser** cmdlet displays these three properties of user accounts:
  
- UserPrincipalName
    
- DisplayName
    
- isLicensed
    
If you need additional properties, such as the department where the user works and the country/region where they use Microsoft 365 services, you can run **Get-MsolUser** in combination with the **Select** cmdlet to specify the list of user account properties. Here's an example:
  
```powershell
Get-MsolUser | Select DisplayName, Department, UsageLocation
```

This command instructs PowerShell to:
  
1. Get all the information about the user accounts (**Get-MsolUser**) and send it to the next command (**|**).
    
1. Display only the user account name, department, and usage location (**Select DisplayName, Department, UsageLocation**).
    
You should get information similar to this:
  
```powershell
DisplayName             Department                       UsageLocation
-----------             ----------                       -------------
Bonnie Kearney          Sales & Marketing                    US
Fabrice Canel           Legal                                US
Brian Johnson
Anne Wallace            Executive Management                 US
Alex Darrow             Sales & Marketing                    US
Scott Wallace           Operations
```

The **Select** cmdlet lets you choose what properties to display. To display all the properties for a specific user account, use the wildcard character (*). Here's an example:
  
```powershell
Get-MsolUser -UserPrincipalName BelindaN@litwareinc.onmicosoft.com | Select *
```

To be more selective about the list of accounts to display, you can also use the **Where** cmdlet. Here's an example command that displays only those user accounts that have an unspecified usage location:
  
```powershell
Get-MsolUser | Where {$_.UsageLocation -eq $Null} | Select DisplayName, Department, UsageLocation
```

This command instructs PowerShell to:
  
1. Get all the information about the user accounts (**Get-MsolUser**) and send it to the next command (**|**).
    
1. Find all user accounts that have an unspecified usage location (**Where {$\_.UsageLocation -eq $Null}**), and send the resulting information to the next command (**|**). Inside the braces, the command instructs PowerShell to only find the set of accounts for which the UsageLocation user account property (**$\_.UsageLocation**) is not specified (**-eq $Null**).
    
1. Display only the user account name, department, and usage location (**Select DisplayName, Department, UsageLocation**).
    
You should get information similar to this:
  
```powershell
DisplayName              Department                      UsageLocation
-----------              ----------                      -------------
Brian Johnson 
Scott Wallace            Operations
```

If you're using directory synchronization to create and manage your Microsoft 365 users, you can display the local account from which a Microsoft 365 user has been projected. The following example assumes that:

- Azure AD Connect is configured to use the default source anchor of ObjectGUID. (For more information about configuring a source anchor, see [Azure AD Connect: Design concepts](/azure/active-directory/hybrid/plan-connect-design-concepts)).
- The Active Directory Domain Services module for PowerShell has been installed (see [RSAT tools](https://www.microsoft.com/en-gb/download/details.aspx?id=45520)).

```powershell
Get-ADUser ([guid][System.Convert]::FromBase64String((Get-MsolUser -UserPrincipalName <UPN of user account>).ImmutableID)).guid
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)