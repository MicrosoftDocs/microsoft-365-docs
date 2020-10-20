---
title: "Run the Process module and load data in Advanced eDiscovery"
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
ms.assetid: c87bb0e5-301c-4d1d-958e-aabeb7990f44
description: "Learn how to use the Security &amp; Compliance Center to access Advanced eDiscovery and run the Process module for a case."
ms.custom: seo-marvel-apr2020
---

# Run the Process module and load data in Advanced eDiscovery (classic)

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
This section describes the functionality of the Advanced eDiscovery Process module. 
  
In addition to file data, metadata such as file type, extension, location or path, creation date and time, author, custodian, and subject, can be loaded into Advanced eDiscovery and saved for each case. Some metadata is calculated by Advanced eDiscovery, for example, when native files are loaded. 
  
Advanced eDiscovery provides system metadata values, such as Near-duplicate groupings or Relevance scores. Other metadata, such as file annotations, can be added by the Administrator. 
  
## Running Process

> [!NOTE]
> Batch numbers are assigned to a file during Process to allow the tracking of files. The batch number also enables identification of Process batches for reprocessing options. Additional filters are available for filtering by batch number and sessions. 
  
Perform the following steps to run Process.
  
1. [Open the Security &amp; Compliance Center](go-to-the-securitycompliance-center.md) . 
    
2. Go to **Search &amp; investigation** \> **eDiscovery** and then click **Go to Advanced eDiscovery**.
    
3. In Advanced eDiscovery, select the appropriate case in the displayed **Cases** page and click **Go to case**.
    
4. In **Prepare** \> **Process** \> **Setup**, select a container from the list of available containers.
    
    ![Click Process to add the search results to the case](../media/50bdc55c-d378-4881-b302-31ef785fa359.png)
  
5. Click **Advanced settings...** if you want to add the container as seed files or as pre-tagged files. 
    
    Use seed files to accelerate training for issues with low richness (usually 2%, or less). For seed files, it is recommended that you select a variety of distinctly relevant files and process about 20-50 seeds per issue (too many seed files can skew Relevance results). Seed files should be reviewed by the same person who will train the issue.
    
    Use pre-tagged files to automate Relevance training. You should tag at least 1,500 files, and keep the proportion of relevant to non-relevant files the same as in the collection added to Relevance. These files should be manually tagged, and you should be confident in the quality of tagging.
    
    ![Screenshot of Advanced settings page for processing batch files](../media/3c25cb78-4484-41e5-bd34-3753c7ab6cf2.jpg)
  
  - In the **Seed** section: 
    
    Choose **Mark as seed files** to mark the container as seed files. You also need choose to assign them per issue from the **For issue** drop-down. Choose either **Relevant** or **Not relevant** from the **Tag** drop-down. 
    
    > [!NOTE]
    > Once you set files as **Seed**, you cannot mark them as **Pre-tagged**. 
  
  - In the **Pre-tagged files** section: 
    
    Choose **Mark as pre-tagged files** to mark the container as pre-tagged files. You also need to assign them per issue from the **For issue** drop-down. Choose either **Relevant** or **Not relevant** from the **Tag** drop-down. 
    
    > [!NOTE]
    > Once you set files as **Pre-tagged**, you cannot mark them as **Seed**. 
  
  - In the **Email tagging** section. set which part of a processed email are to be marked as Seed or Pre-tagged. 
    
6. To begin, click **Process**. When completed, the Process results are displayed.
    
7. (Optional) If you need to assign data sources to a specific custodian, you can add and edit custodian names in **Custodians** \> **Manage** and assign custodians in **Custodians** \> **Assign**. 
    
If you add to the case, then you can process again.
  
## Related topics

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Viewing Process module results](view-process-module-results-in-advanced-ediscovery.md)

