---
title: "Prepare for Office client deployment by Microsoft 365 for business"
f1.keywords:
- CSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 10/31/2017
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: M365-subscription-management 
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: ed34fff3-2881-4ed4-9906-1ba6bb8dd804
description: "Learn how to automatically install the 32-bit Office apps on Windows 10 computers and keep them updated."
---

# Prepare for Office client deployment by Microsoft 365 for business

This article applies to Microsoft 365 Business Premium.

## Prepare to automatically install Office apps to client computers

You can use Microsoft 365 Business Premium to automatically install the 32-bit Office apps on Windows 10 computers and keep them current with updates.
  
Automatic installation works best if the end user's computer is on Windows 10 Business and:
  
- Doesn't have existing Office desktop apps (Word, Excel, PowerPoint, Outlook, OneNote, Publisher, Access, and OneDrive).
    
    or
    
- Has an existing version of Click-to-Run Office installed.
    
To determine if you have the Click-to-Run version of Office, in any Office app go to **File** \> **Account** ( **Office Account** in Outlook). If you see **Office Updates** as shown in the following figure, then the installation was done by using Click-to-Run. 
  
![Screenshot of Office updates in Office app Account](../media/e3439380-fa43-4ed6-ae5d-64851c297df5.png)
  
 **Who benefits from having this feature**
  
The end user whose PC:
  
- **Has**  a Windows 10 Business user license, an active Microsoft 365 for business license, Windows 10 Creators Update, and is joined to Azure Active Directory. 
    
- **Doesn't have** 64-bit Office apps (example: Word, Excel, PowerPoint). If 64-bit Office apps are required, then this feature isn't a good fit because there's no support for triggering a 64-bit 2016 Click-to-Run version of Office from the Microsoft 365 for business admin console. 
    
- **Doesn't have** any 2016 Windows Installer (MSI) standalone apps (for example, Visio or Project). Microsoft 365 for business upgrades Office to the Click-to-Run version of Office 2016 and that doesn't work with Office 2016 MSI standalone apps. 
    
The following table shows what action the end users/admins may need to take, depending on their beginning state, to have a successful 32-bit Click-to-Run version of Office deployment from the Microsoft 365 for business admin console.
  
|**Starting Office install status**|**Action to take before Microsoft 365 for business Office install**|**End state**|
|:-----|:-----|:-----|
|No Office suite installed  <br/> |None  <br/> |Office 2016 32-bit is installed by using Click-to-Run  <br/> |
|Existing Click-to-Run 32-bit version of Office (2016 or earlier) and no standalone apps  <br/> |None  <br/> |Upgraded to the latest 32-bit Click-to-Run version of Office 2016, as needed **\*** <br/> |
|Existing Click-to-Run 32-bit version of Office and Click-to-Run 32-bit or 64-bit standalone Office apps (for example, Visio, Project)  <br/> |None  <br/> |Standalone apps aren't affected. Suite is upgraded to Click-to-Run 32-bit version of Office 2016  <br/> |
|Existing Click-to-Run 32-bit version of Office and any 32-bit or 64-bit (except 2016) MSI standalone Office apps  <br/> |None  <br/> |Standalone apps aren't affected. Suite is upgraded to Click-to-Run 32-bit version of Office 2016  <br/> ||||
|Any existing Click-to-Run 64-bit version of Office  <br/> |Uninstall the 64-bit Office apps, if it's OK to replace them with 32-bit Office apps  <br/> |If Office 64-bit apps are removed, the Click-to-Run 32-bit version of Office 2016 is installed  <br/> |
|An existing MSI install of Office 2016 with or without standalone apps  <br/> |Uninstall MSI Office 2016.  <br/> |Click-to-Run 32-bit version of Office 2016 is installed. No change to standalone apps  <br/> |
|Existing MSI install of Office 2013 (or earlier) and/or standalone Office apps  <br/> |None  <br/> |Click-to-Run 32-bit version of Office 2016 with the pre-existing MSI Office install (and standalone apps) exist side-by-side  <br/> |
||||
   
 **(\*) Note:** Does not upgrade to Click-to-Run 32-bit version of Office 2016 due to a known bug. A fix is in progress. 
  
