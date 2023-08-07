---
title: What's new in Microsoft 365 Defender
description: Lists the new features and functionality in Microsoft 365 Defender
keywords: what's new in Microsoft 365 Defender, ga, generally available, capabilities, available, new
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
ms.date: 07/24/2023
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - tier1
ms.topic: conceptual
---

# What's new in Microsoft 365 Defender

Lists the new features and functionality in Microsoft 365 Defender.

RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:

```http
https://learn.microsoft.com/api/search/rss?search=%22Lists+the+new+features+and+functionality+in+Microsoft+365+defender%22&locale=en-us
```

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft Defender for Office 365](../office-365-security/defender-for-office-365-whats-new.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

You can also get product updates and important notifications through the [message center](https://admin.microsoft.com/Adminportal/Home#/MessageCenter).

## August 2023

- (Preview) [Asset rule management - Dynamic rules for devices](./configure-asset-rules.md) is now in public preview. Dynamic rules can help manage device context by assigning tags and device values automatically based on certain criteria.
- (Preview) The [DeviceInfo](advanced-hunting-deviceinfo-table.md) table in advanced hunting now also includes the columns `DeviceManualTags` and `DeviceDynamicTags` in public preview to surface both manually and dynamically assigned tags related to the device you are investigating.

## July 2023
- (GA) The [Attack story](investigate-incidents.md#attack-story) in incidents is now generally available. The attack story provides the full story of the attack and allows incident response teams to view the details and apply remediation.
- A new URL and domain page is now available in Microsoft 365 Defender. The updated URL and domain page provides a single place to view all the information about a URL or a domain, including its reputation, the users who clicked it, the devices that accessed it, and emails where the URL or domain was seen. For details, see [Investigate URLs in Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/investigate-domain).


## June 2023

- (GA) Microsoft Defender Experts for XDR is now generally available. Defender Experts for XDR augments your security operations center by combining automation and Microsoft's security analyst expertise, helping you detect and respond to threats with confidence and improve your security posture. Microsoft Defender Experts for XDR is sold separately from other Microsoft 365 Defender products. If you're a Microsoft 365 Defender customer and are interested in purchasing Defender Experts for XDR, see [Overview of Microsoft Defender Experts for XDR](dex-xdr-overview.md).

## May 2023

- (GA) [Alert tuning](investigate-alerts.md#tune-an-alert) is now generally available. Alert tuning lets you fine-tune alerts to reduce investigation time and focus on resolving high priority alerts. Alert tuning replaces the Alert suppression feature.
- (GA) [Automatic attack disruption](automatic-attack-disruption.md) is now generally available. This capability automatically disrupts human-operated ransomware (HumOR), business email compromise (BEC), and adversary-in-the-middle (AiTM) attacks.
- (Preview) [Custom functions](advanced-hunting-custom-functions.md) are now available in advanced hunting. You can now create your own custom functions so you can reuse any query logic when you hunt in your environment. 

## April 2023
- (GA) The [unified Assets tab in the Incidents page](investigate-incidents.md) is now generally available.
- Microsoft is using a new weather-based naming taxonomy for threat actors. This new naming schema will provide more clarity and will be easier to reference. [Learn more about the new naming taxonomy](/microsoft-365/security/intelligence/microsoft-threat-actor-naming).

## March 2023 

- (Preview) Microsoft Defender Threat Intelligence (Defender TI) is now available in the Microsoft 365 Defender portal.

This change introduces a new navigation menu within the Microsoft 365 Defender portal named **Threat Intelligence**. [Learn more](defender-threat-intelligence.md)
- (Preview) Complete device reports for the [`DeviceInfo` table](advanced-hunting-deviceinfo-table.md) in advanced hunting are now sent *every hour* (instead of the previous daily cadence). In addition, complete device reports are also sent whenever there is a change to any previous report. New columns were also added to the `DeviceInfo` table, along with several improvements to existing data in `DeviceInfo` and [DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md) tables.
- (Preview) Near real-time custom detection is now available for public preview in advanced hunting custom detections. There is a new [Continuous (NRT)](custom-detection-rules.md) frequency, which checks data from events as they are collected and processed in near real-time.
- (Preview) [Behaviors in Microsoft Defender for Cloud Apps](/defender-cloud-apps/behaviors) is now available for public preview. Preview customers can now also hunt for behaviors in advanced hunting using the [BehaviorEntities](advanced-hunting-behaviorentities-table.md) and [BehaviorInfo](advanced-hunting-behaviorinfo-table.md) tables.

## February 2023

- (GA) The [query resources report in advanced hunting](advanced-hunting-limits.md#view-query-resources-report-to-find-inefficient-queries) is now generally available.
- (Preview) The [automatic attack disruption](automatic-attack-disruption.md) capability now disrupts business email compromise (BEC).

## January 2023

- The new version of Microsoft Defender Experts for Hunting report is now available. The report's new interface now lets customers have more contextual details about the suspicious activities Defender Experts have observed in their environments. It also shows which suspicious activities have been continuously trending from month to month. For details, see [Understand the Defender Experts for Hunting report in Microsoft 365 Defender](defender-experts-report.md).

- (GA) Live Response is now generally available for macOS and Linux.

- (GA) Identity timeline is now generally available as part of the new Identity page in Microsoft 365 Defender. The updated User page has a new look, an expanded view of related assets and a new dedicated timeline tab. The timeline represents activities and alerts from the last 30 days. It unifies a user’s identity entries across all available workloads: Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Microsoft Defender for Endpoint. Using the timeline helps you easily focus on a user's activities (or activities performed on them) in specific timeframes.

## December 2022

- (Preview) The new Microsoft 365 Defender role-based access control (RBAC) model is now available for preview. The new RBAC model enables security admins to centrally manage privileges across multiple security solutions within a single system with a greater efficiency, currently supporting Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and Microsoft Defender for Identity. The new model is fully compatible with the existing individual RBAC models currently supported in Microsoft 365 Defender. For more information, see [Microsoft 365 Defender role-based access control (RBAC)](./manage-rbac.md).

## November 2022

- (Preview) Microsoft Defender Experts for XDR (Defender Experts for XDR) is now available for preview. Defender Experts for XDR is a managed detection and response service that helps your security operations centers (SOCs) focus and accurately respond to incidents that matter. It provides extended detection and response for customers who use Microsoft 365 Defender workloads: Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Azure Active Directory (Azure AD). For details, refer to [Expanded Microsoft Defender Experts for XDR preview](dex-xdr-overview.md).
- (Preview) The query resource report is now available in advanced hunting. The report shows your organization's consumption of CPU resources for hunting based on queries that ran in the last 30 days using any of the hunting interfaces. See [View query resources report](advanced-hunting-limits.md#view-query-resources-report-to-find-inefficient-queries) to find inefficient queries.

## October 2022

- (Preview) The new automatic attack disruption capability is now in preview. This capability combines security research insights and advances AI models to automatically contain attacks in progress. Automatic attack disruption also provides more time to security operations centers (SOCs) to fully remediate an attack and limits an attack's impact to organizations. This preview automatically disrupts ransomware attacks.

## August 2022

- (GA) [Microsoft Defender Experts for Hunting](defender-experts-for-hunting.md) is now generally available. If you're a Microsoft 365 Defender customer with a robust security operations center but want Microsoft to help you proactively hunt for threats across endpoints, Office 365, cloud applications, and identity using Microsoft Defender data, then learn more about applying, setting up, and using the service. Defender Experts for Hunting is sold separately from other Microsoft 365 Defender products.
- (Preview) [Guided mode](advanced-hunting-modes.md#get-started-with-guided-hunting-mode) is now available for public preview in advanced hunting. Analysts can now start querying their database for endpoint, identities, email & collaboration, and cloud apps data *without knowing Kusto Query Language (KQL)*.  Guided mode features a friendly, easy-to-use, building-block style of constructing queries through dropdown menus containing available filters and conditions. See [Get started with query builder](advanced-hunting-query-builder.md).

## July 2022

- (Preview) Microsoft Defender Experts for Hunting public preview participants can now look forward to receiving monthly reports to help them understand the threats the hunting service surfaced in their environment, along with the alerts generated by their Microsoft 365 Defender products. For details, refer to [Understand the Defender Experts for Hunting report in Microsoft 365 Defender](defender-experts-report.md).

## June 2022

- (Preview) The [DeviceTvmInfoGathering](advanced-hunting-devicetvminfogathering-table.md) and [DeviceTvmInfoGatheringKB](advanced-hunting-devicetvminfogatheringkb-table.md) tables are now available in the advanced hunting schema. Use these tables to hunt through assessment events in Defender Vulnerability Management including the status of various configurations and attack surface area states of devices.

- The newly introduced Automated investigation & response card in the Microsoft 365 Defender portal provides an overview on pending remediation actions.

The security operations team can view all actions pending approval, and the stipulated time to approve those actions in the card itself. The security team can quickly navigate to the Action center and take appropriate remediation actions. The Automated investigation & response card also has a link to the Full Automation page. This enables the security operations team to effectively manage alerts and complete remediation actions in a timely manner.

## May 2022

- (Preview) In line with the recently announced expansion into a new service category called [Microsoft Security Experts](https://aka.ms/MicrosoftSecurityExperts), we're introducing the availability of [Microsoft Defender Experts for Hunting](defenderexpertsforhuntingprev.md) (Defender Experts for Hunting) for public preview. Defender Experts for Hunting is for customers who have a robust security operations center but want Microsoft to help them proactively hunt for threats across Microsoft Defender data, including endpoints, Office 365, cloud applications, and identity.

## April 2022

- (Preview) [Actions](advanced-hunting-take-action.md) can now be taken on email messages straight from hunting query results. Emails can be moved to other folders or deleted permanently. 
- (Preview) The new [`UrlClickEvents` table](advanced-hunting-urlclickevents-table.md) in advanced hunting can be used to hunt for threats like phishing campaigns and suspicious links based on information coming from Safe Links clicks in email messages, Microsoft Teams, and Office 365 apps.

## March 2022

- (Preview) The incident queue has been enhanced with several features designed to help your investigations. Enhancements include capabilities such as ability to search for incidents by ID or name, specify a custom time range, and others.

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

  The improved [Microsoft 365 Defender](https://security.microsoft.com) portal is now available. This new experience brings together Defender for Endpoint, Defender for Office 365, Defender for Identity, and more into a single portal. This is the new home to manage your security controls. [Learn what's new](microsoft-365-defender-portal.md).

- [Microsoft 365 Defender threat analytics report](threat-analytics.md)

  Threat analytics helps you respond to and minimize the impact of active attacks. You can also learn about attack attempts blocked by Microsoft 365 Defender solutions and take preventive actions that mitigate the risk of further exposure and increase resiliency. As part of the unified security experience, threat analytics is now available for Microsoft Defender for Endpoint and Microsoft Defender for Office E5 license holders.

## March 2021

- [CloudAppEvents table](advanced-hunting-cloudappevents-table.md)

  Find information about events in various cloud apps and services covered by Microsoft Defender for Cloud Apps. This table also includes information previously available in the `AppFileEvents` table.


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
