---
title: "Load non-Microsoft 365 data into evidence"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
description: "Learn how to use the Non-Office 365 content import feature to upload non-Office 365 documents into evidence in a data investigation."
ms.custom: 
 - seo-marvel-mar2020
 - seo-marvel-apr2020
---

# Load non-Microsoft 365 data into evidence

Not all documents that you may need to analyze in a data investigation will be located in Microsoft 365. With the Non-Microsoft 365 content import feature you can upload documents that don't live in Microsoft 365 into evidence so they can be analyzed in a data investigation.

## Requirements to upload non-Office 365 content

Using the upload Non-Microsoft 365 feature as described in this procedure requires that you have:

- A Microsoft 365 or Office 365 E5 subscription.

- All people of interest whose non-Microsoft 365 content will be uploaded must have the appropriate E5 or E5 add-on license.

- An existing eDiscovery case.

- All the files for uploading gathered into folders where there is one folder per custodian and the folders' name is in this format *alias@domainname*. The *alias@domainname* must be user's alias and domain. You can collect all the *alias@domainname* folders into a root folder. The root folder can only contain the *alias@domainname* folders, there must be no loose files in the root folder.

- An account that is either an eDiscovery Manager or eDiscovery Administrator
Microsoft Azure Storage Tools installed on a computer that has access to the non-Microsoft 365 content folder structure.

- Install AzCopy, which you can do from [Get started with AzCopy](https://docs.microsoft.com/azure/storage/common/storage-use-azcopy).

## Upload non-Microsoft 365 content in to a data investigation

1. Open **Data Investigations** and go to the investigation that the non-Microsoft 365 data will be uploaded to.  Click the **Evidence** tab, then select the evidence set you wish to load the data to.  If you have not already created an evidence set, you can do so now.  Finally, click **Manage evidence** then **View uploads** in the data section

2. Click the **Upload files** button to start the Non-Microsoft 365 data import wizard.

![Upload files](../media/574f4059-4146-4058-9df3-ec97cf28d7c7.png)

3. The first step in the wizard simply prepares a secure Azure blob for the files to be uploaded.  After the preparation is complete, click the **Next: Upload files** button.

![Prepare for non-Microsoft 365 data import](../media/0670a347-a578-454a-9b3d-e70ef47aec57.png)
 
4. In the **Upload files** step, specify the **Path to location of files**, this is where the Non-Microsoft 365 data you plan on importing is located.  Setting the correct location ensures the AzCopy command is properly updated.

> [!NOTE]
> If you have not already installed AzCopy, you can do this from here: https://docs.microsoft.com/azure/storage/common/storage-use-azcopy

5. Copy the predefined command by clicking the **Copy to clipboard** link. Start a windows command prompt, paste the command and press enter.  The files will be uploaded to the secure Azure blob storage for the next step.

![Upload files for non-Microsoft 365 data import](../media/3ea53b5d-7f9b-4dfc-ba63-90a38c14d41a.png)

![Use AzCopy to import non-Microsoft 365 data](../media/504e2dbe-f36f-4f36-9b08-04aea85d8250.png)

6. Finally, return back to the Security & Compliance and click the **Next: Process files** button.  This initiates processing, text extraction, and indexing of the uploaded files.  You can track the progress of processing here or in the **Jobs** tab.  Once completed, the new files are available in the evidence set.  After processing is complete, you can dismiss the wizard.

![Non-Microsoft 365 Import process files](../media/218b1545-416a-4a9f-9b25-3b70e8508f67.png)

