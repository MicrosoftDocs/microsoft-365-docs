---
title: "Automated investigation and response (AIR) in Office 365"
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
---

# Automated investigation and response (AIR) in Office 365

As security alerts are triggered, it's up to your security operations team to look into those alerts and take steps to protect your organization. 

Automated investigation and response (AIR) capabilities enable your security operations team to operate more efficiently and effectively. These capabilities use automated investigation processes that mimic  in response to well known threats that exist today. AIR can help your security operations team operate more efficiently and effectively.
- To get an overview how AIR works, use this article.
- To get started using AIR, see [Automatically investigate and respond to threats in Office 365](office-365-air.md).

> [!TIP]
> Do you have Microsoft 365 E5 or Microsoft 365 E3 together with Identity & Threat Protection? Consider trying [Microsoft Threat Protection](../mtp/microsoft-threat-protection.md).



## Alerts

[Alerts](../../compliance/alert-policies.md#viewing-alerts) represent triggers for security operations team workflows for incident response. Prioritizing the right set of alerts for investigation, while making sure no threats are unaddressed is challenging. When investigations into alerts are performed manually, Security Operations teams must hunt and correlate entities (such as content, devices and users) at risk from threats. Such tasks and workflows can be very time consuming and involve multiple tools and systems. With AIR, investigation and response for Office 365 security events are automated by having key security and threat management alerts trigger security response playbooks automatically. 

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

When a user in your organization submits an email message and reports it to Microsoft by using the [Report Message add-in for Outlook or Outlook Web App](enable-the-report-message-add-in.md), the report is also sent to your system and is visible in Explorer in the User-reported view. This user-reported message now triggers a system-based informational alert, which automatically launches the investigation playbook.

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

For example, suppose that you are viewing data in Explorer about user-reported messages. You can select an item in the list of results, and then click **Investigate** from the action menu (assuming you have appropriate remediation permissions).

![User-reported messages in Explorer with Investigate button](../../media/Explorer-UserReported-Investigate.png)

As another example, suppose you are viewing data about email messages detected as containing malware, and there are several email messages detected as containing malware. You can select the **Email** tab, select one or more email messages, and then, on the **Actions** menu, select **Investigate**. 

![Starting an investigation for malware in Explorer](../../media/Explorer-Malware-Email-ActionsInvestigate.png)

Similar to playbooks triggered by an alert, automatic investigations that are triggered from a view in Explorer include a root investigation, steps to identify and correlate threats, and recommended actions to mitigate those threats.

## How to get AIR

Office 365 AIR is included in the following subscriptions:

- Microsoft 365 E5
- Office 365 E5
- Microsoft Threat Protection
- Office 365 Advanced Threat Protection Plan 2

If you don't have any of these subscriptions, [start a free trial](https://go.microsoft.com/fwlink/p/?LinkID=698279&culture=en-US&country=US).

To learn more about feature availability, visit the [Feature availability across Advanced Threat Protection (ATP) plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Required permissions to use AIR capabilities

Permissions are granted through certain roles, such as those that are described in the following table: 

|Task |Role(s) required |
|--|--|
|To set up AIR features |One of the following roles: <br/>- **Global Administrator**<br/>- **Security Administrator** <br/>These roles can be assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). |
|To approve or reject recommended actions|One of the following roles, assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center)):<br/>- **Global Administrator** <br/>- **Security Administrator**<br/>- **Security Reader** <br/>--- and ---<br/>- **Search and Purge** (this role is assigned only in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). You might have to create a new role group there and add the Search and Purge role to that new role group.)

## Next steps

- [Get started using AIR in Office 365](office-365-air.md)
- [Visit the Microsoft 365 Roadmap to see what's coming soon and rolling out](https://www.microsoft.com/microsoft-365/roadmap?filters=)

