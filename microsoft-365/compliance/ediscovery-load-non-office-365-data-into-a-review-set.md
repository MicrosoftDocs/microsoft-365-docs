---
title: "Load non-Microsoft 365 data into a review set"
description: "Learn how to import non-Microsoft 365 data to a review set for analysis in an eDiscovery (Premium) case."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 02/22/2023
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
---

# Load non-Microsoft 365 data into a review set

Not all documents that you need to analyze in Microsoft Purview eDiscovery (Premium) are in Microsoft 365. With the non-Microsoft 365 data import feature in eDiscovery (Premium), you can upload documents that aren't in Microsoft 365 to a review set. This article shows you how to bring your non-Microsoft 365 documents into eDiscovery (Premium) for analysis.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Requirements to upload non-Office 365 content

Using the upload non-Microsoft 365 feature described in this article requires that you've the following:

- All custodians that you want to associate non-Microsoft 365 content to must have the appropriate license. For more information, see [Get started with eDiscovery (Premium)](ediscovery-premium-get-started.md#step-1-verify-and-assign-appropriate-licenses).
- An existing eDiscovery (Premium) case.
- Custodians must be added to the case before you can upload and associate the non-Microsoft 365 data to them.
- Non-Microsoft 365 data must be a file type that's supported by eDiscovery (Premium). For more information, see [Supported file types in eDiscovery (Premium)](ediscovery-supported-file-types.md).
- All files that are uploaded to a review set must be located in folders, where each folder is associated with a specific custodian. The names for these folders must use the following naming format: *alias@domainname*. The alias@domainname must be the user's Microsoft 365 alias and domain. You can collect all the alias@domainname folders in a root folder. The root folder can only contain the alias@domainname folders. Loose files in the root folder aren't supported.

   The folder structure for the non-Microsoft 365 data that you want to upload would be similar to the following example:

   - c:\nonO365\abraham.mcmahon@contoso.com
   - c:\nonO365\jewell.gordon@contoso.com
   - c:\nonO365\staci.gonzalez@contoso.com

   Where abraham.mcmahon@contoso.com, jewell.gordon@contoso.com, and staci.gonzalez@contoso.com are the SMTP addresses of custodians in the case.

   ![Non-Microsoft 365 data upload folder structure.](../media/3f2dde84-294e-48ea-b44b-7437bd25284c.png)

- An account that is assigned to the eDiscovery Manager role group (and added as eDiscovery Administrator).
- The AzCopy v10 tool installed on a computer that has access to the non-Microsoft 365 content folder structure. To install AzCopy, see [Transfer data with the AzCopy v10 on Windows](/azure/storage/common/storage-use-azcopy-v10). Be sure to install AzCopy in the default location, which is **%ProgramFiles(x86)%\Microsoft SDKs\Azure\AzCopy**. You must use AzCopy v10. Other versions of AzCopy may not work when loading non-Microsoft 365 data in eDiscovery (Premium).

## Upload non-Microsoft 365 content into eDiscovery (Premium)

1. As an eDiscovery Manager or eDiscovery Administrator, open eDiscovery (Premium), and go to the case that the non-Microsoft 365 data will be uploaded to.  
2. Select **Review sets**, and then select the review set to upload the non-Microsoft 365 data to.  If you don't have a review set, you can create one.
3. Open the review set by either selecting on it or selecting it and selecting **Open review set**.
4. In the review set, select **Manage review set** (the down arrow just after the **Actions** option), and then select the **Non-Office 365 data** option.
5. Select **Upload files** to start the data import wizard.

   ![Upload files.](../media/574f4059-4146-4058-9df3-ec97cf28d7c7.png)

   The first step in the wizard prepares a secure Microsoft-provided Azure Storage location to upload the files to.  When the preparation is completed, the **Next: Upload files** button becomes active.

   ![Non-Microsoft 365 Import: Prepare.](../media/0670a347-a578-454a-9b3d-e70ef47aec57.png)

6. Select **Next: Upload files**.
7. On the **Upload files** page, do the following:

   ![Non-Microsoft 365 Import: Upload files.](../media/3ea53b5d-7f9b-4dfc-ba63-90a38c14d41a.png)

   a. In the **Path to location of files** box, verify or type the location of the root folder where you've stored the non-Microsoft 365 data you want to upload. For example, for the location of the example files shown in the **Before you begin section**, you would type **%USERPROFILE\Downloads\nonO365**. Providing the correct location ensures the AzCopy command displayed in box under the path is properly updated.

   b. Select **Copy to clipboard** to copy the command that is displayed in the box.

8. Start a Windows command prompt, paste the command that you copied in the previous step, and then press **Enter** to start the AzCopy command.  After you start the command, the non-Microsoft 365 files will be uploaded to the Azure Storage location that was prepared in step 4.

   ![Non-Microsoft 365 Import: AzCopy.](../media/504e2dbe-f36f-4f36-9b08-04aea85d8250.png)

   > [!NOTE]
   > As previously stated, you must use AzCopy v10 to successfully use the command that's provided on the **Upload files** page. If the supplied AzCopy command fails, please see [Troubleshoot AzCopy in eDiscovery (Premium)](ediscovery-troubleshooting-azcopy.md).

9. Go back to the Microsoft Purview compliance portal, and select **Next: Process files** in the wizard.  This initiates processing, text extraction, and indexing of the non-Microsoft 365 files that were uploaded to the Azure Storage location.  

10. Track the progress of processing the files on the **Process files** page or on the **Jobs** tab by viewing a job named **Adding non-Microsoft 365 data to a review set**.  After the job is finished, the new files will be available in the review set.

   ![Non-Microsoft 365 Import: Process files.](../media/218b1545-416a-4a9f-9b25-3b70e8508f67.png)

11. After the processing is finished, you can close the wizard.
