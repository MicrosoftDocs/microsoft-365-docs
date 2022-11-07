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
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
---

# Integrate your SIEM tools with Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Ingest alerts using security information and events management (SIEM) tools

> [!NOTE]
>
> [Microsoft Defender for Endpoint Alert](alerts.md) is composed from one or more suspicious or malicious events that occurred on the device and their related details. The Microsoft Defender for Endpoint Alert API is the latest API for alert consumption and contains a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Microsoft Defender for Endpoint supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for a registered AAD application representing the specific SIEM solution or connector installed in your environment.

For more information, see:

- [Microsoft Defender for Endpoint APIs license and terms of use](api-terms-of-use.md) 
- [Access the Microsoft Defender for Endpoint APIs](apis-intro.md)
- [Hello World example (describes how to register an application in Azure Active Directory)](api-hello-world.md)
- [Get access with application context](exposed-apis-create-app-webapp.md)

## Use the new Microsoft 365 Defender API for all your alerts

> [!IMPORTANT]
> Information in this section relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The new Microsoft 365 Defender alerts API enables customers to work with alerts across all products within Microsoft 365 Defender using a single integration. The alerts API enumerates alerts from Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Microsoft Purview Data Loss Prevention.

The new central API provides customers with the best possible experience across Microsoft Defender products. The Microsoft Defender for Endpoint SIEM API will be deprecated over time, but Microsoft will provide organizations ample time to plan and prepare their migration to the new Microsoft 365 Defender APIs.

You can find more information on the timeline and additional details about the new API in the blog post [The new Microsoft 365 Defender APIs in Microsoft Graph are now available in public preview!](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/the-new-microsoft-365-defender-apis-in-microsoft-graph-are-now/ba-p/3603099).

Read about the new Microsoft 365 Defender [alerts and incidents API](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/the-new-microsoft-365-defender-apis-in-microsoft-graph-are-now/ba-p/3603099#:~:text=Incidents%3A%20Contain%20incident%20metadata%20and%20a%20collection%20of,richer%20and%20actionable%20information%20for%20your%20automation%20flows.)

If you are currently using the SIEM API, we recommend starting to plan for your migration. The following sections provide details about the different options that are available and how to get started today.

1. [Pulling Defender for Endpoint alerts into an external system](#pulling-defender-for-endpoint-alerts-into-an-external-system) SIEM/SOAR
1. [Calling the Microsoft 365 Defender alerts API directly](#calling-the-microsoft-365-defender-alerts-api-directly)

### Pulling Defender for Endpoint alerts into an external system

If you are pulling Defender for Endpoint alerts into an external system, there are various supported options to give organizations the flexibility to work with the solution of their choice:

1. **Microsoft Sentinel** is a scalable, cloud-native, SIEM and Security orchestration, automation, and response (SOAR) solution. Delivers intelligent security analytics and threat intelligence across the enterprise, providing a single solution for attack detection, threat visibility, proactive hunting, and threat response. The Microsoft 365 Defender connector allows customers to easily pull in all their incidents and alerts from all Microsoft 365
1. **IBM Security QRadar** SIEM provides centralized visibility and intelligent security analytics to identify and prevent threats and vulnerabilities from disrupting business operations. [QRadar SIEM team has just announced the release of a new DSM](https://community.ibm.com/community/user/security/blogs/gaurav-sharma/2022/10/18/ibm-qradar-and-microsoft-defender) that is integrated with the new Microsoft 365 Defender alerts API to pull in Microsoft Defender for Endpoint alerts. New customers are welcome to take advantage of the new DSM upon release. Learn more about the new DSM and how to easily migrate to it at [Microsoft 365 Defender - IBM Documentation](https://www.ibm.com/docs/en/dsm?topic=microsoft-365-defender).
1. **Splunk SOAR** helps customers orchestrate workflows and automate tasks in seconds to work smarter and respond faster. Spunk SOAR is integrated with the new Microsoft 365 Defender APIs, including the alerts API. For more information, see [Microsoft 365 Defender | Splunkbase](https://splunkbase.splunk.com/app/6563)
1. **Defender products** To learn more about the integration, see [Microsoft 365 Defender integration with Microsoft Sentinel](/azure/sentinel/microsoft-365-defender-sentinel-integration).

Additional integrations are listed in [Technological partners of Microsoft 365 Defender](technological-partners.md), or contact your SIEM / SOAR provider to learn about integrations they may provide.

### Calling the Microsoft 365 Defender alerts API directly

#### Migrate to the new Microsoft 365 Defender alerts API

The below table provides a mapping between the SIEM API to the Microsoft 365 Defender alerts API:

| SIEM API property | Mapping | Microsoft 365 Defender alert API property |
|:---|:---:|:---|
| AlertTime |->| createdDateTime |
| ComputerDnsName |->| evidence/deviceEvidence: deviceDnsName |
| AlertTitle |->| title |
| Category |->| category |
| Severity |->| severity |
| AlertId |->| id |
| Actor |->| actorDisplayName |
| LinkToWDATP |->| alertWebUrl |
| IocName | X | IoC fields not supported |
| IocValue | X | IoC fields not supported |
| CreatorIocName | X | IoC fields not supported |
| CreatorIocValue | X | IoC fields not supported |
| Sha1 |->| evidence/fileEvidence/fileDetails: sha1 (or evidence/processEvidence/imageFile: sha1) |
| FileName |->| evidence/fileEvidence/fileDetails: fileName (or evidence/processEvidence/image: fileName) |
| FilePath |->| evidence/fileEvidence/fileDetails: filePath (or evidence/processEvidence/image: filePath) |
| IPAddress |->| evidence/ipEvidence: ipAddress |
| URL | -> | evidence/urlEvidence: url |
| IoaDefinitionId |->| detectorId |
| UserName |->| evidence/userEvidence/userAccount: accountName |
| AlertPart | X | Obsolete (MDE alerts are atomic/complete that are updatable, while the SIEM API were immutable records of detections) |
| FullId | X | IoC fields not supported |
| LastProcessedTimeUtc |->| lastActivityDateTime |
| ThreatCategory |->| mitreTechniques [] |
| ThreatFamilyName |->| threatFamilyName |
| ThreatName |->| threatDisplayName |
| RemediationAction |->| evidence: remediationStatus |
| RemediationIsSuccess |->| evidence: remediationStatus (implied) |
| Source |->| detectionSource (use with serviceSource: microsoftDefenderForEndpoint) |
| Md5 | X | Not supported |
| Sha256 |->| evidence/fileEvidence/fileDetails: sha256 (or evidence/processEvidence/imageFile: sha256) |
| WasExecutingWhileDetected |->| evidence/processEvidence: detectionStatus |
| UserDomain |->| evidence/userEvidence/userAccount: domainName |
| LogOnUsers |->| evidence/deviceEvidence: loggedOnUsers [] |
| MachineDomain |->| Included in evidence/deviceEvidence: deviceDnsName |
| MachineName |->| Included in evidence/deviceEvidence: deviceDnsName |
| InternalIPV4List | X | Not supported |
| InternalIPV6List | X | Not supported |
| FileHash |->| Use sha1 or sha256 |
| DeviceID |->| evidence/deviceEvidence: mdeDeviceId |
| MachineGroup |->| evidence/deviceEvidence: rbacGroupName |
| Description |->| description |
| DeviceCreatedMachineTags |->| evidence: tags [] (for deviceEvidence) |
| CloudCreatedMachineTags |->| evidence: tags [] (for deviceEvidence) |
| CommandLine | -> | evidence/processEvidence: processCommandLine |
| IncidentLinkToWDATP |->| incidentWebUrl |
| ReportId | X | Obsolete (MDE alerts are atomic/complete that are updatable, while the SIEM API were immutable records of detections) |
| LinkToMTP |->| alertWebUrl |
| IncidentLinkToMTP |->| incidentWebUrl |
| ExternalId | X | Obsolete |
| IocUniqueId | X | IoC fields not supported |

## Generally available SIEM solution integrations

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

For more information on the Microsoft 365 Defender Add-on for Splunk, see [splunkbase](https://splunkbase.splunk.com/app/6207/).

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
