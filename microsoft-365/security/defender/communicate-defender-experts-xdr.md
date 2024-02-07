---
title: Communicating with Microsoft Defender Experts
ms.reviewer:
description: Defender Experts for XDR has multiple channels to discuss incidents, managed response, and service support
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, Managed response in Teams, real-time visibility with XDR experts, ask defender experts
ms.service: defender-experts
ms.subservice: dex-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: pauloliveria
author: poliveria
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - essentials-manage
ms.topic: conceptual
search.appverid: met150
ms.date: 02/07/2024
---

# Communicating with experts in the Microsoft Defender Experts for XDR service

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)

Microsoft Defender Experts for XDR provides you with multiple channels of communication to discuss incidents with our experts, ask them questions on demand, or get service readiness or operations support from your service delivery managers (SDMs).

## Incident and managed response notifications

When an incident requires your attention, such as the incidents our experts issue [managed response actions](start-using-mdex-xdr.md#managed-detection-and-response), you're notified through one or more of the following channels:

### In-portal chat

> [!NOTE]
> The chat option is only available for incidents where we issued managed response.

The **Chat** tab within the Microsoft Defender XDR portal provides you with a space to engage with our experts and further understand the incident, our investigation, and the required actions we provided. You could ask about a malicious executable, malicious attachment, information about activity groups, advanced hunting queries, or any other information that would assist you with the incident resolution.

### Teams chat

Apart from using the in-portal chat, you can also engage in real-time chat conversations with Defender Experts directly within Microsoft Teams. This capability provides you and your security operations center (SOC) team more flexibility when responding to incidents that require managed response. [Learn more about turning on notifications and chat on Teams](get-started-xdr.md#receive-managed-response-notifications-and-updates-in-microsoft-teams)

Once you turn on chat on Teams, a new team named **Defender Experts team** is created and the Defender Experts Teams app is installed in it. Each incident that requires your attention is posted on this team’s **Managed response** channel as a new post. To engage with our experts (for example, ask follow-up questions about the investigation summary or actions published by Defender Experts), use the **Reply** text bar to mention or tag *@Defender Experts* and type your message.

:::image type="content" source="../../media/xdr/teams-chat-managed-response-01.png" alt-text="Screenshot of managed response teams channel." lightbox="../../media/xdr/teams-chat-managed-response-01.png":::

**Important reminders when using the Teams chat:**

- Our experts have access to messages in **Defender Experts team** through the Defender Experts Teams app so you don't have to explicitly them to this team. 
- Our experts only see replies to existing posts created by Defender Experts regarding a managed response. If you create a new post, our experts won't be able to see it.
- While Defender Experts might have access to all messages in any channel in **Defender Experts team**, tag or mention our experts by typing *@Defender Experts* in your replies, so they're notified to join the chat conversation.
- Don’t attach any attachments (for example, files for analysis) in the chat. For security reasons, Defender Experts won't be able to view the attachments. Instead, send them to appropriate submissions channels or provide links where they can be found in Microsoft Defender XDR portal.
- Conversations in the Teams chat about an incident are also synchronized with the incident’s **Chat** tab in the Microsoft Defender XDR portal so that you can see messages and updates about an investigation wherever you go.

### Email

The Defender Experts for XDR service typically sends automated emails whenever a managed response with completed or pending actions is published in the Microsoft XDR portal, or when it needs to remind you about incidents awaiting your action. 

However, our experts could also send out emails to your identified notification contacts directly during any of the following situations:

- When they require additional information or context to investigate an incident
- When they detect a malicious or suspicious activity manually and outside of incidents or alerts in the Microsoft Defender XDR portal, and it requires a response action
- When they reply to the requests or queries sent to them through email 

> [!IMPORTANT]
> Remember to verify emails claiming to be from Defender Experts.

### Phone call

In break-glass scenarios or matters that require immediate attention (for example, malware on high-value infrastructure, ransomware, data exfiltration, insider threat, or other signs of a determined human adversary), our experts reach out to your identified **incident notification contacts** using the details you provided, including calling their listed phone numbers. [Learn more about adding contact persons or groups for incident notifications](get-started-xdr.md#tell-us-who-to-contact-for-important-matters)

## Ask Defender Experts

While the previous scenarios involve our experts initiating communication with you, you can also request advanced threat expertise on demand by selecting **Ask Defender Experts** directly inside the Microsoft Defender XDR portal. [Learn more](start-using-mdex-xdr.md#request-advanced-threat-expertise-on-demand)

## Collaborating with your service delivery manager

The service delivery manager (SDM) is responsible for managing the overall relationship for your organization with the Defender Experts for XDR service. They are your trusted advisor working along with XDR experts' team to help you protect your organization.

The SDM provides the following services:

- Service readiness support
  - Educate customers about the end-to-end service experience, from signup to regular operations and escalation process.
  - Help establish a service-ready security posture, including guidance on required controls and policy updates.
- Service operations support
  - Provide tailored service delivery content and reporting, including periodic business reviews.
  - Serve as a single point of contact for feedback and escalations related to Defender Experts Service.

The SDM engages with your identified **service review contacts**. [Learn more about adding contact persons or groups for service review and delivery](get-started-xdr.md#tell-us-who-to-contact-for-important-matters)

### See also

- [Get started with Microsoft Defender Experts for XDR](get-started-xdr.md)
- [Start using Defender Experts for XDR service](start-using-mdex-xdr.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]