---
title: Integrate your SIEM tools with Microsoft Defender for Endpoint
description: Learn how to ingest incidents and alerts, and integrate SIEM tools.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: article
ms.subservice: mde
---

# Integrate your SIEM tools with Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


## Ingest alerts using security information and events management (SIEM) tools

> [!NOTE]
>
> [Microsoft Defender for Endpoint Alert](alerts.md) is composed from one or more suspicious or malicious events that occurred on the device and their related details. The Microsoft Defender for Endpoint Alert API is the latest API for alert consumption and contain a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Microsoft Defender for Endpoint supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for a registered AAD application representing the specific SIEM solution or connector installed in your environment.

For more information, see:

- [Microsoft Defender for Endpoint APIs license and terms of use](api-terms-of-use.md) 
- [Access the Microsoft Defender for Endpoint APIs](apis-intro.md)
- [Hello World example (describes how to register an application in Azure Active Directory)](api-hello-world.md)
- [Get access with application context](exposed-apis-create-app-webapp.md)


Microsoft Defender for Endpoint currently supports the following SIEM solution integrations: 

- [Ingesting incidents and alerts from the Microsoft 365 Defender and Microsoft Defender for Endpoint incidents and alerts REST APIs](#ingesting-incidents-and-alerts-from-the-microsoft-365-defender-and-microsoft-defender-for-endpoint-incidents-and-alerts-rest-apis)
- [Ingesting Microsoft Defender for Endpoint events from the Microsoft 365 Defender event streaming API](#ingesting-microsoft-defender-for-endpoint-events-from-the-microsoft-365-defender-event-streaming-api)

## Ingesting incidents and alerts from the Microsoft 365 Defender and Microsoft Defender for Endpoint incidents and alerts REST APIs

### Ingesting incidents from the Microsoft 365 Defender incidents REST API

For more information on the Microsoft 365 Defender incidents API, see [incidents methods and properties](../defender/api-incident.md).

### Ingesting alerts from the Microsoft Defender for Endpoint alerts REST API

For more information on the Microsoft Defender for Endpoint alerts API, see [alerts methods and properties](alerts.md).

## SIEM tool integration with Microsoft Defender for Endpoint

### Splunk

Using the Microsoft 365 Defender Add-on for Splunk that supports:

- Ingesting Microsoft Defender for Endpoint alerts
- Updating alerts in Microsoft Defender for Endpoint from within Splunk

For more information on the Microsoft 365 Defender Add-on for Splunk, see [splunkbase](https://splunkbase.splunk.com/app/4959/).

### Datadog

Microsoft 365 Defender for Endpoint integration with Datadog supports:

- Ingesting Microsoft Defender for Endpoint alerts and incidents
- Dashboards that enable monitoring metrics across endpoints, threats and vulnerabilities, and software

For more information on the integration, see [Datadog Marketplace](https://app.datadoghq.com/marketplace/app/crest-data-systems-microsoft-defender/support).

### Micro Focus ArcSight

The new SmartConnector for Microsoft 365 Defender ingests incidents that contain alerts from all Microsoft 365 Defender products - including from Microsoft Defender for Endpoint - into ArcSight and maps these onto its Common Event Framework (CEF).

For more information on the new ArcSight SmartConnector for Microsoft 365 Defender, see [ArcSight Product documentation](https://www.microfocus.com/documentation/arcsight/arcsight-smartconnectors/microsoft-365-defender/index.html).

The SmartConnector replaces the previous FlexConnector for Microsoft 365 Defender.

### IBM QRadar

>[!NOTE]
>IBM QRadar integration with Microsoft 365 Defender, which include Microsoft Defender for Endpoint is now supported by the new Microsoft 365 Defender Device Support Module (DSM) that calls the [Microsoft 365 Defender Streaming API](../defender/streaming-api.md) that allows ingesting streaming event data from Microsoft 365 Defender products, including Microsoft Defender for Endpoint. For more information on the new QRadar Microsoft 365 Defender DSM, see [IBM QRadar Product Documentation](https://www.ibm.com/docs/en/dsm?topic=microsoft-365-defender), and for more information on Streaming API supported event types, see [Supported event types](../defender/supported-event-types.md).

New customers are no longer being onboarded using the previous QRadar Microsoft Defender ATP Device Support Module (DSM), and existing customers are encouraged to adopt the new Microsoft 365 Defender DSM as their single point of integration with all Microsoft 365 Defender products.

## Ingesting Microsoft Defender for Endpoint events from the Microsoft 365 Defender event streaming API

Microsoft 365 Defender streaming event data includes alerts and other events from Microsoft Defender for Endpoint and other Microsoft Defender products. These events may be streamed to an Azure Storage Account or to Azure Event Hubs. The integration model via event hubs is currently supported by Splunk and IBM QRadar.

For more information, see [Microsoft 365 Defender SIEM integration](../defender/configure-siem-defender.md).
