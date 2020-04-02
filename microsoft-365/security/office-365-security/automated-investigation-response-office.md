---
title: "Automated investigation and response (AIR)"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: M365-security-compliance
description: "Get an overview of automated investigation and response capabilities in Office 365 Advanced Threat Protection Plan 2."
ms.custom: air
---

# Automated investigation and response (AIR)

As security alerts are triggered, it's up to your security operations team to look into those alerts and take steps to protect your organization. Sometimes, security operations teams can feel overwhelmed by the volume of alerts that are triggered. Automated investigation and response (AIR) capabilities in Office 365 can help. AIR enables your security operations team to operate more efficiently and effectively. AIR capabilities include automated investigation processes in response to well known threats that exist today. Appropriate remediation actions await approval, enabling your security operations team to respond to detected threats. 

This article provides an overview of AIR. When you're ready to get started using AIR, see [Automatically investigate and respond to threats in Office 365](office-365-air.md).

## At a high level

As alerts are triggered, security playbooks go into effect. Depending on the situation, an [automated investigation process](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air) can begin. During and after an automated investigation, [remediation actions](air-remediation-actions.md) are recommended. No actions are taken automatically in Office 365 Advanced Threat Protection. Your security operations team reviews, and then [approves or rejects each remediation action](air-review-approve-pending-completed-actions.md), and when this is done, each investigation completes. All of these activities are tracked and viewable in the Security & Compliance Center (see [View details of an investigation](air-view-investigation-results.md#view-details-of-an-investigation)).

The following sections provide more details about alerts, security playbooks, and examples of AIR in action.

## Alerts

[Alerts](../../compliance/alert-policies.md#viewing-alerts) represent triggers for security operations team workflows for incident response. Prioritizing the right set of alerts for investigation, while making sure no threats are unaddressed is challenging. When investigations into alerts are performed manually, Security Operations teams must hunt and correlate entities (such as content, devices and users) at risk from threats. Such tasks and workflows can be very time consuming and involve multiple tools and systems. With AIR, investigation and response for security events are automated by having key security and threat management alerts trigger security response playbooks automatically. 

Currently for AIR, alerts generated from the following kinds of alert policies are auto-investigated:  

- A potentially malicious URL click was detected
- Email reported by user as phish*
- Email messages containing malware removed after delivery*
- Email messages containing phish URLs removed after delivery*
- Suspicious email sending patterns detected#
- User restricted from sending email#

> [!NOTE]
> The alerts marked with an asterisk (*) are assigned an *Informational* severity in the respective alert policies within the Security & Compliance Center, with email notifications turned off. Email notifications can be turned on through [Alert policy configuration](../../compliance/alert-policies.md#alert-policy-settings). Alerts marked with a hash (#) are generally available alerts associated with public preview playbooks.

To view alerts, in the Security & Compliance Center, choose **Alerts** > **View alerts**. Select an alert to view its details, and from there, use the **View investigation** link to go to the corresponding [investigation](air-view-investigation-results.md#investigation-graph).  

> [!NOTE]
> Informational alerts are hidden in the alert view by default. To see them, change the alert filtering to include informational alerts.

If your organization manages your security alerts through an alert management system, service management system, or Security Information and Event Management (SIEM) system, you can send Office 365 alerts to that system via either email notification or via the [Office 365 Management Activity API](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference). The investigation alert notifications via email or API include links to access the alerts in the Security & Compliance Center, enabling the assigned security administrator to navigate quickly to the investigation.

![Alerts that link to investigations](../../media/air-alerts-page-details.png) 

## Security playbooks

Security playbooks are back-end policies that are at the heart of automation in Office Advanced Threat Protection and Microsoft Threat Protection. The security playbooks provided in AIR are based on common real-world security scenarios and developed based on feedback from Security Operations teams. A security playbook is launched automatically when specific alerts are triggered within your organization. Once the alert triggers, the associated playbook is run by the Automated Investigation and Response (AIR) system. The investigation steps through analysis of the alert based on that particular alert's playbook, looking at all the associated metadata (including email messages, users, subjects, senders, etc.). Based on the investigation playbook's findings, AIR recommends a set of actions that your organization's security team can take to control and mitigate the threat. 

The security playbooks you'll get with AIR are designed to tackle the most frequent threats that organizations encounter today with email. They're based on input from Security Operations and Incident Response teams, including those who help defend Microsoft and our customers' assets.

### Security playbooks are rolling out in phases

As part of AIR, security playbooks are rolling out in phases. Phase 1 is now generally available and includes several playbooks that provide recommendations for actions that security administrators can review and approve:
- User-reported phish message
- URL click verdict change
- Malware detected post-delivery (Malware ZAP)
- Phish detected post-delivery ZAP (Phish ZAP)

Phase 1 also includes support for administrator triggered e-mail investigations (using [Threat Explorer](threat-explorer.md)).

Phase 2 is now progress with the following playbooks in **public preview**, providing recommendations for actions and aiding security administrators in investigating issues:
- User reported as compromised (public preview)

Further playbooks will be released as they are completed. Visit the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap) to see what else is planned and coming soon.

### Playbooks include investigation and recommendations

In AIR, each security playbook includes: 
- a root investigation of an email's entities (files, URLs, recipients, IP addresses, etc.),
- further hunting for similar emails received by the organization 
- steps taken to identify and correlate other potential threats, and 
- recommended threat remediation actions.

Each high-level step includes a number of substeps that are executed to provide a deep, detailed, and exhaustive response to threats.

## Example: A user-reported phish message launches an investigation playbook

Suppose that a user in your organization receives an email that they think is a phishing attempt. The user, trained to report such messages, uses the [Report Message add-in](enable-the-report-message-add-in.md) to send it to Microsoft for analysis. The submission is also sent to your system and is visible in Explorer in the **Submissions** view (formerly referred to as the **User-reported** view). In addition, the user-reported message now triggers a system-based informational alert, which automatically launches the investigation playbook.

During the root investigation phase, various aspects of the email are assessed. These include:
- A determination about what type of threat it might be;
- Who sent it;
- Where the email was sent from (sending infrastructure);
- Whether other instances of the email were delivered or blocked;
- An assessment from our analysts;
- Whether the email is associated with any known campaigns;
- and more.

After the root investigation is complete, the playbook provides a list of recommended actions to take on the original email and entities associated with it.
  
Next, several threat investigation and hunting steps are executed:

- Similar email messages are identified via email cluster searches.
- The signal is shared with other platforms, such as [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection).
- A determination is made on whether any users have clicked through any malicious links in suspicious email messages.
- A check is done across Office 365 Exchange Online Protection ([EOP](exchange-online-protection-eop.md)) and Office 365 Advanced Threat Protection ([ATP](office-365-atp.md)) to see if there are any other similar messages reported by users.
- A check is done to see if a user has been compromised. This check leverages signals across Office 365, [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security), and [Azure Active Directory](https://docs.microsoft.com/azure/active-directory), correlating any related user activity anomalies. 

During the hunting phase, risks and threats are assigned to various hunting steps. 

Remediation is the final phase of the playbook. During this phase, remediation steps are taken, based on the investigation and hunting phases. 

## Example: A security administrator triggers an investigation from Threat Explorer

In addition to automatic investigations that are triggered by an alert, your organization's security operations team can trigger an automatic investigation from a view in [Threat Explorer](threat-explorer.md).

For example, suppose that you are using the **Malware** view in Threat Explorer. Using the tabs below the chart, you select the **Email** tab. If you select one or more items in the list, the **+ Actions** button activates. 

:::image type="content" source="../../media/Explorer-Malware-Email-ActionsInvestigate.png" alt-text="Explorer with selected messages":::

Using the **Actions** menu, you can select **Trigger investigation**.

:::image type="content" source="../../media/explorer-malwareview-selectedemails-actions.jpg" alt-text="Actions menu for selected messages":::

Similar to playbooks triggered by an alert, automatic investigations that are triggered from a view in Explorer include a root investigation, steps to identify and correlate threats, and recommended actions to mitigate those threats.

## Next steps

- [Get started using AIR in Office 365](office-365-air.md)

- [Visit the Microsoft 365 Roadmap to see what's coming soon and rolling out](https://www.microsoft.com/microsoft-365/roadmap?filters=)

