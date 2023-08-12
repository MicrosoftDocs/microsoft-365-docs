---
title: "Create Microsoft 365 user accounts with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
f1.keywords:
- CSH
ms.custom: 
- PowerShell
- Ent_Office_Other
- O365ITProTrain
- seo-marvel-apr2020
ms.assetid: 6770c5fa-b886-4512-8c67-ffd53226589e
description: How to use PowerShell to create individual or multiple Microsoft 365 user accounts.
---

# Create Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use PowerShell for Microsoft 365 to efficiently create user accounts, including multiple accounts.

When you create user accounts in PowerShell, certain account properties are always required. Other properties aren't required but are important. See the following table.
  
|**Property name**|**Required?**|**Description**|
|:-----|:-----|:-----|
|**DisplayName** <br/> |Yes  <br/> |This is the display name that's used in Microsoft 365 services. For example, *Caleb Sills*. <br/> |
|**UserPrincipalName** <br/> |Yes  <br/> |This is the account name that's used to sign in to Microsoft 365 services. For example, *CalebS\@contoso.onmicrosoft.com*.  <br/> |
|**FirstName** <br/> |No  <br/> ||
|**LastName** <br/> |No  <br/> ||
|**LicenseAssignment** <br/> |No  <br/> |This is the licensing plan (also known as the [license plan or SKU](/azure/active-directory/enterprise-users/licensing-service-plan-reference)) from which an available license is assigned to the user account. The license defines the Microsoft 365 services that are available to the account. You don't have to assign a license to a user when you create the account, but the account must have a license to access Microsoft 365 services. You have 30 days to license the user account after you create it. |
|**Password** <br/> |No  <br/> | If you don't specify a password, a random password is assigned to the user account, and the password is visible in the results of the command. If you specify a password, it needs to be 8 to 16 ASCII text characters of the following types: lowercase letters, uppercase letters, numbers, and symbols.<br/> |
|**UsageLocation** <br/> |No  <br/> |This is a valid ISO 3166-1 alpha-2 country code. For example, *US* for the United States, and *FR* for France. It's important to provide this value, because some Microsoft 365 services aren't available in certain countries/regions. You can't assign a license to a user account unless the account has this value configured. For more information, see [About license restrictions](https://go.microsoft.com/fwlink/p/?LinkId=691730).<br/> |

>[!Note]
>[Learn how to create user accounts](../admin/add-users/add-users.md) by using the Microsoft 365 admin center.
> 
> For a list of additional resources, see [Manage users and groups](/admin).
>   

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).

After you connect, use the following syntax to create an individual account:
  
```powershell
$PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password="<user account password>"
New-AzureADUser -DisplayName "<display name>" -GivenName "<first name>" -SurName "<last name>" -UserPrincipalName <sign-in name> -UsageLocation <ISO 3166-1 alpha-2 country code> -MailNickName <mailbox name> -PasswordProfile $PasswordProfile -AccountEnabled $true
```

This example creates an account for the US user *Caleb Sills*:
  
```powershell
$PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password="3Rv0y1q39/chsy"
New-AzureADUser -DisplayName "Caleb Sills" -GivenName "Caleb" -SurName "Sills" -UserPrincipalName calebs@contoso.onmicrosoft.com -UsageLocation US -MailNickName calebs -PasswordProfile $PasswordProfile -AccountEnabled $true
```

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

### Create an individual user account

To create an individual account, use the following syntax:
  
```powershell
New-MsolUser -DisplayName <display name> -FirstName <first name> -LastName <last name> -UserPrincipalName <sign-in name> -UsageLocation <ISO 3166-1 alpha-2 country code> -LicenseAssignment <licensing plan name> [-Password <Password>]
```

>[!Note]
>PowerShell Core doesn't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets that have *Msol* in their name. Run these cmdlets from Windows PowerShell.
>

To list the available [licensing plan names](/azure/active-directory/enterprise-users/licensing-service-plan-reference), use this command:

````powershell
Get-MsolAccountSku
````

This example creates an account for the US user *Caleb Sills*, and assigns a license from the `contoso:ENTERPRISEPACK` (Office 365 Enterprise E3) licensing plan.
  
```powershell
New-MsolUser -DisplayName "Caleb Sills" -FirstName Caleb -LastName Sills -UserPrincipalName calebs@contoso.onmicrosoft.com -UsageLocation US -LicenseAssignment contoso:ENTERPRISEPACK
```

### Create multiple user accounts

1. Create a comma-separated value (CSV) file that contains the required user account information. For example:

     ```powershell
     UserPrincipalName,FirstName,LastName,DisplayName,UsageLocation,AccountSkuId
     ClaudeL@contoso.onmicrosoft.com,Claude,Loiselle,Claude Loiselle,US,contoso:ENTERPRISEPACK
     LynneB@contoso.onmicrosoft.com,Lynne,Baxter,Lynne Baxter,US,contoso:ENTERPRISEPACK
     ShawnM@contoso.onmicrosoft.com,Shawn,Melendez,Shawn Melendez,US,contoso:ENTERPRISEPACK
     ```

   >[!NOTE]
   >The column names and their order in the first row of the CSV file are arbitrary. But make sure the order of the data in the rest of the file matches the order of the column names. And use the column names for the parameter values in the PowerShell for Microsoft 365 command.
    
2. Use the following syntax:
    
    ```powershell
     Import-Csv -Path <Input CSV File Path and Name> | foreach {New-MsolUser -DisplayName $_.DisplayName -FirstName $_.FirstName -LastName $_.LastName -UserPrincipalName $_.UserPrincipalName -UsageLocation $_.UsageLocation -LicenseAssignment $_.AccountSkuId [-Password $_.Password]} | Export-Csv -Path <Output CSV File Path and Name>
    ```

   This example creates user accounts from the file *C:\My Documents\NewAccounts.csv* and logs the results in a file named *C:\My Documents\NewAccountResults.csv*.
    
    ```powershell
    Import-Csv -Path "C:\My Documents\NewAccounts.csv" | foreach {New-MsolUser -DisplayName $_.DisplayName -FirstName $_.FirstName -LastName $_.LastName -UserPrincipalName $_.UserPrincipalName -UsageLocation $_.UsageLocation -LicenseAssignment $_.AccountSkuId} | Export-Csv -Path "C:\My Documents\NewAccountResults.csv"
    ```

3. Review the output file to see the results. We didn't specify passwords, so the random passwords that Microsoft 365 generated are visible in the output file.
    
## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
