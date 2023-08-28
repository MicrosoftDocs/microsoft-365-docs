---
title: FAQs related to Microsoft Defender Experts for XDR incident notifications
ms.reviewer:
description: Frequently asked questions related to Defender Experts for XDR incident notifications
keywords: XDR, XDR incidents, Xtended detection and response, FAQ's related to XDR, defender experts for xdr, XDR incident notifications, defender experts analyst, managed threat hunting, managed detection and response (MDR) service, service delivery manager, real-time visibility with XDR experts
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
ms.date: 08/28/2023
---

# Understanding and managing Defender Experts for XDR incident updates

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

The following section lists down questions your SOC team might have regarding the receipt of [incident notifications](start-using-mdex-xdr.md).

## In Microsoft 365 Defender portal and APIs (Security API and Graph API)

| Questions | Answers |
|---------|---------|
| **How do I know whether a Defender Experts analyst has started working on an incident?** | When a Defender Experts analyst starts working on an incident, the incident's **Assigned to** field is updated to _Defender Experts_.|
| **How do I know whether a Defender Experts analyst has resolved an incident?** | When a Defender Experts analyst has resolved an incident, the incident's **Status** field is updated to _Resolved_. |
| **How do I know what conclusion led a Defender Experts analyst to resolve an incident?** | When Defender Experts analysts resolve an incident, they modify the incident's **Classification** and **Determination** fields and provide a concise summary in its **Comments** section.<br><br>If an incident is classified as a True Positive, a comprehensive **Investigation summary** appears in the **Managed response** flyout panel in your Microsoft 365 Defender portal.|
| **How do I know what actions a Defender Experts analyst took in my tenant when investigating an incident?** | For each incident they investigate, the Defender Experts analyst summarizes any actions they performed within your tenant in the incident's **Investigation summary** located in the **Managed response** flyout panel in your Microsoft 365 Defender portal.<br><br>You can also retrieve information about these actions, and the times they signed into your tenant, by [searching your audit logs](/microsoft-365/security/defender/auditing#create-a-rule-for-email-notifications) either on the Microsoft Purview compliance portal or through the Office 365 Management Activity API.|
| **How do I know whether a Defender Experts analyst has sent any response actions for my SOC team?** | The Defender Experts analyst publishes the [response actions](/microsoft-365/security/defender/start-using-mdex-xdr#actions) they recommend your SOC team to perform on an incident in an incident's **Guided response** flyout panel in your Microsoft 365 Defender portal.<br><br>At this time, the incident's **Assigned to** field is updated to _Customer_ and its **Status** is updated to _Awaiting Customer Action_.<br><br>Your incident contacts, which you have [designated](/microsoft-365/security/defender/get-started-xdr#tell-us-who-to-contact-for-important-matters) in **Settings** > **Defender Experts** > **Notification contacts** in your Microsoft 365 Defender portal, also receive a corresponding email notification if there are response actions requiring your attention. |
| **How do I ask a Defender Experts analyst questions about an investigation or response action?** | After a Defender Experts analyst publishes their investigation summary and recommended response actions in the **Guided response** flyout panel of a True Positive incident, you can use the **Chat** tab in the same panel to ask the Defender Experts team questions about the incident and their investigation.<br><br>Alternatively, your designated incident contacts can directly respond to the email they received from Defender Experts to ask any questions you might have.|
| **How do I know which incidents have pending response actions?** | The Defender Experts card in your Microsoft 365 Defender portal home page includes a link that displays a message (for example, _3 incidents awaiting your action_). Selecting this link directs you to a filtered list of incidents specifically requiring your attention.<br><br>You can filter the incident queue in your Microsoft 365 Defender portal by selecting **Assigned to** as _Customer_ or **Status** as _Awaiting Customer Action_.|

## In Microsoft Sentinel

| Questions | Answers |
|---------|---------|
| **How do I get Defender Experts updates in Sentinel?** | If you have enabled the data connector between Microsoft 365 Defender and Microsoft Sentinel, updates made by Defender Experts in Defender to incidents are synchronized with Microsoft Sentinel. [Learn more](/articles/sentinel/connect-microsoft-365-defender).<br><br>The **Assigned to**, **Status**, and **Classification** fields in Microsoft 365 Defender incidents are mapped to the corresponding fields in Sentinel, namely **Owner**, **Status**, and **Reason for closing**.|
| **How do I get Defender Experts updates in Sentinel to automatically trigger a playbook that sends email, Microsoft Teams or Slack message, SMS, or phone call; or creates or updates a task in an IT service management (ITSM) or helpdesk app?** | To get Defender Experts updates:<ol><li>Set up automation rules in Sentinel that are triggered with the following Defender Experts updates:<ul><li>When the Owner field in Microsoft Sentinel is updated to Defender Experts or Customer.<li>When the Status field in Microsoft Sentinel is updated to Active or Closed.</ul>**Note:** The Microsoft 365 Defender Status Awaiting Customer Action won't have an equivalent field in Microsoft Sentinel.<br><br><li> Set up playbooks in Microsoft Sentinel to automatically sync incident updates or [send incident notifications into other apps](/articles/sentinel/tutorial-respond-threats-playbook).</ol>Alternatively, you can directly [configure a Logic App](/connectors/connector-reference/connector-reference-logicapps-connectors) to do the above.|
| **Can I view the guided response actions published by Defender Experts in Sentinel?** | No, Sentinel doesn't currently support viewing guided response actions directly. However, once Defender Experts publish guided response actions for an incident in your Microsoft 365 Defender portal, the **Owner** field in Sentinel is automatically updated to **Customer**. You can use this status change as a trigger to review the corresponding incident in the Microsoft 365 Defender portal.|

## In third-party SIEM, SOAR, or ITSM apps

| Questions | Answers |
|---------|---------|
| **How do I get Defender Experts updates from Microsoft 365 Defender to sync into third-party security information and event management (SIEM), security orchestration, automation and response (SOAR), or ITSM apps?** | You can get Defender Experts updates from Microsoft 365 Defender through the Graph Security API (_microsoft.graph.security.incident_; recommended) and Security API (_security.microsoft.com_). The following incident fields are available: **Assigned to**, **Status**, **Classification**, and **Determination**.<br><br>To initiate the synchronization process:<ol><li>Establish the mapping between fields in Microsoft 365 Defender and the corresponding fields in the desired application. Determine whether the sync should be uni- or bi-directional and ensure that the other application supports API-based synchronization. <li>Develop, test, and deploy your sync integration. In most cases, it's recommended to periodically poll the Graph Security API every minute or so to check for updates.<li>Periodically validate that the field mapping is up to date.</ol>Alternatively, if you have a Microsoft 365 Defender account integrated with Microsoft Sentinel account, you can opt to configure a [Sentinel playbook](/articles/sentinel/tutorial-respond-threats-playbook) to automatically synchronize incident updates with other applications. For example, you can create or update tasks in ITSM or helpdesk apps such as ServiceNow, Jira, ZenDesk, FreshService, PagerDuty, or Azure DevOps. You can also [configure a Logic App](/connectors/connector-reference/connector-reference-logicapps-connectors) to achieve the same synchronization functionality.<br><br>**Note:** Using playbooks, which rely on Azure Logic Apps, might incur extra charges. For more information on pricing, see [Azure Logic Apps pricing page](https://azure.microsoft.com/pricing/details/logic-apps/). |
| **Can I sync guided response actions published by Defender Experts in Microsoft 365 Defender portal to third-party SIEM, SOAR, or ITSM apps?** | No, the Microsoft 365 Defender API currently doesn't support syncing guided response actions.<br><br>However, once Defender Experts publish guided response actions for an incident in your Microsoft 365 Defender portal, the **Assigned to** field is changed to Customer and the **Status** field will be updated to _Awaiting Customer Action_. You can use this status change as a trigger to review the corresponding incident in the Microsoft 365 Defender portal.|

## In other communication services

| Questions | Answers |
|---------|---------|
| **Can I get Defender Experts updates from Microsoft 365 Defender in email?** | Once a Defender Experts analyst publishes recommended response actions to an incident, your designated incident contacts will receive a corresponding email notification to the email addresses specified in **Settings** > **Defender Experts** > **Notification contacts** in your Microsoft 365 Defender portal.<br><br>If you have a Microsoft 365 Defender account connected to your Microsoft Sentinel account, you can also configure a Sentinel playbook to automatically send all incident updates to your designated email address(es).|
| **Can I get Defender Experts updates from Microsoft 365 Defender in Microsoft Teams?** | While direct availability to Teams isn't provided within Microsoft 365 Defender, a two-way chat functionality is accessible through an incident's **Guided response** flyout panel in your Microsoft 365 Defender portal.<br><br>Alternatively, if you have Microsoft 365 Defender account connected to your Sentinel account, you can configure a playbook to automatically post incident updates to Teams.|
| **Can I get Defender Experts updates from Microsoft 365 Defender as SMS or phone call notifications?** | Microsoft 365 Defender currently doesn't have this capability.<br><br>However, if you have a Microsoft 365 Defender account connected to your Sentinel account, you can configure a playbook to automatically send an SMS or phone call notification through Azure Communication Services or Twilio.|
| **Can I get Defender Experts updates from Microsoft 365 Defender in third-party communications services such as Slack?** | Microsoft 365 Defender currently doesn't support this capability directly.<br><br>However, if you have a Microsoft 365 Defender account connected to your Microsoft Sentinel account, you can configure a playbook to automatically post incident updates to Slack.|

### See also

[How Microsoft Defender Experts for XDR permissions work](dex-xdr-permissions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
