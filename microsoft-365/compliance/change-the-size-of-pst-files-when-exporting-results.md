---
title: "Change the size of PST files when exporting eDiscovery search results"
description: "You can change the default size of PST files that are downloaded to your computer when you export eDiscovery search results."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 10/12/2018
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MOE150
- MET150
ms.collection:
- tier1
- M365-security-compliance
- ediscovery
---

# Change the size of PST files when exporting eDiscovery search results

When you use the eDiscovery Export tool to export the email results of an eDiscovery search from the different Microsoft eDiscovery tools, the default size of a PST file that can be exported is 10 GB. If you want to change this default size, you can edit the Windows Registry on the computer that you use to export the search results. One reason to do this is so a PST file can fit on removable media, such a DVD, a compact disc, or a USB drive. 
  
> [!NOTE]
> The eDiscovery Export tool is used to export the search results when using the Content search tool in the Microsoft Purview compliance portal.
  
## Create a registry setting to change the size of PST files when you export eDiscovery search results

Perform the following procedure on the computer that you'll use to export the results of an eDiscovery search.
  
1. Close the eDiscovery Export tool if it's open. 
    
2. Save the following text to a Window registry file by using a filename suffix of .reg; for example, PstExportSize.reg. 
    
    ```text
    Windows Registry Editor Version 5.00
    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Exchange\Client\eDiscovery\ExportTool]
    "PstSizeLimitInBytes"="1073741824"
    ```

    In the example above, the  `PstSizeLimitInBytes` value is set to 1,073,741,824 bytes or approximately 1 GB. Here are some other sample values for the  `PstSizeLimitInBytes` setting. 
    
    |**Size in GB (approx.)**|**Size in bytes**|
    |:-----|:-----|
    |0.7 GB (700 MB)  <br/> |751619277  <br/> |
    |2 GB  <br/> |2147483648  <br/> |
    |4 GB  <br/> |4294967296  <br/> |
    |8 GB  <br/> |8589934592  <br/> |
   
3. Change the `PstSizeLimitInBytes` value to the desired maximum size of a PST file when you export search results, and then save the file. 
    
4. In Windows Explorer, click or double-click the .reg file that you created in the previous steps.
    
5. In the User Access Control window, click **Yes** to let the Registry Editor make the change. 
    
6. When prompted to continue, click **Yes**.
    
    The Registry Editor displays a message saying that the setting was successfully added to the registry.
    
7. You can repeat steps 3 - 6 to change the value for the  `PstSizeLimitInBytes` registry setting. 
  
## Frequently asked questions about changing the default size of PST files when you export eDiscovery search results

 **Why is the default size 10 GB?**
  
The default size of 10 GB was based on customer feedback; 10 GB is a good balance between the optimal amount of content in a single PST and with a minimum chance of file corruption.
  
 **Should I increase or decrease the default size of PST files?**
  
Customers tend to decrease the size limit so that the search results will fit on removable media that they can physically ship to other locations in their organization. We don't recommend that you increase the default size because PST files larger than 10 GB might have corruption issues.
  
 **What computer do I have to do this on?**
  
You need to change the registry setting on any local computer that you run the eDiscovery Export tool on.
  
 **After I change this setting, do I have to reboot the computer?**
  
No, you don't have to reboot the computer. But, if the eDiscovery Export tool is running, you'll have to close it and the restart it after you change this setting.
  
 **Does an existing registry key get edited or does a new key get created?**
  
A new registry key is created the first time you run the .reg file that you created in this procedure. Then the setting is edited each time you change and rerun the .reg edit file.
