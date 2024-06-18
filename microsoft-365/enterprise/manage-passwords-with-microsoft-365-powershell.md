---
title: "Manage passwords with Microsoft Graph PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/07/2024
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
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
description: "Learn how to use Microsoft Graph PowerShell to manage passwords."
---

# Manage passwords with Microsoft Graph PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use Microsoft Graph PowerShell as an alternative to the Microsoft 365 admin center to manage passwords in Microsoft 365.

>[!NOTE]
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

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
