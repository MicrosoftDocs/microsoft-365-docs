---
title: What's new in Microsoft Defender XDR
description: Lists the new features and functionality in Microsoft Defender XDR
keywords: what's new in Microsoft Defender XDR, ga, generally available, capabilities, available, new
search.appverid: met150
ms.service: defender-xdr
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
ms.date: 01/30/2024
manager: dansimp
audience: ITPro
ms.collection:
- M365-security-compliance
- tier1
ms.topic: conceptual
---

# What's new in Microsoft Defender XDR

Lists the new features and functionality in Microsoft Defender XDR.

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft Defender for Office 365](../office-365-security/defender-for-office-365-whats-new.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

You can also get product updates and important notifications through the [message center](https://admin.microsoft.com/Adminportal/Home#/MessageCenter).


## February 2024

- (GA) **Dark mode** is now available in the Microsoft Defender portal. In the Defender portal, on the top right-hand side of the homepage, select **Dark mode**. Select **Light mode** to change the color mode back to the default.
- (GA) **Assigning severity to incidents**, **assigning an incident to a group**, and the ***go hunt*** option from the attack story graph are now generally available. Guides to learn how to [assign or change incident severity](manage-incidents.md#assign-or-change-incident-severity) and [assign an incident to a group](manage-incidents.md#assign-an-incident) are in the [Manage incidents](manage-incidents.md) page. Learn how you can use the *go hunt* option by exploring [attack story](investigate-incidents.md#attack-story).

- (Preview) **[Custom detection rules in Microsoft Graph security API](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#custom-detections)** are now available.  Create advanced hunting custom detection rules specific to your org to proactively monitor for threats and take action.

>[!Warning]
> The 2024-02 platform release causes inconsistent results for device control customers using removable media policies with disk/device-level access only (masks that are less of equal to 7). The enforcement might not work as expected. 
> To mitigate this issue, rolling back to the previous version of the Defender platform is recommended.

## January 2024

- **Defender Boxed is available for a limited period of time**. Defender Boxed highlights your organization's security successes, improvements, and response actions during 2023. Take a moment to celebrate your organization's improvements in security posture, overall response to detected threats (manual and automatic), blocked emails, and more. 

   - Defender Boxed opens automatically when you go to the **Incidents** page in the Microsoft Defender portal. 
   - If you close Defender Boxed and you want to reopen it, in the Microsoft Defender portal, go to **Incidents**, and then select **Your Defender Boxed**.
   - Act quickly! Defender Boxed is available only for a short period of time.

- Defender Experts for XDR now lets you [receive managed response notifications and updates using Teams](get-started-xdr.md#receive-managed-response-notifications-and-updates-in-microsoft-teams). You can also chat with Defender Experts regarding incidents where managed response is issued.

- (GA) New functionality in the **incident queue's available filters** is now generally available. Prioritize incidents according to your preferred filters by creating filter sets and saving filter queries. Learn more about incident queue filters in [Available filters](incident-queue.md#available-filters).

- (GA) Microsoft Defender for Cloud alerts integration with Microsoft Defender XDR is now generally available. Learn more about the integration in [Microsoft Defender for Cloud in Microsoft Defender XDR](microsoft-365-security-center-defender-cloud.md).

- (GA) **Activity log** is now available within an incident page. Use the activity log to view all audits and comments, and add comments to the log of an incident. For details, see [Activity log](manage-incidents.md#activity-log). 

- (Preview) **[Query history](advanced-hunting-query-history.md) in advanced hunting** is now available. You can now rerun or refine queries you have run recently. Up to 30 queries in the past 28 days can be loaded in the query history pane.

- (Preview) Additional features you can use to **[drill down](advanced-hunting-query-results.md#drill-down-from-query-results)** further from your query results in advanced hunting are now available.

## December 2023

- **Microsoft Defender XDR Unified role-based access control (RBAC)** is now generally available. Unified (RBAC) allows administrators to manage user permissions across different security solutions from a single, centralized location. This offering is also available to GCC Moderate customers. To learn more, see [Microsoft Defender XDR Unified role-based access control (RBAC)](manage-rbac.md).

- Microsoft Defender Experts for XDR now lets you [exclude devices](get-started-xdr.md#exclude-devices-from-remediation) from remediation actions taken by our experts and instead get remediation guidance for those entities.

- The Microsoft Defender portal's incident queue has updated filters, search, and added a new function where you can create your own filter sets. For details, see [Available filters](incident-queue.md#available-filters).

- You can now assign incidents to a user group or another user. For details, see [Assign an incident](manage-incidents.md#assign-an-incident).

## November 2023

- Microsoft Defender Experts for Hunting now lets you generate sample Defender Experts Notifications so you can start experiencing the service without having to wait for an actual critical activity to happen in your environment. [Learn more](onboarding-defender-experts-for-hunting.md#generate-sample-defender-experts-notifications)

- (Preview) Microsoft Defender for Cloud alerts are now integrated in Microsoft Defender XDR. Defender for Cloud alerts are automatically correlated to incidents and alerts in the Microsoft Defender portal and cloud resource assets can be viewed in the incidents and alerts queues. Learn more about the [Defender for Cloud integration](microsoft-365-security-center-defender-cloud.md) in Microsoft Defender XDR.

- (Preview) Microsoft Defender XDR now has built in [deception technology](deception-overview.md) to protect your environment from high-impact attacks that use human-operated lateral movement. Learn more about the deception feature and how to [configure the deception feature](configure-deception.md).

- Microsoft Defender Experts for XDR now lets you perform your own [readiness assessment](get-started-xdr.md#prepare-your-environment-for-the-defender-experts-service) when preparing the environment for the Defender Experts for XDR service.

## October 2023

- (Preview) You can now get email notifications for manual or automated actions done in Microsoft Defender XDR. Learn how to configure email notifications for manual or automated response actions performed in the portal. For details, see [Get email notifications for response actions in Microsoft Defender XDR](m365d-response-actions-notifications.md).

- (Preview) [Microsoft Security Copilot in Microsoft Defender XDR](security-copilot-in-microsoft-365-defender.md) is now in preview. Microsoft Defender XDR users can take advantage of Security Copilot capabilities to summarize incidents, analyze scripts and codes, use guided responses to resolve incidents, generate KQL queries, and create incident reports within the portal. Security Copilot is on an invitation-only preview. Learn more about Security Copilot in the [Microsoft Security Copilot Early Access Program Frequently Asked Questions](/security-copilot/faq-security-copilot).

## September 2023

- (Preview) Custom detections using data from Microsoft Defender for Identity and Microsoft Defender for Cloud Apps, specifically the `CloudAppEvents`, `IdentityDirectoryEvents`, `IdentityLogonEvents`, and `IdentityQueryEvents` [tables](custom-detection-rules.md#tables-that-support-continuous-nrt-frequency) can now be run in near real-time [Continuous (NRT)](custom-detection-rules.md) frequency.

## August 2023

- Guides to responding to your first incident for new users are now live. [Understand incidents](respond-first-incident-365-defender.md) and learn to triage and prioritize, [analyze your first incident](respond-first-incident-analyze.md) using tutorials and videos, and [remediate attacks](respond-first-incident-remediate.md) by understanding actions available in the portal.

- (Preview) [Asset rule management - Dynamic rules for devices](./configure-asset-rules.md) is now in public preview. Dynamic rules can help manage device context by assigning tags and device values automatically based on certain criteria.

- (Preview) The [DeviceInfo](advanced-hunting-deviceinfo-table.md) table in advanced hunting now also includes the columns `DeviceManualTags` and `DeviceDynamicTags` in public preview to surface both manually and dynamically assigned tags related to the device you are investigating.

- The **Guided response** feature in Microsoft Defender Experts for XDR has been renamed to **[Managed response](managed-detection-and-response-xdr.md)**. We have also added a [new FAQ section](faq-incident-notifications-xdr.md#understanding-and-managing-defender-experts-for-xdr-incident-updates) on incident updates.

## July 2023

- (GA) The [Attack story](investigate-incidents.md#attack-story) in incidents is now generally available. The attack story provides the full story of the attack and allows incident response teams to view the details and apply remediation.

- A new URL and domain page is now available in Microsoft Defender XDR. The updated URL and domain page provides a single place to view all the information about a URL or a domain, including its reputation, the users who clicked it, the devices that accessed it, and emails where the URL or domain was seen. For details, see [Investigate URLs in Microsoft Defender XDR](../defender-endpoint/investigate-domain.md).

## June 2023

- (GA) Microsoft Defender Experts for XDR is now generally available. Defender Experts for XDR augments your security operations center by combining automation and Microsoft's security analyst expertise, helping you detect and respond to threats with confidence and improve your security posture. Microsoft Defender Experts for XDR is sold separately from other Microsoft Defender XDR products. If you're a Microsoft Defender XDR customer and are interested in purchasing Defender Experts for XDR, see [Overview of Microsoft Defender Experts for XDR](dex-xdr-overview.md).

## May 2023

- (GA) [Alert tuning](investigate-alerts.md#tune-an-alert) is now generally available. Alert tuning lets you fine-tune alerts to reduce investigation time and focus on resolving high priority alerts. Alert tuning replaces the Alert suppression feature.

- (GA) [Automatic attack disruption](automatic-attack-disruption.md) is now generally available. This capability automatically disrupts human-operated ransomware (HumOR), business email compromise (BEC), and adversary-in-the-middle (AiTM) attacks.

- (Preview) [Custom functions](advanced-hunting-custom-functions.md) are now available in advanced hunting. You can now create your own custom functions so you can reuse any query logic when you hunt in your environment. 

## April 2023

- (GA) The [unified Assets tab in the Incidents page](investigate-incidents.md) is now generally available.

- Microsoft is using a new weather-based naming taxonomy for threat actors. This new naming schema will provide more clarity and will be easier to reference. [Learn more about the new naming taxonomy](../intelligence/microsoft-threat-actor-naming.md).

## March 2023 

- (Preview) Microsoft Defender Threat Intelligence (Defender TI) is now available in the Microsoft Defender portal.

This change introduces a new navigation menu within the Microsoft Defender portal named **Threat Intelligence**. [Learn more](defender-threat-intelligence.md)

- (Preview) Complete device reports for the [`DeviceInfo` table](advanced-hunting-deviceinfo-table.md) in advanced hunting are now sent *every hour* (instead of the previous daily cadence). In addition, complete device reports are also sent whenever there is a change to any previous report. New columns were also added to the `DeviceInfo` table, along with several improvements to existing data in `DeviceInfo` and [DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md) tables.

- (Preview) Near real-time custom detection is now available for public preview in advanced hunting custom detections. There is a new [Continuous (NRT)](custom-detection-rules.md) frequency, which checks data from events as they are collected and processed in near real-time.

- (Preview) [Behaviors in Microsoft Defender for Cloud Apps](/defender-cloud-apps/behaviors) is now available for public preview. Preview customers can now also hunt for behaviors in advanced hunting using the [BehaviorEntities](advanced-hunting-behaviorentities-table.md) and [BehaviorInfo](advanced-hunting-behaviorinfo-table.md) tables.

## February 2023

- (GA) The [query resources report in advanced hunting](advanced-hunting-limits.md#view-query-resources-report-to-find-inefficient-queries) is now generally available.

- (Preview) The [automatic attack disruption](automatic-attack-disruption.md) capability now disrupts business email compromise (BEC).

## January 2023

- The new version of Microsoft Defender Experts for Hunting report is now available. The report's new interface now lets customers have more contextual details about the suspicious activities Defender Experts have observed in their environments. It also shows which suspicious activities have been continuously trending from month to month. For details, see [Understand the Defender Experts for Hunting report in Microsoft Defender XDR](defender-experts-report.md).

- (GA) Live Response is now generally available for macOS and Linux.

- (GA) Identity timeline is now generally available as part of the new Identity page in Microsoft Defender XDR. The updated User page has a new look, an expanded view of related assets and a new dedicated timeline tab. The timeline represents activities and alerts from the last 30 days. It unifies a user’s identity entries across all available workloads: Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Microsoft Defender for Endpoint. Using the timeline helps you easily focus on a user's activities (or activities performed on them) in specific timeframes.

## December 2022

- (Preview) The new Microsoft Defender XDR role-based access control (RBAC) model is now available for preview. The new RBAC model enables security admins to centrally manage privileges across multiple security solutions within a single system with a greater efficiency, currently supporting Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and Microsoft Defender for Identity. The new model is fully compatible with the existing individual RBAC models currently supported in Microsoft Defender XDR. For more information, see [Microsoft Defender XDR role-based access control (RBAC)](./manage-rbac.md).

## November 2022

- (Preview) Microsoft Defender Experts for XDR (Defender Experts for XDR) is now available for preview. Defender Experts for XDR is a managed detection and response service that helps your security operations centers (SOCs) focus and accurately respond to incidents that matter. It provides extended detection and response for customers who use Microsoft Defender XDR workloads: Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Azure Active Directory (Azure AD). For details, refer to [Expanded Microsoft Defender Experts for XDR preview](dex-xdr-overview.md).

- (Preview) The query resource report is now available in advanced hunting. The report shows your organization's consumption of CPU resources for hunting based on queries that ran in the last 30 days using any of the hunting interfaces. See [View query resources report](advanced-hunting-limits.md#view-query-resources-report-to-find-inefficient-queries) to find inefficient queries.

## October 2022

- (Preview) The new automatic attack disruption capability is now in preview. This capability combines security research insights and advances AI models to automatically contain attacks in progress. Automatic attack disruption also provides more time to security operations centers (SOCs) to fully remediate an attack and limits an attack's impact to organizations. This preview automatically disrupts ransomware attacks.

## August 2022

- (GA) [Microsoft Defender Experts for Hunting](defender-experts-for-hunting.md) is now generally available. If you're a Microsoft Defender XDR customer with a robust security operations center but want Microsoft to help you proactively hunt for threats across endpoints, Office 365, cloud applications, and identity using Microsoft Defender data, then learn more about applying, setting up, and using the service. Defender Experts for Hunting is sold separately from other Microsoft Defender XDR products.

- (Preview) [Guided mode](advanced-hunting-modes.md#get-started-with-guided-hunting-mode) is now available for public preview in advanced hunting. Analysts can now start querying their database for endpoint, identities, email & collaboration, and cloud apps data *without knowing Kusto Query Language (KQL)*.  Guided mode features a friendly, easy-to-use, building-block style of constructing queries through dropdown menus containing available filters and conditions. See [Get started with query builder](advanced-hunting-query-builder.md).

## July 2022

- (Preview) Microsoft Defender Experts for Hunting public preview participants can now look forward to receiving monthly reports to help them understand the threats the hunting service surfaced in their environment, along with the alerts generated by their Microsoft Defender XDR products. For details, refer to [Understand the Defender Experts for Hunting report in Microsoft Defender XDR](defender-experts-report.md).

## June 2022

- (Preview) The [DeviceTvmInfoGathering](advanced-hunting-devicetvminfogathering-table.md) and [DeviceTvmInfoGatheringKB](advanced-hunting-devicetvminfogatheringkb-table.md) tables are now available in the advanced hunting schema. Use these tables to hunt through assessment events in Defender Vulnerability Management including the status of various configurations and attack surface area states of devices.

- The newly introduced Automated investigation & response card in the Microsoft Defender portal provides an overview on pending remediation actions.

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

- (Preview) The application governance add-on feature to Defender for Cloud Apps is now available in Microsoft Defender XDR. App governance provides a security and policy management capability designed for OAuth-enabled apps that access Microsoft 365 data through Microsoft Graph APIs. App governance delivers full visibility, remediation, and governance into how these apps and their users access, use, and share your sensitive data stored in Microsoft 365 through actionable insights and automated policy alerts and actions. [Learn more about application governance](/cloud-app-security/app-governance-manage-app-governance).

- (Preview) The [advanced hunting](advanced-hunting-overview.md) page now has multitab support, smart scrolling, streamlined schema tabs, quick edit options for queries, a query resource usage indicator, and other improvements to make querying smoother and easier to fine-tune.

- (Preview) You can now use the [link to incident](advanced-hunting-link-to-incident.md) feature to include events or records from the advanced hunting query results right into a new or existing incident that you are investigating.

## October 2021

- (GA) In advanced hunting, more columns were added in the [CloudAppEvents](advanced-hunting-cloudappevents-table.md) table. You can now include `AccountType`, `IsExternalUser`, `IsImpersonated`, `IPTags`, `IPCategory`, and `UserAgentTags` to your queries.

## September 2021

- (GA) Microsoft Defender for Office 365 event data is available in the Microsoft Defender XDR event streaming API. You can see the availability and status of event types in the [Supported Microsoft Defender XDR event types in streaming API](supported-event-types.md).

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

- (Preview) [View reports per threat tags](threat-analytics.md#view- reports-by-category)

  Threat tags help you focus on specific threat categories and review the most relevant reports.

- (Preview) [Streaming API](../defender-endpoint/raw-data-export.md)

  Microsoft Defender XDR supports streaming all the events available through Advanced Hunting to an Event Hubs and/or Azure storage account.

- (Preview) [Take action in advanced hunting](advanced-hunting-take-action.md)

  Quickly contain threats or address compromised assets that you find in [advanced hunting](advanced-hunting-overview.md).

- (Preview) [In-portal schema reference](advanced-hunting-schema-tables.md#get-schema-information-in-the-security-center)

  Get information about advanced hunting schema tables directly in the security center. In addition to table and column descriptions, this reference includes supported event types (`ActionType` values) and sample queries.

- (Preview) [DeviceFromIP() function](advanced-hunting-devicefromip-function.md)

  Get information about which devices have been assigned a specific IP address or addresses at a given time range.

## May 2021

- [New alert page in the Microsoft Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender/easily-find-anomalies-in-incidents-and-alerts/ba-p/2339243)

  Provides enhanced information for the context into an attack. You can see which other triggered alert caused the current alert and all the affected entities and activities involved in the attack, including files, users and mailboxes. See [Investigate alerts](investigate-alerts.md) for more information.

- [Trend graph for incidents and alerts in the Microsoft Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender/new-alert-page-for-microsoft-365-defender-incident-detections/ba-p/2350425)

  Determine if there are several alerts for a single incident or that your organization is under attack with several different incidents. See [Prioritize incidents](incident-queue.md) for more information.

## April 2021

- Microsoft Defender XDR

  The improved [Microsoft Defender XDR](https://security.microsoft.com) portal is now available. This new experience brings together Defender for Endpoint, Defender for Office 365, Defender for Identity, and more into a single portal. This is the new home to manage your security controls. [Learn what's new](microsoft-365-defender-portal.md).

- [Microsoft Defender XDR threat analytics report](threat-analytics.md)

  Threat analytics helps you respond to and minimize the impact of active attacks. You can also learn about attack attempts blocked by Microsoft Defender XDR solutions and take preventive actions that mitigate the risk of further exposure and increase resiliency. As part of the unified security experience, threat analytics is now available for Microsoft Defender for Endpoint and Microsoft Defender for Office E5 license holders.

## March 2021

- [CloudAppEvents table](advanced-hunting-cloudappevents-table.md)

  Find information about events in various cloud apps and services covered by Microsoft Defender for Cloud Apps. This table also includes information previously available in the `AppFileEvents` table.

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]

