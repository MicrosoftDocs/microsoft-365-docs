---
title: "Microsoft 365 support integration with ServiceNow configuration overview"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 10/28/2021
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Scoped Certified application installation and configuration guide for ServiceNow."
---

# Microsoft 365 support integration with ServiceNow configuration overview

The following content applies to the Microsoft 365 support integration app with a minimum version of **1.0.7**.

**Microsoft 365 support integration** enables you to integrate Microsoft 365 help, support, and service health with your ServiceNow instances. You can research Microsoft known and reported issues, resolve incidents, complete tasks by using Microsoft recommended solutions, and, if necessary, escalate to Microsoft human-assisted support.

For the **Microsoft 365 support integration** app from the ServiceNow store, go to the [ServiceNow Store](https://store.servicenow.com/sn_appstore_store.do#!/store/application/6d05c93f1b7784507ddd4227cc4bcb9f).

## Key features

These are the key features you'll get with the Microsoft 365 support integration app in your ServiceNow instance:

- Service Health Incidents: Information about known Microsoft service health incidents, including user impact, scope, current status, and next expected update. Using machine learning, ServiceNow incidents are matched to Microsoft service health incidents based on the short description field.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-servicehealth1.png" alt-text="ServiceNow Health Incidents description field."::: 

- Recommended solutions: Descriptions of tasks and incidents are used to recommend precise targeted solutions and relevant articles from Microsoft powered by machine learning. You can also use Search to find other solutions, if needed.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-recommendedsol2.png" alt-text="ServiceNow Recommended solutions description field.":::

- Microsoft service request: Escalate issues to Microsoft support agents and receive status updates for your case.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-service-request.png" alt-text="ServiceNow service request form.":::



## Prerequisites

### Permissions requirements

To proceed with this guide, make sure that the following permissions are available and configured for your environments during the whole process:

- Azure Active Directory (AAD) admin who can create AAD applications

- ServiceNow admin

- Microsoft 365 tenant admin

### Configuration highlights

To set up **Microsoft 365 support integration**:

- Register applications in Microsoft Azure Active Directory (AAD) for authentication of both outbound and inbound API calls.

- Create ServiceNow entities with Microsoft AAD application for both outbound and inbound data flow.

- Integrate ServiceNow instance with Microsoft support through the Microsoft 365 admin portal.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-integration-diagram.png" alt-text="ServiceNow integration diagram.":::

### Application dependencies in your ServiceNow environments

Permissions required:

- oauth\_entity

- oauth\_entity\_profile

After the Microsoft 365 Support Integration app has been installed, two Application Cross-Scope accesses are created. If they're not created successfully, create them manually.

## What features will work for your organization based on your configuration?

Before setting up any configuration for Microsoft 365 support integration, review your answers to these questions:

**Question \#1**: Does your ServiceNow environment allow Basic Authentication (access with ServiceNow user credential) for inbound webservice calls?

**Question \#2**: If you have multiple tenants, do you plan to use a single tenant integrated with your ServiceNow environment for Microsoft 365 support integration?

Depending on your answers to the questions above, this table tells you what features are available and how to set up Microsoft 365 support integration. For a description of each feature, see [Microsoft 365 support integration](https://store.servicenow.com/sn_appstore_store.do#!/store/application/6d05c93f1b7784507ddd4227cc4bcb9f).

| **Question \#1 Answer** | **Question \#2 Answer** | **What features are available?** | **Configuration** |Steps                                                                                                        
|---------------------|---------------------|-----------|----------------|
| Yes                 | Yes/No              | Service Health Incidents Recommended Solutions Microsoft service request | [Set up Microsoft 365 support integration with ServiceNow Basic Authentication](servicenow-basic-authentication-v1.md) |
| No                  | Yes                 | Service Health Incidents Recommended Solutions Microsoft service request | [Set up Microsoft 365 support integration with AAD OAuth Token](servicenow-aad-oauth-token-v1.md)                 |
| No                  | No                  | Service Health Incidents Recommended Solutions                           | [Set up Microsoft 365 support integration for Insights ONLY]                |


[Configure Microsoft 365 support integration with Azure AD Auth Token](servicenow-aad-oauth-token-v1.md)
