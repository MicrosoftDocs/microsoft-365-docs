---
title: "Introduction to information management policies"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 5/16/2014
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- WSU150
- SPO160
- OSU150
- MET150
ms.assetid: 63a0b501-ba59-44b7-a35c-999f3be057b2
ms.collection:
- purview-compliance
ms.custom:
- seo-marvel-apr2020
description: Learn how to use information management policies to control and track things like how long content is retained or what actions users can take with that content.
---

# Introduction to information management policies

An information management policy is a set of rules for a type of content. Information management policies enable organizations to control and track things like how long content is retained or what actions users can take with that content. Information management policies can help organizations comply with legal or governmental regulations, or they can simply enforce internal business processes. 
  
For example, an organization that must follow government regulations requiring that they demonstrate "adequate controls" of their financial statements might create one or more information management policies that audit specific actions in the authoring and approval process for all documents related to financial filings.
  
For how-to information, see [Create and apply information management policies](create-info-mgmt-policies.md).
  
[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Features of information management policies
<a name="__top"> </a>

There are four basic categories of predefined policy features that organizations can use individually or in combination to manage content and processes. 
  
![Types of content policies.](../media/19fcb8a3-974b-40d3-a13f-b76088d122f8.png)
  
The Auditing policy feature helps organizations analyze how their content management systems are used by logging events and operations that are performed on documents and list items. You can configure the Auditing policy feature to log events such as when a document or item is edited, viewed, checked in, checked out, deleted, or has its permissions changed. All of the audit information is stored in a single audit log on the server, and site administrators can run reports on it. 
  
The Expiration policy feature helps organizations delete or remove out-of-date content from their sites in a consistent, trackable way. This helps you manage both the cost and risk associated with retaining out-of-date content. You can configure an Expiration policy to specify that certain types of content expire on a particular date or within a period of time after the document was created or last modified.
  
Organizations can also create and deploy custom policy features to meet specific needs. For example, a manufacturing organization might want to define an information management policy for all draft product-design specification documents that prohibits users from printing copies of these documents on nonsecure printers. To define this kind of information management policy, you can create and deploy a Printing Restriction policy feature that can be added to the relevant information management policy for the product design specification content type.
  
## Locations to use an information management policy
<a name="__toc340213528"> </a>

To implement an information management policy, you must add it to a list, library, or content type in a site. The location where you create or add an information management policy affects how broadly the policy applies or how broadly it can be used. You can:
  
 **Create a site collection policy and then add this policy to a content type, list, or library** You can create a site collection policy in the Policies list in the top-level site of a site collection. After you create a site collection policy, you can export it so that administrators of other site collections can import it into their Policies list. Creating an exportable site collection policy enables you to standardize the information management policies across the sites in your organization. 
  
When you add a site collection policy to a site content type, and an instance of that site content type is added to a list or library, the owner of that list or library cannot modify the site collection policy for the list or library. Adding a site collection policy to a site content type is a good way to ensure that site collection policies are enforced at each level of your site hierarchy.
  
![Content Type Policy Template link on Site Settings page.](../media/26d3466a-23ec-443f-88f0-2aaff38e992b.png)
  
 **Create an information management policy for a site content type in the top-level site's Site Content Type Gallery, and then add that content type to one or more lists or libraries** You can also create an information management policy directly for a site content type and then associate an instance of that site content type with multiple lists or libraries. If you create an information management policy this way, every item in the site collection of that content type or a content type that inherits from that content type has the policy. However, if you create an information management policy directly for a site content type, it is more difficult to reuse this information management policy in other site collections, because policies that are created this way cannot be exported. 
  
![Site content types link on Site Settings page.](../media/6f6fa51f-15d7-4782-b06f-a7b36e874cd3.png)
  
![Information management policy link on settings page for a site content type.](../media/15d83a34-6c8f-4b6e-b6ee-e9b0a70cbb4b.png)
  
Note To control which policies are used in a site collection, site collection administrators can disable the ability to set policy features directly on a content type. When this restriction is in effect, users who create content types are limited to selecting policies from the site collection Policies list.
  
 **Create an information management policy for a list or library** If your organization needs to apply a specific information management policy to a very limited set of content, you can create an information management policy that applies only to an individual list or library. This method of creating an information management policy is the least flexible, because the policy applies only to one location, and it cannot be exported or reused for other locations. However, sometimes you may need to create unique information management policies with limited applicability to address specific situations. 
  
![Information management policies link on settings page for document library.](../media/9fa6d366-6aab-49e1-a05c-898ac6f536e6.png)
  
Notes 
  
You can create an information management policy for a list or library only if that list or library does not support multiple content types. If a list or library supports multiple content types, you need to define an information management policy for each individual list content type that is associated with that list or library. (Instances of a site content type that are associated with a specific list or library are known as list content types.)
  
To control which policies are used in a site collection, site collection administrators can disable the ability to set policy features directly on a list or library. When this restriction is in effect, users who manage lists or libraries are limited to selecting policies from the site collection Policies list.
  
[An information management policy is a set of rules for a type of content. Information management policies enable organizations to control and track things like how long content is retained or what actions users can take with that content. Information management policies can help organizations comply with legal or governmental regulations, or they can simply enforce internal business processes. For example, an organization that must follow government regulations requiring that they demonstrate "adequate controls" of their financial statements might create one or more information management policies that audit specific actions in the authoring and approval process for all documents related to financial filings.For how-to information, see Create and apply information management policies.](intro-to-info-mgmt-policies.md#__top)
  

