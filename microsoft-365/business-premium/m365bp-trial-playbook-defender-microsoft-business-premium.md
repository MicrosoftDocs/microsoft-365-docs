---
title: "Microsoft Defender for Business trial playbook"
f1.keywords:
- NOCSH
ms.author: v-kcirillo
author: cirilk
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.collection: m365-security-compliance
ms.localizationpriority: high
ms.prod: m365-security
search.appverid: 
- MOE150
- MET150
description: "Make the most of your Microsoft 365 Business Premium trial. Try out productivity and security capabilities."
---

<!---
Here's my recommended flow for this playbook:

3. Onboard and protect devices
- visit the Defender portal
- use the setup wizard https://docs.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-use-wizard?view=o365-worldwide
- onboard devices https://docs.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-onboard-devices?view=o365-worldwide&tabs=WindowsClientDevices
- review security policies https://docs.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-configure-security-settings?view=o365-worldwide

4. Use Office apps on devices
- install Office https://docs.microsoft.com/en-us/microsoft-365/business-premium/m365bp-install-office-apps?view=o365-worldwide&tabs=iPhone
- go to office.com and sign in https://support.microsoft.com/en-us/office/get-started-at-office-com-91a4ec74-67fe-4a84-a268-f6bdf3da1804
- create an Office document, such as a Word document https://support.microsoft.com/en-us/office/basic-tasks-in-word-87b3243c-b0bf-4a29-82aa-09a681999fdc
- share a document with a team member https://support.microsoft.com/en-us/office/share-your-documents-651e1cb9-9a51-46dc-8d32-bdb7d928eedd

5. Start using the Defender portal https://docs.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-get-started?view=o365-worldwide
- assess your security posture https://docs.microsoft.com/en-us/microsoft-365/security/defender/microsoft-secure-score-improvement-actions?view=o365-worldwide
- learn how to respond to a security incident https://docs.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-respond-mitigate-threats?view=o365-worldwide
- review remediation actions https://docs.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-review-remediation-actions?view=o365-worldwide

--->

# Trial playbook: Microsoft Business Premium

Welcome to the Microsoft Business Premium trial playbook. This playbook will help you make the most of your 30-day free trial by teaching you how Microsoft 365 Business Premium increases productivity as well as helps safeguard your organization with Defender for Business. Using Microsoft recommendations, learn how Defender can help you define protection policies, analyze threats to your organization, and enable you to respond to cyberattacks.

## Set up the Microsoft 365 Business Premium trial

When you [start a trial or purchase Microsoft 365 Business Premium](get-microsoft-365-business-premium.md), your first step is to get everything set up. When links in the playbook take you away from this location, simply return to this playbook to continue.

First, [set up your trial](../business-premium/m365bp-setup.md)!

After you've initiated the trial and completed the setup process, it may take up to two hours for changes to take effect.

We have automatically configured [Preset security policies](/security/office-365-security/preset-security-policies.md) in your environment. These policies represent a baseline protection profile that's suitable for most users. Standard protection includes:

- Safe Links, Safe Attachments and Anti-Phishing policies that are scoped to the entire tenant or subset of users you may have chosen during the trial setup process.

- Protection to all of the Microsoft 365 Business Premium features such as: SharePoint, OneDrive, Office apps, and Microsoft Teams.

Perform the following to finish setup:

1. Make sure to [add your existing domain](../admin/setup/setup-business-basic?view=o365-worldwide#add-your-domain-to-personalize-sign-in.md).

2. Now, [add users and assign licenses](../admin/add-users/add-users.md).

3. [Update your DNS records](/admin/setup/setup-business-basic?view=o365-worldwide#connect-your-domain.md).

### Add a domain
When you purchase Microsoft 365 Business Premium trial, you have the option of using a domain you own, or buying one during the sign-up.

> [!Note]
> If you purchased a new domain when you signed up, your domain is all set up and you can move to Add users and assign licenses. Go to the admin center at https://admin.microsoft.com.

1. Choose **Go to setup** to start the wizard.

1. In the **Add domain** step, enter the domain name you want to use (like contoso.com).

> [!Important]
> If you purchased a domain during the sign-up, you will not see Add a domain step here. Go to Add users instead.

1. Follow the steps in the wizard to Create DNS records at any DNS hosting provider for Office 365 that verifies you own the domain. If you know your domain host, see also Add a domain to Microsoft 365.

1. If your hosting provider is GoDaddy or another host enabled with domain connect, the process is easy and you'll be automatically asked to sign in and let Microsoft authenticate on your behalf.




<!---
Protect your most targeted and most visible users with Priority Account Protection in Defender for Office 365, which helps you prioritize your workflow to ensure these users are safe.

- Identify your most targeted or most visible users.
- [Tag these users](../admin/setup/priority-accounts.md#add-priority-accounts-from-the-setup-page) as priority accounts.
- Track threats to priority account throughout the portal.

Watch this video to learn more: [Protecting priority accounts in Microsoft Defender for Business - YouTube](https://www.youtube.com/watch?v=tqnj0TlzQcI&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=11).

:::image type="content" source="media/mdo-trial-playbook-alerts.png" alt-text="The Alerts in the Microsoft 365 Defender portal" lightbox="media/mdo-trial-playbook-alerts.png":::

### Avoid costly breaches by preventing user compromise

Get alerted to potential compromise and automatically limit the impact of these threats to prevent attackers from gaining deeper access to your environment.

- Review [compromised user alerts](../security/office-365-security/address-compromised-users-quickly.md#compromised-user-alerts).

- [Investigate and respond](/security/office-365-security/address-compromised-users-quickly.md) to compromised users.

:::image type="content" source="media/mdo-trial-playbook-investigation.png" alt-text="The Investigate compromised users" lightbox="media/mdo-trial-playbook-investigation.png":::

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

  :::image type="content" source="media/mdo-trial-playbook-campaign-details.png" alt-text="The Campaign details in the Microsoft 365 Defender portal" lightbox="media/mdo-trial-playbook-campaign-details.png":::

Watch this video to learn more: [Campaign Views in Microsoft Defender for Business - YouTube](https://www.youtube.com/watch?v=DvqzzYKu7cQ&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=14).

### Use automation to remediate risks

Respond efficiently using Automated investigation and response (AIR) to review, prioritize, and respond to threats.

- [Learn more](/security/office-365-security/automated-investigation-response-office.md) about investigation playbooks.

- [View details and results](/security/office-365-security/email-analysis-investigations.md) of an investigation.

- Eliminate threats by [approving remediation actions](../security/office-365-security/air-remediation-actions.md).

:::image type="content" source="media/mdo-trial-playbook-investigation-results.png" alt-text="The investigation results" lightbox="media/mdo-trial-playbook-investigation-results.png":::

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

  :::image type="content" source="media/mdo-trial-playbook-attack-simulation-training-results.png" alt-text="The attack simulation training insights in the Microsoft 365 Defender portal" lightbox="media/mdo-trial-playbook-attack-simulation-training-results.png":::

## Additional resources

- **Interactive guide**: Unfamiliar with Defender for Business? Review the [interactive guide](https://mslearn.cloudguides.com/guides/Safeguard%20your%20organization%20with%20Microsoft%20Defender%20for%20Office%20365) to understand how to get started.
- **Microsoft docs**: Get detailed information on how Defender for Business works and how to best implement it for your organization. Visit [Docs](../security/office-365-security/overview.md).
<!---
KC Note: I cannot find the equivalent of this to fix the link!
- **What's included**: For a full list of Defender for Business email security features listed by product tier, view the [Feature Matrix](office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability).

- **Why Defender for Business**: The [Defender for Business datasheet](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4FCiy) shows the top 10 reasons customers choose Microsoft.
 
--->
