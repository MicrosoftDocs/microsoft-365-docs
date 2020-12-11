---
title: "View batch history and export past results in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
titleSuffix: Office 365
ms.date: 9/14/2017
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 35d52b41-75ab-4144-9edf-31e11453bd5d
description: "Learn how to view detailed information for selected export batch sessions and how to undo the last export session in Advanced eDiscovery."
ms.custom: seo-marvel-apr2020
---

# View batch history and export past results in Advanced eDiscovery (classic)

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
The following section describes additional options for batch viewing and export of data in Advanced eDiscovery. 
  
## Viewing Export batch history and exporting previous batches

The Export history dialog provides detailed information of selected export batch sessions and also provides the ability to undo the last session.
  
1. In **Export \> Setup**, select the batch name from the **Export batch** drop-down list. 
    
2. To the right of the export batch name, select the **Batch history** icon: 
    
    ![Export batch history icon](../media/a14f6ef9-0c3c-4851-b65d-9380f2d8a38a.gif)
  
    The Batch history dialog is displayed.
    
    ![Export batch history](../media/04c5b75c-348c-491d-b4fe-716659333890.png)
  
3. If it is necessary to roll back a previous session, click **Undo last session**. Rollback can be performed multiple times, which cancels the last session.
    
4. If you want to download data at any time from a previously executed export batch session, click the **Download** icon ![Export batch history download icon](../media/de69b920-a6ac-4ddb-b93e-e1cc5888e6c4.gif) next to the desired export batch to be exported. 
    
5. When the **Shared access signature** dialog is displayed, click **Copy to clipboard** to copy the export session data to the local machine, and then click **Close**. The Security &amp; Compliance Center **eDiscovery Export Tool** dialog is displayed. 
    
    ![Export eDiscovery dialog](../media/01f79d2d-6da0-45e6-9c6f-ab12347572cb.gif)
  
6. In the **eDiscovery Export Tool** dialog: 
    
1. In **Paste the Shared Access Signature that will be used to connect to the source**, paste the **Shared access signature** value, which was previously copied to the clipboard. 
    
2. Click **Browse** to select the target location for storing the downloaded export files on a local machine. 
    
3. Click **Start**. The export files are downloaded to the local machine. 
    
## Related topics

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Exporting results ](export-results-in-advanced-ediscovery.md)

[Export report fields](export-report-fields-in-advanced-ediscovery.md)

