---
title: "Microsoft Defender for Business trial playbook"
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
description: "A playbook for the Microsoft Defender for Business solutions."
---

# Trial playbook: Microsoft Defender for Microsoft Business Premium

Welcome to the Microsoft Defender for Microsoft Business Premium trial playbook. This playbook will help you make the most of your 90-day free trial by teaching you how to safeguard your organization with Defender for Business. Using Microsoft recommendations, you'll learn how Defender can help you define protection policies, analyze threats to your organization, and help you respond to attacks.

:::image type="content" source="/media/mdo-trial-playbook-what-is-mdo.png" alt-text="A graphical representation of all components of Microsoft Defender for Business Premium" lightbox="/media/mdo-trial-playbook-what-is-mdo.png":::

These actions are recommendations from the Microsoft Defender team on key features to try in your 90-day trial.

## Step 1: Getting started

### Start your Microsoft Defender for Business trial

After you have initiated the trial and completed the setup process, it may take up to 2 hours for changes to take effect.

We have automatically configured [Preset security policies](/security/office-365-security/preset-security-policies.md) in your environment. These policies represent a baseline protection profile that's suitable for most users. Standard protection includes:

- Safe Links, Safe Attachments and Anti-Phishing policies that are scoped to the entire tenant or subset of users you may have chosen during the trial setup process.

- Protection to all of the Microsoft 365 Business Premium features such as: SharePoint, OneDrive, Office apps, and Microsoft Teams.

<!---
KC Note: a video equivalent for Business Premium instead of Office would be great. But, do the Office videos actually apply anyway since that's one way that users are sharing information in a productivity environment?

Watch this video to learn more: [Protect against malicious links with Safe Links in Microsoft Defender for Business - YouTube](https://www.youtube.com/watch?v=vhIJ1Veq36Y&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=9).
--->

### Enable users to report suspicious content

Microsoft Defender for enables users to report messages to their security teams and allows admins to submit messages to Microsoft for analysis.

- Deploy the [Report Message add-in or the Report Phishing add-in](/security/office-365-security/enable-the-report-message-add-in.md).

- Establish a workflow to [Report false positives and false negatives](/security/office-365-security/report-false-positives-and-false-negatives.md).

- Use the [Submissions portal](/security/office-365-security/admin-submission.md).

Watch this video to learn more: [Learn how to use the Submissions portal to submit messages for analysis - YouTube](https://www.youtube.com/watch?v=ta5S09Yz6Ks&ab_channel=MicrosoftSecurit).

### Review reports to understand the threat landscape

Use the reporting capabilities in Defender for Business to get more details about your environment.

- Understand threats received in email and collaboration tools with the [Threat protection status report](../security/office-365-security/view-email-security-reports.md#threat-protection-status-report).

- See where threats are blocked with the [Mailflow status report](../security/office-365-security/view-email-security-reports.md#mailflow-status-report).

- [Review links](../security/office-365-security/view-reports-for-mdo.md#url-protection-report) that were viewed by users or blocked by the system.

:::image type="content" source="/media/mdo-trial-playbook-reporting.png" alt-text="The Email & collaboration reports in the Microsoft 365 Defender portal" lightbox="/media/mdo-trial-playbook-reporting.png":::

## Step 2: Intermediate steps

### Prioritize focus on your most targeted users

Protect your most targeted and most visible users with Priority Account Protection in Defender for Office 365, which helps you prioritize your workflow to ensure these users are safe.

- Identify your most targeted or most visible users.
- [Tag these users](../admin/setup/priority-accounts.md#add-priority-accounts-from-the-setup-page) as priority accounts.
- Track threats to priority account throughout the portal.

Watch this video to learn more: [Protecting priority accounts in Microsoft Defender for Business - YouTube](https://www.youtube.com/watch?v=tqnj0TlzQcI&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=11).

:::image type="content" source="/media/mdo-trial-playbook-alerts.png" alt-text="The Alerts in the Microsoft 365 Defender portal" lightbox="/media/mdo-trial-playbook-alerts.png":::

### Avoid costly breaches by preventing user compromise

Get alerted to potential compromise and automatically limit the impact of these threats to prevent attackers from gaining deeper access to your environment.

- Review [compromised user alerts](../security/office-365-security/address-compromised-users-quickly.md#compromised-user-alerts).

- [Investigate and respond](/security/office-365-security/address-compromised-users-quickly.md) to compromised users.

:::image type="content" source="/media/mdo-trial-playbook-investigation.png" alt-text="The Investigate compromised users" lightbox="/media/mdo-trial-playbook-investigation.png":::

Watch this video to learn more: [Detect and respond to compromise in Microsoft Defender for Business - YouTube](https://www.youtube.com/watch?v=Pc7y3a-wdR0&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=5).

### Use Threat Explorer to investigate malicious email

Defender for Business enables you to investigate activities that put people in your organization at risk and to take action to protect your organization. You can do this using [Threat Explorer or (real-time detections)](/security/office-365-security/threat-explorer.md).

- [Find suspicious email that was delivered](../security/office-365-security/investigate-malicious-email-that-was-delivered.md#find-suspicious-email-that-was-delivered): Find and delete messages, identify the IP address of a malicious email sender, or start an incident for further investigation.

- [Check the delivery action and location](../security/office-365-security/investigate-malicious-email-that-was-delivered.md#check-the-delivery-action-and-location): This check lets you know the location of problem email messages.

- [View the timeline of your email](../security/office-365-security/investigate-malicious-email-that-was-delivered.md#view-the-timeline-of-your-email): Simply hunting for your security operations team.

### See attack campaigns targeting your organization

See the bigger picture with Campaign Views in Defender for Microsoft 365 Business Premium, which gives you a view of the attack campaigns that are targeting your organization and the impact they have on your users.

- [Identify attack campaigns](../security/office-365-security/campaigns.md#what-is-a-campaign) targeting your users.

- [Visualize the scope](../security/office-365-security/campaigns.md#campaign-views-in-the-microsoft-365-defender-portal) of the attack.

- [Track user interaction](../security/office-365-security/campaigns.md#campaign-details) with these messages.

  :::image type="content" source="/media/mdo-trial-playbook-campaign-details.png" alt-text="The Campaign details in the Microsoft 365 Defender portal" lightbox="/media/mdo-trial-playbook-campaign-details.png":::

Watch this video to learn more: [Campaign Views in Microsoft Defender for Business - YouTube](https://www.youtube.com/watch?v=DvqzzYKu7cQ&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=14).

### Use automation to remediate risks

Respond efficiently using Automated investigation and response (AIR) to review, prioritize, and respond to threats.

- [Learn more](/security/office-365-security/automated-investigation-response-office.md) about investigation playbooks.

- [View details and results](/security/office-365-security/email-analysis-investigations.md) of an investigation.

- Eliminate threats by [approving remediation actions](../security/office-365-security/air-remediation-actions.md).

:::image type="content" source="/media/mdo-trial-playbook-investigation-results.png" alt-text="The investigation results" lightbox="/media/mdo-trial-playbook-investigation-results.png":::

## Step 3: Advanced content

### Dive deep into data with query-based hunting

Use Advanced hunting to write custom detection rules, proactively inspect events in your environment, and locate threat indicators. Explore raw data in your environment.

- [Build custom detection rules](/security/defender/advanced-hunting-overview.md#get-started-with-advanced-hunting).

- [Access shared queries](/security/defender/advanced-hunting-shared-queries.md) created by others.

Watch this video to learn more: [Threat hunting with Microsoft 365 Defender - YouTube](https://www.youtube.com/watch?v=l3OmH4U6XAs&list=PL3ZTgFEc7Lyt1O81TZol31YXve4e6lyQu&index=4).

### Train users to spot threats by simulating attacks

Equip your users with the right knowledge to identify threats and report suspicious messages with Attack simulation training in Defender for Office 365.

- [Simulate realistic threats](/security/office-365-security/attack-simulation-training.md) to identify vulnerable users.

- [Assign training](/security/office-365-security/attack-simulation-training.md#assign-training) to users based on simulation results.

- [Track progress](/security/office-365-security/attack-simulation-training-insights.md) of your organization in simulations and training completion.

  :::image type="content" source="/media/mdo-trial-playbook-attack-simulation-training-results.png" alt-text="The attack simulation training insights in the Microsoft 365 Defender portal" lightbox="/media/mdo-trial-playbook-attack-simulation-training-results.png":::

## Additional resources

- **Interactive guide**: Unfamiliar with Defender for Business? Review the [interactive guide](https://mslearn.cloudguides.com/guides/Safeguard%20your%20organization%20with%20Microsoft%20Defender%20for%20Office%20365) to understand how to get started.
- **Microsoft docs**: Get detailed information on how Defender for Business works and how to best implement it for your organization. Visit [Docs](../security/office-365-security/overview.md).
<!---
KC Note: I cannot find the equivalent of this to fix the link!
- **What's included**: For a full list of Defender for Business email security features listed by product tier, view the [Feature Matrix](office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability).
--->
- **Why Defender for Business**: The [Defender for Business datasheet](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4FCiy) shows the top 10 reasons customers choose Microsoft.
