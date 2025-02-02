---
title: "Configure Microsoft 365 user account properties with PowerShell"
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
  - O365ITProTrain
  - Ent_Office_Other
  - PowerShell
  - admindeeplinkMAC
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: 30813f8d-b08d-444b-98c1-53df7c29b4d7
description: "Use PowerShell for Microsoft 365 to configure properties of individual or multiple user accounts in your Microsoft 365 tenant."
---

# Configure Microsoft 365 user account properties with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> to configure properties for the user accounts of your Microsoft 365 tenant. In PowerShell, you can also do this, plus some other things you can't do in the admin center.
  
## Configure Microsoft 365 user account properties with Microsoft Graph PowerShell

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, use a **Microsoft Entra DC admin** or **Cloud Application Admin** account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md). The cmdlets in this article require the permission scope **User.ReadWrite.All** or one of the other permissions listed in the ['List subscribedSkus' Graph API reference page](/graph/api/subscribedsku-list). Some commands in this article may require different permission scopes, in which case this will be noted in the relevant section.

```powershell
Connect-MgGraph -Scopes "User.ReadWrite.All"
```

### Change properties for a specific user account

You identify the account with the *-ObjectID* parameter and set or change specific properties by using additional parameters. Here's a list of the most common parameters:
  
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

> [!NOTE]
> Before you can assign licenses to a user account, you must assign a usage location.

To display the User Principal Name (UPN) for your user accounts, run the following command.
  
```powershell
Get-MgUser -All | Sort-Object UserPrincipalName | Select-Object UserPrincipalName | More
```

This command instructs PowerShell to:
  
1. Get all the information on the user accounts (**Get-MgUser**) and send it to the next command (**|**).

1. Sort the list of UPNs alphabetically (**Sort UserPrincipalName**) and send it to the next command (**|**).

1. Display just the UPN property for each account (**Select UserPrincipalName**).

1. Display them one screen at a time (**More**).

To display the UPN for an account based on its display name (first and last name), run the following commands. Fill in the *$userName* variable, and remove the \< and > characters:
  
```powershell
$userName="<Display name>"
Write-Host (Get-MgUser -All | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

This example displays the UPN for the user account that has the display name *Caleb Sills*.
  
```powershell
$userName="Caleb Sills"
Write-Host (Get-MgUser -All | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

By using a *$upn* variable, you can make changes to individual accounts based on their display name. Here's an example that sets *Belinda Newman*'s usage location to France. But it specifies her display name rather than her UPN:
  
```powershell
$userName="Belinda Newman"
$upn=(Get-MgUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
Update-MgUser -UserId $upn -UsageLocation "FR"
```

### Change properties for all user accounts

To change properties for all users, you can use a combination of the **Get-MgUser** and **Update-MgUser** cmdlets. The following example changes the usage location for all users to *France*:
  
```powershell
Get-MgUser | ForEach-Object { Update-MgUser -UserId $_.Id -UsageLocation "FR" }
```

This command instructs PowerShell to:
  
1. Get all of the information on the user accounts (**Get-MgUser**) and send it to the next command (**|**).

1. Set the user location to France (**Update-MgUser -UsageLocation FR**).

### Change properties for a specific set of user accounts

To change properties for a specific set of user accounts, you can use a combination of the **Get-MgUser**, **Where**, and **Update-MgUser** cmdlets. The following example changes the usage location for all the users in the Accounting department to *France*:
  
```powershell
Get-MgUser -All | Where-Object {$_.Department -eq "Accounting"} | ForEach-Object {Update-MgUser -UserId $_.Id -UsageLocation "FR"}
```

This command instructs PowerShell to:
  
1. Get all the information on the user accounts (**Get-MgUser**), and send it to the next command (**|**).

1. Find all the user accounts that have their *Department* property set to "Accounting" (**Where {$_.Department -eq "Accounting"}**), and send the resulting information to the next command (**|**).

1. Set the user location to France (**Update-MgUser -UsageLocation FR**).

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
