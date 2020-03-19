---
title: "Increase the download speed when exporting eDiscovery search results"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 6/14/2017
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: MOE150
ms.assetid: c4c8f689-9d52-4e80-ae4b-1411ee9efc43
description: "Learn how to configure the Windows Registry to increase the data throughput when downloading search results and search data from the Security & Compliance Center and Advanced eDiscovery in Office 365."
---

# Increase the download speed when exporting eDiscovery search results

When you use the Office 365 eDiscovery Export tool to download the results of a Content Search in the Security & Compliance Center or download data from Advanced eDiscovery, the tool starts a certain number of concurrent export operations to download the data to your local computer. By default, the number of concurrent operations is set to 8 times the number of cores in the computer you're using to download the data. For example, if you have a dual core computer (meaning two central processing units on one chip), the default number of concurrent export operations is 16. To increase the data transfer throughput and speed-up the download process, you can increase the number of concurrent operations by configuring a Windows Registry setting on the computer that you use to download the search results. To speed-up the download process, we recommend that you start with a setting of 24 concurrent operations.
  
If you download search results over a low-bandwidth network, increasing this setting might have a negative impact. Alternatively, you might be able to increase the setting to more than 24 concurrent operations in a high-bandwidth network (the maximum number of concurrent operations is 48). After you configure this registry setting, you might have to change it to find the optimal number of concurrent operations for your environment.
  
## Create a registry setting to change the number of concurrent operations when exporting data

Perform the following procedure on the computer that you'll use to download search results from the Security & Compliance Center or data from Advanced eDiscovery.
  
1. Close the Office 365 eDiscovery Export tool if it's open. 
    
2. Save the following text to a Window registry file by using a filename suffix of .reg; for example, ConcurrentOperations.reg. 
    
    ```text
    Windows Registry Editor Version 5.00
    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Exchange\Client\eDiscovery\ExportTool]
    "DownloadConcurrency"="24"
    ```

    As previous explained, we recommend that you start with 24 concurrent operations, and then change this setting as appropriate.
    
3. In Windows Explorer, click or double-click the .reg file that you created in the previous step.
    
4. In the User Access Control window, click **Yes** to let the Registry Editor make the change. 
    
5. When prompted to continue, click **Yes**.
    
    The Registry Editor displays a message saying that the setting was successfully added to the registry.
    
6. You can repeat steps 2 - 5 to change the value for the  `DownloadConcurrency` registry setting. 
    
    > [!IMPORTANT]
    > After you create or change the  `DownloadConcurrency` registry setting, be sure to create a new export job or restart an existing export job for the search results or data that you want to download. See the [More information](#more-information) section for more details. 
  
## More information

- A new registry key is created the first time you run the .reg file that you created in this procedure. Then the  `DownloadConcurrency` registry setting is edited each time you change and re-run the .reg edit file. 
    
- The Office 365 eDiscovery Export tool uses the [Azure AzCopy utility](https://go.microsoft.com/fwlink/?linkid=849949) to download search data from the Security & Compliance Center or from Advanced eDiscovery. Configuring the  `DownloadConcurrency` registry setting is similar to using the **/NC** parameter when running the AzCopy utility. So the registry setting of  `"DownloadConcurrency=24"` would have the same effect as using the parameter value of  `/NC:24` with the AzCopy utility. 
    
- If you stop an export download that's currently in progress and then restart it (by trying to download the search results again), the Office 365 eDiscovery Export tool will attempt to resume the same download. So, if you start a download, stop it, and then change the  `DownloadConcurrency` registry setting, the download will probably fail if you restart it (by clicking **Download exported results**). This is because the export tool will attempt to resume the previous download using settings that aren't valid because you changed the registry setting.
    
    Therefore, after you change the  `DownloadConcurrency` registry setting, be sure to restart the export job (by clicking **Restart export**) in the Security & Compliance Center. Then you can download the exported results. For more information about exporting search results and data, see:
    
  - [Export Content Search results](export-search-results.md)
    
  - [Export results in Advanced eDiscovery](export-results-in-advanced-ediscovery.md)
    
