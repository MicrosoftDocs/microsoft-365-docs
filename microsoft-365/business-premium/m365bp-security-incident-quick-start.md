---
title: "A security operations guide for Microsoft 365 Business Premium"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: other
ms.date: 09/15/2022
ms.localizationpriority: high
ms.collection:
- m365solution-smb
- highpri
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "A set of suggestions for what to focus your efforts upon in the Defender portal when it comes to daily, weekly or monthly operations. "
---

# Microsoft 365 Business Premium security operations guide

If you're new to Microsoft 365 Business Premium, or if you don't already have a security operations guide in place, this article can serve as a starting point. If you already have a security operations guide, review it against the recommendations in this article.

You can use this guidance to make decisions about security incident priorities and tasks your security team will perform in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

| Suggested frequency | Tasks  |
|---------|---------|
| Daily  | [Check your threat vulnerability](#check-your-threat-vulnerability).<br/>[Review pending actions in the Action center](#review-pending-actions-in-the-action-center).<br/>[Review devices with threat detections](#review-devices-with-threat-detections).<br/>[Learn about new incidents or alerts](#learn-about-new-incidents-or-alerts). |
| Weekly | [Monitor and improve your Microsoft Secure score](#monitor-and-improve-your-microsoft-secure-score).<br/>[Review the secure score for devices](#review-the-secure-score-for-devices).<br/>[Improve your secure score for devices](#improve-your-secure-score-for-devices). |
| Monthly | [Run reports](#run-reports).<br/>[Run a simulation tutorial](#run-a-simulation-tutorial).<br/>[Explore the Learning hub](#explore-the-learning-hub). |
| As needed | [Use the Threat analytics dashboard](#use-the-threat-analytics-dashboard).<br/>[Run a scan or automated investigation](#run-a-scan-or-automated-investigation).<br/>[Remediate an item](#remediate-an-item). | 

The following sections provide more details about each task.
  
## Suggested daily tasks

Here are some suggestions for security tasks to pursue on a daily basis.

- [Check your threat vulnerability](#check-your-threat-vulnerability).
- [Review pending actions in the Action center](#review-pending-actions-in-the-action-center).
- [Review devices with threat detections](#review-devices-with-threat-detections).
- [Learn about new incidents or alerts](#learn-about-new-incidents-or-alerts).

### Check your threat vulnerability

In brief, you can get a snapshot of threat vulnerability by looking at the Vulnerability management dashboard. It reflects how vulnerable your organization is to cybersecurity threats. A high exposure score means your devices are more vulnerable to exploitation.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Vulnerability management > Dashboard**.

2. Take a look at your Organization exposure score. If it's in the acceptable or "High" range, you can move on. If it isn't, select **Improve score** to see more details and security recommendations to improve this score.

Being aware of your exposure score helps you:

- Quickly understand and identify high-level takeaways about the state of security in your organization
- Detect and respond to areas that require investigation or action to improve the current state
- Communicate with peers and management about the impact of security efforts

### Review pending actions in the Action center

As threats are detected, remediation actions come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval, which is why these should be monitored regularly. Examples of remediation actions include sending a file to quarantine, stopping a process from running, and removing a scheduled task. All remediation actions are tracked in the Action center.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Action center**.

2. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus or antimalware protection, automated investigations, manual response activities, or live response sessions.

3. Select the **History** tab to view a list of completed actions.

### Review devices with threat detections

To find out if you have any devices that have had threats at them, do the following.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports > General > Security report**.

2. Scroll down to the Vulnerable devices row. If threats were detected on devices, you'll see that information in this row.

### Learn about new incidents or alerts

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation menu, select **Incidents**. Incidents are displayed on the page with associated alerts.

2. Select an alert to open its flyout pane, where you can learn more about the alert.

3. In the flyout, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert.

### Run a scan or automated investigation

1. In the Microsoft 365 Defender portal (https://security.microsoft.com), in the navigation pane, choose Device inventory.

2. Select a device to open its flyout panel, and review the information that is displayed.

3. Select the ellipsis (...) to open the actions menu.

4. Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**.

## Suggested weekly tasks

Here are some suggestions of important security tasks to do at least on a weekly basis.

- [Monitor and improve your Microsoft Secure score](#monitor-and-improve-your-microsoft-secure-score).
- [Review the secure score for devices](#review-the-secure-score-for-devices).
- [Improve your secure score for devices](#improve-your-secure-score-for-devices).

### Monitor and improve your Microsoft Secure score

Microsoft Secure Score is a measurement of an organization's security posture, with a higher number indicating fewer improvement actions are needed.

The Secure Score helps organizations:

- Report on the current state of the organization's security posture.
- Improve their security posture by providing discoverability, visibility, guidance, and control.
- Compare with benchmarks and establish key performance indicators (KPIs).

1. To check your secure score, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane choose **Secure score**. 

2. Review and make decisions about the remediations and actions in order to improve your overall Microsoft secure score.

### Review the secure score for devices

Also located in found in the Vulnerability management dashboard is the Microsoft Secure score for devices card. This card displays your current score and a higher score indicates your endpoints are more resilient to cyberattacks. It reflects the security state of all the devices, collectively.

The data on this card is the product of a meticulous and ongoing vulnerability discovery process. It's aggregated with configuration discovery assessments that continuously:

- Compare collected configurations to the collected benchmarks to discover misconfigured assets
- Map configurations to vulnerabilities that can be remediated or partially remediated (risk reduction)
- Collect and maintain best practice configuration benchmarks (vendors, security feeds, internal research teams)
- Collect and monitor changes of security control configuration state from all assets

### Improve your secure score for devices

Improve your security configuration by remediating issues using the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities going forward. It's always worth the time it takes to review and improve your score.

1. To check your secure score, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane select **Secure score**.

2. From the **Microsoft Secure Score for Devices** card in the Defender Vulnerability Management dashboard, select one of the categories. A list of recommendations related to that category displays, along with recommendations.

3. Select an item on the list to display details related to the recommendation.

4. Select **Remediation options**.

5. Read the description to understand the context of the issue and what to do next. Choose a due date, add notes, and select Export all remediation activity data to CSV so you can attach it to an email for follow-up. A confirmation message tells you the remediation task has been created.

6. Send a follow-up email to your IT Administrator and allow for the time that you've allotted for the remediation to propagate in the system.

7. Return to the Microsoft Secure Score for Devices card on the dashboard. The number of security controls recommendations has decreased as a result of your actions.

8. Select **Security controls** to go back to the Security recommendations page. The item that you addressed isn't listed there anymore, which results in your Microsoft secure score improving.

## Suggested monthly tasks

These tasks should be done on at least a monthly basis, if not more often. 

- [Run reports](#run-reports).
- [Run a simulation tutorial](#run-a-simulation-tutorial).
- [Explore the Learning hub](#explore-the-learning-hub).

### Run reports

Several reports are available in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Reports**.

2. Choose a report to review. Each report displays many pertinent categories for that report.

3. Select **View details** to see deeper information for each category.

4. Select the title of a particular threat to see details specific to it.

### Run a simulation tutorial

It's always a good idea to increase the security preparedness for you and your team through training. You can access simulation tutorials in the Microsoft 365 Defender portal. The tutorials cover several types of cyber threats. 

To get started:

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Tutorials**.

2. Read the walk-through for a tutorial you're interested in running, and then download the file, or copy the script needed to run the simulation according to the instructions.

### Explore the Learning hub

There are many areas in the Learning hub through which you can increase your knowledge of many of the threats that are out there, and how to address them. We recommend that you and your teams spend some time exploring the resources that are offered, especially in the Microsoft 365 Defender and Endpoints sections.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Learning hub**.

2. Select an area, such as **Microsoft 365 Defender** or **Endpoints**.

3. Select an item to learn more about each concept. 

> [!NOTE]
> Some resources in the Learning hub might cover functionality that isn't actually included in Microsoft 365 Business Premium. For example, advanced hunting capabilities are included in enterprise subscriptions, such as Defender for Endpoint Plan 2 or Microsoft 365 Defender, but not in Microsoft 365 Business Premium. [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../security/defender-business/compare-mdb-m365-plans.md).

## As needed

Perform these tasks as needed or as appropriate:

- [Use the Threat analytics dashboard](#use-the-threat-analytics-dashboard).
- [Run a scan or automated investigation](#run-a-scan-or-automated-investigation).
- [Remediate an item](#remediate-an-item).

### Use the Threat analytics dashboard

Use the threat analytics dashboard to get an overview of the current threat landscape by highlighting reports that are most relevant to your organization. 

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Threat analytics** to display the Threat analytics dashboard. 

   The dashboard summarizes the threats into the following sections:

   - Latest threats—lists the most recently published or updated threat reports, along with the number of active and resolved alerts.
   - High-impact threats—lists the threats that have the highest impact to your organization. This section lists threats with the highest number of active and resolved alerts first.
   - Highest exposure—lists threats with the highest exposure levels first. The exposure level of a threat is calculated using two pieces of information: how severe the vulnerabilities associated with the threat are, and how many devices in your organization could be exploited by those vulnerabilities.

2. Select the title of the one you want to investigate, and read the associated report. 

3. You can also review the full Analyst report for more details, or select other headings to view the related incidents, impacted assets, and exposure and mitigations.

### Remediate an item

Microsoft 365 Business Premium includes several remediation actions. These actions include manual response actions, actions following automated investigation, and live response actions.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, go to **Assets** > **Devices**.

   :::image type="content" source="./../media/defender-business/mdb-deviceinventory.png" alt-text="Screenshot of device inventory":::

2. Select a device, such as one with a high risk level or exposure level. A flyout pane opens and displays more information about alerts and incidents generated for that item, as shown in the following image:  

   :::image type="content" source="./../media/defender-business/mdb-deviceinventory-selecteddeviceflyout.png" alt-text="Screenshot of the flyout pane for a selected device":::

3. On the flyout, view the information that is displayed. Select the ellipsis (...) to open a menu that lists available actions, as shown in the following image: 

   :::image type="content" source="./../media/defender-business/mdb-deviceinventory-selecteddeviceflyout-menu.png" alt-text="Screenshot of available actions for a selected device":::

4. Select an available action. For example, you might choose **Run antivirus scan**, which will cause Microsoft Defender Antivirus to start a quick scan on the device. Or, you could select **Initiate Automated Investigation** to trigger an automated investigation on the device.

#### Remediation actions in Microsoft 365 Business Premium

The following table summarizes remediation actions that are available in Microsoft 365 Business Premium:

| Source  | Actions  |
|---------|---------|
| Automated investigations      | - Quarantine a file <br/>- Remove a registry key <br/>- Kill a process <br/>- Stop a service <br/>- Disable a driver <br/>- Remove a scheduled task        |
| Manual response actions   | - Run antivirus scan <br/>- Isolate device <br/>- Stop and quarantine <br/>- Add an indicator to block or allow a file       |
| Live response  | - Collect forensic data <br/>- Analyze a file <br/>- Run a script <br/>- Send a suspicious entity to Microsoft for analysis <br/>- Remediate a file <br/>- Proactively hunt for threats  |




## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)