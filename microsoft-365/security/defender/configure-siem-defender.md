---
title: Integrate your SIEM tools with Microsoft 365 Defender
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull detections.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.product: eADQiWindows 10XVcnh
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

# Integrate your SIEM tools with Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## Pull detections using security information and events management (SIEM) tools

> [!NOTE]
>
> - [Microsoft Defender for Endpoint Alert](../defender-endpoint/alerts.md) is composed from one or more detections.
> - [Microsoft Defender for Endpoint Detection](../defender-endpoint/api-portal-mapping.md) is composed from the suspicious event occurred on the Device and its related Alert details.
> -The Microsoft Defender for Endpoint Alert API is the latest API for alert consumption and contain a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](../defender-endpoint/alerts.md) and [List alerts](../defender-endpoint/get-alerts.md).

Microsoft 365 Defender supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for a registered AAD application representing the specific SIEM solution or connector installed in your environment. 

For more information, see:

- [Microsoft 365 Defender APIs license and terms of use](../defender/api-terms.md)
- [Access the Microsoft 365 Defender APIs](../defender/api-access.md)
- [Hello World example](../defender/api-hello-world.md)
- [Get access with application context](../defender/api-create-app-web.md)

There are two primary models to ingest security information: 

1.  Ingesting Microsoft 365 Defender incidents and their contained alerts from a
    REST API in Azure. 

2.  Ingesting streaming event data either through Azure event hubs or Azure
    storage accounts. 

Microsoft 365 Defender currently supports the following SIEM solution
integrations: 

- [Ingesting incidents from the incidents REST API](#ingesting-incidents-from-the-incidents-rest-api)
- [Ingesting streaming event data via event hub](#ingesting-streaming-event-data-via-event-hubs)

## Ingesting incidents from the incidents REST API

### Incident schema
For more information on Microsoft 365 Defender incident properties including contained alert and evidence entities metadata, see [Schema mapping](../defender/api-list-incidents.md#schema-mapping).

### Splunk

Using the Microsoft 365 Defender Add-on for Splunk that supports: 

- Ingesting incidents that contain alerts from the following products which are mapped onto Splunk's Common Information Model (CIM):  
  - Microsoft 365 Defender 
  - Microsoft Defender for Endpoint 
  - Microsoft Defender for Identity & Azure Active Directory Identity Protection 
  - Microsoft Cloud App Security 

- Updating incidents in Microsoft 365 Defender from within Splunk 

- Ingesting Defender for Endpoint alerts (from the Defender for Endpoint's Azure endpoint) and updating these alerts 

For more information on the Microsoft 365 Defender Add-on for Splunk, see [splunkbase](https://splunkbase.splunk.com/app/4959/).

  

### Micro Focus ArcSight

The new SmartConnector for Microsoft 365 Defender ingests incidents into ArcSight and maps these onto its Common Event
Framework (CEF). 

For more information on the new ArcSight SmartConnector for Microsoft 365 Defender, see [ArcSight Product Documention](https://community.microfocus.com/cyberres/productdocs/w/connector-documentation/39246/smartconnector-for-microsoft-365-defender).

The SmartConnector replaces the previous FlexConnector for Microsoft Defender for Endpoint.
  

### IBM QRadar

>[!NOTE]
>QRadar support for Microsoft 365 Defender is currently based on ingesting  event streaming data. The previous QRadar Microsoft Defender ATP Device Support Module (DSM) is no longer onboarding new customers, and existing customer are encourage to adopt the event streaming API DSM that supports data from all the Microsoft 365 Defender products.   

## Ingesting streaming event data via event hubs

First you need to stream events from your AAD tenant to your event hubs or Azure storage account. For more information, see [Streaming API](../defender/streaming-api.md).

For more information on the event types supported by the Streaming API, see [Supported streaming event types](../defender/supported-event-types.md).

### Splunk
Use the Splunk Add-on for Microsoft Cloud Services to ingest events from Azure event hubs.  


For more information on the Splunk Add-on for Microsoft Cloud Services, see [splunkbase](https://splunkbase.splunk.com/app/3110/).

For more information on the step-by-step walkthrough of configuring event streaming via Azure event hubs to Splunk, see
  

### IBM QRadar
Use the Splunk Microsoft 365 Defender DSM to ingest events from your Azure event hubs. The QRadar DSM and additional information can be
found here: [*link to IBM Knowledge Center*]. 



