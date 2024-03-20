---
title: "Turn off directory synchronization for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/28/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom:
  - Adm_O365
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
ms.collection:
- scotvorg
- Ent_O365
- M365-identity-device-management
- must-keep
search.appverid:
- MET150
- MOE150
- MED150
ms.assetid: ee5f861e-bd48-4267-83d1-a4ead4b4a00d
description: In this article, find information about using PowerShell to turn off directory synchronization for Microsoft 365.
---

# Turn off directory synchronization for Microsoft 365

You can use PowerShell to turn off directory synchronization and convert your synchronized users to cloud-only. However, it isn't recommended that you turn off directory synchronization as a troubleshooting step. If you need assistance with troubleshooting directory synchronization, see the [Fixing problems with directory synchronization for Microsoft 365](fix-problems-with-directory-synchronization.md) article.
  
[Contact support](https://support.office.com/article/32a17ca7-6fa0-4870-8a8d-e25ba4ccfd4b) if you need help with this procedure.
  
## Turn off directory synchronization

To turn off Directory synchronization:
  
1. First, install the required software and connect to your Microsoft 365 subscription. For instructions, see [Connect with the Microsoft Azure Active Directory module for Windows PowerShell](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

2. Use **Set-MsolDirSyncEnabled** to disable directory synchronization:

  ```powershell
  Set-MsolDirSyncEnabled -EnableDirSync $false
  ```

>[!Note]
>If you use this command, you must wait 72 hours before you can turn directory synchronization back on.

Visit [Set-MsolDirSyncEnabled](/powershell/module/msonline/set-msoldirsyncenabled) for more detailed information on cmdlet usage and switches.
