---
title: "Using Content Search Web Part instead of Content Query Web Part to improve performance in SharePoint in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- SPO_Content
- must-keep
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- SPO160
ms.assetid: e8ce6b72-745b-464a-85c7-cbf6eb53391b
description: Learn how to increase performance by replacing the Content Query Web Part with the Content Search Web Part in SharePoint Server 2016 and SharePoint in Microsoft 365.
---

# Using Content Search Web Part instead of Content Query Web Part to improve performance in SharePoint in Microsoft 365

This article describes how to increase performance by replacing the Content Query Web Part with the Content Search Web Part in SharePoint Server 2016 and SharePoint in Microsoft 365.
  
One of the most powerful features of SharePoint Server 2016 and SharePoint in Microsoft 365 is the Content Search Web Part (CSWP). This Web Part uses the search index to quickly retrieve results, which are shown to the user. Use the Content Search Web Part instead of the Content Query Web Part (CQWP) in your pages to improve performance for your users.
  
Using a Content Search Web Part over a Content Query Web Part will almost always result in better page load performance on SharePoint. There's a little additional configuration to get the right query, but the rewards are improved performance and happier users.
  
## Comparing the performance gain you get from using Content Search Web Part instead of Content Query Web Part

The following examples show the relative performance gains you may receive when you use a Content Search Web Part instead of a Content Query Web Part. The effects are more obvious with a complex site structure and broad content queries.
  
This example site has the following characteristics:
  
- 8 levels of subsites.

- Lists using a custom "fruit" content type.

- In the Web Part, the content query is broad, returning all items with the content type of "fruit".

- The example only uses 50 items across the 8 sites. The effects will be even more pronounced for sites with more content.

Here's a screenshot of the results of the Content Query Web Part.
  
![Graphic showing content query for web part.](../media/b3d41f20-dfe5-46ed-9c0a-31057e82de33.png)
  
In Internet Explorer, use the **Network** tab of the F12 developer tools to look at the details for the response header. In the following screenshot, the value for the **SPRequestDuration** for this page load is 924 milliseconds.
  
![Screenshot showing request duration of 924.](../media/343571f2-a249-4de2-bc11-2cee93498aea.png)
  
 **SPRequestDuration** indicates the amount of work that is done on the server to prepare the page. Switching Content by Query Web Parts with Content by Search Web Parts dramatically reduces the time it takes to render the page. By contrast, a page with an equivalent Content Search Web Part, returning the same number of results has an **SPRequestDuration** value of 106 milliseconds as shown in this screenshot:
  
![Screen shot showing Request Duration of 106.](../media/b46387ac-660d-4e5e-a11c-cc430e912962.png)
  
## Adding a Content Search Web Part in SharePoint in Microsoft 365

Adding a Content Search Web Part is similar to a regular Content Query Web Part. See the section  *"Add a Content Search Web Part"*  in [Configure a Content Search Web Part in SharePoint](https://support.office.com/article/Configure-a-Content-Search-Web-Part-in-SharePoint-0dc16de1-dbe4-462b-babb-bf8338c36c9a).
  
## Creating the right search query for your Content Search Web Part

Once you've added a Content Search Web Part, you can refine the search and return the items you want. For detailed instructions on how to do this, see the section,  *"Display content by configuring an advanced query in a Content Search Web Part"*  in [Configure a Content Search Web Part in SharePoint](https://support.office.com/article/Configure-a-Content-Search-Web-Part-in-SharePoint-0dc16de1-dbe4-462b-babb-bf8338c36c9a).
  
## Query building and testing tool

For a tool to build and test complex queries, see the [Search Query Tool](https://github.com/pnp/PnP-Tools/tree/master/Solutions/SharePoint.Search.QueryTool#download-the-tool).
