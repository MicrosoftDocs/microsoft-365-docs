---
title: "Configure Microsoft 365 user account properties with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/16/2020
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
- Ent_Office_Other
- PowerShell
ms.assetid: 30813f8d-b08d-444b-98c1-53df7c29b4d7
description: "Summary: Use PowerShell for Microsoft 365 to configure properties of individual or multiple user accounts in your Microsoft 365 tenant."
---

# Configure Microsoft 365 user account properties with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Although you can use the Microsoft 365 admin center to configure properties for the user accounts of your Microsoft 365 tenant, you can also use PowerShell and do some things that the Microsoft 365 admin center cannot.
  
## Use the Azure Active Directory PowerShell for Graph module

To configure properties for user accounts with the Azure Active Directory PowerShell for Graph module, you use the [Set-AzureADUser](https://docs.microsoft.com/powershell/module/azuread/set-azureaduser?view=azureadps-2.0) cmdlet and specify the properties to set or change. 

First, [connect to your Microsoft 365 tenant](connect-to-office-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
   
### Change properties for a specific user account

You identify the account with the **-ObjectID** parameter and set or change specific properties with additional parameters. Here's a list of the most common parameters.
  
- -Department "\<department name>"
    
- -DisplayName "\<full user name>"
    
- -FacsimilieTelephoneNumber "\<fax number>"
    
- -GivenName "\<user first name>"
    
- -Surname "\<user last name>"
    
- -Mobile "\<mobile phone number>"
    
- -JobTitle "\<job title>"
    
- -PreferredLanguage "\<language>"
    
- -StreetAddress "\<street address>"
    
- -City "\<city name>"
    
- -State "\<state name>"
    
- -PostalCode "\<postal code>"
    
- -Country "\<country name>"
    
- -TelephoneNumber "\<office phone number>"
    
- -UsageLocation "\<2-character country or region code>"
    
    This is the ISO 3166-1 alpha-2 (A2) two-letter country or region code.
    
See [Set-AzureADUser](https://docs.microsoft.com/powershell/module/azuread/set-azureaduser?view=azureadps-2.0) for additional parameters.


To display the User Principal Name for your user accounts, run the following command.
  
```powershell
Get-AzureADUser | Sort UserPrincipalName | Select UserPrincipalName | More
```

This command instructs PowerShell to:
  
- Get all of the information on the user accounts (**Get-AzureADUser**) and send it to the next command (**|**).
    
- Sort the list of User Principal Names alphabetically (**Sort UserPrincipalName**) and send it to the next command (**|**).
    
- Display just the User Principal Name property for each account (**Select UserPrincipalName**).

- Display them one screen at a time (**More**).
    
This command will list all of your accounts. If you want to display the User Principal Name for an account based on its display name (first and last name), fill in the **$userName** variable below (removing the \< and > characters), and then run the following commands:
  
```powershell
$userName="<Display name>"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

This example displays the User Principal Name for the user account with the display name of Caleb Sills.
  
```powershell
$userName="Caleb Sills"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

By using a **$upn** variable, you can make changes to individual accounts based on their display name. Here is an example of setting Belinda Newman's usage location to France, but specifying her display name rather than her User Principal Name:
  
```powershell
$userName="Belinda Newman"
$upn=(Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
Set-AzureADUser -ObjectID $upn -UsageLocation "FR"
```

### Change properties for all user accounts

To change properties for all users, you can use the combination of the **Get-AzureADUser** and **Set-AzureADUser** cmdlets. The following example changes the usage location for all users to France:
  
```powershell
Get-AzureADUser | Set-AzureADUser -UsageLocation "FR"
```

This command instructs PowerShell to:
  
- Get all of the information on the user accounts (**Get-AzureADUser**) and send it to the next command (**|**).
    
- Set the user location to France (**Set-AzureADUser -UsageLocation "FR"**).
    
### Change properties for a specific set of user accounts

To change properties for a specific set of user account, you can use the combination of the **Get-AzureADUser**, **Where**, and **Set-AzureADUser** cmdlets. The following example changes the usage location for all the users in the Accounting department to France:
  
```powershell
Get-AzureADUser | Where {$_.Department -eq "Accounting"} | Set-AzureADUser -UsageLocation "FR"
```

This command instructs PowerShell to:
  
- Get all of the information on the user accounts (**Get-AzureADUser**) and send it to the next command (**|**).
    
- Find all of the user accounts that have their Department property set to "Accounting" (**Where {$_.Department -eq "Accounting"}**) and send the resulting information to the next command (**|**).
    
- Set the user location to France (**Set-AzureADUser -UsageLocation "FR"**).
    
## Use the Microsoft Azure Active Directory Module for Windows PowerShell

To configure properties for user accounts with the Microsoft Azure Active Directory Module for Windows PowerShell, you use the **Set-MsolUser** cmdlet and specify the properties to set or change. 

First, [connect to your Microsoft 365 tenant](connect-to-office-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).
  
>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

### Change properties for a specific user account

To configure properties for a specific user account, you use the [Set-MsolUser](https://docs.microsoft.com/previous-versions/azure/dn194136(v=azure.100)) cmdlet and specify the properties to set or change. 

You identify the account with the **-UserPrincipalName** parameter and set or change specific properties with additional parameters. Here is a list of the most common parameters.
  
- -City "\<city name>"
    
- -Country "\<country name>"
    
- -Department "\<department name>"
    
- -DisplayName "\<full user name>"
    
- -Fax "\<fax number>"
    
- -FirstName "\<user first name>"
    
- -LastName "\<user last name>"
    
- -MobilePhone "\<mobile phone number>"
    
- -Office "\<office location>"
    
- -PhoneNumber "\<office phone number>"
    
- -PostalCode "\<postal code>"
    
- -PreferredLanguage "\<language>"
    
- -State "\<state name>"
    
- -StreetAddress "\<street address>"
    
- -Title "\<title name>"
    
- -UsageLocation "\<2-character country or region code>"
    
    This is the ISO 3166-1 alpha-2 (A2) two-letter country or region code.
    
See [Set-MsolUser](https://docs.microsoft.com/previous-versions/azure/dn194136(v=azure.100)) for additional parameters.

To see the User Principal Names of all your users, run the following command.
  
```powershell
Get-MSolUser | Sort UserPrincipalName | Select UserPrincipalName | More
```

This command instructs PowerShell to:
  
- Get all of the information on the user accounts (**Get-MsolUser**) and send it to the next command (**|**).
    
- Sort the list of User Principal Names alphabetically (**Sort UserPrincipalName**) and send it to the next command (**|**).
    
- Display just the User Principal Name property for each account (**Select UserPrincipalName**).
    
- Display them one screen at a time (**More**).
    
This command will list all of your accounts. If you want to display the User Principal Name for an account based on its display name (first and last name), fill in the **$userName** variable below (removing the \< and > characters), and then run the following commands:
  
```powershell
$userName="<Display name>"
Write-Host (Get-MsolUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

This example displays the User Principal Name for the user named Caleb Sills.
  
```powershell
$userName="Caleb Sills"
Write-Host (Get-MsolUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

By using a **$upn** variable, you can make changes to individual accounts based on their display name. Here is an example of setting Belinda Newman's usage location to France, but specifying her display name rather than her User Principal Name:
  
```powershell
$userName="<display name>"
$upn=(Get-MsolUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
Set-MsolUser -UserPrincipalName $upn -UsageLocation "FR"
```

### Change properties for all user accounts

To change properties for all users, you can use the combination of the **Get-MsolUser** and **Set-MsolUser** cmdlets. The following example changes the usage location for all users to France:
  
```powershell
Get-MsolUser | Set-MsolUser -UsageLocation "FR"
```

This command instructs PowerShell to:
  
- Get all of the information on the user accounts (**Get-MsolUser**) and send it to the next command (**|**).
    
- Set the user location to France (**Set-MsolUser -UsageLocation "FR"**).
    
### Change properties for a specific set of user accounts

To change properties for a specific set of user account, you can use the combination of the **Get-MsolUser**, **Where**, and **Set-MsolUser** cmdlets. The following example changes the usage location for all the users in the Accounting department to France:
  
```powershell
Get-MsolUser | Where {$_.Department -eq "Accounting"} | Set-MsolUser -UsageLocation "FR"
```

This command instructs PowerShell to:
  
- Get all of the information on the user accounts (**Get-MsolUser**) and send it to the next command (**|**).
    
- Find all of the user accounts that have their Department property set to "Accounting" (**Where {$_.Department -eq "Accounting"}**) and send the resulting information to the next command (**|**).
    
- Set the user location to France (**Set-MsolUser -UsageLocation "FR"**).
    

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-office-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-office-365-with-office-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-office-365-powershell.md)
