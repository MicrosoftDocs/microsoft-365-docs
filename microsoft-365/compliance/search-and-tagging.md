---
title: "Search and Tagging"
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
- MET150
ms.assetid: 22f5adad-1bc0-460d-94a9-8732929f5b99
description: "In Advanced eDiscovery, the Search and Tagging module enables you to search, preview, and organize the documents in your case. Currently, this module is in beta."
ms.custom: seo-marvel-apr2020
---

# Search and Tagging

In Advanced eDiscovery, the Search and Tagging module enables you to search, preview, and organize the documents in your case. Currently, this module is in beta. For a brief demonstration of searching and tagging, see the [Manage your data with Advanced eDiscovery](https://www.youtube.com/watch?v=VaPYL3DHP6I) video.

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
## Search the documents in your case

After you have processed documents in an Advanced eDiscovery case (and optionally run the Analyze or Relevance module), you can use the Search and Tagging to search documents and then organize them by applying case-specific tags (also called labels). You can define a search query using the provided condition cards or by using a KQL-like query language in the Keywords condition card. Common KQL syntax, such as AND, OR, NOT, and NEAR(n) are supported, as well as trailing multi-character wildcard (*). 

The following table lists the properties that you can search for using a KQL keyword query. Alternatively, you can use a condition card for in the Advanced eDiscovery Search tool to add a condition (for selected properties) to a search query.

|**Property**|**Description**|
|:-----|:-----|
|**caselabel** <br/> | The name of the tag created/applied when a document is tagged. <br/> |
|**custodian** <br/> | The custodian associated with a document; subject to limitations. <br/> |
|**date** <br/> | Sent date for email; the modified date for site documents. <br/> |
|**fileid** <br/> | The File ID within the case. <br/> |
|**filetype** <br/> | The native file extension. <br/> |
|**fileclass** <br/> | Email, document, or attachment. <br/> |
|**senderauthor** <br/> | The sender for email; the author for site documents. <br/> |
|**size** <br/> | The size of the file in KB. <br/> |
|**subjecttitle** <br/> | The subject for email; the title for site documents. <br/> |
|**bcc** <br/> | The Bcc field of an email. <br/> |
|**cc** <br/> | The Cc field of an email. <br/> |
|**participants** <br/> | The email address of all participants in an email thread, including for missing links. <br/> |
|**received** <br/> | The date an email was received. <br/> |
|**recipients** <br/> | Recipients of an email, included on the To, Cc, or Bcc fields. <br/> |
|**sender** <br/> | The sender of an email. <br/> |
|**lastmodifieddate** <br/> | The last modified date of a site document. <br/> |
|**sent** <br/> | The sent date of an email. <br/> |
|**to** <br/> | The recipient listed in the To field of an email. <br/> |
|**author** <br/> | The author of a site document. <br/> |
|**title** <br/> | The title of a site document. <br/> |
|**dominanttheme**\* <br/> | The dominant theme of an item. <br/> |
|**themeslist**\* <br/> | Themes that are associated with an item. <br/> |
|**readpercentile_[issuenum]**\*\* <br/> | The read percentile of an item, for the issue defined by [issuenum]. <br/> |
|**relevancescore_[issuenum]**\*\* <br/> | The relevance score of an item, for the issue defined by [issuenum]. <br/> |
|**relevancetag_[tagname]**\*\* <br/> | If an item has been manually tagged for relevance, the tag defined by  [tagname]. <br/> |
|||

\* Only available if the Themes module has been run.

\*\* Only available if the Relevance module has been run.

Alternatively, you can use a condition card in the Advanced eDiscovery Search tool to add a condition (for selected properties) to a search query. The following screenshot shows the conditions that can be added to a query. The **Group** column indicates whether the property applies to email, site documents, or both (indicated by the value *Common*). This column also identifies the searchable properties that are available after you run the Relevance module.

![Search conditions in the Advanced eDiscovery search tool](../media/AeDSearchConditions.png)

For more information about searchable properties, see [Keyword queries and search conditions](keyword-queries-and-search-conditions.md).
  
## Related topics

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Understanding Assessment in Relevance](assessment-in-relevance-in-advanced-ediscovery.md)
  
[Tagging and Assessment](tagging-and-assessment-in-advanced-ediscovery.md)
  
[Tagging and Relevance training](tagging-and-relevance-training-in-advanced-ediscovery.md)
  
[Tracking Relevance analysis](track-relevance-analysis-in-advanced-ediscovery.md)
  
[Deciding based on the results](decision-based-on-the-results-in-advanced-ediscovery.md)
  
[Testing Relevance analysis](test-relevance-analysis-in-advanced-ediscovery.md)

