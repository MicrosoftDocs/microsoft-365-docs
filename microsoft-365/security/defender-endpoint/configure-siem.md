---
title: Migrate from the MDE SIEM API to the Microsoft 365 Defender alerts API
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
ms.date: 12/18/2020
---

# Migrate from the MDE SIEM API to the Microsoft 365 Defender alerts API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## Use the new Microsoft 365 Defender API for all your alerts

> [!IMPORTANT]
> In February we announced the [Deprecation of the Microsoft Defender for Endpoint (MDE) SIEM API would be postponed](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/deprecating-the-legacy-siem-api-postponed/ba-p/3139643).
After gathering customer feedback, we have learned there are challenges with the timeline originally communicated. As a result, we are making changes to our timeline to improve our customers' experience in migrating to the new API.
The new Microsoft 365 Defender alerts API, released to public preview in MS Graph, is the official and recommended API for customers migrating from the SIEM API. This API will enable customers to work with alerts across all Microsoft 365 Defender products using a single integration. We expect the new API to reach general availability (GA) by Q1 CY 2023.
To provide customers with more time to plan and prepare their migration to the new Microsoft 365 Defender APIs, we have pushed the SIEM API deprecation date to December 31, 2023. This will give customers one year from the expected GA release of Microsoft 365 Defender APIs to migrate from the SIEM API.  At the time of deprecation, the SIEM API will be declared "deprecated" but not "retired." This means that until this date, the SIEM API will continue to function for existing customers. After the deprecation date, the SIEM API will continue to be available, however it will only be supported for security-related fixes.
Effective December 31st, 2024, three years after the original deprecation announcement, we reserve the right to turn off the SIEM API, without additional notice.

For additional information about the new APIs see the blog announcement: [The new Microsoft 365 Defender APIs in Microsoft Graph are now available in public preview!](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/the-new-microsoft-365-defender-apis-in-microsoft-graph-are-now/ba-p/3603099)

API documentation: [Use the Microsoft Graph security API - Microsoft Graph](/graph/api/resources/security-api-overview#alerts-and-incidents-preview)

If you are a customer using the SIEM API, we strongly recommend planning and executing the migration. Listed below is information about the options available to migrate to a supported capability:

1. [Pulling MDE alerts into an external system](#pulling-defender-for-endpoint-alerts-into-an-external-system) (SIEM/SOAR)
1. [Calling the Microsoft 365 Defender alerts API directly](#calling-the-microsoft-365-defender-alerts-api-directly)

Read about the new Microsoft 365 Defender [alerts and incidents API](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/the-new-microsoft-365-defender-apis-in-microsoft-graph-are-now/ba-p/3603099#:~:text=Incidents%3A%20Contain%20incident%20metadata%20and%20a%20collection%20of,richer%20and%20actionable%20information%20for%20your%20automation%20flows.)

### Pulling Defender for Endpoint alerts into an external system

If you are pulling Defender for Endpoint alerts into an external system, there are various supported options to give organizations the flexibility to work with the solution of their choice:

1. **Microsoft Sentinel** is a scalable, cloud-native, SIEM and Security orchestration, automation, and response (SOAR) solution. Delivers intelligent security analytics and threat intelligence across the enterprise, providing a single solution for attack detection, threat visibility, proactive hunting, and threat response. The Microsoft 365 Defender connector allows customers to easily pull in all their incidents and alerts from all Microsoft 365 Defender products. To learn more about the integration, see [Microsoft 365 Defender integration with Microsoft Sentinel](/azure/sentinel/microsoft-365-defender-sentinel-integration).
1. **IBM Security QRadar** SIEM provides centralized visibility and intelligent security analytics to identify and prevent threats and vulnerabilities from disrupting business operations. [QRadar SIEM team has just announced the release of a new DSM](https://community.ibm.com/community/user/security/blogs/gaurav-sharma/2022/10/18/ibm-qradar-and-microsoft-defender) that is integrated with the new Microsoft 365 Defender alerts API to pull in Microsoft Defender for Endpoint alerts. New customers are welcome to take advantage of the new DSM upon release. Learn more about the new DSM and how to easily migrate to it at [Microsoft 365 Defender - IBM Documentation](https://www.ibm.com/docs/en/dsm?topic=microsoft-365-defender).
1. **Splunk SOAR** helps customers orchestrate workflows and automate tasks in seconds to work smarter and respond faster. Splunk SOAR is integrated with the new Microsoft 365 Defender APIs, including the alerts API. For more information, see [Microsoft 365 Defender | Splunkbase](https://splunkbase.splunk.com/app/6563)

Additional integrations are listed in [Technological partners of Microsoft 365 Defender](technological-partners.md), or contact your SIEM / SOAR provider to learn about integrations they may provide.

### Calling the Microsoft 365 Defender alerts API directly

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
- [Microsoft 365 Defender SIEM integration](../defender/configure-siem-defender.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
