---
title: "Prepare for Office client deployment with Microsoft 365 Business Premium"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: other
ms.date: 10/18/2022
ms.localizationpriority: high
ms.collection: 
- tier1
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
ROBOTS: NO INDEX, NO FOLLOW
description: "Learn how to automatically install the 32-bit Microsoft 365 apps on Windows computers and keep them updated in Microsoft 365 Business Premium."
---

# Prepare to automatically install Microsoft 365 apps to client computers

Use Microsoft 365 Business Premium to automatically install the 32-bit Microsoft 365 apps on Windows computers and keep them current with updates.
  
Automatic installation works best if the computer: 

- is on Windows for Business.
  
- doesn't have existing Office desktop apps (Word, Excel, PowerPoint, Outlook, OneNote, Publisher, Access, and OneDrive) OR has an existing version of Click-to-Run Office installed.

To determine if you have the Click-to-Run version of Office, in any Office app go to **File** \> **Account** ( **Office Account** in Outlook). If you see **Office Updates** as shown in the following figure, then the installation was done by using Click-to-Run.
  
![Screenshot of Office updates in Office app Account.](./../media/e3439380-fa43-4ed6-ae5d-64851c297df5.png)
  
## Requirements for using this feature
  
Works with:
  
- A user who has a Windows Business user license, an active Microsoft 365 for Business license, Windows 10 Creators Update, and is joined to Azure Active Directory.

Doesn't work with: 

- 64-bit Microsoft 365 apps (example: Word, Excel, PowerPoint). If 64-bit Microsoft 365 apps are required, then this feature isn't a good fit because there's no support for triggering a 64-bit 2016 Click-to-Run version of Office from the Microsoft 365 for business admin console.

- Any 2016 Windows Installer (MSI) standalone apps (for example, Visio or Project). Microsoft 365 for business upgrades Office to the Click-to-Run version of Office 2016, and that doesn't work with Office 2016 MSI standalone applications.

The following table shows what action the end users or admins may need to take, depending on their beginning state, to have a successful 32-bit Click-to-Run version of Office deployment from the Microsoft 365 for business admin console.<br/>


|Starting Office install status|Action to take before Microsoft 365 for business Office install|End state|
|:-----|:-----|:-----|
|No Office suite installed  |None  |Office 2016 32-bit is installed by using Click-to-Run  |
|Existing Click-to-Run 32-bit version of Office (2016 or earlier) and no standalone apps  |None  |Upgraded to the latest 32-bit Click-to-Run version of Office 2016, as needed **\*** |
|Existing Click-to-Run 32-bit version of Office and Click-to-Run 32-bit or 64-bit standalone Microsoft 365 apps (for example, Visio, Project)  |None  |Standalone apps aren't affected. Suite is upgraded to Click-to-Run 32-bit version of Office 2016  |
|Existing Click-to-Run 32-bit version of Office and any 32-bit or 64-bit (except 2016) MSI standalone Microsoft 365 apps  |None  |Standalone apps aren't affected. Suite is upgraded to Click-to-Run 32-bit version of Office 2016  |
|Any existing Click-to-Run 64-bit version of Office  |Uninstall the 64-bit Microsoft 365 apps, if it's OK to replace them with 32-bit Microsoft 365 apps  |If Office 64-bit apps are removed, the Click-to-Run 32-bit version of Office 2016 is installed  |
|An existing MSI install of Office 2016 with or without standalone apps  |Uninstall MSI Office 2016.  |Click-to-Run 32-bit version of Office 2016 is installed. No change to standalone apps  |
|Existing MSI install of Office 2013 (or earlier) and/or standalone Microsoft 365 apps  |None  |Click-to-Run 32-bit version of Office 2016 with the pre-existing MSI Office install (and standalone apps) exist side-by-side  |

 **(\*) Note:** Does not upgrade to Click-to-Run 32-bit version of Office 2016 due to a known bug. A fix is in progress. 

## Next objective

[Create app protection settings](m365bp-protection-settings-for-windows-10-devices.md)
  