---
title: "Manage Skype for Business Online with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/17/2020
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: Ent_O365
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

Download and install the [Skype for Business Online Windows PowerShell module](https://www.microsoft.com/download/details.aspx?id=39366), and then restart your computer.


## Connect using Skype for Business Online admin credentials

1. Open a Windows PowerShell command prompt window and run the following commands:
    
   ```powershell
   Import-Module SkypeOnlineConnector
   $userCredential = Get-Credential
   $sfbSession = New-CsOnlineSession -Credential $userCredential
   Import-PSSession $sfbSession
   ```

2. In the **Windows PowerShell Credential Request** dialog box, type your Skype for Business Online administrator account name and password, and then select **OK**.


## Connect using an admin account with multi-factor authentication

1. Open a Windows PowerShell command prompt window, and run the following commands:

   ```powershell
   Import-Module SkypeOnlineConnector
   $sfbSession = New-CsOnlineSession
   Import-PSSession $sfbSession
   ```

2. When prompted by the **New-CsOnlineSession** command, enter your Skype for Business Online administrator account name.

3. In the **Sign in to your account** dialog box, type your Skype for Business Online administrator password and select **Sign in**.

4. In the **Sign in to your account** dialog box, follow the instructions to add authentication information, such as a verification code, and then select **Verify**.

For more information, see:
  
- [Manage Skype for Business Online policies with PowerShell](manage-skype-for-business-online-policies-with-microsoft-365-powershell.md)
    
- [Assign per-user Skype for Business Online policies with PowerShell](assign-per-user-skype-for-business-online-policies-with-microsoft-365-powershell.md)
    
## See also

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)

[Skype for Business PowerShell cmdlet references](https://docs.microsoft.com/powershell/module/skype/?view=skype-ps)
