---
title: "Microsoft Defender for Office 365 trial playbook"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.collection: m365-security-compliance
ms.localizationpriority: high
ROBOTS: NOINDEX, NOFOLLOW
ms.prod: m365-security
search.appverid: 
- MOE150
- MET150
description: "Microsoft Defender for Office 365 solutions trial playbook."
---

# Trial playbook: Microsoft Defender for Office 365

Welcome to the Microsoft Defender for Office 365 trial playbook. This playbook will help you make the most of your 90-day free trial by teaching you how to safeguard your organization with Defender for Office 365. Using Microsoft recommendations, you'll learn how Defender for Office 365 can help you define protection policies, analyze threats to your organization, and respond to attacks.

![A graphical representation of all components of Microsoft Defender for Office 365.](../../media/mdo-trial-playbook-what-is-mdo.png)

These actions are recommendations from the Microsoft Defender team on key features to try in your 90-day trial.

## Step 1: Getting started

### Start your Microsoft Defender for Office 365 trial

After you have initiated the trial and completed the setup process, it may take up to 2 hours for changes to take effect.

We have automatically configured [Preset security policies](preset-security-policies.md) in your environment. These policies represent a baseline protection profile that's suitable for most users. Standard protection includes:

- Safe Links, Safe Attachments and Anti-Phishing policies that are scoped to the entire tenant or subset of users you may have chosen during the trial setup process.
- Protection to SharePoint, OneDrive, Office apps, and Microsoft Teams.

Watch this video to learn more: [Protect against malicious links with Safe Links in Microsoft Defender for Office 365 - YouTube](https://www.youtube.com/watch?v=vhIJ1Veq36Y&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=9).

### Enable users to report suspicious content

Defender for Office 365 enables users to report messages to their security teams and allows admins to submit messages to Microsoft for analysis.

- Deploy the [Report Message add-in or the Report Phishing add-in](enable-the-report-message-add-in.md).
- Establish a workflow to [Report false positives and false negatives](report-false-positives-and-false-negatives.md).
- Use the [Submissions portal](admin-submission.md).

Watch this video to learn more: [Learn how to use the Submissions portal to submit messages for analysis - YouTube](https://www.youtube.com/watch?v=ta5S09Yz6Ks&ab_channel=MicrosoftSecurit).

### Review reports to understand the threat landscape

Use the reporting capabilities in Defender for Office 365 to get more details about your environment.

- Understand threats received in email and collaboration tools with the [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).
- See where threats are blocked with the [Mailflow status report](view-email-security-reports.md#mailflow-status-report).
- [Review links](view-reports-for-mdo.md#url-protection-report) that were viewed by users or blocked by the system.

![Email & collaboration reports in the Microsoft 365 Defender portal.](../../media/mdo-trial-playbook-reporting.png)

## Step 2: Intermediate steps

### Prioritize focus on your most targeted users

Protect your most targeted and most visible users with Priority Account Protection in Defender for Office 365, which helps you prioritize your workflow to ensure these users are safe.

- Identify your most targeted or most visible users.
- [Tag these users](../../admin/setup/priority-accounts.md#add-priority-accounts-from-the-setup-page) as priority accounts.
- Track threats to priority account throughout the portal.

Watch this video to learn more: [Protecting priority accounts in Microsoft Defender for Office 365 - YouTube](https://www.youtube.com/watch?v=tqnj0TlzQcI&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=11).

![Alerts in the Microsoft 365 Defender portal.](../../media/mdo-trial-playbook-alerts.png)

### Avoid costly breaches by preventing user compromise

Get alerted to potential compromise and automatically limit the impact of these threats to prevent attackers from gaining deeper access to your environment.

- Review [compromised user alerts](address-compromised-users-quickly.md#compromised-user-alerts).
- [Investigate and respond](address-compromised-users-quickly.md) to compromised users.

![Investigate compromised users.](../../media/mdo-trial-playbook-investigation.png)

Watch this video to learn more: [Detect and respond to compromise in Microsoft Defender for Office 365 - YouTube](https://www.youtube.com/watch?v=Pc7y3a-wdR0&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=5).

### Use Threat Explorer to investigate malicious email

Defender for Office 365 enables you to investigate activities that put people in your organization at risk and to take action to protect your organization. You can do this using [Threat Explorer or (real-time detections)](threat-explorer.md).

- [Find suspicious email that was delivered](investigate-malicious-email-that-was-delivered.md#find-suspicious-email-that-was-delivered): Find and delete messages, identify the IP address of a malicious email sender, or start an incident for further investigation.
- [Check the delivery action and location](investigate-malicious-email-that-was-delivered.md#check-the-delivery-action-and-location): This check lets you know the location of problem email messages.
- [View the timeline of your email](investigate-malicious-email-that-was-delivered.md#view-the-timeline-of-your-email): Simply hunting for your security operations team.

### See campaigns targeting your organization

See the bigger picture with Campaign Views in Defender for Office 365, which gives you a view of the attack campaigns targeting your organization and the impact they have on your users.

- [Identify campaigns](campaigns.md#what-is-a-campaign) targeting your users.
- [Visualize the scope](campaigns.md#campaign-views-in-the-microsoft-365-defender-portal) of the attack.
- [Track user interaction](campaigns.md#campaign-details) with these messages.

![Campaign details in the Microsoft 365 Defender portal.](../../media/mdo-trial-playbook-campaign-details.png)

Watch this video to learn more: [Campaign Views in Microsoft Defender for Office 365 - YouTube](https://www.youtube.com/watch?v=DvqzzYKu7cQ&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=14).

### Use automation to remediate risks

Respond efficiently using Automated investigation and response (AIR) to review, prioritize, and respond to threats.

- [Learn more](automated-investigation-response-office.md) about investigation playbooks.
- [View details and results](email-analysis-investigations.md) of an investigation.
- Eliminate threats by [approving remediation actions](air-remediation-actions.md).

![Investigation results.](../../media/mdo-trial-playbook-investigation-results.png)

## Step 3: Advanced content

### Dive deep into data with query-based hunting

Use Advanced hunting to write custom detection rules, proactively inspect events in your environment, and locate threat indicators. Explore raw data in your environment.

- [Build custom detection rules](../defender/advanced-hunting-overview.md#get-started-with-advanced-hunting).
- [Access shared queries](../defender/advanced-hunting-shared-queries.md) created by others.

Watch this video to learn more: [Threat hunting with Microsoft 365 Defender - YouTube](https://www.youtube.com/watch?v=l3OmH4U6XAs&list=PL3ZTgFEc7Lyt1O81TZol31YXve4e6lyQu&index=4).

### Train users to spot threats by simulating attacks

Equip your users with the right knowledge to identify threats and report suspicious messages with Attack simulation training in Defender for Office 365.

- [Simulate realistic threats](attack-simulation-training.md) to identify vulnerable users.
- [Assign training](attack-simulation-training.md#assign-training) to users based on simulation results.
- [Track progress](attack-simulation-training-insights.md) of your organization in simulations and training completion.

![Attack simulation training insights in the Microsoft 365 Defender portal.](../../media/mdo-trial-playbook-attack-simulation-training-results.png)

## Additional resources

- **Interactive guide**: Unfamiliar with Defender for Office 365? Review the [interactive guide](https://mslearn.cloudguides.com/guides/Safeguard%20your%20organization%20with%20Microsoft%20Defender%20for%20Office%20365) to understand how to get started.
- **Microsoft docs**: Get detailed information on how Defender for Office 365 works and how to best implement it for your organization. Visit [Docs](overview.md).
- **What's included**: For a full list of Office 365 email security features listed by product tier, view the [Feature Matrix](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability).
- **Why Defender for Office 365**: The [Defender for Office 365 Datasheet](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4FCiy) shows the top 10 reasons customers choose Microsoft.
