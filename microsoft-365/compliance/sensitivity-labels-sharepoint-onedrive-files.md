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

What is included in the preview? 

Currently, when sensitivity labels are applied to Office documents stored in SharePoint and OneDrive, the service can’t process the content of these documents. Co-authoring, eDiscovery, Data Loss Prevention, search, Delve, and other collaborative features do not work.  

With this preview, we’re enabling these features: 

The SharePoint service recognizes sensitivity labels applied to files in SharePoint and OneDrive and enforces the settings that correspond with each label.   

When a file is downloaded from SharePoint or OneDrive, the sensitivity label travels with the file and the settings remain enforced.   

By using the web versions of Word, Excel, and PowerPoint, users can apply sensitivity labels to Office files and open and edit files that have sensitivity labels applied (if the labels permission allow).    

Office 365 eDiscovery supports full-text search in files that have sensitivity labels applied. Data Loss Prevention (DLP) policies will cover content in these files. 

We have added three new audit events called FileSensitivityApplied, FileSensitivityLabelChanged and FileSensitivityLabelRemoved 

Team site search, organization-wide search and shared content search are coming soon 

See also: [Use sensitivity labels with Office 365 groups and SharePoint sites](sensitivity-labels-groups-sites.md)

## Requirements  

These new features are available only for sensitivity labels. If you used Azure Information Protection, you could convert your Azure Information Protection labels to sensitivity labels to enable these new features. Learn how  

This preview requires the OneDrive sync app version 19.002.0121.0008 on Windows and version 19.002.0107.0008 on Mac (both released on Jan 28th, 2019) or later (OneDrive release notes). This version has been released to all rings. After your organization has enabled the preview, users who still run older versions of the sync app will be prompted to update it.  


## Limitations 

> [!WARNING]
> Once the feature is enabled, users using Office apps on Windows, Mac, Android and iOS may experience save failures and other reliability problems right after applying protected labels to files in SharePoint. When it happens, users will be asked to Save As or Discard local changes. We recommend using Office online app to apply labels instead or close the document after applying the label and reopen it to avoid the save failures. We are proactively working on the solution. 

Labels with custom permissions and labels with expiration dates are not supported.  These documents will not be processed by SharePoint.  

When users have edit permissions, Office Online always allows copy regardless the copy policy setting in the label. ​ 

RMS revocation, tracking and reporting are unsupported​. 

Co-authoring is not currently supported in the Office desktop apps and mobile apps, which continue to open documents in exclusive editing mode.  

Microsoft cloud app security aka MCAS will not be able to read the label information of the files that are labeled in SharePoint. This only affects labels that has encryption.  

 

What happens to label protected files that were stored in SharePoint before an admin enabled the feature? 

These documents continue to remain as is in SharePoint. When a label is applied, full-text search and coauthoring won’t work.  

Latency for label change or new label creation 

As admin, you can create new sensitivity labels and change existing label in Security and Compliance Center.  Once the labels are created or modified and published it can take up to 24 hours to sync across Office 365. We recommend not widely publish and newly created/modified label and wait for it to sync for at least 24 hours. If you publish and newly created/modified label to an end user and the sync is not complete yet then when the end user uses that label in a doc and uploads to SPO, the document can’t be opened in online version of Word, Excel and PowerPoint anymore. However, once the document is downloaded and reuploaded then it can be opened in online version of Word, Excel and PowerPoint. Also search, eDiscovery will not work on this document anymore.   

Download the latest SharePoint Online Management Shell version.

[!NOTE] If you installed a previous version of the SharePoint Online Management Shell, go to Add or remove programs and uninstall “SharePoint Online Management Shell.”
On the Download Center page, select your language and then click the Download button. You’ll be asked to choose between downloading a x64 and x86 .msi file. Download the x64 file if you’re running the 64-bit version of Windows or the x86 file if you’re running the 32-bit version. If you don’t know, see https://support.microsoft.com/help/13443/windows-which-operating-system. After the file downloads, run it and follow the steps in the Setup Wizard.

Connect to SharePoint Online as a global admin or SharePoint admin in Office 365. To learn how, see Getting started with SharePoint Online Management Shell.

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

 
