---
title: "Enable sensitivity labels for Office files in SharePoint and OneDrive"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
ms.date:
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

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Before this preview, you couldn't apply your [sensitivity labels](sensitivity-labels.md) in Office on the web. You didn't see the **Sensitivity** option on the ribbon, or the applied label name on the status bar. In addition, if you used desktop apps to label your files and then save them on SharePoint or Onedrive, the service couldn't process the content of these files if the label applied encryption. Coauthoring, eDiscovery, Data Loss Prevention, search, Delve, and other collaborative features didn't work under these circumstances. 

This preview enables all these capabilities. In addition to displaying sensitivity labels to users, for new and changed files that have a sensitivity label applied that includes encryption with a cloud-based key:

- SharePoint recognizes sensitivity labels applied to Word, Excel, and PowerPoint files in SharePoint and OneDrive: While the file is stored in SharePoint, the encryption from Azure Information Protection is removed so that the file contents can be processed. For information about how documents are protected while they are stored in SharePoint, see [Data Encryption in OneDrive for Business and SharePoint Online](data-encryption-in-odb-and-spo.md).

- When you download or access this file from SharePoint or OneDrive, the sensitivity label and any encryption settings from the label are reapplied with the file, and these settings remain enforced wherever the file is saved. Because of this behavior, ensure you provide user guidance to use only labels to protect documents. For more information, see [Information Rights Management (IRM) options and sensitivity labels](sensitivity-labels-office-apps.md#information-rights-management-irm-options-and-sensitivity-labels).

- For SharePoint to remove the encryption from the file on upload, the user who uploads the labeled and encrypted file must have usage rights to at least view the file. SharePoint doesn't remove encryption from files if the user can't open them outside SharePoint.

- Use Office on the web (Word, Excel, PowerPoint) to open and edit Office files that have sensitivity labels that apply encryption. The permissions that were assigned with the encryption are enforced. With Word on the web, you can also use auto-labeling when you edit these documents.

- Office 365 eDiscovery supports full-text search for these files. Data Loss Prevention (DLP) policies cover content in these files.

> [!NOTE]
> If encryption hasn't been applied with a cloud-based key but an on-premises key, a key management topology often referred to as "hold your own key" (HYOK), the SharePoint behavior for processing the file contents doesn't change with this preview.
>
> The SharePoint behavior also doesn't change for existing labeled and encrypted files in SharePoint before you enable the preview. For these files to benefit from the new capabilities, they must be either downloaded and uploaded, or edited after you enable the preview. For example, they will then be returned in search and eDiscovery results.

When you enable this preview, three new [audit events](search-the-audit-log-in-security-and-compliance.md#sensitivity-label-activities) are available for monitoring sensitivity labels that are applied using Office on the web:
- **Applied sensitivity label to file**
- **Changed sensitivity label applied to file**
- **Removed sensitivity label from file**

Watch the following video (no audio) to see these new capabilities in action:

> [!VIDEO https://www.microsoft.com/videoplayer/embed//RE4ornZ]

You always have the choice to opt out of this preview at any time.

## Requirements

These features work with [sensitivity labels](sensitivity-labels.md) only. If you currently have Azure Information Protection labels, first migrate them to sensitivity labels so that you can enable these features for new files that you upload. For instructions, see [How to migrate Azure Information Protection labels to unified sensitivity labels](https://docs.microsoft.com/azure/information-protection/configure-policy-migrate-labels)

For this preview, use the OneDrive sync app version 19.002.0121.0008 or later on Windows, and version 19.002.0107.0008 or later on Mac. Both these versions were released January 28, 2019, and are currently released to all rings. For more information, see the [OneDrive release notes](https://support.office.com/article/845dcf18-f921-435e-bf28-4e24b95e5fc0). After you enable this preview, users who run an older version of the sync app are prompted to update it.

## Limitations

- When you enable this preview, users who change a label on a file in a OneDrive Sync folder might be unable to save other changes they make to the file. This scenario applies to files that are labeled with encryption, and also when the label change is from a label that didn't apply encryption to a label that does apply encryption. Users see a [red circle with a white cross icon error](https://support.office.com/article/what-do-the-onedrive-icons-mean-11143026-8000-44f8-aaa9-67c985aa49b3), and they are asked to save new changes as a separate copy.  
    
    In addition to label changes that are initiated by users, the same behavior can occur if an admin changes settings for a published label that's already applied to files downloaded to users' sync client.
    
    To avoid losing work for these scenarios, do one of these actions:
    - To apply labels, use the web versions of the Office apps.
    - Close a file after you apply a label, and then reopen the file to make other changes.

- SharePoint doesn't automatically apply sensitivity labels to existing files that you've already encrypted using Azure Information Protection labels. Instead, to get the features to work after you enable this preview, complete these tasks:
    
    1. Make sure you have migrated the Azure Information Protection labels to sensitivity labels and published them from the Microsoft 365 compliance center, or equivalent labeling admin center.
    
    2. Download the files and then upload them to SharePoint.

- SharePoint can't process encrypted files when the label that applied the encryption has either of the following configurations for encryption:
    - **Let users assign permissions when they apply the label** and the checkbox for **In Word, PowerPoint, and Excel, prompt users to specify permissions** is selected. This setting is sometimes referred to as "user-defined permissions".
    - **User access to content expires** is set to a value other than **Never**.
    
    For labels with either of these encryption configurations, the labels aren't displayed to users in Office on the web. Additionally, the new capabilities from this preview can't be used with labeled documents that already have these encryption settings. For example, these documents won't be returned in search results, even if they are updated.

- For an encrypted document that grants edit permissions to a user, copying can't be blocked in the web versions of the Office apps.

- The Azure Information Protection document tracking site is not supported.

- Office desktop apps and mobile apps don't support coauthoring for files that are labeled with encryption. These apps continue to open labeled and encrypted files in exclusive editing mode.

- If a labeled document is uploaded to SharePoint and the label applied encryption by using an account from a service principal name, the document can't be opened in Office on the web. Example scenarios include Microsoft Cloud App Security and a file sent to Teams by email.

- Users can experience save problems after going offline or into a sleep mode when instead of using Office for the web, they use the desktop and mobile apps for Word, Excel, or PowerPoint. For these users, when they resume their Office app session and try to save changes, they see an upload failure message with an option to save a copy instead of saving the original file. 

- Documents that have been encrypted in the following ways can't be opened in Office on the web:
    - Encryption that uses an on-premises key ("hold your own key" or HYOK)
    - Encryption that was applied independently from a label, for example, by directly applying a Rights Management protection template.

- If you delete a label that's been applied to a document in SharePoint, rather than remove the label from the applicable label policy, the document when downloaded won't be labeled or encrypted. In comparison, if the labeled document is stored outside SharePoint, the document remains encrypted if the label is deleted. Note that although you might delete labels during a testing phase, it's very rare to delete a label in a production environment.

## Prepare the SharePoint Online Management Shell for the preview

Before you enable the preview, ensure that you're running SharePoint Online Management Shell version 16.0.19418.12000 or above. If you already have the latest version, you can go ahead and enable the preview.

1. If you have installed a previous version of the SharePoint Online Management Shell from PowerShell gallery, you can update the module by running the following cmdlet.

    ```PowerShell
    Update-Module -Name Microsoft.Online.SharePoint.PowerShell
    ```

2. Alternatively, if you have installed a previous version of the SharePoint Online Management Shell from the Microsoft Download Center, you can also go to **Add or remove programs** and uninstall the SharePoint Online Management Shell.

3. In a web browser, go to the Download Center page and [Download the latest SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251).

4. Select your language and then click **Download**.

5. Choose between the x64 and x86 .msi file. Download the x64 file if you run the 64-bit version of Windows or the x86 file if you run the 32-bit version. If you don't know, see [Which version of Windows operating system am I running?](https://support.microsoft.com/help/13443/windows-which-operating-system)


6. After you have downloaded the file, run the file and follow the steps in the Setup Wizard.

## Enable the preview by using Microsoft PowerShell (opt-in)

To enable the preview, use the Set-SPOTenant cmdlet:

1. Using a work or school account that has global administrator or SharePoint admin privileges in Office 365, connect to SharePoint. To learn how, see [Getting started with SharePoint Online Management Shell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).
    
    Note: If you have Office 365 Multi-Geo, use the -Url parameter with [Connect-SPOService](https://docs.microsoft.com/powershell/module/sharepoint-online/connect-sposervice?view=sharepoint-ps), and specify the SharePoint Online Administration Center site URL for one of your geo-locations.

2. Run the following command:

    ```PowerShell
    Set-SPOTenant -EnableAIPIntegration $true  
    ```
3. For Office 365 Multi-Geo: Repeat steps 1 and 2 for each of your remaining geo-locations.

## Schedule roll-out after you create or change a sensitivity label

After you create or change a sensitivity label in the Microsoft 365 compliance center, publish it in stages. If you publish labels that haven't fully synchronized, when users apply the labels to files and upload them to SharePoint, the files can't be opened in the web versions of the Office apps. Search and eDiscovery also don't work for the files.

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
