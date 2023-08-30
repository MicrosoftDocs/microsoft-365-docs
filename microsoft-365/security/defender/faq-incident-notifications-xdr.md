---
title: FAQs related to Microsoft Defender Experts for XDR incident notifications
ms.reviewer:
description: Frequently asked questions related to Defender Experts for XDR incident notifications
keywords: XDR, XDR incidents, Xtended detection and response, FAQ's related to XDR, defender experts for xdr, XDR incident notifications, defender experts analyst, managed threat hunting, managed detection and response (MDR) service, real-time visibility with XDR experts, DEX-XDR FAQ's
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 08/29/2023
---

# Understanding and managing Defender Experts for XDR incident updates

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

The following section lists down questions your SOC team might have regarding the receipt of [incident notifications](start-using-mdex-xdr.md).

## In Microsoft 365 Defender portal and Graph Security API

| Questions | Answers |
|---------|---------|
| **How do I know whether a Defender Experts analyst has started working on an incident?** | When a Defender Experts analyst starts working on an incident, the incident's **Assigned to** field is updated to _Defender Experts_.|
| **How do I know whether a Defender Experts analyst has resolved an incident?** | When a Defender Experts analyst has resolved an incident, the incident's **Status** field is updated to _Resolved_. |
| **How do I know what conclusion led a Defender Experts analyst to resolve an incident?** | When Defender Experts analysts resolve an incident, they modify the incident's **Classification** and **Determination** fields and provide a concise summary in its **Comments** section.<br><br>If an incident is classified as a True Positive, a comprehensive **Investigation summary** appears in the **Managed response** flyout panel in your Microsoft 365 Defender portal.|
| **How do I know what actions a Defender Experts analyst took in my tenant when investigating an incident?** | For each incident they investigate, the Defender Experts analyst summarizes any actions they performed within your tenant in the incident's **Investigation summary** located in the **Managed response** flyout panel in your Microsoft 365 Defender portal.<br><br>You can also retrieve information about these actions, and the times they signed into your tenant, by [searching your audit logs](/microsoft-365/security/defender/auditing#create-a-rule-for-email-notifications) either on the Microsoft Purview compliance portal or through the Office 365 Management Activity API.|
| **How do I know whether a Defender Experts analyst has sent any response actions for my SOC team?** | The Defender Experts analyst publishes the [response actions](/microsoft-365/security/defender/start-using-mdex-xdr#actions) they recommend your SOC team to perform on an incident in an incident's **Managed response** flyout panel in your Microsoft 365 Defender portal.<br><br>At this time, the incident's **Assigned to** field is updated to _Customer_ and its **Status** is updated to _Awaiting Customer Action_.<br><br>Your incident contacts, which you have [designated](/microsoft-365/security/defender/get-started-xdr#tell-us-who-to-contact-for-important-matters) in **Settings** > **Defender Experts** > **Notification contacts** in your Microsoft 365 Defender portal, also receive a corresponding email notification if there are response actions requiring your attention. |
| **How do I ask a Defender Experts analyst questions about an investigation or response action?** | After a Defender Experts analyst publishes their investigation summary and recommended response actions in the **Managed response** flyout panel of a True Positive incident, you can use the **Chat** tab in the same panel to ask the Defender Experts team questions about the incident and their investigation.<br><br>Alternatively, your designated incident contacts can directly respond to the email they received from Defender Experts to ask any questions you might have.|
| **How do I know which incidents have pending response actions?** | The Defender Experts card in your Microsoft 365 Defender portal home page includes a link that displays a message (for example, _3 incidents awaiting your action_). Selecting this link directs you to a filtered list of incidents specifically requiring your attention.<br><br>You can filter the incident queue in your Microsoft 365 Defender portal by selecting **Assigned to** as _Customer_ or **Status** as _Awaiting Customer Action_.|

## In Microsoft Sentinel

| Questions | Answers |
|---------|---------|
| **How do I get Defender Experts updates in Sentinel?** | If you have enabled the data connector between Microsoft 365 Defender and Microsoft Sentinel, updates made by Defender Experts in Defender to incidents are synchronized with Microsoft Sentinel. [Learn more](/articles/sentinel/connect-microsoft-365-defender).<br><br>The **Assigned to**, **Status**, and **Classification** fields in Microsoft 365 Defender incidents are mapped to the corresponding fields in Sentinel, namely **Owner**, **Status**, and **Reason for closing**.|
| **How do I get Defender Experts updates in Sentinel to automatically trigger a playbook?** | To get Defender Experts updates, first, set up automation rules in Sentinel that are triggered with the following Defender Experts updates:<ul><li>When the **Owner** field in Microsoft Sentinel is updated to _Defender Experts_ or _Customer_.</li><li> When the **Status** field in Microsoft Sentinel is updated to _Active_ or _Closed_, which corresponds to Microsoft 365 Defender **Status** _Active_ and _In Progress_ respectively.</li><li>When Sentinel **Tag** _Awaiting Customer Action_ gets added, which corresponds to Microsoft 365 Defender **Status** _Awaiting Customer Action_.</li></ul>Next, set up playbooks in Microsoft Sentinel to automatically sync incident updates or [send incident notifications into other apps](/articles/sentinel/tutorial-respond-threats-playbook).<ul><li>Send email, or Teams message, or Slack message to your SOC team when a Defender Experts analyst is assigned to an incident.</li><li>Send SMS or phone call via Azure Communications Services or Twilio connector to your SOC lead when Defender Experts publishes response action for your team.</li><li>Create a task or ticket in apps such as Azure DevOps, ServiceNow, Jira, ZenDesk, FreshService, PagerDuty, etc. for your IT Ops team. </li></ul>|
| **How can I access managed response actions published by Defender Experts from Sentinel?** | Once Defender Experts publish managed response actions for an incident in your Microsoft 365 Defender portal, the **Owner** field is updated to _Customer_ automatically, and the tag _Awaiting Customer Action_ is available in Sentinel. You can use these field changes as a trigger to review the managed response panel for the corresponding incident in the Microsoft 365 Defender portal.|

## In third-party SIEM, SOAR, or ITSM apps

| Questions | Answers |
|---------|---------|
| **How do I get Defender Experts updates from Microsoft 365 Defender to sync into third-party security information and event management (SIEM), security orchestration, automation and response (SOAR), or ITSM apps?** | You can get Defender Experts updates from Microsoft 365 Defender through the _Graph Security API_ ([_microsoft.graph.security.incident_](/graph/api/resources/security-incident).<br></br>To initiate the synchronization process:<ol><li>Establish the mapping between fields in Microsoft 365 Defender and the corresponding fields in the desired application. Determine whether the sync should be uni- or bi-directional and ensure that the other application supports that. <li>Develop, test, and deploy your sync integration. In most cases, it's recommended to periodically poll the Graph Security API every minute or so to check for updates.<li>Periodically validate that the field mapping is up to date.</ol>|
| **Can I sync managed response actions published by Defender Experts in Microsoft 365 Defender portal to third-party SIEM, SOAR, or ITSM apps?** | Once Defender Experts publish managed response actions for an incident in your Microsoft 365 Defender portal, the **Assigned to** field is changed to _Customer_ and the **Status** field is updated to _Awaiting Customer Action_. You can sync these fields via the Graph Security API and then use these changes as a trigger to review the managed response actions in the Microsoft 365 Defender portal.<br><br>Managed response actions are expected to be available in the Graph Security API later this year, at which time it will be possible to sync them with your third-party apps.|

## In other communication services

| Questions | Answers |
|---------|---------|
| **Can I get Defender Experts updates from Microsoft 365 Defender in email?** | Once a Defender Experts analyst publishes recommended response actions to an incident, your designated incident contacts will receive a corresponding email notification to the email addresses specified in **Settings** > **Defender Experts** > **Notification contacts** in your Microsoft 365 Defender portal.<br><br>Additionally, you can [configure a Logic App](/connectors/connector-reference/connector-reference-logicapps-connectors) to send all incident updates to your designated email address(es) automatically.|
| **Can I get Defender Experts updates from Microsoft 365 Defender in Microsoft Teams?** | A two-way chat functionality is accessible through an incident's **Managed response** flyout panel in your Microsoft 365 Defender portal.<br><br>Additionally, you can [configure a Logic App](/connectors/connector-reference/connector-reference-logicapps-connectors) to send all incident updates to your designated email address(es) automatically.|
| **Can I get Defender Experts updates from Microsoft 365 Defender as SMS or phone call updates, or in third-party communications services such as Slack?** | You can [configure a Logic App](/connectors/connector-reference/connector-reference-logicapps-connectors) to do this to send notifications from communication services such as Slack, Twilio, Azure Communication Services, etc.|

### See also

[How Microsoft Defender Experts for XDR permissions work](dex-xdr-permissions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
