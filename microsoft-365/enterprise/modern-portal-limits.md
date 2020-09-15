---
title: "SharePoint Online modern portal site limits"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 10/9/2019
audience: Admin
ms.topic: interactive-tutorial
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Strat_O365_Enterprise
- SPO_Content
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid: 
- MET150
description: Learn about performance recommendations for modern sites in SharePoint Online, such as limiting calls to Sharepoint and external endpoints.
---

# SharePoint Online modern portal site limits

This article provides performance recommendations for modern portal sites in SharePoint Online. Use the guidelines in this article to optimize modern portal site performance and avoid common performance issues.

## Performance considerations for modern portal sites

From the standpoint of performance optimization, there are a few characteristics that make modern portal sites unique. The principal difference between collaboration and portal sites in SharePoint Online is scale. Portal sites are generally expected to serve more page views to a greater number of users than collaboration sites, and are likely to contain more static content and fewer editable resources. Additionally, the architecture of modern sites differs from classic sites in that most of the processing involved in rendering pages and executing code takes place on the client rather than the server.

Performance optimization for modern portal sites is primarily focused on a few overall objectives:

- Reduce the total size of the components of each site page
- Offload hosting of common static files such as images, stylesheets and scripts to CDN
- Limit calls to SharePoint and external endpoints to only what is necessary
- Avoid duplicate requests for the same content

Many of the guidelines in this article focus on minimizing and optimizing calls to SharePoint Online. Making repetitive calls each time a page is loaded will impact performance for users as the information will be retrieved from the service each time even if it has not changed. As such, requests to SharePoint can be categorized either as calls that are common for all users or calls required for each individual user. Results from these two call categories should be cached to optimize the user experience.

>[!NOTE]
>Use the [Page Diagnostics for SharePoint tool](https://aka.ms/perftool) as a starting point to analyze specific performance metrics on SharePoint Online site pages.

## Modern portal site limits and recommendations

|**Limit**|**Maximum recommended value**|**Notes**|
|:-----|:-----|:-----|:-----|
|Pages and news items  <br/> |5,000 per site  <br/> |We recommend limiting the number of pages and news items in a modern portal site to below 5,000.  <br/> |
|Web parts on a page  <br/> |20 per page  <br/> |We recommend using 20 or fewer total web parts per page, including both out-of-the-box Microsoft web parts and custom web parts. <br/> For more information, see [Optimize web part performance in SharePoint Online modern site pages](modern-web-part-optimization.md).  <br/> |
|Dynamic web parts on a page  <br/> |4 per page  <br/> |Dynamic web parts that make one or more queries to SharePoint to fetch the latest data should be limited to 4 per page. The _News_ web part is an example of a dynamic web part. <br/> For more information, see [Optimize web part performance in SharePoint Online modern site pages](modern-web-part-optimization.md).    <br/> |
|Security groups  <br/> |20 per site  <br/> |The number of security groups affects the scale of many queries in modern portal sites. We recommend that you limit the number of security groups to as small a set as possible, with no more than 20 per site.  <br/> |
|Items in site navigation  <br/> |100 per site  <br/> |We recommend adding fewer than 100 items to site navigation, and that you make use of out-of-the-box navigation controls.  <br/> For more information, see [Optimize page weight in SharePoint Online modern site pages](modern-page-weight-optimization.md). <br/> |
|Maximum image size  <br/> |300 Kb per image  <br/> |We recommend limiting the size of images to 300kb or smaller, and using a CDN to host images, stylesheets and scripts. <br/>For more information, see [Optimize images in SharePoint Online modern site pages](modern-image-optimization.md) and [Use the Office 365 Content Delivery Network (CDN) with SharePoint Online](use-microsoft-365-cdn-with-spo.md).  <br/> |
|Users with edit rights  <br/> |200 users per site  <br/> |SharePoint portal sites are optimized for viewing and consuming content. Edit permissions on a portal should be limited to a restricted group of users because edit permissions download additional controls and will therefore perform slower for those users. An excessive number of users with edit permissions will therefore affect the overall experience. <br/> |
|Third party iFrames  <br/> |2 per page  <br/> |iFrames are unpredictably slow because they load a separate external page including all associated content such as javascript, CSS and framework elements. If you must use iFrames, limit their number to 2 or fewer per page.<br/> For more information, see [Optimize iFrames in SharePoint Online modern and classic publishing site pages](modern-iframe-optimization.md). <br/> |
|Calls to the UPA service  <br/> |1 per user per hour  <br/> |We recommend that you make no _per request_ calls to the UPA (User Profile Application) service. The [Microsoft Graph API](https://docs.microsoft.com/graph/call-api) and [PageContext](https://docs.microsoft.com/javascript/api/sp-page-context/pagecontext?view=sp-typescript-latest) can be used to query for user information.  <br/> If a UPA service call is necessary, make a single call when required, and then cache the information for reuse in the same session. |
|Calls to the Taxonomy service  <br/> |5 per user per hour  <br/> |We recommend that you make no _per request_ calls to the Taxonomy service. If Taxonomy service calls are necessary, cache the information for reuse in the same session. <br/> For more information, see [Optimize page calls in SharePoint Online modern and classic publishing site pages](modern-page-call-optimization.md). <br/> |

## Related topics

[Creating a healthy SharePoint portal](https://docs.microsoft.com/sharepoint/portal-health)

[Tune SharePoint Online performance](tune-sharepoint-online-performance.md)

[Tune Office 365 performance](tune-microsoft-365-performance.md)

[SharePoint Online limits](https://docs.microsoft.com/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)

[Performance in the modern SharePoint experience](https://docs.microsoft.com/sharepoint/modern-experience-performance)

[Performance guidance for SharePoint Online portals](https://docs.microsoft.com/sharepoint/dev/solution-guidance/portal-performance)
