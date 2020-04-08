---
title: "Export and download content from a Core eDiscovery case"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "This article describes how to export and download content from a Core eDiscovery case."
---

# Export content from a Core eDiscovery case

After a search is successfully run, you can export the search results. When you export search results, mailbox items are downloaded in PST files or as individual messages. When you export content from SharePoint and OneDrive for Business sites, copies of native Office documents and other documents are exported. A manifest file (in XML format) that contains information about every search result is also exported.
  
You can export the results of a [single search associated with a case](#export-the-results-of-a-single-search-associated-with-a-case) or you can export the results of [multiple searches associated with a case](#export-the-results-of-multiple-searches-associated-with-a-case).
  
## Export the results of a single search associated with a case

1. In the Security & Compliance Center, click **eDiscovery** \> **eDiscovery** to display the list of cases in your organization. 
    
2. Click **Open** next to the case that you want to export search from. 
    
3. On the **Home** page for the case, click **Search**.
    
4. In the list of searches for the case, click the search that you want to export search results from, click ![Export search results icon](../media/47205c65-babd-4b3a-bd7b-98dfd92883ba.png) **More**, and then select **Export results** from the drop-down list. 
    
    The **Export results** page is displayed. 
    
    ![Export results page](../media/ab0bb46d-310b-4374-8644-717146df6676.png)
  
    The workflow to export the results from a Content Search associated with a case is that same as exporting the search results for a search on the **Content search** page. For step-by-step instructions, see [Export Content Search results](export-search-results.md).
    
    > [!NOTE]
    > When you export search results, you have the option to enable de-duplication so that only one copy of an email message is exported even though multiple instances of the same message might have been found in the mailboxes that were searched. For more information about de-duplication and how duplicate items are identified, see [De-duplication in eDiscovery search results](de-duplication-in-ediscovery-search-results.md). 
  
5. Click the **Export** tab to display the list of export jobs that exist for that case. 
    
    ![Export tab](../media/1b84c45e-4ec9-4ecd-9e07-eaf8fc4cc307.png)
  
    You might have to click **Refresh**![Refresh icon](../media/O365-MDM-Policy-RefreshIcon.gif) to update the list of export jobs so that it shows the export job that you created. Export jobs have the same name as the corresponding Content Search with **_Export** appended to the end of search name. 
    
6. Click the export job that you just created to display status information in the details pane. This information includes the percentage of items that have been transferred to an Azure Storage area in the Microsoft cloud.
    
    After all items have been transferred, click **Download results** to download the search results to your local computer. For more information, see Step 2 in [Export Content Search results](export-search-results.md)
    
## Export the results of multiple searches associated with a case

As an alternative to exporting the results of a single Content Search associated with a case, you can export the results of multiple searches from the same case in a single export. Exporting the results of multiple searches is faster and easier than exporting the results one search at a time.
  
> [!NOTE]
> You can't export the results of multiple searches if one of those searches was configured to search all case content. only export the results of multiple searches for searches that are associated with an eDiscovery case. You can't export the results of multiple searches listed on the **Content search** page in the Security & Compliance Center. 
  
1. In the Security & Compliance Center, click **eDiscovery** \> **eDiscovery** to display the list of cases in your organization. 
    
2. Click **Open** next to the case that you want to export search results from. 
    
3. On the **Home** page for the case, click **Search**.
    
4. In the list of searches for the case, select two or more searches that you want to export search results from.
    
    > [!NOTE]
    > To select multiple searches, press Ctrl as you click each search. Or you can select multiple adjacent searches by clicking the first search, holding down the Shift key, and then clicking the last search. 
  
5. After you select the searches, the **Bulk actions** page appears. 
    
    ![On the Bulk Actions page, click Export results](../media/f34e3707-a9c1-494f-91a4-da1165aa730a.png)
  
    
6. Click ![Export search results icon](../media/47205c65-babd-4b3a-bd7b-98dfd92883ba.png) **Export results**.

7. On the **Export results** page, give the export a unique name, select output options, and choose how your content will be exported. Click **Export**.
    
    The workflow to export the results from multiple content searches associated with a case is the same as exporting the search results for a single search. For step-by-step instructions, see [Export Content Search results](export-search-results.md).
    
    > [!NOTE]
    > When you export search results from multiple searches associated with a case, you also have the option to enable de-duplication so that only one copy of an email message is exported even though multiple instances of the same message might have been found in the mailboxes that were searched in one or more of the searches. For more information about de-duplication and how duplicate items are identified, see [De-duplication in eDiscovery search results](de-duplication-in-ediscovery-search-results.md). 
  
8. After you start the export, click the **Export** tab to display the list of export jobs for that case. 
    
    ![Export tab, multiple searches](../media/b9505e1b-559f-4a8c-96b3-a3f734753926.png)
  
    You might have to click **Refresh** ![Refresh icon](../media/O365-MDM-Policy-RefreshIcon.gif) to update the list of export jobs to display the export job that you created. The searches that were included in the export job are listed in the **Searches** column. 
    
8. Click the export job that you just created to display status information in the details pane. This information includes the percentage of items that have been transferred to an Azure Storage area in the Microsoft cloud.
    
9. After all items have been transferred, click **Download results** to download the search results to your local computer. For more information, see Step 2 in [Export Content Search results](export-search-results.md).
    
### More information about exporting the results of multiple searches

- When you export the results of multiple searches, the search queries from all the searches are combined by using **OR** operators, and then the combined search is started. The estimated results of the combined search are displayed in the details pane of the selected export job. The search results are then transferred to the Azure Storage area in the Microsoft cloud. The status of the transfer is also displayed in the details pane. As previously stated, after all the search results have been transferred, you can download them to your local computer. 
    
- The maximum number of keywords from the search queries for all searches that you want to export is 500. (this is the same limit for a single Content Search). That's because the export job combines all the search queries by using the **OR** operator. If you exceed this limit, an error will be returned. In this case, you have to export the results from fewer searches or simplify the search queries of the searches that you want to export. 
    
- The search results that are exported are organized by the content source the item was found in. That means a content source in the export results might have items returned by different searches. For example, if you chose to export email messages in one PST file for each mailbox, the PST file might have results from multiple searches.
    
- If the same email item or document from the same content location is returned by more than one of the searches that you export, only one copy of the item will be exported.
    
- You can't edit an export for multiple searches after you create it. For example, you can't add or remove searches from the export. You have to create an export job to change which search results are exported. After an export job is created, you only can download the results to a computer, restart the export, or delete the export job.
    
- If you restart the export, any changes to the queries of the searches that make up the export job won't affect the search results that will be retrieved. When you restart an export, the same combined search query job that was run when the export job was created will be run again.
    
- If you restart an export from the **Exports** page in an eDiscovery case, the search results that are transferred to the Azure Storage area overwrites the previous results. The previous results there were transferred won't be available to be downloaded. 
    
- Preparing the results of multiple searches for analysis in Advanced eDiscovery isn't available. You can only prepare the results of a single search for analysis in Advanced eDiscovery.
