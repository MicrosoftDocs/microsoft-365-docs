---
title: "View information about malicious files detected in SharePoint, OneDrive, or Microsoft Teams"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 5ed8abf1-c0e9-4e5b-a5b7-2059cea50b61
ms.collection:
- M365-security-compliance
description: "Learn where to go to view information about malicious files detected in SharePoint, OneDrive, or Teams, and how to take action on those files."
---

# View information about malicious files detected in SharePoint, OneDrive, or Microsoft Teams

[Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md) protects your organization from malicious files in document libraries and team sites. When a malicious file is detected, that file is blocked so that no one can open, copy, move, or share it until further actions are taken by the organization's security team. Read this article to learn how to view information about detected files and what actions to take. 

In order to perform the tasks described in this article, you must have the necessary [permissions for the Office 365 Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md). 
  
## View reports with information about detected files

To view status and detailed information about files that were detected by Office 365 ATP, you can use the Threat Protection Status report.
  
1. In the [Office 365 Security &amp; Compliance Center](https://protection.office.com), choose **Reports** \> **Dashboard** \> **Threat Protection Status**.
    
2. In the upper right corner of the report, choose **View details table**.
    
3. View the list of files that were detected in the report.
    
4. Select an item in the list to view detailed information, including actions taken, the file name, the file path, and more.
    
5. Choose the **Advanced Analysis** tab to view information, such as observed behavior and analysis details. 
  
## View and take action on files in quarantine

1. In the Office 365 Security &amp; Compliance Center, choose **Threat management** \> **Review** \> **Quarantine**. (You can also go directly to [https://protection.office.com/quarantine](https://protection.office.com/quarantine).)
    
2. In the upper left corner, change the drop-down menu from **Emails** to **Files**. If the list of results includes too many items, use the **Filter** functionality to narrow down the selection.
    
3. Select an item in the list to view detailed information, including the file's URL.
    
4. Choose an available action.
    
  - Choose **Release file** to unblock the file. 
    
    Select **Send report to Microsoft** to report the file as a false positive to Microsoft. 
    
  - Choose **Download file** to investigate the file further. 
    
  - Choose **Remove from quarantine** to remove the file from the list of quarantined items. If you choose this option, you must also delete the file from its respective library in SharePoint Online, OneDrive for Business, or Microsoft Teams. This option does not unblock a file from being opened or shared. 
    
5. Choose **Close** to close the details for a selected item. 
  
  

