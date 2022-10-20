---
title: Integrate your SIEM tools with Microsoft 365 Defender
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull detections.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
---

# Integrate your SIEM tools with Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## Pull Microsoft 365 Defender incidents and streaming event data using security information and events management (SIEM) tools

> [!NOTE]
>
> - [Microsoft 365 Defender Incidents](incident-queue.md) consists of collections of correlated alerts and their evidence.
> - [Microsoft 365 Defender Streaming API](streaming-api.md) streams event data from Microsoft 365 Defender to event hubs or Azure storage accounts.

Microsoft 365 Defender supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for a registered AAD application representing the specific SIEM solution or connector installed in your environment. 

For more information, see:

- [Microsoft 365 Defender APIs license and terms of use](api-terms.md)
- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Hello World example](api-hello-world.md)
- [Get access with application context](api-create-app-web.md)

There are two primary models to ingest security information: 

1.  Ingesting Microsoft 365 Defender incidents and their contained alerts from a REST API in Azure. 

2.  Ingesting streaming event data either through Azure Event Hubs or Azure Storage Accounts. 

Microsoft 365 Defender currently supports the following SIEM solution integrations: 

- [Ingesting incidents from the incidents REST API](#ingesting-incidents-from-the-incidents-rest-api)
- [Ingesting streaming event data via Event Hub](#ingesting-streaming-event-data-via-event-hubs)

## Ingesting incidents from the incidents REST API

### Incident schema
For more information on Microsoft 365 Defender incident properties including contained alert and evidence entities metadata, see [Schema mapping](../defender/api-list-incidents.md#schema-mapping).

### Splunk

Using the new, fully-supported Splunk Add-on for Microsoft Security that supports:

- Ingesting incidents that contain alerts from the following products, which are mapped onto Splunk's Common Information Model (CIM):

  - Microsoft 365 Defender
  - Microsoft Defender for Endpoint
  - Microsoft Defender for Identity and Azure Active Directory Identity Protection
  - Microsoft Defender for Cloud Apps

- Ingesting Defender for Endpoint alerts (from the Defender for Endpoint's Azure endpoint) and updating these alerts

- Support for updating Microsoft 365 Defender Incidents and/or Microsoft Defender for Endpoint Alerts and the respective dashboards has been moved to the Microsoft 365 App for Splunk. 

For more information on:

- The Splunk Add-on for Microsoft Security, see the [Microsoft Security Add-on on Splunkbase](https://splunkbase.splunk.com/app/6207/#/overview)

- The Microsoft 365 App for Splunk, see the [Microsoft 365 App on Splunkbase](https://splunkbase.splunk.com/app/3786/)

### Micro Focus ArcSight

The new SmartConnector for Microsoft 365 Defender ingests incidents into ArcSight and maps these onto its Common Event
Framework (CEF).

For more information on the new ArcSight SmartConnector for Microsoft 365 Defender, see [ArcSight Product Documentation](https://community.microfocus.com/cyberres/productdocs/w/connector-documentation/39246/smartconnector-for-microsoft-365-defender).

The SmartConnector replaces the previous FlexConnector for Microsoft Defender for Endpoint that has been deprecated.
  

## Ingesting streaming event data via Event Hubs

First you need to stream events from your AAD tenant to your Event Hubs or Azure Storage Account. For more information, see [Streaming API](../defender/streaming-api.md).

For more information on the event types supported by the Streaming API, see [Supported streaming event types](../defender/supported-event-types.md).

### Splunk

Use the Splunk Add-on for Microsoft Cloud Services to ingest events from Azure Event Hubs.  

For more information on the Splunk Add-on for Microsoft Cloud Services, see the [Microsoft Cloud Services Add-on on Splunkbase](https://splunkbase.splunk.com/app/3110/).
  

### IBM QRadar
>Use the new IBM QRadar Microsoft 365 Defender Device Support Module (DSM) that calls the [Microsoft 365 Defender Streaming API](streaming-api.md) that allows ingesting streaming event data from Microsoft 365 Defender products via Event Hubs or Azure Storage Account. For more information on supported event types, see [Supported event types](supported-event-types.md).
