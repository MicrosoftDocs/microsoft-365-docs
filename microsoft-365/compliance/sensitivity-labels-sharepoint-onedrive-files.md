---
title: "Enable sensitivity labels for Office files in SharePoint and OneDrive"
ms.author: krowley
author: kccross
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 11/01/2019
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Administrators can enable sensitivity label support for Word, Excel, and PowerPoint files in SharePoint and OneDrive."
---

# Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)

Previously, when you applied sensitivity labels that included encryption to Office files stored in SharePoint and OneDrive, the service couldn't process the content of these files. Coauthoring, eDiscovery, Data Loss Prevention, search, Delve, and other collaborative features didn't work under these circumstances. This preview enables these features:

- SharePoint recognizes sensitivity labels applied to Word, Excel, and PowerPoint files in SharePoint and OneDrive. SharePoint also enforces the settings that correspond with each label.

- When you download a file from SharePoint or OneDrive, the sensitivity label travels with the file and the settings remain enforced.

- Apply sensitivity labels to Office files, and open and edit files that have sensitivity labels applied (if the label's permissions allow it) by using the web versions of Word, Excel, and PowerPoint. With Word on the web, you can also use Auto labeling when you edit documents.

- Office 365 eDiscovery supports full-text search in files that have sensitivity labels applied. Data Loss Prevention (DLP) policies cover content in these files.

- Three new audit events are available for monitoring sensitivity labels:
  - FileSensitivityApplied
  - FileSensitivityLabelChanged
  - FileSensitivityLabelRemoved

You can also now apply sensitivity labels to Microsoft Teams, Office 365 groups, and SharePoint sites. [Learn more](sensitivity-labels-teams-groups-sites.md).

If necessary, you can opt out of the preview at any time.

## Requirements

These features work only with [sensitivity labels](sensitivity-labels.md). If you used Azure Information Protection labels, you can convert them to sensitivity labels to enable these features for new files that you upload. [Learn how](https://docs.microsoft.com/azure/information-protection/configure-policy-migrate-labels)

For this preview, use the OneDrive sync app version 19.002.0121.0008 or later on Windows and version 19.002.0107.0008 or later on Mac. Both of these versions were released on January 28, 2019, and are currently released to all rings. [See the OneDrive release notes](https://support.office.com/article/845dcf18-f921-435e-bf28-4e24b95e5fc0). After you enable this preview, users who run an older version of the sync app will be prompted to update it.

## Limitations

- When you enable this preview, users who apply a label to a file by using the Office desktop or mobile apps might be unable to save other changes they make to the file. Instead, the app prompts users to Save As or Discard local changes. To avoid losing work, do one of these actions:

  - To apply labels, use the web versions of the Office apps.

  - Close a file after you apply a label and then reopen the file to make other changes.

- SharePoint doesn't automatically apply the new labels to existing files that you've already encrypted using Azure Information Protection labels. Instead, to get the features to work after you enable this preview, complete these tasks:

  - Convert the Azure Information Protection labels to sensitivity labels.

  - Download the files and upload them to SharePoint.

- SharePoint can't process labels with custom permissions and labels with expiration dates.

- When users have edit permissions, the web versions of the Office apps allow copying regardless of the copy policy setting in the label.

- RMS revocation, tracking, and reporting are unsupported​.

- Office desktop apps and mobile apps don't support coauthoring. Instead, these apps continue to open files in exclusive editing mode.

- If a label includes encryption, Microsoft Cloud App Security isn't able to read the label information for the files in SharePoint.

## Prepare the SharePoint Online Management Shell for the preview

Before you enable the preview, ensure that you're running the latest SharePoint Online Management Shell. If you already have the latest version, you can go ahead and enable the preview.

To prepare the SharePoint Online Management Shell for the preview:

1. If you installed a previous version of the SharePoint Online Management Shell, go to **Add or remove programs** and uninstall “SharePoint Online Management Shell.”

2. In a web browser, go to the Download Center page and [Download the latest SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251).

3. Select your language and then click **Download**.

4. Choose between the x64 and x86 .msi file. Download the x64 file if you run the 64-bit version of Windows or the x86 file if you run the 32-bit version. If you don’t know, see [Which version of Windows operating system am I running?](https://support.microsoft.com/help/13443/windows-which-operating-system).

5. After you download the file, run the file and follow the steps in the Setup Wizard.

## Enable the preview by using Microsoft PowerShell (opt-in)

To enable the preview, use the Set-SPOTenant cmdlet:

1. Using a work or school account that has global administrator or SharePoint admin privileges in Office 365, connect to SharePoint. To learn how, see [Getting started with SharePoint Online Management Shell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

2. Run the following command:

    ```PowerShell
    Set-SPOTenant -EnableAIPIntegration $true  
    ```

## Schedule roll-out after you create or change a sensitivity label

After you create or change a sensitivity label in the Microsoft 365 compliance center, publish it in stages. If you publish labels that haven't fully synchronized, when users apply the labels to files and upload them to SharePoint, the files can’t be opened in the web versions of the Office apps. Search and eDiscovery also don't work for the files.

We recommend that you follow these steps:

1. Publish the new or modified sensitivity label only to one or two people.

2. Wait for at least 24 hours after initial publication. Verify that the label has fully synchronized.

3. Publish the label more broadly.

## Disable the preview by using Microsoft PowerShell (opt-out)

If you disable this preview, files that you uploaded during the preview continue to be protected by the label. The corresponding settings continue to be enforced. When you apply labels to new files after you disable the preview, full-text search, eDiscovery, and coauthoring will no longer work.

To disable the preview, use the Set-SPOTenant cmdlet:

1. Using a work or school account that has global administrator or SharePoint admin privileges in Office 365, connect to SharePoint. To learn how, see [Getting started with SharePoint Online Management Shell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

2. Run the following command:

    ```PowerShell
    Set-SPOTenant -EnableAIPIntegration $false
    ```
