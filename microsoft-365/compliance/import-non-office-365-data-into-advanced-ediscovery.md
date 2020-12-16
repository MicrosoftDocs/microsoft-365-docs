---
title: "Import non-Microsoft 365 content for Advanced eDiscovery analysis"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
titleSuffix: Office 365
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- OEC150
- MET150
ms.assetid: 0ee60763-a30b-495b-8543-971c3384a801
description: "How to steps to import content that is not stored in Microsoft 365 into an Azure blob so that it can be analyzed with AeD"
ms.custom: seo-marvel-apr2020
---

# Import non-Microsoft 365 content for Advanced eDiscovery (classic) analysis

Not all documents that you may need to analyze with Advanced eDiscovery will live in Microsoft 365. With the Non-Microsoft 365 content import feature in Advanced eDiscovery you can upload documents that don't live in Microsoft 365 (except PST files) into a case linked, Azure storage blob and analyze them with Advanced eDiscovery. This procedure shows you how to bring your non-Microsoft 365 documents into Advanced eDiscovery for analysis.
  
> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
> [!NOTE]
> You can purchase an Advanced eDiscovery data storage add-on subscription for your non-Microsoft 365 content. This is exclusively available for content that is to be analyzed with Advanced eDiscovery. Follow the steps in [Buy or edit an add-on for Microsoft 365 for business](https://docs.microsoft.com/microsoft-365/commerce/buy-or-edit-an-add-on) and purchase the Advanced eDiscovery storage add-on. 
  
## Requirements to upload non-Office 365 content

Using the upload Non-Office 365 feature as described in this procedure requires that you have:
  
- An Office 365 E3 with Advanced Compliance add-on or E5 subscription.
    
- All custodians whose non-Office 365 content will be uploaded must have E3 with Advanced Compliance add-on or E5 licenses.
    
- An existing eDiscovery case.
    
- All the files for uploading gathered into folders where there is one folder per custodian and the folders' name is in this format  *alias@domainname*  . The  *alias@domainname*  must be users Office 365 alias and domain. You can collect all the  *alias@domainname*  folders into a root folder. The root folder can only contain the  *alias@domainname*  folders, there must be no loose files in the root folder.
    
- An account that is either an eDiscovery Manager or eDiscovery Administrator.
    
- [Microsoft Azure Storage Tools](https://aka.ms/downloadazcopy) installed on a computer that has access to the non-Office 365 content folder structure. 
    
## Upload non-Office 365 content into Advanced eDiscovery


1. As an eDiscovery Manager or eDiscovery Administrator, open **eDiscovery**, and open the case that the non-Office 365 data will be uploaded to. If you need to create a case, see [Manage eDiscovery cases in the Security &amp; Compliance Center](ediscovery-cases.md).
    
2. Click **Switch to Advanced eDiscovery**.

3. Select **Review Sets** from the menu.

4. Select an existing Review Set or choose **Add Review Set**.

5. Select **Manage review set**.

6. In the Non-Office 365 data card, select **View Uploads**.

7. Choose **Upload files** to start the file upload wizard.

8. The first tab is **1. Prepare step**. Select **Next: Upload files**.

9. On the **2. Upload files** tab you will be prompted to download AzCopy.exe if you have not done so already, and then to provide the path to the file location. For example, `C:\Upload`  will give you the command to execute AzCopy.exe. Using `C:\Upload`, you will see:

   `"%ProgramFiles(x86)%\Microsoft SDKs\Azure\AzCopy\AzCopy.exe" /Source:"c:\upload" /Dest:"https://spnam03salinkexternal003.blob.core.windows.net/16d13440-a6a4-4bc5-a82b-10ac9cfe9d7c-1601401811-externalstore?sv=2017-07-29&sr=c&si=ExternalStore63%7C0&sig=9Dq5v20TwkxByYDHhIEx%2FHSLlmlqUjY0njkJyTO0zGA%3D" /s`
  
10. Open a command prompt window and execute the AzCopy.exe command to import the data into Azure. Once it has loaded all of the data, select **Next: Process files**.

11. The next tab is **3. Process files** where you will see the custodians that have data associated with them and will also show you the progress of the data being imported.
        
    For more information on Azcopy syntax, see [Transfer data with the AzCopy on Windows](https://docs.microsoft.com/azure/storage/common/storage-use-azcopy). 
    
    For more details on Advanced eDiscovery Processing, see [Run the Process module and load data in Advanced eDiscovery (classic)](run-the-process-module-and-load-data-in-advanced-ediscovery.md). 
    
    > [!IMPORTANT]
    > There must be one root folder per user and the folder name must be in the <b>alias@domainname</b>  format. 
   
    > [!IMPORTANT]
    > Once the container is successfully processed in Advanced eDiscovery, you will no longer be able to add new content to the SAS storage in Azure. If you collect additional content and you want to add it to the case for Advanced eDiscovery analysis, you must create a new **Non-Office 365 data** container and repeat this procedure. 
  
    > [!NOTE]
    > If the container  *does not process successfully due to folder naming issues*  and you then fix the issues, you will still have to create a new container and the reconnect and upload again using the procedures in this article.
