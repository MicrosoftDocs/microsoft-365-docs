---
title: Integrate your SIEM tools with Microsoft Defender for Endpoint
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull detections.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Integrate your SIEM tools with Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)


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


Microsoft Defender for Endpoint currently supports the following SIEM solution
integrations: 

- [Ingesting incidents and alerts from the Microsoft 365 Defender and Microsoft Defender for Endpoint incidents and alerts REST APIs](#ingesting-incidents-from-the-microsoft-defender-for-endpoint-alerts-rest-api)
- [Ingesting Microsoft Defender for Endpoint events from the Microsoft 365 Defender event streaming API](#ingesting-microsoft-365-defender-streaming-event-data-via-event-hubs)

## Ingesting incidents and alerts from the Microsoft 365 Defender and Microsoft Defender for Endpoint incidents and alerts REST APIs

### Ingesting incidents from the Microsoft 365 Defender incidents REST API

For more information on the Microsoft 365 Defender incidents API, see [incidents methods and properties](../../defender/api-incident.md).

### Ingesting alerts from the Microsoft Defender for Endpoint alerts REST API

For more information on the Microsoft Defender for Endpoint alerts API, see [alerts methods and properties](alerts.md).

## SIEM tool integration with Microsoft Defender for Endpoint

### Splunk

Using the Microsoft 365 Defender Add-on for Splunk that supports: 

- Ingesting Microsoft Defender for Endpoint alerts 
- Updating alerts in Microsoft Defender for Endpoint from within Splunk 

For more information on the Microsoft 365 Defender Add-on for Splunk, see [splunkbase](https://splunkbase.splunk.com/app/4959/).

### Micro Focus ArcSight

The new SmartConnector for Microsoft 365 Defender ingests incidents that contain Microsoft Defender for Endpoint alerts into ArcSight and maps these onto its Common Event
Framework (CEF). 

For more information on the new ArcSight SmartConnector for Microsoft 365 Defender, see [ArcSight Product documentation](https://community.microfocus.com/cyberres/productdocs/w/connector-documentation/39246/smartconnector-for-microsoft-365-defender).

The SmartConnector replaces the previous FlexConnector for Microsoft 365 Defender.
  
### IBM QRadar

>[!NOTE]
>QRadar support for Microsoft Defender for Endpoint is currently based on ingesting  event streaming data. The previous QRadar Microsoft Defender ATP Device Support Module (DSM) is no longer onboarding new customers, and existing customer are encourage to adopt the event streaming API DSM that supports data from all the Microsoft 365 Defender products.   

## Ingesting Microsoft Defender for Endpoint events from the Microsoft 365 Defender event streaming API

Microsoft 365 Defender streaming event data includes alerts and other events from Microsoft Defender for Endpoints. The events may be streamed to an Azure Storage Account or to Azure Event Hubs. The integration model via event hubs is currently supported by Splunk and IBM QRadar.

For more information, see [Microsoft 365 Defender SIEM integration](../defender/configure-siem-defender.md).
