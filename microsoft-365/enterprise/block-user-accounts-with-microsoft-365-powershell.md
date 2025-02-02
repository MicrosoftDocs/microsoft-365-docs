---
title: "Block Microsoft 365 user accounts with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/09/2024
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
  - Ent_Office_Other
  - PowerShell
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: 04e58c2a-400b-496a-acd4-8ec5d37236dc
description: How to use PowerShell to block and unblock access to Microsoft 365 accounts.
---

# Block Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

When you block access to a Microsoft 365 account, you prevent anyone from using the account to sign in and access the services and data in your Microsoft 365 organization. You can use PowerShell to block access to individual or multiple user accounts.

## Block access to individual user accounts

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md).

Blocking and unblocking user accounts requires the **User.ReadWrite.All** permission scope or one of the other permissions listed in the ['List subscribedSkus' Graph API reference page](/graph/api/subscribedsku-list).

```powershell
Connect-Graph -Scopes User.ReadWrite.All
```

Use the following syntax to block an individual user account:

```powershell
$params = @{
	accountEnabled = $false
}
Update-MgUser -UserId <sign-in name of the user account> -BodyParameter $params
```

> [!NOTE]
> The *-UserId* parameter in the **Update-MgUser** cmdlet accepts either the account sign-in name, also known as the User Principal Name, or the account's object ID.

This example blocks access to the user account *fabricec@litwareinc.com*.

```powershell
$params = @{
	accountEnabled = $false
}
Update-MgUser -UserId "fabricec@litwareinc.com" -BodyParameter $params
```

To unblock this user account, run the following command:

```powershell
$params = @{
	accountEnabled = $true
}
Update-MgUser -UserId "fabricec@litwareinc.com" -BodyParameter $params
```

To display the user account UPN based on the user's display name, use the following commands:

```powershell
$userName="<display name>"
Write-Host (Get-MgUser -All | where {$_.DisplayName -eq $userName}).UserPrincipalName

```

This example displays the user account UPN for the user  *Caleb Sills*.

```powershell
$userName="Caleb Sills"
Write-Host (Get-MgUser -All | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

To block an account based on the user's display name, use the following commands:

```powershell
$userName="<display name>"
$user = Get-MgUser -Filter "displayName eq '$userName'"
$params = @{
	accountEnabled = $false
}
Update-MgUser -UserId $user.Id -BodyParameter $params
```

To check the blocked status of a user account use the following command:

```powershell
Get-MgUser -ObjectID <UPN of user account> -Property "displayName,accountEnabled" | Select displayName, accountEnabled
```

### Block multiple user accounts

To block access for multiple user accounts, create a text file that contains one account sign-in name on each line like this:

  ```powershell
akol@contoso.com
tjohnston@contoso.com
kakers@contoso.com
  ```

In the following commands, the example text file is *C:\My Documents\Accounts.txt*. Replace this file name with the path and file name of your text file.

To block access to the accounts listed in the text file, run the following command:

```powershell
$params = @{
	accountEnabled = $false
}
Get-Content "C:\My Documents\Accounts.txt" | ForEach {Update-MgUser -UserId $_ -BodyParameter $params}
```

To unblock the accounts that are listed in the text file, run the following command:

```powershell
$params = @{
	accountEnabled = $true
}
Get-Content "C:\My Documents\Accounts.txt" | ForEach {Update-MgUser -UserId $_ -BodyParameter $params}
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)

[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
