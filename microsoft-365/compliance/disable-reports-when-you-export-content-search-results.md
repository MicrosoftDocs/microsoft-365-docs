---
title: "Disable reports when you export Content Search results"
description: Edit the Windows Registry on your local computer to disable reports when you export the results of a Content Search from the Microsoft Purview compliance portal.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
ms.collection:
- tier1
- purview-compliance
- content-search
---

# Disable reports when you export Content Search results

When you use the eDiscovery Export tool to export the results of a Content Search in the Microsoft Purview compliance portal, the tool automatically creates and exports two reports that contain additional information about the exported content. These reports are the Results.csv file and the Manifest.xml file (see the [Frequently asked questions about disabling export reports](#frequently-asked-questions-about-disabling-export-reports) section in this article for detailed descriptions of these reports). Because these files can be very large, you can speed up the download time and save disk space by preventing these files from being exported. You can do this by changing the Windows Registry on the computer that you use to export the search results. If you want to include the reports at a later time, you can edit the registry setting. 
  
[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Create registry settings to disable the export reports

Perform the following procedure on the computer that you'll use to export the results a content search.
  
1. Close the eDiscovery Export tool if it's open.
  
2. Perform one or both of the following steps, depending on which export report you want to disable.

    - **Results.csv**

      Save the following text to a Windows registry file by using a filename suffix of .reg; for example, DisableResultsCsv.reg.

      ```text
      Windows Registry Editor Version 5.00
      reg add HKLM\SOFTWARE\Microsoft\Exchange\Client\eDiscovery\ExportTool /v ResultCsvEnabled /t REG_SZ /d False 
      ```

    - **Manifest.xml**

      Save the following text to a Windows registry file by using a filename suffix of .reg; for example, DisableManifestXml.reg.

      ```text
      Windows Registry Editor Version 5.00
      reg add HKLM\SOFTWARE\Microsoft\Exchange\Client\eDiscovery\ExportTool /v ResultEdrmEnabled /t REG_SZ /d False 
      ```

3. In Windows Explorer, select or double-click the .reg file that you created in the previous steps.

4. In the User Access Control window, select **Yes** to let the Registry Editor make the change. 

5. When prompted to continue, select **Yes**.

    The Registry Editor displays a message saying that the setting was successfully added to the registry.
  
## Edit registry settings to re-enable the export reports

If you disabled the Results.csv and Manifest.xml reports by creating the .reg files in the previous procedure, you can edit those files to re-enable a report so that it's exported with the search results. Again, perform the following procedure on the computer that you'll use to export the results a content search.
  
1. Close the eDiscovery Export tool if it's open.

2. Edit one or both of the .reg edit files that you created in the previous procedure.

    - **Results.csv**

        Open the DisableResultsCsv.reg file in Notepad, change the value  `False` to  `True`, and then save the file. For example, after you edit the file, it looks like this:

        ```text
        Windows Registry Editor Version 5.00
      reg add HKLM\SOFTWARE\Microsoft\Exchange\Client\eDiscovery\ExportTool /v ResultCsvEnabled /t REG_SZ /d True
        ```

    - **Manifest.xml**

        Open the DisableManifestXml.reg file in Notepad, change the value  `False` to  `True`, and then save the file. For example, after you edit the file, it looks like this:

      ```text
      Windows Registry Editor Version 5.00
      reg add HKLM\SOFTWARE\Microsoft\Exchange\Client\eDiscovery\ExportTool /v ResultEdrmEnabled /t REG_SZ /d True
      ```

3. In Windows Explorer, select or double-click a .reg file that you edited in the previous step.

4. In the User Access Control window, select **Yes** to let the Registry Editor make the change. 

5. When prompted to continue, select **Yes**.

    The Registry Editor displays a message saying that the setting was successfully added to the registry.
  
## Frequently asked questions about disabling export reports

**What are the Results.csv and Manifest.xml reports?**
  
The Results.csv and Manifest.xml files contain additional information about the content that was exported.
  
- **Results.csv** An Excel document that contains information about each item that is download as a search result. For email, the result log contains information about each message, including: 

  - The location of the message in the source mailbox (including whether the message is in the primary or archive mailbox).
  - The date the message was sent or received.
  - The Subject line from the message.
  - The sender and recipients of the message.
  - Whether the message is a duplicate message if you enabled de-duplication when exporting the search results. Duplicate messages will have a value in the **Parent ItemId** column that identifies the message as a duplicate. The value in the **Parent ItemId** column is the same as the value in the **Item DocumentId** column of the message that was exported.

  For documents from SharePoint and OneDrive for Business sites, the result log contains information about each document, including:

  - The URL for the document.
  - The URL for the site collection where the document is located.
  - The date that the document was last modified.
  - The name of the document (which is located in the Subject column in the result log).

- **Manifest.xml** A manifest file (in XML format) that contains information about each item included in the search results. The information in this report is the same as the Results.csv report, but it's in the format specified by the Electronic Discovery Reference Model (EDRM). For more information about EDRM, go to [https://www.edrm.net](https://www.edrm.net).

**When should I disable exporting these reports?**
  
It depends on your specific needs. Many organizations don't require additional information about search results, and don't need these reports.
  
**What computer do I have to do this on?**
  
You have to change the registry setting on any local computer that you run the eDiscovery Export tool on. 
  
**After I change this setting, do I have to restart the computer?**
  
No, you don't have to restart the computer. But if the eDiscovery Export tool is running, you have to close it and then restart it after you change the registry setting.
  
**Does an existing registry key get edited or does a new key get created?**
  
A new registry key is created the first time you run the .reg file that you created in the procedure in this article. Then the setting is edited each time you change and rerun the .reg edit file.
