---
title: "Microsoft 365 support integration with ServiceNow configuration overview"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection:
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

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-description-field-1.png" lightbox="../../media/ServiceNow-guide/servicenow-overview-description-field-1.png" alt-text="Service Health Incidents description field.":::

- Recommended solutions: Descriptions of tasks and incidents are used to recommend precise targeted solutions and relevant articles from Microsoft powered by machine learning. You can also use Search to find other solutions, if needed.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-description-field-2.png" lightbox="../../media/ServiceNow-guide/servicenow-overview-description-field-2.png" alt-text="Recommended solutions description field.":::

- Microsoft service request: Escalate issues to Microsoft support agents and receive status updates for your case.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-service-request.png" lightbox="../../media/ServiceNow-guide/servicenow-overview-service-request.png" alt-text="Service request form.":::

## Prerequisites

### Permissions requirements

To proceed with this guide, make sure that the following permissions are available and configured for your environments during the whole process:

- Azure Active Directory (AAD) admin who can create Azure AD Applications

- ServiceNow admin

- Microsoft 365 tenant admin

### Configuration highlights

To set up **Microsoft 365 support integration**:

- Register applications in Microsoft Azure Active Directory (AAD) for authentication of both outbound and inbound API calls.

- Create ServiceNow entities with Microsoft Azure AD Application for both outbound and inbound data flow.

- Integrate ServiceNow instance with Microsoft support through the Microsoft 365 admin portal.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-integration-diagram.png" alt-text="ServiceNow integration diagram.":::

### Application dependencies in your ServiceNow environments

Permissions required:

- oauth\_entity

- oauth\_entity\_profile

After the Microsoft 365 Support Integration app has been installed, two Application Cross-Scope accesses are created. If they're not created successfully, create them manually.

## Setup the integration

After you've downloaded the app, navigate to the Microsoft 365 setup wizard in your SNOW environment to complete the setup process.
:::image type="content" source="../../media/154124985-76e13e7d-b32e-4741-830b-bbb110d3ecbf.png" alt-text="Snow setup wizard":::

You can learn more about the steps by visiting the following pages:
- If your ServiceNow environment allows Basic Authentication (access with ServiceNow user credential) for inbound webservice calls, then follow instructions in [Set up Microsoft 365 support integration with ServiceNow Basic Authentication](servicenow-basic-authentication.md).
- If your ServiceNow environment does NOT allows Basic Authentication (access with ServiceNow user credential) for inbound webservice calls, then follow instructions in [Set up Microsoft 365 support integration with Azure AD Auth Token](servicenow-aad-oauth-token.md).
  - This configuration will require an SSO tenant in order for the AAD Auth Token to work correctly.

To understand each feature, see [Microsoft 365 support integration](https://store.servicenow.com/sn_appstore_store.do#!/store/application/6d05c93f1b7784507ddd4227cc4bcb9f).

> [!NOTE]
> This app is not supported in regulated or restricted environments.
