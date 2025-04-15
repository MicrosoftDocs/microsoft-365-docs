---
title: "Manage passwords with Microsoft Graph PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/11/2025
audience: Admin
ms.topic: how-to
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
description: "Learn how to use Microsoft Graph PowerShell to manage passwords."
---

# Manage passwords with Microsoft Graph PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use Microsoft Graph PowerShell as an alternative to the Microsoft 365 admin center to manage passwords in Microsoft 365.

> [!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, use a **Microsoft Entra DC admin** or **Cloud Application Admin** account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md).

Managing passwords for a user requires the **User.ReadWrite.All** permission scope or one of the other permissions listed in the ['Assign license' Graph API reference page](/graph/api/user-assignlicense).

```powershell
Connect-Graph -Scopes User.ReadWrite.All
```

Use these commands to set a password and force a user to change their new password the next time they sign in.

```powershell
$userUPN="<user account sign in name, such as belindan@contoso.com>"
$newPassword="<new password>"
$secPassword = ConvertTo-SecureString $newPassword -AsPlainText -Force
Update-MgUser -UserId $userUPN -PasswordProfile @{ ForceChangePasswordNextSignIn = $true; Password = $newPassword }
```

## Bulk password updates

You can update passwords in bulk using PowerShell. The script in this section uses the `Set-ADAccountPassword` and `Set-ADUser` cmdlets, which are part of the Active Directory PowerShell module. This module is installed by default on domain controllers but can also be installed on other computers that have the [Remote Server Administration Tools (RSAT)](/troubleshoot/windows-server/system-management-components/remote-server-administration-tools) installed.

First, create a CSV file with the list of users whose password you want to reset. The CSV file should have two columns: **Username** and **Password**. In the **Username** column, enter the usernames of the users whose passwords you want to reset. In the **Password** column, enter the new password for each user.
 
Here’s an example of what the CSV file would look like when constructed in Excel:

```
Username,Password,
user1,pass1,
user2,pass2
```
 
Once you have entered the usernames and passwords in the appropriate columns, you can save the file as a CSV file.
 
Next, open PowerShell and run the following commands:

```powershell
Connect-AzureAD
 
Import-Csv -Path C:\Path\To\YourFile.csv | ForEach-Object {
    $username = $_.Username
    $password = $_.Password | ConvertTo-SecureString -AsPlainText -Force
    Set-ADAccountPassword -Identity $username -NewPassword $password -Reset
    Set-ADUser -Identity $username -ChangePasswordAtLogon $false
}
```

This script will import the data from your CSV file, reset the password for each user in the list, and set the `ChangePasswordAtLogon` property to **$false** so that the users will not be prompted to create their own passwords when they log in.

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
