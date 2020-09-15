---
title: "Export Content Search results"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: how-to
f1_keywords:
- 'ms.o365.cc.CustomizeExport'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid: ed48d448-3714-4c42-85f5-10f75f6a4278
description: "Export the search results from a Content Search in the Security & Compliance Center to a local computer. Email results are exported as PST files. Content from SharePoint and OneDrive for Business sites are exported as native Office documents. "
ms.custom: seo-marvel-apr2020
---

# Export Content Search results

After a Content Search is successfully run, you can export the search results to a local computer. When you export email results, they're downloaded to your computer as PST files. When you export content from SharePoint and OneDrive for Business sites, copies of native Office documents are exported. There are other documents and reports included with the exported search results.
  
Any RMS-encrypted email messages included in the results of a Content Search will be decrypted when you export them (as individual messages). This decryption capability is enabled by default for members of the eDiscovery Manager role group. This is because the RMS Decrypt management role is assigned to this role group. See the [More information](#more-information) section for details about RMS decryption when you export search results. 
  
Exporting the results of a Content Search involves preparing the results, and then downloading them to a local computer.
  
## Before you export content search results

- To export search results, you have to be assigned the Export management role in the Security & Compliance Center. This role is assigned to the built-in eDiscovery Manager role group. It isn't assigned by default to the Organization Management role group. For more information, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).
    
- The computer you use to export the search results has to meet the following system requirements:
    
  - 32-bit or 64-bit versions of Windows 7 and later versions
    
  - Microsoft .NET Framework 4.7
    
- You have to use one of the following supported browsers to run the eDiscovery Export Tool<sup>1</sup>:

  - Microsoft Edge <sup>2</sup>
  
    OR

  - Microsoft Internet Explorer 10 and later versions
    
  > [!NOTE]
  > <sup>1</sup> Microsoft doesn't manufacture third-party extensions or add-ons for ClickOnce applications. Exporting search results using an unsupported browser with third-party extensions or add-ons isn't supported.<br/>
  > <sup>2</sup> As a result of recent changes to Microsoft Edge, ClickOnce support is no longer enabled by default. For instructions on enabling ClickOnce support in Edge, see [Use the eDiscovery Export Tool in Microsoft Edge](configure-edge-to-export-search-results.md).
    
- When you download search results (described in Step 2), you can increase the download speed by configuring a Windows Registry setting on the computer you use to export the search results. For more information, see [Increase the download speed when exporting eDiscovery search results from Office 365](increase-download-speeds-when-exporting-ediscovery-results.md).
    
- When you export search results, the data is temporarily stored in a Microsoft-provided Azure Storage location in the Microsoft cloud before it's downloaded to your local computer. Be sure that your organization can connect to the endpoint in Azure, which is **\*.blob.core.windows.net** (the wildcard represents a unique identifier for your export). The search results data is deleted from the Azure Storage location two weeks after it's created. 
    
- If your organization uses a proxy server to communicate with the Internet, you need to define the proxy server settings on the computer that you use to export the search results (so the export tool can be authenticated by your proxy server). To do this, open the  *machine.config*  file in the location that matches your version of Windows. 
    
  - **32-bit:** `%windir%\Microsoft.NET\Framework\[version]\Config\machine.config`
    
  - **64-bit:** `%windir%\Microsoft.NET\Framework64\[version]\Config\machine.config`
    
    Add the following lines to the  *machine.config*  file somewhere between the  `<configuration>` and  `</configuration>` tags. Be sure to replace  `ProxyServer` and  `Port` with the correct values for your organization; for example,  `proxy01.contoso.com:80` . 
    
    ```text
    <system.net>
       <defaultProxy enabled="true" useDefaultCredentials="true">
         <proxy proxyaddress="https://ProxyServer :Port " 
                usesystemdefault="False" 
                bypassonlocal="True" 
                autoDetect="False" />
       </defaultProxy>
    </system.net>
    ```

## Step 1: Prepare search results for export

The first step is to prepare the search results for exporting. When you prepare results, they are uploaded to a Microsoft-provided Azure Storage location in the Microsoft cloud. Content from mailboxes and sites is uploaded at a maximum rate of 2 GB per hour.
  
1. Go to [https://protection.office.com](https://protection.office.com).
    
2. Sign in using your work or school account.
    
3. In the left pane of the Security & Compliance Center, click **Search** \> **Content search**.
    
4. On the **Content search** page, select a search. 
    
5. In the details pane, under **Export results to a computer**, click **Start export**.
    
    > [!NOTE]
    > If the results for a search are older than 7 days, you are prompted to update the search results. If this happens, cancel the export, click **Update search results** in the details pane for the selected search, and then start the export again after the results are updated. 
  
6. On the **Export the search results** page, under **Output options**, choose one of the following options:
    
    - All items, excluding ones that have unrecognized format, are encrypted, or weren't indexed for other reasons
    
    - All items, including ones that have unrecognized format, are encrypted, or weren't indexed for other reasons
    
    - Only items that have an unrecognized format, are encrypted, or weren't indexed for other reasons
    
    See the [More information](#more-information) section for a description about how partially indexed items are exported. For more information about partially indexed items, see [Partially indexed items in Content Search](partially-indexed-items-in-content-search.md).
    
7. Under **Export Exchange content as**, choose one of the following options:
    
    - **One PST file for each mailbox:** Exports one PST file for each user mailbox that contains search results. Any results from the user's archive mailbox are included in the same PST file. This option reproduces the mailbox folder structure from the source mailbox. 
    
    - **One PST file containing all messages:** Exports a single PST file (named *Exchange.pst*) that contains the search results from all source mailboxes included in the search. This option reproduces the mailbox folder structure for each message. 
    
    - **One PST file containing all messages in a single folder:** Exports search results to a single PST file where all messages are located in a single, top-level folder. This option lets reviewers review items in chronological order (items are sorted by sent date) without having to navigate the original mailbox folder structure for each item. 
    
    - **Individual messages:** Exports search results as individual email messages, using the .msg format. If you select this option, email search results are exported to a folder in the file system. The folder path for individual messages is the same as the one used if you exported the results to PST files. 
    
      > [!IMPORTANT]
      > To decrypt RMS-encrypted messages when they're exported, you must export email search results as individual messages. Encrypted messages will remain encrypted if you export the search results as a PST file. 
  
8. Click the **Enable de-duplication** checkbox to exclude duplicate messages. This option appears only if the content sources of the search include Exchange mailboxes or public folders. 
    
    If you select this option, only one copy of a message will be exported even if multiple copies of the same message are found in the mailboxes that were searched. The export results report (Results.csv) will contain a row for every copy of a duplicate message so that you can identify the mailboxes (or public folders) that contain a copy of the duplicate message. For more information about de-duplication and how duplicate items are identified, see [De-duplication in eDiscovery search results](de-duplication-in-ediscovery-search-results.md).
    
9. Click the **Include versions for SharePoint documents** checkbox to export all versions of SharePoint documents. This option appears only if the content sources of the search include SharePoint or OneDrive for Business sites. 
    
10. Click the **Export files in a compressed (zipped) folder** checkbox to export search results to compressed folders. This option is available only when you choose to export Exchange items as individual messages and when the search results include SharePoint or OneDrive documents. This option is primarily used to work around the 260 character limit in Windows file path names when items are exported. See the "Filenames of exported items" in the [More information](#more-information) section. 
    
11. Click **Start export**.
    
    The search results are prepared for downloading, which means they're being uploaded to the Azure Storage location in the Microsoft cloud. When the search results are ready for download, the **Download exported results** link is displayed under **Export results to a computer** in the details pane. 
  
## Step 2: Download the search results

The next step is to download the search results from the Azure Storage location to your local computer.
  
As previously explained, you can increase the download speed by configuring a Windows Registry setting on the computer you use to export the search results. For more information, see [Increase the download speed when exporting eDiscovery search results from Office 365](increase-download-speeds-when-exporting-ediscovery-results.md).
  
1. In the details pane for the search that you started the export for, under **Export results to a computer**, click **Download exported results**.
    
    The **Download exported results** window is displayed and contains the following information about the search results that will be downloaded to your computer. 
    
    - The number of items that will be downloaded.
    
    - The estimated total size of the items that will be downloaded.
    
    - Whether indexed or unindexed will be exported. Unindexed items are items that have a recognized format, are encrypted, or weren't indexed for other reasons. For more information, see [Unindexed items in Content Search](partially-indexed-items-in-content-search.md).
    
    - Whether versions of SharePoint documents will be downloaded.
    
    - The status of the export preparation process. You can start downloading search results even if the preparation of the data isn't complete.
    
2. Under **Export key**, click **Copy to clipboard**. You use this key in step 5 to download the search results.
    
    > [!NOTE]
    > Because anyone can install and start the eDiscovery Export tool, and then use this key to download the search results, be sure to take precautions to protect this key just like you would protect passwords or other security-related information. 
  
3. Click **Download results**.
    
4. If you're prompted to install the **eDiscovery Export Tool**, click **Install**.
    
5. In the **eDiscovery Export Tool**, paste the export key that you copied in step 2 in the appropriate box.
    
6. Click **Browse** to specify the location where you want to download the search result files. 
    
    > [!NOTE]
    > Due to the high amount of disk activity (reads and writes), you should download search results to a local disk drive; don't download them to a mapped network drive or other network location. 
  
1. Click **Start** to download the search results to your computer. 
    
    The **eDiscovery Export Tool** displays status information about the export process, including an estimate of the number (and size) of the remaining items to be downloaded. When the export process is complete, you can access the files in the location where they were downloaded. 
    

  
## More information

Here's more information about exporting search results.
  
[Export limits](#export-limits)
  
[Export reports](#export-reports)
  
[Exporting partially indexed items](#exporting-partially-indexed-items)

[Exporting individual messages or PST files](#exporting-individual-messages-or-pst-files)
  
[Decrypting RMS-encrypted messages](#decrypting-rms-encrypted-messages)

[Filenames of exported items](#filenames-of-exported-items)  
  
[Miscellaneous](#miscellaneous)
  
 ### Export limits
  
- Exporting search results from the Security & Compliance Center has the following limits:
    
  - You can export a maximum of 2 TB of data from a single Content Search. If the search results are larger than 2 TB, consider using date ranges or other types of filters to decrease the total size of the search results.
    
  - Your organization can export a maximum of 2 TB of data during a single day.
    
  - You can have a maximum of 10 exports running at the same time within your organization.
    
  - A single user can run a maximum of three exports at the same time.

  > [!NOTE]
  > Exporting only the reports from a Content Search also counts against the number of exports running at the same time and the number of exports that a single user can run.
    
- As previously stated, search results from mailboxes and sites are uploaded to a Microsoft-provided Azure Storage location (as described in [Step 1: Prepare search results for export](#step-1-prepare-search-results-for-export)) at a maximum rate of 2 GB per hour.
    
- The maximum size of a PST file that can be exported is 10 GB by default. That means if the search results from a user's mailbox are larger than 10 GB, the search results for the mailbox will be exported in two (or more) separate PST files. If you choose to export all search results in a single PST file, the PST file will be spilt into additional PST files if the total size of the search results is larger than 10 GB. If you want to change this default size, you can edit the Windows Registry on the computer that you use to export the search results. See [Change the size of PST files when exporting eDiscovery search results](change-the-size-of-pst-files-when-exporting-results.md).
    
    Also, the search results from a specific mailbox won't be divided among multiple PST files unless the content from a single mailbox is more than 10 GB. If you chose to export the search results in one PST file for that contains all messages in a single folder and the search results are larger than 10 GB, the items are still organized in chronological order, so they will be spilt into additional PST files based on the sent date.
     
 ### Export reports
  
- When you export search results, the following reports are included in addition to the search results.
    
  - **Export Summary** An Excel document that contains a summary of the export. This includes information such as the number of content sources that were searched, the estimated and downloaded sizes of the search results, and the estimated and downloaded number of items that were exported. 
    
  - **Manifest** A manifest file (in XML format) that contains information about each item included in the search results. 
    
  - **Results** An Excel document that contains information about each item that is download as a search result. For email, the result log contains information about each message, including: 
    
      - The location of the message in the source mailbox (including whether the message is in the primary or archive mailbox).
        
      - The date the message was sent or received.
        
      - The Subject line from the message.
        
      - The sender and recipients of the message.
        
      - Whether the message is a duplicate message if you enabled the de-duplication option when exporting the search results. Duplicate messages have a value in the **Duplicate to Item** column that identifies the message as a duplicate. The value in the **Duplicate to Item** column contains the item identity of the message that was exported. For more information, see [De-duplication in eDiscovery search results](de-duplication-in-ediscovery-search-results.md).
        
      For documents from SharePoint and OneDrive for Business sites, the result log contains information about each document, including:
        
      - The URL for the document.
        
      - The URL for the site collection where the document is located.
        
      - The date that the document was last modified.
        
      - The name of the document (which is located in the Subject column in the result log).
    
  - **Unindexed Items** An Excel document that contains information about any partially indexed items that would be included in the search results. If you don't include partially indexed items when you generate the search results report, this report will still be downloaded, but will be empty. 
    
  - **Errors and Warnings** Contains errors and warnings for files encountered during export. See the Error Details column for information specific to each individual error or warning. 
    
  - **Skipped Items** When you export search results from SharePoint and OneDrive for Business sites, the export will usually include a skipped items report (SkippedItems.csv). The items cited in this report are typically items that won't be downloaded, such as a folder or a document set. Not exporting these types of items is by design. For other items that were skipped, the 'Error Type' and 'Error Details' field in the skipped items report show the reason the item was skipped and wasn't downloaded with the other search results. 
    
  - **Trace Log** Contains detailed logging information about the export process and can help uncover issues during export. 
    
    > [!NOTE]
    > You can just export these documents without having to export the actual search results. See [Export a Content Search report](export-a-content-search-report.md). 
  
 ### Exporting partially indexed items
  
- If you're exporting mailbox items from a content search that returns all mailbox items in the search results (because no keywords where included in the search query), partially indexed items won't be copied to the PST file that contains the unindexed items. This is because all items, including any partially indexed items, are automatically included in the regular search results. This means that partially indexed items will be included in a PST file (or as individual messages) that contains the other, indexed items.
    
    If you export both the indexed and partially indexed items or if you export only the indexed items from a content search that returns all items, the same number of items will be downloaded. This happens even though the estimated search results for the content search (displayed in the search statistics in the Security & Compliance Center) will still include a separate estimate for the number of partially indexed items. For example, let's say that the estimate for a search that includes all items (no keywords in the search query) shows that 1,000 items were found and that 200 partially indexed items were also found. In this case, the 1,000 items include the partially indexed items because the search returns all items. In other words, there are 1,000 total items returned by the search, and not 1,200 items (as you might expect). If you export the results of this search and choose to export indexed and partially indexed items (or export only partially indexed items), then 1,000 items will be downloaded. Again, that's because partially indexed items are included with the regular (indexed) results when you use a blank search query to return all items. In this same example, if you choose to export only partially indexed items, then only the 200 unindexed items would be downloaded.
    
    Also note that in the previous example (when you export indexed and partially indexed items or you export only indexed items), the **Export Summary** report included with the exported search results would list 1,000 items estimated items and 1,000 downloaded items for the same reasons as previously described. 
    
- If the search that you're exporting results from was a search of specific content locations or all content locations in your organization, only the partially items from content locations that contain items that match the search criteria will be exported. In other words, if no search results are found in a mailbox or site, then any partially indexed items in that mailbox or site won't be exported. The reason for this is that exporting partially indexed items from lots of locations in the organization might increase the likelihood of export errors and increase the time it takes to export and download the search results.
    
    To export partially indexed items from all content locations for a search, configure the search to return all items (by removing any keywords from the search query) and then export only partially indexed items when you export the search results.
    
    ![Use the third export option to export only unindexed items](../media/5d7be338-a0e5-425f-8ba5-92769c24bf75.png)
  
- When exporting search results from SharePoint or OneDrive for Business sites, the ability to export unindexed items also depends on the export option that you select and whether a site that was searched contains an indexed item that matches the search criteria. For example, if you search specific SharePoint or OneDrive for Business sites and no search results are found, then no unindexed items from those sites will be exported if you choose the second export option to export both indexed and unindexed items. If an indexed item from a site does match the search criteria, then all unindexed items from that site will be exported when exporting both indexed and unindexed items. The following illustration describes the export options based on whether a site contains an indexed item that matches the search criteria.
    
    ![Choose the export option based on whether a site contains an indexed item that matches the search criteria](../media/94f78786-c6bb-42fb-96b3-7ea3998bcd39.png)

    
    a. Only indexed items that match the search criteria are exported. No partially indexed items are exported.
    
    b. If no indexed items from a site match the search criteria, then partially indexed items from that same site aren't exported. If indexed items from a site are returned in the search results, then the partially indexed items from that site are exported. In other words, only the partially indexed items from sites that contain items that match the search criteria are exported.
    
    c. All partially indexed items from all sites in the search are exported, regardless of whether a site contains items that match the search criteria.
    
    If you choose to export partially indexed items, partially indexed mailbox items are exported in a separate PST file regardless of the option that you choose under **Export Exchange content as**.

- If partially indexed items are returned in the search results (because other properties of partially indexed items matched the search criteria), then those partially indexed are exported with the regular search results. So, if you choose to export both indexed items and partially indexed items (by selecting the **All items, including ones that have unrecognized format, are encrypted, or weren't indexed for other reasons** export option), the partially indexed items exported with the regular results will be listed in the Results.csv report. They will not be listed in the Unindexed items.csv report.
    
 ### Exporting individual messages or PST files
  
- If the file path name of a message exceeds the maximum character limit for Windows, the file path name is truncated. But the original file path name will be listed in the Manifest and ResultsLog.
    
- As previously explained, email search results are exported to a folder in the file system. The folder path for individual messages would replicate the folder path in the user's mailbox. For example, for a search named "ContosoCase101" messages in a user's inbox would be located in the folder path  `~ContosoCase101\\<date of export\Exchange\user@contoso.com (Primary)\Top of Information Store\Inbox`. 
    
- If you choose to export email messages in one PST file containing all messages in a single folder, a **Deleted Items** folder and a **Search Folders** folder are included in the top level of the PST folder. These folders are empty. 
  
 ### Decrypting RMS-encrypted messages
  
- As previously explained, to decrypt RMS-encrypted messages when you export them, you have to export the search results as individual messages. If you export search results to a PST file, RMS-encrypted messages remain encrypted.
    
- The RMS decryption feature in Content Search doesn't decrypt messages encrypted with Office 365 Message Encryption (OME) when you export search results. However, if a message encrypted with OME is sent by a user in your organization, the copy of the message in the user's Sent folder isn't encrypted and will be viewable after it's exported. However, if messages encrypted with OME are received by users in your organization, they won't be decrypted after they're exported. For more information about OME, see [Office 365 Message Encryption](https://go.microsoft.com/fwlink/p/?linkid=844966).
    
- Messages that are decrypted are identified in the **ResultsLog** report. This report contains a column named **Decode Status**, and a value of **Decoded** in this column identifies the messages the were decrypted. 
    
- Currently, this decryption capability doesn't include encrypted content from SharePoint and OneDrive for Business sites. Only RMS-encrypted email messages will be decrypted when you export them.
    
- If an RMS-encrypted email message has an attachment (such as a document or another email message) that's also encrypted, only the top-level email message will be decrypted.
    
- You can't preview an RMS-encrypted email message. To view an encrypted message, you have to export it.
    
- If you need to prevent someone from decrypting RMS-encrypted messages, you have to create a custom role group (by copying the built-in eDiscovery Manager role group) and then remove the RMS Decrypt management role from the custom role group. Then add the person who you don't want to decrypt messages as a member of the custom role group.
  
 ### Filenames of exported items
  
- There is a 260-character limit (imposed by the operating system) for the full path name for email messages and site documents exported to your local computer. The full path name for exported items includes the item's original location and the folder location on the local computer where the search results are downloaded to. For example, if you specify to download the search results to  `C:\Users\Admin\Desktop\SearchResults` in the eDiscovery Export tool, then the full pathname for a downloaded email item would be  `C:\Users\Admin\Desktop\SearchResults\ContentSearch1\03.15.2017-1242PM\Exchange\sarad@contoso.com (Primary)\Top of Information Store\Inbox\Insider trading investigation.msg`.
    
    If the 260-character limit is exceeded, the full path name for an item will be truncated.
    
  - If the full path name is longer than 260 characters, the file name will be shortened to get under the limit; note that the truncated filename (excluding the file extension) won't be fewer than 8 characters.
    
  - If the full path name is still too long after shortening the file name, the item is moved from its current location to the parent folder. If the pathname is still too long, then the process is repeated: shorten the filename, and if necessary move again to the parent folder. This process is repeated until the full pathname is under the 260-character limit.
    
  - If a truncated full path name already exists, a version number is added to the end of the filename; for example,  `statusmessage(2).msg`.
    
    To help mitigate this issue, consider downloading search results to a location with a short path name; for example, downloading search results to a folder named  `C:\Results` would add fewer characters to the path names of exported items than downloading them to a folder named  `C:\Users\Admin\Desktop\Results`.
    
- When you export site documents, it's also possible that the original file name of a document will be modified. This happens specifically for documents that have been deleted from a SharePoint or OneDrive for Business site that's been placed on hold. After a document that's on a site that's on hold is deleted, the deleted document is automatically moved to the Preservation Hold library for the site (which was created when the site was placed on hold). When the deleted document is moved to the Preservation Hold library, a randomly generated and unique ID is appended to the original filename of the document. For example, if the filename for a document is  `FY2017Budget.xlsx` and that document is later deleted and moved to the Preservation Hold library, the filename of the document that is moved to the Preservation Hold library is modified to something like  `FY2017Budget_DEAF727D-0478-4A7F-87DE-5487F033C81A2000-07-05T10-37-55.xlsx`. If a document in the Preservation Hold library matches the query of a Content Search and you export the results of that search, the exported file has the modified filename; in this example, the filename of the exported document would be  `FY2017Budget_DEAF727D-0478-4A7F-87DE-5487F033C81A2000-07-05T10-37-55.xlsx`.
    
    When a document on a site that's on hold is modified (and versioning for the document library in the site has been enabled), a copy of the file is automatically created in the Preservation Hold library. In this case, a randomly generated and unique ID is also appended to the filename of the document that's copied to the Preservation Hold library.
    
    The reason why filenames of documents that are moved or copied to the Preservation Hold library is to prevent conflicting filenames. For more information about placing a hold on sites and the Preservation Hold library, see [Overview of in-place hold in SharePoint Server 2016](https://support.office.com/article/5e400d68-cd51-444a-8fe6-e4df1d20aa95).
    
 ### Miscellaneous
  
- All search results and the export reports are included in a folder that has the same name as the Content Search. The email messages that were exported are located in a folder named **Exchange**. Documents are located in a folder named **SharePoint**. 
    
- The file system metadata for documents on SharePoint and OneDrive for Business sites is maintained when documents are exported to your local computer. That means document properties, such as created and last modified dates, aren't changed when documents are exported.

- If your search results include a list item from SharePoint that matches the search query, all rows in the list will be exported in addition to the item that matches the search query. This includes any attachments in the list. The reason for this is to provide a context for list items that are returned in the search results. Also note that the additional list items and attachments may cause the count of exported items to be different than the original estimate of search results.
