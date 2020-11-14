---
title: "Office 365 Management Activity API"
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
- M365-analytics
f1.keywords:
- NOCSH
description: In this article, you can find a brief summary about the Office 365 Management Activity API and the information it provides from activity logs.
ms.custom: seo-marvel-apr2020
---

# Office 365 Management Activity API

Microsoft provides reporting services you can use to obtain aggregated transactional information about your Office 365 tenant. The [Office 365 Management Activity API](https://docs.microsoft.com/office/office-365-management-api/office-365-management-apis-overview#office-365-management-activity-api) uses an industry-standard RESTful design and OAuth v2 for authentication. This makes it easy to start experimenting with retrieving data and ingesting it into visualization tools and applications. The API provides a data feed with information about user, administrator, operations, and security activity in Office 365. The data can be kept for regulatory purposes, or combined with log data procured from an on-premises infrastructure or other sources. This helps build a monitoring solution for operations, security, and compliance across the enterprise.

The Office 365 Management Activity API provides information about various user, admin, system, and policy actions and events from Office 365 and Azure Active Directory activity logs. The API provides a consistent audit schema with over 10 fields common across all the services. The API allows organizations to make easy connections between events, and enables new ways to reason over the data.

Dozens of Independent Software Vendors (ISVs) partnered with Microsoft and have built solutions based on the API. Some solutions focus solely on Office 365 data and others source data from multiple cloud providers and on-premises systems to create a unified view of operations, security, and compliance-related activity. 

For more information, see the [Office 365 Management Activity API reference](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference).
