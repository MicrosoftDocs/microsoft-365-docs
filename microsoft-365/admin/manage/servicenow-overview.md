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

The following article applies to the Microsoft 365 support integration app with a minimum version of **2.0.0**.

For version 1.0.11 and earlier, see [Microsoft 365 support integration overview v1](../manage/servicenow-overview-v1.md).

Microsoft 365 support integration enables you to integrate Microsoft 365 help, support, and service health with your ServiceNow instances. You can research Microsoft known and reported issues, resolve incidents, complete tasks by using Microsoft recommended solutions, and, if necessary, escalate to Microsoft human-assisted support.

For the Microsoft 365 support integration app, go to the [ServiceNow Store](https://store.servicenow.com/sn_appstore_store.do#!/store/application/6d05c93f1b7784507ddd4227cc4bcb9f).

> [!NOTE]
> This app is not supported in regulated or restricted environments.
>
> This app is only supported in English.

## Key features

These are the key features you'll get with the Microsoft 365 support integration app in ServiceNow:

- Service Health Incidents: Information about known Microsoft service health incidents, including user impact, scope, status, and next expected update. Using machine learning, ServiceNow incidents are matched to Microsoft service health incidents based on the short description field.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow_service_health_incidents.png" lightbox="../../media/ServiceNow-guide/servicenow_service_health_incidents.png" alt-text="Service Health Incidents description field.":::

- Recommended solutions: Descriptions of tasks and incidents are used to recommend precise targeted solutions and relevant articles from Microsoft powered by machine learning. You can also use Search to find other solutions, if needed.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow_recommended_articles.png" lightbox="../../media/ServiceNow-guide/servicenow_recommended_articles.png" alt-text="Recommended solutions description field.":::

- Microsoft service request: Escalate issues to Microsoft support agents and receive status updates for your request. With an updated workflow, you can now create a service request by adding your preferred title, description, and contact information similar to what is found in the Microsoft 365 admin portal.

    :::image type="content" source="../../media/ServiceNow-guide/SNOW_escalation.png" lightbox="../../media/ServiceNow-guide/SNOW_escalation.png" alt-text="Screenshot that shows the recommended solutions description field.":::

    :::image type="content" source="../../media/ServiceNow-guide/SNOW_escalation2.png" lightbox="../../media/ServiceNow-guide/SNOW_escalation2.png" alt-text="Screenshot that shows the recommended solutions description field.":::

## Prerequisites

### Permissions requirements

To proceed with this guide, make sure that the following permissions are available and configured for your environments during the entire process:

- Azure Active Directory (AAD) admin who can create Azure AD Applications

- ServiceNow admin

- Microsoft 365 tenant admin

### Configuration highlights

To set up Microsoft 365 support integration:

- Register application in Microsoft Azure Active Directory (AAD) for authentication of both outbound and inbound API calls.

- Create ServiceNow entities with Microsoft Azure AD Application for both outbound and inbound data flow.

- Integrate ServiceNow instance with Microsoft support through the Microsoft 365 admin portal.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-overview-integration-diagram.png" alt-text="ServiceNow integration diagram.":::

### Application dependencies in your ServiceNow environments

Permissions required:

- oauth\_entity

- oauth\_entity\_profile

After the Microsoft 365 support integration app has been installed, two application cross-scope accesses are created. If they're not created successfully, create them manually.

## Set up the integration

After you've downloaded the app, go to the Microsoft 365 setup wizard in your ServiceNow environment to complete the setup process.

To open the setup wizard, type **Microsoft 365** in the ServiceNow navigator and select **Setup**.

:::image type="content" source="../../media/ServiceNow-guide/servicenow-wizard-start-setup.png" alt-text="Start setup wizard.":::

- If you want to get started without setting up the Microsoft 365 support integration app, you can select the option to **Continue without any setup**. This option continues to provide basic recommended solutions.
- To set up the application with full functionality, select **Start setup**, and then follow the instructions in [Integrate Microsoft 365 with ServiceNow Virtual Agent](../manage/servicenow-virtual-agent-integration.md).

> [!IMPORTANT]
> The Microsoft 365 support integration app occasionally prompts users for feedback about the app. If you don’t want users to be prompted for feedback, turn off this functionality in the app settings. For more information about Microsoft feedback policies, see [Learn about Microsoft feedback for your organization](../misc/feedback-user-control.md). To change the feedback settings, follow the steps in the installation process.
