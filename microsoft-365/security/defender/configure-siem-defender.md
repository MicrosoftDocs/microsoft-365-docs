---
title: Integrate your SIEM tools with Microsoft Defender XDR
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull detections.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
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
ms.date: 10/25/2021
---

# Integrate your SIEM tools with Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

<a name='pull-microsoft-365-defender-incidents-and-streaming-event-data-using-security-information-and-events-management-siem-tools'></a>

## Pull Microsoft Defender XDR incidents and streaming event data using security information and events management (SIEM) tools

> [!NOTE]
>
> - [Microsoft Defender XDR Incidents](incident-queue.md) consists of collections of correlated alerts and their evidence.
> - [Microsoft Defender XDR Streaming API](streaming-api.md) streams event data from Microsoft Defender XDR to event hubs or Azure storage accounts.

Microsoft Defender XDR supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Microsoft Entra ID using the OAuth 2.0 authentication protocol for a registered Microsoft Entra application representing the specific SIEM solution or connector installed in your environment.

For more information, see:

- [Microsoft Defender XDR APIs license and terms of use](api-terms.md)
- [Access the Microsoft Defender XDR APIs](api-access.md)
- [Hello World example](api-hello-world.md)
- [Get access with application context](api-create-app-web.md)

There are two primary models to ingest security information:

1. Ingesting Microsoft Defender XDR incidents and their contained alerts from a REST API in Azure.

2. Ingesting streaming event data either through Azure Event Hubs or Azure Storage Accounts.

Microsoft Defender XDR currently supports the following SIEM solution integrations:

- [Ingesting incidents from the incidents REST API](#ingesting-incidents-from-the-incidents-rest-api)
- [Ingesting streaming event data via Event Hub](#ingesting-streaming-event-data-via-event-hubs)

## Ingesting incidents from the incidents REST API

### Incident schema

For more information on Microsoft Defender XDR incident properties including contained alert and evidence entities metadata, see [Schema mapping](../defender/api-list-incidents.md#schema-mapping).

### Splunk

Using the new, fully supported Splunk Add-on for Microsoft Security that supports:

- Ingesting incidents that contain alerts from the following products, which are mapped onto Splunk's Common Information Model (CIM):

  - Microsoft Defender XDR
  - Microsoft Defender for Endpoint
  - Microsoft Defender for Identity and Microsoft Entra ID Protection
  - Microsoft Defender for Cloud Apps

- Ingesting Defender for Endpoint alerts (from the Defender for Endpoint's Azure endpoint) and updating these alerts

- Support for updating Microsoft Defender XDR Incidents and/or Microsoft Defender for Endpoint Alerts and the respective dashboards has been moved to the Microsoft 365 App for Splunk.

For more information on:

- The Splunk Add-on for Microsoft Security, see the [Microsoft Security Add-on on Splunkbase](https://splunkbase.splunk.com/app/6207/#/overview)

- The Microsoft 365 App for Splunk, see the [Microsoft 365 App on Splunkbase](https://splunkbase.splunk.com/app/3786/)

### Micro Focus ArcSight

The new SmartConnector for Microsoft Defender XDR ingests incidents into ArcSight and maps these onto its Common Event
Framework (CEF).

For more information on the new ArcSight SmartConnector for Microsoft Defender XDR, see [ArcSight Product Documentation](https://community.microfocus.com/cyberres/productdocs/w/connector-documentation/39246/smartconnector-for-microsoft-365-defender).

The SmartConnector replaces the previous FlexConnector for Microsoft Defender for Endpoint that has been deprecated.

### Elastic

Elastic Security combines SIEM threat detection features with endpoint prevention and response capabilities in one solution.
The Elastic integration for Microsoft Defender XDR and Defender for Endpoint enables organizations to leverage incidents and alerts from Defender within Elastic Security to perform investigations and incident response. Elastic correlates this data with other data sources, including cloud, network, and endpoint sources using robust detection rules to find threats quickly.
For more information on the Elastic connector, see: [Microsoft M365 Defender | Elastic docs](https://docs.elastic.co/integrations/m365_defender)

## Ingesting streaming event data via Event Hubs

First you need to stream events from your Microsoft Entra tenant to your Event Hubs or Azure Storage Account. For more information, see [Streaming API](../defender/streaming-api.md).

For more information on the event types supported by the Streaming API, see [Supported streaming event types](../defender/supported-event-types.md).

### Splunk

Use the Splunk Add-on for Microsoft Cloud Services to ingest events from Azure Event Hubs.

For more information on the Splunk Add-on for Microsoft Cloud Services, see the [Microsoft Cloud Services Add-on on Splunkbase](https://splunkbase.splunk.com/app/3110/).

### IBM QRadar

Use the new IBM QRadar Microsoft Defender XDR Device Support Module (DSM) that calls the [Microsoft Defender XDR Streaming API](streaming-api.md) that allows ingesting streaming event data from Microsoft Defender XDR products via Event Hubs or Azure Storage Account. For more information on supported event types, see [Supported event types](supported-event-types.md).

### Elastic

For more information on the Elastic streaming API integration, see [Microsoft M365 Defender | Elastic docs](https://docs.elastic.co/integrations/m365_defender).

## Related articles

[Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
