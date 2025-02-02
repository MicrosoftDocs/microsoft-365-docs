---
title: "Create Microsoft 365 user accounts with PowerShell"
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
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: 6770c5fa-b886-4512-8c67-ffd53226589e
description: How to use PowerShell to create individual or multiple Microsoft 365 user accounts.
---

# Create Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use Microsoft Graph PowerShell to efficiently create user accounts, including multiple accounts.

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

> [!NOTE]
> Also see [Learn how to create user accounts](../admin/add-users/add-users.md) by using the Microsoft 365 admin center.
>
> For a list of additional resources, see [Manage users and groups](/admin).

## Create Microsoft 365 user accounts with Microsoft Graph PowerShell

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, use a **Microsoft Entra DC admin** or **Cloud Application Admin** account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md). The cmdlets in this article require the permission scope **User.ReadWrite.All** or one of the other permissions listed in the ['List subscribedSkus' Graph API reference page](/graph/api/subscribedsku-list). Some commands in this article may require different permission scopes, in which case this will be noted in the relevant section.

```powershell
Connect-MgGraph -Scopes "User.ReadWrite.All"
```

### Create an individual user account

To create an individual account, use the following syntax:
  
```powershell
$PasswordProfile = New-Object -TypeName Microsoft.Graph.PowerShell.Models.MicrosoftGraphPasswordProfile
$PasswordProfile.Password = "<user account password>"
New-MgUser -DisplayName "<display name>" -GivenName "<first name>" -Surname "<last name>" -UserPrincipalName <sign-in name> -UsageLocation <ISO 3166-1 alpha-2 country code> -MailNickname <mailbox name> -PasswordProfile $PasswordProfile -AccountEnabled $true
```

This example creates an account for the US user *John Doe*.
  
```powershell
$PasswordProfile = New-Object -TypeName Microsoft.Graph.PowerShell.Models.MicrosoftGraphPasswordProfile
$PasswordProfile.Password = "3Rv0y1q39/chsy"
New-MgUser -DisplayName "John Doe" -GivenName "John" -Surname "Doe" -UserPrincipalName johnd@contoso.onmicrosoft.com -UsageLocation "US" -MailNickname "johnd" -PasswordProfile $PasswordProfile -AccountEnabled $true
```

### Create multiple user accounts

1. Create a comma-separated value (CSV) file that contains the required user account information. For example:

     ```powershell
     UserPrincipalName,FirstName,LastName,DisplayName,UsageLocation,MailNickname
     ClaudeL@contoso.onmicrosoft.com,Claude,Loiselle,Claude Loiselle,US,claudel
     LynneB@contoso.onmicrosoft.com,Lynne,Baxter,Lynne Baxter,US,lynneb
     ShawnM@contoso.onmicrosoft.com,Shawn,Melendez,Shawn Melendez,US,shawnm
     ```

   > [!NOTE]
   > The column names and their order in the first row of the CSV file are arbitrary. But make sure the order of the data in the rest of the file matches the order of the column names. And use the column names for the parameter values in the PowerShell for Microsoft 365 command.

2. This example creates user accounts from the file *C:\temp\NewAccounts.csv* and logs the results in a file named *C:\temp\NewAccountResults.csv*.

    ```powershell
    # Import the CSV file
    $users = Import-Csv -Path "C:\temp\NewAccounts.csv"

    # Create a password profile
    $PasswordProfile = @{
        Password = 'Password123'
        }

    # Loop through each user in the CSV file
    foreach ($user in $users) {
        # Create a new user
        $newUser = New-MgUser -DisplayName $user.DisplayName -GivenName $user.FirstName -Surname $user.LastName -UserPrincipalName $user.UserPrincipalName -UsageLocation $user.UsageLocation -MailNickname $user.MailNickname -PasswordProfile $passwordProfile -AccountEnabled

        # Assign a license to the new user
        $e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
        Set-MgUserLicense -UserId $newUser.Id -AddLicenses @{SkuId = $e5Sku.SkuId} -RemoveLicenses @()
    }

    # Export the results to a CSV file
    $users | Export-Csv -Path "C:\temp\NewAccountResults.csv" -NoTypeInformation
    ```

3. Review the output file to see the results.

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
