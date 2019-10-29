---
title: "Enable sensitivity labels for Office files in SharePoint and OneDrive"
ms.author: laurawi
author: kccross
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 10/25/2019
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Administrators can enable sensitivity label support for SharePoint and OneDrive. Once enabled, end-users can view and edit encrypted files stored in SharePoint and OneDrive."
---

# Enable sensitivity labels for Office files in SharePoint and OneDrive (preview)

Previously, when sensitivity labels were applied to Office files stored in SharePoint and OneDrive, the service couldn't process the content of these files. Co-authoring, eDiscovery, Data Loss Prevention, search, Delve, and other collaborative features didn't work. This preview, enables these features: 

- The SharePoint service recognizes sensitivity labels applied to files in SharePoint and OneDrive and enforces the settings that correspond with each label.   

- When a file is downloaded from SharePoint or OneDrive, the sensitivity label travels with the file and the settings remain enforced.   

- By using the web versions of Word, Excel, and PowerPoint, users can apply sensitivity labels to Office files and open and edit files that have sensitivity labels applied (if the label's permission allow it).    

- Office 365 eDiscovery supports full-text search in files that have sensitivity labels applied. Data Loss Prevention (DLP) policies will cover content in these files. 

- Three new audit events are available for monitoring sensitivity labels: FileSensitivityApplied, FileSensitivityLabelChanged and FileSensitivityLabelRemoved. 

> [!NOTE]
> Team site search, organization-wide search, and shared content search are coming soon. 

Sensitivity labels can now also be applied to Office 365 groups and SharePoint sites. For info, see [Use sensitivity labels with Office 365 groups and SharePoint sites](sensitivity-labels-groups-sites.md)

## Requirements  

These features work only with [sensitivity labels](sensitivity-labels.md). If you used Azure Information Protection labels, you can convert them to sensitivity labels to enable these new features. [Learn how](/azure/information-protection/configure-policy-migrate-labels)  

This preview requires the OneDrive sync app version 19.002.0121.0008 or later on Windows and version 19.002.0107.0008 or later on Mac (both released on Jan 28th, 2019, and currently released to all rings). [See the OneDrive release notes](https://support.office.com/article/845dcf18-f921-435e-bf28-4e24b95e5fc0). After you enable this preview, users who run an older version of the sync app will be prompted to update it.  


## Limitations 

> [!WARNING]
> When you enable this feature, users who apply a label to a file by using Office apps on Windows, Mac, Android, and iOS might be unable to save other changes they made to the file. When this happens, users will be asked to Save As or Discard local changes. We recommend using the web versions of the Office apps to apply labels or closing the file after applying the label and reopening it before making other changes to avoid losing work. We are working to fix this problem. 

- Labels with custom permissions and labels with expiration dates are not supported. These files can't be processed by SharePoint.  

- When users have edit permissions, the web versions of the Office apps allow copying regardless of the copy policy setting in the label. ​ 

- RMS revocation, tracking, and reporting are unsupported​. 

- Co-authoring is not currently supported in the Office desktop apps and mobile apps, which continue to open documents in exclusive editing mode.  

- Microsoft Cloud App Security isn't able to read the label information of the files that are labeled in SharePoint. This only affects labels that has encryption.  

 
## What happens to label protected files that were stored in SharePoint before an admin enabled the feature? 

These documents continue to remain as is in SharePoint. When a label is applied, full-text search and coauthoring won’t work.  

## Latency for label change or new label creation 

As admin, you can create new sensitivity labels and change existing label in Security and Compliance Center.  Once the labels are created or modified and published it can take up to 24 hours to sync across Office 365. We recommend not widely publish and newly created/modified label and wait for it to sync for at least 24 hours. If you publish and newly created/modified label to an end user and the sync is not complete yet then when the end user uses that label in a doc and uploads to SPO, the document can’t be opened in online version of Word, Excel and PowerPoint anymore. However, once the document is downloaded and reuploaded then it can be opened in online version of Word, Excel and PowerPoint. Also search, eDiscovery will not work on this document anymore.   

## Enable this feature by using Microsoft PowerShell

1. [Download the latest SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251).

    > [!NOTE]
    > If you installed a previous version of the SharePoint Online Management Shell, go to Add or remove programs and uninstall “SharePoint Online Management Shell.” <br>On the Download Center page, select your language and then click the Download button. You’ll be asked to choose between downloading a x64 and x86 .msi file. Download the x64 file if you’re running the 64-bit version of Windows or the x86 file if you’re running the 32-bit version. If you don’t know, see https://support.microsoft.com/help/13443/windows-which-operating-system. After the file downloads, run it and follow the steps in the Setup Wizard. 
    
2. Connect to SharePoint Online as a global admin or SharePoint admin in Office 365. To learn how, see [Getting started with SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

 Set-SPOTenant -EnableSensitivityLabelIntegration $false {default} / $true  

***Warning: Before you proceed, carefully read the following information to understand the capabilities and known issues ****  

 CAPABILITIES   

The SharePoint service recognizes sensitivity labels applied to files in SharePoint and OneDrive and enforces the settings that correspond with each label.   

When a file is downloaded from SharePoint or OneDrive, the sensitivity label travels with the file and the settings remain enforced.   

By using the web versions of Word, Excel, and PowerPoint, users can apply sensitivity labels to Office files and open and edit files that have sensitivity labels applied (if the settings allow).    

Office 365 eDiscovery supports full-text search in files that have sensitivity labels applied. Data Loss Prevention (DLP) policies will cover content in these files.    

 KNOWN ISSUES   

WARNING: Be aware there are limitations and known issues in this preview, including the save reliability with Word, Excel, PowerPoint on Windows, Mac, Android and iOS. We recommend you use Office online to apply labels and try out the new features. Learn more at https://aka.ms/AA66bay  

************************************************************************************* Press (Y) to continue 

 

What happens if an admin later disables this feature? 

Files that were uploaded while the feature was enabled will continue to be protected by the label and the corresponding settings will continue to be enforced.  If labels are applied to new files after the feature is disabled, full-text search, eDiscovery and coauthoring will no longer work. 

 
