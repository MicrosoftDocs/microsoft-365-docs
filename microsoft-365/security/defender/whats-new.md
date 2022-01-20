---
title: What's new in Microsoft 365 Defender
description: Lists the new features and functionality in Microsoft 365 Defender
keywords: what's new in Microsoft 365 Defender, ga, generally available, capabilities, available, new
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
ms.technology: m365d
---

# What's new in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](m365d-evaluation.md?ocid=cx-docs-MTPtriallab) or [run your pilot project in production](m365d-pilot.md?ocid=cx-evalpilot).

The following features are in preview or generally available (GA) in the latest release of Microsoft 365 Defender.

RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:

```http
https://docs.microsoft.com/api/search/rss?search=%22Lists+the+new+features+and+functionality+in+Microsoft+365+defender%22&locale=en-us
```

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft Defender for Office 365](../office-365-security/whats-new-in-defender-for-office-365.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Cloud App Security](/cloud-app-security/release-notes)

## December 2021

- (GA) The `DeviceTvmSoftwareEvidenceBeta` table was added on a short-term basis in advanced hunting to allow you to view evidence of where a specific software was detected on a device.

## November 2021

- (Preview) The application governance add-on feature to Defender for Cloud Apps is now available in Microsoft 365 Defender. App governance provides a security and policy management capability designed for OAuth-enabled apps that access Microsoft 365 data through Microsoft Graph APIs. App governance delivers full visibility, remediation, and governance into how these apps and their users access, use, and share your sensitive data stored in Microsoft 365 through actionable insights and automated policy alerts and actions. [Learn more about application governance](/cloud-app-security/app-governance-manage-app-governance).
- (Preview) The [advanced hunting](advanced-hunting-overview.md) page now has multitab support, smart scrolling, streamlined schema tabs, quick edit options for queries, a query resource usage indicator, and other improvements to make querying smoother and easier to fine-tune.
- (Preview) You can now use the [link to incident](advanced-hunting-link-to-incident.md) feature to include events or records from the advanced hunting query results right into a new or existing incident that you are investigating.

## October 2021

- (GA) In advanced hunting, more columns were added in the [CloudAppEvents](advanced-hunting-cloudappevents-table.md) table. You can now include `AccountType`, `IsExternalUser`, `IsImpersonated`, `IPTags`, `IPCategory`, and `UserAgentTags` to your queries.

## September 2021

- (GA) Microsoft Defender for Office 365 event data is available in the Microsoft 365 Defender event streaming API. You can see the availability and status of event types in the [Supported Microsoft 365 Defender event types in streaming API](supported-event-types.md).
- (GA) Microsoft Defender for Office 365 data available in advanced hunting is now generally available.
- (GA) Assign incidents and alerts to user accounts

  You can assign an incident, and all the alerts associated with it, to a user account from **Assign to:** on the **Manage incident** pane of an incident or the **Manage alert** pane of an alert.

## August 2021

- (Preview) Microsoft Defender for Office 365 data available in advanced hunting

  New columns in email tables can provide more insight into email-based threats for more thorough investigations using advanced hunting. You can now include the `AuthenticationDetails` column in [EmailEvents](./advanced-hunting-emailevents-table.md), `FileSize` in [EmailAttachmentInfo](./advanced-hunting-emailattachmentinfo-table.md), and `ThreatTypes` and `DetectionMethods` in [EmailPostDeliveryEvents](./advanced-hunting-emailpostdeliveryevents-table.md) tables.

- (Preview) Incident graph

  A new **Graph** tab on the **Summary** tab of an incident shows the full scope of the attack, how the attack spread through your network over time, where it started, and how far the attacker went.

## July 2021

- [Professional services catalog](https://sip.security.microsoft.com/interoperability/professional_services)

  Enhance the detection, investigation, and threat intelligence capabilities of the platform with supported partner connections.

## June 2021

- (Preview) [View reports per threat tags](threat-analytics.md#view-reports-per-threat-tags)

  Threat tags help you focus on specific threat categories and review the most relevant reports.

- (Preview) [Streaming API](../defender-endpoint/raw-data-export.md)

  Microsoft 365 Defender supports streaming all the events available through Advanced Hunting to an Event Hubs and/or Azure storage account.

- (Preview) [Take action in advanced hunting](advanced-hunting-take-action.md)

  Quickly contain threats or address compromised assets that you find in [advanced hunting](advanced-hunting-overview.md).

- (Preview) [In-portal schema reference](advanced-hunting-schema-tables.md#get-schema-information-in-the-security-center)

  Get information about advanced hunting schema tables directly in the security center. In addition to table and column descriptions, this reference includes supported event types (`ActionType` values) and sample queries.

- (Preview) [DeviceFromIP() function](advanced-hunting-devicefromip-function.md)

  Get information about which devices have been assigned a specific IP address or addresses at a given time range.

## May 2021

- [New alert page in the Microsoft 365 Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender/easily-find-anomalies-in-incidents-and-alerts/ba-p/2339243)

  Provides enhanced information for the context into an attack. You can see which other triggered alert caused the current alert and all the affected entities and activities involved in the attack, including files, users and mailboxes. See [Investigate alerts](/microsoft-365/security/defender/investigate-alerts) for more information.

- [Trend graph for incidents and alerts in the Microsoft 365 Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender/new-alert-page-for-microsoft-365-defender-incident-detections/ba-p/2350425)

  Determine if there are several alerts for a single incident or that your organization is under attack with several different incidents. See [Prioritize incidents](/microsoft-365/security/defender/incident-queue) for more information.

## April 2021

- Microsoft 365 Defender

  The improved [Microsoft 365 Defender](https://security.microsoft.com) portal is now available. This new experience brings together Defender for Endpoint, Defender for Office 365, Defender for Identity, and more into a single portal. This is the new home to manage your security controls. [Learn what's new](./microsoft-365-defender.md#the-microsoft-365-defender-portal).

- [Microsoft 365 Defender threat analytics report](threat-analytics.md)

  Threat analytics helps you respond to and minimize the impact of active attacks. You can also learn about attack attempts blocked by Microsoft 365 Defender solutions and take preventive actions that mitigate the risk of further exposure and increase resiliency. As part of the unified security experience, threat analytics is now available for Microsoft Defender for Endpoint and Microsoft Defender for Office E5 license holders.

## March 2021

- [CloudAppEvents table](advanced-hunting-cloudappevents-table.md)

  Find information about events in various cloud apps and services covered by Microsoft Cloud App Security. This table also includes information previously available in the `AppFileEvents` table.

## February 2021

- (Preview) The enhanced [Microsoft 365 Defender portal (https://security.microsoft.com)](https://security.microsoft.com) is now available in public preview. This new experience brings Defender for Endpoint and Defender for Office 365 to the center. [Learn more about what's changed](microsoft-365-defender.md#the-microsoft-365-defender-portal).

- **[(Preview) Microsoft 365 Defender APIs](api-overview.md)** - The top-level Microsoft 365 Defender APIs will enable you to automate workflows based on the shared incident and advanced hunting tables.
