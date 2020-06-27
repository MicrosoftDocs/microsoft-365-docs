---
title: "View label activity for documents"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 5/9/2018
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: 
- M365-security-compliance
- SPO_Content
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
description: Learn how to use the Label Activity Explorer in the Microsoft 365 Security & Compliance Center to search and view label activity.
---

# View label activity for documents

After you create your labels, you'll want to verify that they're being applied to content as you intended. With the Label Activity Explorer in the Security &amp; Compliance Center, you can quickly search and view label activity for all content across SharePoint and OneDrive for Business over the past 30 days. This is real-time data that gives you a clear view into what's happening in your tenant.
  
For example, with the Label Activity Explorer, you can:
  
- View how many times each label was applied on each day (up to 30 days).
    
- See who labeled exactly which file on which date, along with a link to the site where that file resides.
    
- View which files had labels changed or removed, what the old and new labels are, and who made the change.
    
- Filter the data to see all the label activity for a specific label, file, or user. You can also filter label activity by location (SharePoint or OneDrive for Business) and whether the label was applied manually or auto-applied.
    
- View label activity for folders as well as individual documents. Coming soon is the ability to show how many files inside that folder got labeled as a result of the folder getting labeled.
    
You can find the Label Activity Explorer in the Security &amp; Compliance Center > **Information governance** > **Label activity explorer**.
  
Note that the Label Activity Explorer requires an Office 365 Enterprise E5 subscription.
  
![Label Activity Explorer](../media/671ca0cd-1457-40b4-9917-b663360afd95.png)
  
## View label activities for files or folders

At the top of the Label Activity Explorer, you can choose whether to view activities for files or folders. Note that folder activity includes only the folder itself, not the files inside the folder.
  
You might want to see label activity for folders because if you label a folder, all files inside that folder also get that label (except for files that have had a label applied explicitly to them). Therefore, labeling folders might affect a significant number of files. For more information, see [Applying a default retention label to all content in a SharePoint library, folder, or document set](create-apply-retention-labels.md#applying-a-default-retention-label-to-all-content-in-a-sharepoint-library-folder-or-document-set).
  
![Dropdown menu showing label activities for files and folders](../media/11030584-f52d-49eb-86f3-7ead16a3b704.png)
  
### Label activities

 **Label activities** includes all label actions: **adding**, **removing**, or **changing** a label. You can use this view to get a comprehensive look at how many files each label's been applied to per day. 
  
### Label changes

 **Label changes** includes the potentially risky actions of **removing** or **changing** a label. You can use this view to quickly see such risky actions and the user who performed them. In the activity list below the chart, you can select a file, and then click a link to that file in the details pane on the right. 
  
![Details pane for labels activity](../media/eb580fd4-b5be-4fda-9ba5-c1256777310d.png)
  
## Filter label activity

You can quickly filter the data to see all the label activity for a specific label, file, or user. You can also filter label activity by location (SharePoint or OneDrive for Business) and whether the label was applied manually or auto-applied.
  
![Filters for label activity](../media/9de92985-120f-48b4-96a7-ef7ec8a71ff0.png)
  

