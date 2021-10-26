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


## Pull detections using security information and events management (SIEM) tools

> [!NOTE]
>
> - [Microsoft Defender for Endpoint Alert](alerts.md) is composed from one or more detections.
> - [Microsoft Defender for Endpoint Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Device and its related Alert details.
> -The Microsoft Defender for Endpoint Alert API is the latest API for alert consumption and contain a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Microsoft Defender for Endpoint supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for a registered AAD application representing the specific SIEM solution or connector installed in your environment. 

For more information, see:

- [Microsoft Defender for Endpoint APIs license and terms of use](api-terms-of-use.md) 
- [Access the Microsoft Defender for Endpoint APIs](apis-intro.md)
- [Hello World example (describes how to register an application in Azure Active Directory)](api-hello-world.md)
- [Get access with application context](exposed-apis-create-app-webapp.md)


Microsoft Defender for Endpoint currently supports the following SIEM solution
integrations: 

- [Ingesting incidents from the Microsoft Defender for Endpoint alerts REST API](#ingesting-incidents-from-the-microsoft-defender-for-endpoint-alerts-rest-api)
- [Ingesting streaming event data via event hub](#ingesting-microsoft-365-defender-streaming-event-data-via-event-hubs)

## Ingesting incidents from the Microsoft Defender for Endpoint alerts REST API

### Incident schema
For more information on Microsoft 365 Defender alert resource type, see [Schema mapping](alerts.md).

### Splunk

Using the Microsoft Defender for Endpoint Add-on for Splunk that supports: 

- Ingesting Microsoft Defender for Endpoint alerts 
- Updating alerts in Microsoft Defender for Endpoint from within Splunk 

For more information on the Microsoft 365 Defender Add-on for Splunk, see [splunkbase](https://splunkbase.splunk.com/app/4959/).

  

### Micro Focus ArcSight

The new SmartConnector for Microsoft Defender for Endpoint ingests incidents into ArcSight and maps these onto its Common Event
Framework (CEF). 

For more information on the new ArcSight SmartConnector for Microsoft 365 Defender, see [ArcSight Product Documenation](https://community.microfocus.com/cyberres/productdocs/w/connector-documentation/39246/smartconnector-for-microsoft-365-defender).

The SmartConnector replaces the previous FlexConnector for Microsoft Defender for Endpoint.
  

### IBM QRadar

>[!NOTE]
>QRadar support for Microsoft Defender for Endpoint is currently based on ingesting  event streaming data. The previous QRadar Microsoft Defender ATP Device Support Module (DSM) is no longer onboarding new customers, and existing customer are encourage to adopt the event streaming API DSM that supports data from all the Microsoft 365 Defender products.   

## Ingesting Microsoft 365 Defender streaming event data via event hubs
This includes alert metadata from Microsoft Defender for Endpoint via event hubs. This integration model is currently supported by Splunk and IBM QRadar.


For more information, see [ Microsoft 365 Defender SIEM integration](../defender/configure-siem-defender.md).

























Defender for Endpoint currently supports the following specific SIEM solution tools through a dedicated SIEM integration model:

- IBM QRadar
- Micro Focus ArcSight

Other SIEM solutions (such as Splunk, RSA NetWitness) are supported through a different integration model based on the new Alert API. For more information, view the [Partner application](https://securitycenter.microsoft.com/interoperability/partners) page and select the Security Information and Analytics section for full details.

To use either of these supported SIEM tools, you'll need to:

- [Enable SIEM integration in Defender for Endpoint](enable-siem-integration.md)
- Configure the supported SIEM tool:
  - [Configure Micro Focus ArcSight to pull Defender for Endpoint detections](configure-arcsight.md)
  - Configure IBM QRadar to pull Defender for Endpoint detections For more information, see [IBM Knowledge Center](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/com.ibm.dsm.doc/c_dsm_guide_MS_Win_Defender_ATP_overview.html?cp=SS42VS_7.3.1).

For more information on the list of fields exposed in the Detection API, see [Defender for Endpoint Detection fields](api-portal-mapping.md).
