---
title: "Prepare data for Advanced eDiscovery"
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
ms.assetid: 2fb94c23-1846-4a0e-994d-da6d02445f15
description: "Learn how to use the Security &amp; Compliance Center to prepare data for analysis with Advanced eDiscovery."
---

# Prepare data for Advanced eDiscovery (classic)

This topic describes how to load the results of a Content Search in to a case in Advanced eDiscovery (classic). 
  
> [!IMPORTANT]
> As we continue to invest in newer versions of Advanced eDiscovery, we are announcing the retirement of Advanced eDiscovery, also known as *Advanced eDiscovery (classic)* or *Advanced eDiscovery v1.0*. If you're still using Advanced eDiscovery v1.0, please transition to [Advanced eDiscovery v2.0](overview-ediscovery-20.md) (also known as the *Advanced eDiscovery solution in Microsoft 365*) as soon as possible. Advanced eDiscovery 2.0 contains similar functionality found in Advanced eDiscovery v1.0, but also offers many new features such as custodian management, communications management, and review sets. To learn more about the retirement of Advanced eDiscovery v1.0, see [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md#advanced-ediscovery-v10).  
  
## Step 1: Prepare data for Advanced eDiscovery

To analyze data with Advanced eDiscovery, you can use the results of a Content Search that you run in the Microsoft 365 Security &amp; Compliance Center (listed on the **Content search** page in the Microsoft 365 Security &amp; Compliance Center) or a search associated with an eDiscovery case (listed on the **eDiscovery** page in the Security &amp; Compliance Center). 
  
For the detailed steps on preparing search results for analysis in Advanced eDiscovery, see [Prepare search results for Advanced eDiscovery](prepare-search-results-for-advanced-ediscovery.md).
  
> [!NOTE]
> If you have data outside of Microsoft 365 and want to import it to Microsoft 365 so that you can prepare and analyze it in Advanced eDiscovery, a see [Overview of importing PST files to Microsoft 365](https://docs.microsoft.com/microsoft-365/compliance/importing-pst-files-to-office-365) and [Archiving third-party data](https://www.microsoft.com/?ref=go). 
  
## Step 2: Load search result data in to a case in Advanced eDiscovery

After you prepare the search results in the Security &amp; Compliance Center for analysis, the next step is to load the search results in to a case in Advanced eDiscovery. For more detailed information, see [Run the Process module](run-the-process-module-in-advanced-ediscovery.md).
  
1. Go to [https://protection.office.com](https://protection.office.com).
    
2. Sign in using your work or school account.
    
3. In the Security &amp; Compliance Center, click **Search &amp; investigation** \> **eDiscovery** to display the list of cases in your organization. 
    
4. Click **Open** next to the case that you want to load data in to in Advanced eDiscovery. 
    
5. On the **Home** page for the case, click **Switch to Advanced eDiscovery**. 
    
    ![Click Switch to Advanced eDiscovery to open the case in Advanced eDiscovery](../media/8e34ba23-62e3-4e68-a530-b6ece39b54be.png)
  
    The **Connecting to Advanced eDiscovery** progress bar is displayed. When you're connected to Advanced eDiscovery, a list of containers is displayed on the setup page for the case. 
    
    ![The case is displayed in Advanced eDiscovery](../media/8036e152-70dc-4bb7-9379-61c1ed8326b4.png)
  
     These containers represent the search results that you prepared for analysis in Advanced eDiscovery in Step 1. Note that the name of the container has the same name as the Content Search in the case in the Security &amp; Compliance Center. The containers in the list are the ones that you prepared. If a different user prepared search results for Advanced eDiscovery, the corresponding containers won't be included in the list. 
    
6. To load the search result data from a container in to the case in Advanced eDiscovery, select a container and then click **Process**.
    
After the search results from the Security &amp; Compliance Center are added to the case in Advanced eDiscovery, the next step is to use the tools in Advanced eDiscovery to analyze and cull the data that's relevant to the case. 
  
## See also

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Set up users and cases](set-up-users-and-cases-in-advanced-ediscovery.md)
  
[Analyzing case data](analyze-case-data-with-advanced-ediscovery.md)
  
[Managing Relevance setup](manage-relevance-setup-in-advanced-ediscovery.md)
  
[Using the Relevance module](use-relevance-in-advanced-ediscovery.md)
  
[Exporting case data](export-case-data-in-advanced-ediscovery.md)

