---
title: Experts on Demand
ms.reviewer:
description: You can partner with Microsoft Defender Experts who can be engaged directly from within the Microsoft 365 Defender portal for their response
keywords: Ask Defender Experts, experts on demand, managed threat hunting, managed detection and response (MDR) service, MTE, Microsoft Threat Experts, endpoint attack notification, Endpoint Attack Notification
search.product: Windows 10
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365-initiative-defender-endpoint
  - tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 09/26/2022
---

# Ask Defender Experts

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> As of August 2022, the Experts on Demand option to **Consult a threat expert** has been rebranded to **Ask Defender Experts**. This documentation is still here to support the legacy Microsoft Threat Experts service, however, if you're interested to explore the service beyond your current license, refer to [Microsoft Defender Experts for Hunting](/microsoft-365/security/defender/defender-experts-for-hunting). Microsoft Defender Experts for Hunting subscription includes [Experts on Demand](/microsoft-365/security/defender/onboarding-defender-experts-for-hunting).

Customers can engage our security experts directly from within Microsoft 365 Defender portal to get their response. Experts provide insights needed to better understand the complex threats affecting your organization, from alert inquiries, potentially compromised devices, root cause of a suspicious network connection, to more threat intelligence regarding ongoing advanced persistent threat campaigns. With this capability, you can:

- Get more clarification on alerts including root cause or scope of the incident
- Gain clarity into suspicious device behavior and next steps if faced with an advanced attacker
- Determine risk and protection regarding threat actors, campaigns, or emerging attacker techniques

> [!NOTE]
> Experts on Demand is not a security incident response service. It's intended to provide a better understanding of complex threats affecting your organization. Engage with your own security incident response team to address urgent security incident response issues. If you don't have your own security incident response team and would like Microsoft's help, create a support request in the [Premier Services Hub](/services-hub/).

## Ask Defender Experts about suspicious cybersecurity activities in your organization

You can partner with Microsoft Defender Experts who can be engaged directly from within the Microsoft 365 Defender portal for their response. Experts provide insights to better understand complex threats, defender expert notifications that you get, or if you need more information about the alerts, a potentially compromised device, or a threat intelligence context that you see on your portal dashboard.

> [!NOTE]
>
> - Alert inquiries related to your organization's customized threat intelligence data are currently not supported. Consult your security operations or incident response team for details.
> - You need to have the **[Manage security settings](../defender-endpoint/user-roles.md)** permission in the Microsoft 365 Defender portal to be able to submit the **Ask Defender Experts** inquiry.

1. Navigate to the portal page with the relevant information that you'd like to investigate, for example, the **Incident** page. Ensure that the page for the relevant alert or device is in view before you send an investigation request.

2. From the upper right-hand menu, click the **?** icon. Then, select **Ask Defender Experts**

The **Inquiry topic** field is pre-populated with the link to the relevant page for your investigation request. For example, a link to the incident, alert, or device details page that you were at when you made the request.

3. In the next field, provide enough information to give Microsoft Defender Experts enough context to start the investigation.

4. Enter the email address that you'd like to use to correspond with Microsoft Defender Experts. Ensure that the email address is for an account with a mailbox attached to it. If not, include an email address with a mailbox attached.

> [!NOTE]
> If you would like to track the status of your Experts on Demand cases through Microsoft Services Hub, reach out to your Customer Success Account Manager.

Watch this video for a quick overview of the Microsoft Services Hub.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4pk9f]

## Sample investigation topics that you can Ask Defender Experts

### Alert information

- We see a new type of alert for a living-off-the-land binary: [AlertID]. Can you tell us something more about this alert and how we can investigate further?
- We've observed two similar attacks, which try to execute malicious PowerShell scripts but generate different alerts. One is "Suspicious PowerShell command line" and the other is "A malicious file was detected based on indication provided by O365". What is the difference?
- I receive an odd alert today for abnormal number of failed logins from a high profile user's device. I can't find any further evidence around these sign-in attempts. How can Defender for Endpoint see these attempts? What type of sign-ins are being monitored?
- Can you give more context or insights about this alert: "Suspicious behavior by a system utility was observed".

### Possible device compromise

- Can you help answer why we see "Unknown process observed?" This message or alert is seen frequently on many devices. We appreciate any input to clarify whether this message or alert is related to malicious activity.
- Can you help validate a possible compromise on the following system on [date] with similar behaviors as the previous [malware name] malware detection on the same system in [month]?

### Threat intelligence details

- We detected a phishing email that delivered a malicious Word document to a user. The malicious Word document caused a series of suspicious events, which triggered multiple Endpoint Attack Notifications alerts for [malware name] malware. Do you have any information on this malware? If yes, can you send me a link?
- I recently saw a [social media reference, for example, Twitter or blog] post about a threat that is targeting my industry. Can you help me understand what protection Defender for Endpoint provides against this threat actor?

### Defender Experts' alert communications

- Can your incident response team help us address the Endpoint Attack Notifications that we got?
- I received this Endpoint Attack Notifications from Microsoft Security Experts. We don't have our own incident response team. What can we do now, and how can we contain the incident?
- I received an Endpoint Attack Notifications from Microsoft Defender Experts. What data can you provide to us that we can pass on to our incident response team?

  > [!NOTE]
  > Experts on Demand is a managed cybersecurity hunting service and not an incident response service. However, you can engage with your own incident response team to address issues that require an incident response. If you don't have your own incident response team and would like Microsoft's help, you can engage with the CSS Cybersecurity Incident Response Team (CIRT). They can open a ticket to help address your inquiry.

## Scenario

### Receive a progress report about your managed hunting inquiry

Response from Microsoft Defender Experts varies according to your inquiry. They'll email a progress report to you about your **Ask Defender Experts** inquiry within two days, to communicate the investigation status from the following categories:

- More information is needed to continue with the investigation
- A file or several file samples are needed to determine the technical context
- Investigation requires more time
- Initial information was enough to conclude the investigation

It's crucial to respond in quickly to keep the investigation moving.

## Next steps
- To proactively hunt threats across endpoints, refer to [Endpoint Attack Notification](../defender-endpoint/endpoint-attack-notifications.md).
- To proactively hunt threats across endpoints, Office 365, cloud applications, and identity, refer to [Microsoft Defender Experts for Hunting](../defender/defender-experts-for-hunting.md).

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
