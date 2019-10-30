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
description: "Administrators can enable sensitivity label support for Word, Excel, and PowerPoint files in SharePoint and OneDrive."
---

# Enable sensitivity labels for Office files in SharePoint and OneDrive (preview)

Previously, when sensitivity labels were applied to Office files stored in SharePoint and OneDrive, the service couldn't process the content of these files. Co-authoring, eDiscovery, Data Loss Prevention, search, Delve, and other collaborative features didn't work. This preview enables these features:

- The SharePoint service recognizes sensitivity labels applied to Word, Excel, and PowerPoint files in SharePoint and OneDrive and enforces the settings that correspond with each label.

- When a file is downloaded from SharePoint or OneDrive, the sensitivity label travels with the file and the settings remain enforced.

- By using the web versions of Word, Excel, and PowerPoint, users can apply sensitivity labels to Office files and open and edit files that have sensitivity labels applied (if the label's permission allow it).

- Office 365 eDiscovery supports full-text search in files that have sensitivity labels applied. Data Loss Prevention (DLP) policies cover content in these files.

- Three new audit events are available for monitoring sensitivity labels: FileSensitivityApplied, FileSensitivityLabelChanged, and FileSensitivityLabelRemoved.

We're working on adding team site search, organization-wide search, and shared content search.  

You can also now apply sensitivity labels to Office 365 groups and SharePoint sites. [Learn more](sensitivity-labels-teams-groups-sites.md)

## Requirements  

These features work only with [sensitivity labels](sensitivity-labels.md) (also called unified Microsoft Information Protection labels). If you used Azure Information Protection labels, you can convert them to sensitivity labels to enable these features for new files that you upload. [Learn how](/azure/information-protection/configure-policy-migrate-labels)

This preview requires the OneDrive sync app version 19.002.0121.0008 or later on Windows and version 19.002.0107.0008 or later on Mac (both released on Jan 28th, 2019, and currently released to all rings). [See the OneDrive release notes](https://support.office.com/article/845dcf18-f921-435e-bf28-4e24b95e5fc0). After you enable this preview, users who run an older version of the sync app will be prompted to update it.  

## Limitations

> [!WARNING]
> When you enable this preview, users who apply a label to a file by using the Office desktop or mobile apps might be unable to save other changes they made to the file. When this happens, users will be asked to Save As or Discard local changes. We recommend that users use the web versions of the Office apps to apply labels, or close a file after applying a label and then reopen the file to make other changes and avoid losing work. We're working to fix this problem. 

- The new features won't work for files already in SharePoint that were previously encrypted using Azure Information Protection labels. To get the features to work after you convert to sensitivity labels and enable this preview, you must download the files and upload them again. 

- Labels with custom permissions and labels with expiration dates are not supported. These files can't be processed by SharePoint.  

- When users have edit permissions, the web versions of the Office apps allow copying regardless of the copy policy setting in the label. ​ 

- RMS revocation, tracking, and reporting are unsupported​. 

- Co-authoring is not currently supported in the Office desktop apps and mobile apps, which continue to open files in exclusive editing mode.  

- If a label includes encryption, Microsoft Cloud App Security isn't able to read the label information for the files in SharePoint.   

> [!IMPORTANT]
> After you create or change a sensitivity label in the Microsoft 365 compliance center, we recommend that you publish it to only one or two people, wait for at least 24 hours, and then publish it more widely. If you publish labels that haven't fully synced, when users apply the labels to files and upload them to SharePoint, the files can’t be opened in the web versions of the Office apps. Search and eDiscovery also won't work for the files anymore. 
   

## Enable this preview by using Microsoft PowerShell

1. [Download the latest SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251).

    > [!NOTE]
    > If you installed a previous version of the SharePoint Online Management Shell, go to Add or remove programs and uninstall “SharePoint Online Management Shell.” <br>On the Download Center page, select your language and then click the Download button. You’ll be asked to choose between downloading a x64 and x86 .msi file. Download the x64 file if you’re running the 64-bit version of Windows or the x86 file if you’re running the 32-bit version. If you don’t know, see https://support.microsoft.com/help/13443/windows-which-operating-system. After the file downloads, run it and follow the steps in the Setup Wizard. 
    
2. Connect to SharePoint Online as a global admin or SharePoint admin in Office 365. To learn how, see [Getting started with SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

3. Run the following command.

    ```PowerShell
    Set-SPOTenant -EnableSensitivityLabelIntegration $true  
    ```

> [!NOTE]
> If you later disable this preview, files that were uploaded while it was enabled will continue to be protected by the label and the corresponding settings will continue to be enforced. If labels are applied to new files after the preview is disabled, full-text search, eDiscovery, and coauthoring will no longer work.


 
