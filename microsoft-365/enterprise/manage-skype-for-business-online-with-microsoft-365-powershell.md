---
title: "Manage Skype for Business Online with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/15/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection:
- scotvorg 
- Ent_O365
- must-keep
f1.keywords:
- NOCSH
ms.custom:
ms.assetid: 054c16e6-9fd1-4e85-a0e6-81788b8410ea
description: "Use PowerShell for Microsoft 365 to manage Skype for Business Online policies, per-user policies, and meeting settings."
---

# Manage Skype for Business Online with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Skype for Business Online administrators are responsible for managing policies. Although you can do some of these tasks in the Microsoft 365 admin center, others are easier to do in PowerShell.

## Before you start

> [!NOTE]
> Skype for Business Online Connector is currently part of the latest Teams PowerShell module. If you're using the latest **Teams PowerShell** public release, you don't need to install the Skype for Business Online Connector.

> [!NOTE]
> Skype for Business Online Admins can manage both **Teams** and **Skype for Business Online** app policies through PowerShell.

Install the [Teams PowerShell module](/microsoftteams/teams-powershell-install).

## Connect using admin credentials

1. Open a Windows PowerShell command prompt window and run the following commands:

   ```powershell
   Import-Module MicrosoftTeams
   $userCredential = Get-Credential
   Connect-MicrosoftTeams -Credential $userCredential
   ```

2. In the **Windows PowerShell Credential Request** dialog box, type your administrator account name and password, and then select **OK**.

## Connect using an admin account with multifactor authentication

1. Open a Windows PowerShell command prompt window, and run the following commands:

   ```powershell
   Import-Module MicrosoftTeams
   Connect-MicrosoftTeams
   ```

2. When prompted enter your Skype for Business Online administrator account name?

3. In the **Sign in to your account** dialog box, type your Skype for Business Online administrator password and select **Sign in**.

4. In the **Sign in to your account** dialog box, follow the instructions to add authentication information, such as a verification code, and then select **Verify**.

For more information, see:

- [Manage Skype for Business Online policies with PowerShell](manage-skype-for-business-online-policies-with-microsoft-365-powershell.md)

## See also

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)

[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)

[Skype for Business PowerShell cmdlet references](/powershell/module/skype/)
