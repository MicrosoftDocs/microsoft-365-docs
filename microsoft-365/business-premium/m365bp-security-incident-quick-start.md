---
title: "A security incident quick start guide"
f1.keywords:
- NOCSH
ms.author: v-kcirillo
author: cirilk
manager: dansimp
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: high
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
- Adm_TOC
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: 80bdae57-f8bc-4e40-a58c-956007117ecb
description: "A guide for what to focus your efforts upon in the Defender portal."
---

# Microsoft Business Premium quick start

The following guidance provides a starting point to help you make decisions about security incident priorities in the Microsoft Defender portal.  
  
## Daily tasks

Here are some suggestions for security tasks to pursue on a daily basis.

### Review for devices with threat detections

To find out if you have any devices that have had threats at them, do the following.

1. Go to the Microsoft 365 Defender portal (https://security.microsoft.com) and sign in.

1. In the navigation pane, choose **Reports > General > Security report**.

1. Scroll down to the Vulnerable devices row. If threats were detected on devices, you'll see that information in this row.

### New incidents or alerts

1. Go to the Microsoft 365 Defender portal (https://security.microsoft.com) and sign in.

1. In the Navigation menu, select **Incidents**. Incidents are displayed on the page with associated alerts.

1. Select an alert to open its flyout pane, where you can learn more about the alert.

1. In the flyout, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert.

### Run a scan or investigation

1. In the Microsoft 365 Defender portal (https://security.microsoft.com), in the navigation pane, choose Device inventory.

1. Select a device to open its flyout panel, and review the information that is displayed.

1. Select the ellipsis (...) to open the actions menu.

1. Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**.

## Weekly tasks

Here are some suggestions of important security tasks to do at least on a weekly basis.

### Monitor and respond to your Microsoft Secure score

Microsoft Secure Score is a measurement of an organization's security posture, with a higher number indicating fewer improvement actions are needed.

The Secure Score helps organizations:

- Report on the current state of the organization's security posture.
- Improve their security posture by providing discoverability, visibility, guidance, and control.
- Compare with benchmarks and establish key performance indicators (KPIs).

To check your secure score, in the Navigation pane choose **Secure score**. Review and make decisions about the Remediations and Actions in order to improve your overall Microsoft secure score.

### Look at threat vulnerability

In brief, you can get a snapshot of threat vulnerability by looking at the Vulnerability management dashboard. It reflects how vulnerable your organization is to cybersecurity threats. A high exposure score means your devices are more vulnerable to exploitation.

1. In the Navigation pane, select **Vulnerability management > Dashboard**.

1. Take a look at your Organization exposure score. If it's in the acceptable or "High" range, you can move on. If it isn't, click **Improve score** to see additional details and security recommendations to improve this score.

Being aware of your exposure score helps you:

- Quickly understand and identify high-level takeaways about the state of security in your organization.
- Detect and respond to areas that require investigation or action to improve the current state.
- Communicate with peers and management about the impact of security efforts.

### Review the secure score for devices

Also located in found in the Vulnerability management dashboard is the Microsoft Secure score for devices card. This card displays your current score and a higher score indicates your endpoints are more resilient to cyberattacks. It reflects the security state of all the devices, collectively.

The data on this card is the product of a meticulous and ongoing vulnerability discovery process. It's aggregated with configuration discovery assessments that continuously:

- Compare collected configurations to the collected benchmarks to discover misconfigured assets
- Map configurations to vulnerabilities that can be remediated or partially remediated (risk reduction)
- Collect and maintain best practice configuration benchmarks (vendors, security feeds, internal research teams)
- Collect and monitor changes of security control configuration state from all assets.

### Improve your secure score for devices

Improve your security configuration by remediating issues using the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities going forward. It's always worth the time it takes to review and improve your score.

1. To check your secure score, from the Navigation pane select **Secure score**.

1. From the Microsoft Secure Score for Devices card in the Defender Vulnerability Management dashboard, select one of the categories. A list of recommendations related to that category displays, along with recommendations.

1. Select an item on the list to display details related to the recommendation.

1. Select **Remediation options**.

1. Read the description to understand the context of the issue and what to do next. Choose a due date, add notes, and select Export all remediation activity data to CSV so you can attach it to an email for follow-up. A confirmation message tells you the remediation task has been created.

1. Send a follow-up email to your IT Administrator and allow for the time that you've allotted for the remediation to propagate in the system.

1. Return to the Microsoft Secure Score for Devices card on the dashboard. The number of security controls recommendations has decreased as a result of your actions.

1. Select **Security controls** to go back to the Security recommendations page. The item that you addressed is not listed there anymore, which results in your Microsoft secure score improving.

## Monthly tasks

These are tasks that you should do on a monthly basis, if not more often. 

### Use the Threat analytics dashboard

Use the threat analytics dashboard to get an overview of the current threat landscape by highlighting reports that are most relevant to your organization. 

Select **Threat analytics** off of the Navigation pane to display the Threat analytics dashboard. The dashboard summarizes the threats into the following sections:

- Latest threats—lists the most recently published or updated threat reports, along with the number of active and resolved alerts.
- High-impact threats—lists the threats that have the highest impact to your organization. This section lists threats with the highest number of active and resolved alerts first.
- Highest exposure—lists threats with the highest exposure levels first. The exposure level of a threat is calculated using two pieces of information: how severe the vulnerabilities associated with the threat are, and how many devices in your organization could be exploited by those vulnerabilities.

Click on the title of the one you want to investigate, and read the associated report. You can also review the full Analyst report for additional detail, or select other headings to view the related incidents, impacted assets, and exposure and mitigations.

### Review Pending items in Action center

As threats are detected, remediation actions come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval, which is why these should be monitored regularly. Examples of remediation actions include sending a file to quarantine, stopping a process from running, and removing a scheduled task. All remediation actions are tracked in the Action center.

1. In the navigation pane, choose Action center.

1. Select the Pending tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus/antimalware protection, automated investigations, manual response activities, or live response sessions.

1. Select the History tab to view a list of completed actions.

### Remediate an item

Microsoft Defender for Business includes several remediation actions. These actions include manual response actions, actions following automated investigation, and live response actions.

### Run reports

Several reports are available in the Microsoft 365 Defender portal.

1. Select **Reports** from the Navigation pane.

1. Choose a report to review. Each report displays a number of pertinent categories for that report. 

1. Click **View details** to see deeper information for each category. 

1. Select the title of a particular threat to see details specific to it. 

## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)