---
title: Migrate from the MDE SIEM API to the Microsoft Defender XDR alerts API
description: Learn how to ingest incidents and alerts, and integrate SIEM tools.
search.appverid: met150
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 12/18/2020
---

# Migrate from the MDE SIEM API to the Microsoft Defender XDR alerts API

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

<a name='use-the-new-microsoft-365-defender-api-for-all-your-alerts'></a>

## Use the new Microsoft Defender XDR API for all your alerts

The Microsoft Defender XDR alerts API, released to public preview in MS Graph, is the official and recommended API for customers migrating from the SIEM API. This API enables customers to work with alerts across all Microsoft Defender XDR products using a single integration. We expect the new API to reach general availability (GA) by Q1 CY 2023.

The SIEM API was deprecated on December 31, 2023. It is declared to be "deprecated," but not "retired." This means that until this date, the SIEM API continues to function for existing customers. After the deprecation date, the SIEM API will continue to be available, however it will only be supported for security-related fixes.

Effective December 31, 2024, three years after the original deprecation announcement, we reserve the right to turn off the SIEM API, without further notice.

For additional information about the new APIs, see the blog announcement: [The new Microsoft Defender XDR APIs in Microsoft Graph are now available in public preview!](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/the-new-microsoft-365-defender-apis-in-microsoft-graph-are-now/ba-p/3603099)

API documentation: [Use the Microsoft Graph security API - Microsoft Graph](/graph/api/resources/security-api-overview#alerts-and-incidents-preview)

If you're a customer using the SIEM API, we strongly recommend planning and executing the migration. This article includes information about the options available to migrate to a supported capability:

1. [Pulling MDE alerts into an external system](#pulling-defender-for-endpoint-alerts-into-an-external-system) (SIEM/SOAR).

1. [Calling the Microsoft Defender XDR alerts API directly](#calling-the-microsoft-365-defender-alerts-api-directly).

Read about the new Microsoft Defender XDR [alerts and incidents API](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/the-new-microsoft-365-defender-apis-in-microsoft-graph-are-now/ba-p/3603099#:~:text=Incidents%3A%20Contain%20incident%20metadata%20and%20a%20collection%20of,richer%20and%20actionable%20information%20for%20your%20automation%20flows.)

### Pulling Defender for Endpoint alerts into an external system

If you are pulling Defender for Endpoint alerts into an external system, there are various supported options to give organizations the flexibility to work with the solution of their choice:

1. **Microsoft Sentinel** is a scalable, cloud-native, SIEM and Security orchestration, automation, and response (SOAR) solution. Delivers intelligent security analytics and threat intelligence across the enterprise, providing a single solution for attack detection, threat visibility, proactive hunting, and threat response. The Microsoft Defender XDR connector allows customers to easily pull in all their incidents and alerts from all Microsoft Defender XDR products. To learn more about the integration, see [Microsoft Defender XDR integration with Microsoft Sentinel](/azure/sentinel/microsoft-365-defender-sentinel-integration).

1. **IBM Security QRadar** SIEM provides centralized visibility and intelligent security analytics to identify and prevent threats and vulnerabilities from disrupting business operations. [QRadar SIEM team has just announced the release of a new DSM](https://community.ibm.com/community/user/security/blogs/gaurav-sharma/2022/10/18/ibm-qradar-and-microsoft-defender) that is integrated with the new Microsoft Defender XDR alerts API to pull in Microsoft Defender for Endpoint alerts. New customers are welcome to take advantage of the new DSM upon release. Learn more about the new DSM and how to easily migrate to it at [Microsoft Defender XDR - IBM Documentation](https://www.ibm.com/docs/en/dsm?topic=microsoft-365-defender).

1. **Splunk SOAR** helps customers orchestrate workflows and automate tasks in seconds to work smarter and respond faster. Splunk SOAR is integrated with the new Microsoft Defender XDR APIs, including the alerts API. For more information, see [Microsoft Defender XDR | Splunkbase](https://splunkbase.splunk.com/app/6563)

Other integrations are listed in [Technological partners of Microsoft Defender XDR](technological-partners.md), or contact your SIEM / SOAR provider to learn about integrations they provide.

<a name='calling-the-microsoft-365-defender-alerts-api-directly'></a>

### Calling the Microsoft Defender XDR alerts API directly

The below table provides a mapping between the SIEM API to the Microsoft Defender XDR alerts API:

| SIEM API property | Mapping | Microsoft Defender XDR alert API property |
|:---|:---:|:---|
| `AlertTime` |->| `createdDateTime` |
| `ComputerDnsName` |->| `evidence/deviceEvidence: deviceDnsName` |
| `AlertTitle` |->| `title` |
| `Category` |->| `category` |
| `Severity` |->| `severity` |
| `AlertId` |->| `id` |
| `Actor` |->| `actorDisplayName` |
| `LinkToWDATP` |->| alertWebUrl |
| `IocName` | X | IoC fields not supported |
| `IocValue` | X | IoC fields not supported |
| `CreatorIocName` | X | IoC fields not supported |
| `CreatorIocValue` | X | IoC fields not supported |
| `Sha1` |->| `evidence/fileEvidence/fileDetails: sha1 (or evidence/processEvidence/imageFile: sha1)` |
| `FileName` |->| `evidence/fileEvidence/fileDetails: fileName (or evidence/processEvidence/image: fileName)` |
| `FilePath` |->| `evidence/fileEvidence/fileDetails: filePath (or evidence/processEvidence/image: filePath)` |
| `IPAddress` |->| `evidence/ipEvidence: ipAddress` |
| `URL` | -> | `evidence/urlEvidence: url` |
| `IoaDefinitionId` |->| `detectorId` |
| `UserName` |->| `evidence/userEvidence/userAccount: accountName` |
| `AlertPart` | X | Obsolete (Defender for Endpoint alerts are atomic/complete that are updatable, while the SIEM API were immutable records of detections) |
| `FullId` | X | IoC fields not supported |
| `LastProcessedTimeUtc` |->| `lastActivityDateTime` |
| `ThreatCategory` |->| `mitreTechniques []` |
| `ThreatFamilyName` |->| `threatFamilyName` |
| `ThreatName` |->| `threatDisplayName` |
| `RemediationAction` |->| `evidence: remediationStatus` |
| `RemediationIsSuccess` |->| `evidence: remediationStatus (implied)` |
| `Source` |->| `detectionSource (use with serviceSource: microsoftDefenderForEndpoint)` |
| `Md5` | X | Not supported |
| `Sha256` |->| `evidence/fileEvidence/fileDetails: sha256 (or evidence/processEvidence/imageFile: sha256)` |
| `WasExecutingWhileDetected` |->| `evidence/processEvidence: detectionStatus` |
| `UserDomain` |->| `evidence/userEvidence/userAccount: domainName` |
| `LogOnUsers` |->| `evidence/deviceEvidence: loggedOnUsers []` |
| `MachineDomain` |->| Included in `evidence/deviceEvidence: deviceDnsName` |
| `MachineName` |->| Included in `evidence/deviceEvidence: deviceDnsName` |
| `InternalIPV4List` | X | Not supported |
| `InternalIPV6List` | X | Not supported |
| `FileHash` |->| Use `sha1` or `sha256` |
| `DeviceID` |->| `evidence/deviceEvidence: mdeDeviceId` |
| `MachineGroup` |->| `evidence/deviceEvidence: rbacGroupName` |
| `Description` |->| `description` |
| `DeviceCreatedMachineTags` |->| `evidence: tags [] (for deviceEvidence)` |
| `CloudCreatedMachineTags` |->| `evidence: tags [] (for deviceEvidence)` |
| `CommandLine` | -> | `evidence/processEvidence: processCommandLine` |
| `IncidentLinkToWDATP` |->| `incidentWebUrl` |
| `ReportId` | X | Obsolete (Defender for Endpoint alerts are atomic/complete that are updatable, while the SIEM API were immutable records of detections) |
| `LinkToMTP` |->| `alertWebUrl` |
| `IncidentLinkToMTP` |->| `incidentWebUrl` |
| `ExternalId` | X | Obsolete |
| `IocUniqueId` | X | IoC fields not supported |

## Ingest alerts using security information and events management (SIEM) tools

> [!NOTE]
>
> [Microsoft Defender for Endpoint Alert](alerts.md) is composed from one or more suspicious or malicious events that occurred on the device and their related details. The Microsoft Defender for Endpoint Alert API is the latest API for alert consumption and contains a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Microsoft Defender for Endpoint supports security information and event management (SIEM) tools ingesting information from your enterprise tenant in Microsoft Entra ID using the OAuth 2.0 authentication protocol for a registered Microsoft Entra application representing the specific SIEM solution or connector installed in your environment.

For more information, see:

- [Microsoft Defender for Endpoint APIs license and terms of use](api-terms-of-use.md)
- [Access the Microsoft Defender for Endpoint APIs](apis-intro.md)
- [Hello World example (describes how to register an application in Microsoft Entra ID)](api-hello-world.md)
- [Get access with application context](exposed-apis-create-app-webapp.md)
- [Microsoft Defender XDR SIEM integration](../defender/configure-siem-defender.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
