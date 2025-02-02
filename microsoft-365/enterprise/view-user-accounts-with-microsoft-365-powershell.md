---
title: "View Microsoft 365 user accounts with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 01/08/2025
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
  - LIL_Placement
  - PowerShell
  - Ent_Office_Other
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: bb12f49d-a85d-4f3b-ada2-5c4e33977b10

description: Learn how to view, list, or display your Microsoft 365 user accounts in different ways with PowerShell.
---

# View Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use the Microsoft 365 admin center to view the accounts for your Microsoft 365 tenant. PowerShell for Microsoft 365 enables this but also provides additional functionality.
  
## View user accounts using Microsoft Graph PowerShell

> [!NOTE]
> The Azure Active Directory (AzureAD) PowerShell module is being deprecated and replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).
>
> Also see [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) and [Upgrade from Azure AD PowerShell to Microsoft Graph PowerShell](/powershell/microsoftgraph/migration-steps) for information on how to install and upgrade to Microsoft Graph PowerShell, respectively.

1. First, install the required software to use Microsoft Graph PowerShell. See [Connect to Microsoft 365 with Microsoft Graph PowerShell](connect-to-microsoft-365-powershell.md) for more information.

1. Then run the following cmdlet to connect to your organization with the required permission scope, which in this case is *User.ReadBasic.All*:

```powershell
# Connect to Microsoft Graph
Connect-Graph -Scopes User.ReadBasic.All
```
  
### View all accounts

To display the full list of user accounts with user ID and user principal name, run this command:
  
```powershell
Get-MgUser -All | Select DisplayName,Id,UserPrincipalName
```

You should get information similar to this:
  
```powershell
DisplayName               Id                                   UserPrincipalName
-----------               --                                   -----------------
Conf Room Adams           6e206948-b2b6-406c-a728-80bbe78e4003 Adams@M365x89521157.OnMicrosoft.com
Adele Vance               916a6a08-b9d0-44b6-870f-562d8358a314 AdeleV@M365x89521157.OnMicrosoft.com
MOD Administrator         5710f237-df3f-4bcd-b875-82deb02f98aa admin@M365x89521157.onmicrosoft.com
Alex Wilber               8aa561dc-441d-4d74-aeb3-e2be41c116c8 AlexW@M365x89521157.OnMicrosoft.com
Allan Deyoung             6b629e5e-3cf4-42d0-8007-3a93f0253382 AllanD@M365x89521157.OnMicrosoft.com
Automate Bot              3a70feb4-9407-47b5-9b61-7526ac0e98d8 AutomateB@M365x89521157.OnMicrosoft.com      
Conf Room Baker           d8cf3fef-1d03-4b9c-9be0-fed44fb87596 Baker@M365x89521157.OnMicrosoft.com
Bianca Pisani             7fe8c2d1-eb8e-4032-96ba-26242ff0acd9 BiancaP@M365x89521157.OnMicrosoft.com        
```

### View a specific account

To display a specific user account, run the following command. Fill in the sign-in account name of the user account, which is also known as the user principal name (UPN). Remove the "<" and ">" characters.
  
```powershell
Get-MgUser -UserId '<user principal name>'
```

Here's an example:
  
```powershell
Get-MgUser -UserId 'BelindaN@litwareinc.onmicosoft.com'
```

### View additional property values for a specific account

By default, the **Get-MgUser** cmdlet only displays the *DisplayName*, *Id*, *Mail*, and *UserPrincipalName* properties of accounts.

To be more selective about the properties to display, use the **Select** cmdlet in combination with the **Get-MgUser** cmdlet. To combine the two cmdlets, use the "pipe" character ("|"), which tells PowerShell to take the results of one command and send it to the next command. Here's an example command that displays the *DisplayName*, *Department*, and *UsageLocation* for every user account:
  
```powershell
Get-MgUser -All | Select DisplayName,Department,UsageLocation
```

This command instructs PowerShell to:
  
1. Get all the information on the user accounts (**Get-MgUser**) and send it to the next command (**|**).

1. Display only the user account name, department, and usage location (**Select DisplayName, Department, UsageLocation**).
  
To see all the properties for a specific user account, use the **Select** cmdlet and the wildcard character (*). Here's an example:
  
```powershell
Get-MgUser -UserID 'BelindaN@litwareinc.onmicosoft.com' | Select *
```

As another example, run the following command to check the enabled status of a specific user account:
  
```powershell
Get-MgUser -UserID '<sign-in name of the user account>' | Select DisplayName,UserPrincipalName,AccountEnabled
```

### View account synchronization status

User accounts have two sources:

- Windows Server Active Directory (AD), which are accounts that sync from on-premises AD to the cloud.

- Microsoft Entra accounts, which are created directly in the cloud.

You can use the following command to find accounts that are synchronizing from **on-premise** AD. It instructs PowerShell to get all users who have the attribute *OnPremisesSyncEnabled* set to *True*.

```powershell
Get-MgUser -All -Filter 'OnPremisesSyncEnabled eq true'
```

You can use the following command to find **cloud-only** accounts. It instructs PowerShell to get all users who have the attribute *OnPremisesSyncEnabled* set to *False* or not set (*Null*).
An account that was never synced from on-premises AD has *OnPremisesSyncEnabled* set to *Null*. An account that was synced initially from on-premises AD but is no longer being synced has *OnPremisesSyncEnabled* set to *False*.

```powershell
Get-MgUser -All | Where OnPremisesSyncEnabled -ne true
OnPremisesSyncEnabled
```

### View accounts based on a common property

To be more selective about the list of accounts to display, you can use the **Where** cmdlet in combination with the **Get-MgUser** cmdlet. To combine the two cmdlets, use the "pipe" character ("|"), which tells PowerShell to take the results of one command and send it to the next command. Here is an example command that displays only those user accounts that have an unspecified usage location:
  
```powershell
Get-MgUser | Where UsageLocation -eq $Null
```

This command instructs PowerShell to:
  
1. Get all the information on the user accounts (**Get-MgUser**) and send it to the next command (**|**).

1. Find all the user accounts that have an unspecified usage location (**Where UsageLocation -eq $Null**). The command instructs PowerShell to only find the set of accounts for which the *UsageLocation* user account property (**UsageLocation**) is not specified (**-eq $Null**).

The **UsageLocation** property is only one of many properties associated with a user account. To display all the properties for a specific user account, use the **Select** cmdlet and the wildcard character (*). Here's an example:
  
```powershell
Get-MgUser -UserID BelindaN@litwareinc.onmicosoft.com | Select *
```

For example, **City** is the name of a user account property. You can use the following command to list all accounts of users who live in London:
  
```powershell
Get-MgUser | Where City -eq "London"
```

> [!TIP]
> The syntax for the **Where** cmdlet in these examples is **Where** [user account property name] [comparison operator] [value] **value**.> [comparison operator] is **-eq** for equals, **-ne** for not equals, **-lt** for less than, **-gt** for greater than, and others.  [value] is typically a string (a sequence of letters, numbers, and other characters), a numerical value, or **$Null** for unspecified. For more information, see [Where](/powershell/module/microsoft.powershell.core/where-object).

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
