---
title: "Microsoft 365 Tenant Isolation in the Microsoft Graph and Delve"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, find an explanation of how Microsoft 365 tenant isolation works in the Office Graph and in Delve.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Tenant Isolation in the Microsoft Graph and Delve

## Tenant Isolation in the Microsoft Graph

The [Microsoft Graph](https://developer.microsoft.com/graph) models activity in Microsoft 365 services, including Exchange Online, SharePoint Online, Yammer, Skype for Business, Azure Active Directory, and more, and in external services, such as other Microsoft services or third-party services. Microsoft Graph components are used throughout Microsoft 365. The Microsoft Graph represents a collection of content and activity, and the relationships between them that happen across the entire Office suite. It uses sophisticated machine learning techniques to connect people to the relevant content, conversations and people around them. For example, the tenant index in SharePoint Online has an Microsoft Graph index that is used to serve Delve queries, the Analytics Processing Engine in SharePoint Online is used to store signals and calculate insights, and Exchange Online calculates each user's recipient cache as input into tenant analytics.

The Microsoft Graph contains information about enterprise objects, such as people and documents, as well as the relationships and interactions among these objects. The relationships and interactions are represented as *edges*. The Microsoft Graph is segmented by tenant such that edges can only exist between *nodes* in the same tenancy. A *node* is an entity with a Uniform Resource Identifier (URI), node type, access control list, and a set of facets containing *metadata* and edges. Each node has associated metadata and edges, arranged into *facets* as in the Common Knowledge Model. *Metadata* are named properties stored on a node which can be used for searching, filtering, or analysis within the Microsoft Graph. A *facet* is a logical collection of metadata and edges on a node. Each facet describes one aspect of a node. 

The Microsoft Graph does not bring all the data into a single repository; rather, it stores metadata and relationships about data that lives elsewhere. The Microsoft Graph consists of several data stores and processing components:

- The Tenant Graph Store provides bulk storage optimized for efficient analytics.
- The Active Content Cache provides quick random access to active node and edges to drive user experiences.
- The input router notifies components internal and external of changes to the tenant graph.

Analytics within each workload deduce insights relevant to the tenant-wide calculations and push them to the tenant graph. Tenant analytics reasons over all activity in a tenancy to produce insights into patterns of behavior. For example, Exchange Online calculates the recipient cache for each user with analytics that efficiently reason over each user's mailbox. These per-user analytics produce a set of *RecipientCache Edges* on each person, which are in turn pushed to the tenant graph. This keeps the as much of the analytics processing as close to the source data as possible.

## Tenant Isolation in Delve

As mentioned previously, the Microsoft Graph powers experiences that help people discover and collaborate on current activities in their enterprise, and provides an entity-centric platform for analytics to reason over content and activity across workloads and beyond Microsoft 365. Delve is the first such experience powered by the Microsoft Graph.
Delve is a Microsoft 365 web experience that surfaces content from Microsoft 365 and Yammer Enterprise to Microsoft 365 users via the Microsoft Graph. The web experience displays data as different boards, each with a certain topic, such as *Trending around me* or *Modified by me*. Each board consists of several document cards that display summary text and a picture from the document. The card lets users do things like open the document or a Yammer page for the document. There is a page for each person in a Microsoft 365 tenant that displays the most relevant documents for this person, and icons that can invoke Exchange Online or Skype for Business for interacting with that person. Because Delve is based on the Microsoft Graph API, it is bound by the tenant-based isolation of that API.