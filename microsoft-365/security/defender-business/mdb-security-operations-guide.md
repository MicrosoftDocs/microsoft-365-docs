---
title: "Security operations guide for Microsoft Defender for Business"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.date: 05/25/2023
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier2
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Learn about daily, weekly, monthly, and as needed tasks for your security team to perform with Defender for Business."
---

# Microsoft Defender for Business security operations guide

If you're new to Defender for Business, or if your business doesn't have a security operations guide in place yet, use this article as a starting point. If you do already have a security operations guide, review it against the recommendations in this article.

You can use this guidance to make decisions about security incident priorities and tasks your security team will perform in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

## Security operations tasks to perform

### Daily tasks

| Task | Description  |
|---------|---------|
| Check your threat vulnerability management dashboard | Get a snapshot of threat vulnerability by looking at your vulnerability management dashboard, which reflects how vulnerable your organization is to cybersecurity threats. A high exposure score means your devices are more vulnerable to exploitation. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Vulnerability management > Dashboard**.<br/><br/>2. Take a look at your **Organization exposure score**. If it's in the acceptable or "High" range, you can move on. If it isn't, select **Improve score** to see more details and security recommendations to improve this score. <br/><br/>Being aware of your exposure score helps you to:<br/>- Quickly understand and identify high-level takeaways about the state of security in your organization<br/>- Detect and respond to areas that require investigation or action to improve the current state<br/>- Communicate with peers and management about the impact of security efforts |
| Review pending actions in the Action center | As threats are detected, [remediation actions](#remediation-actions-in-microsoft-defender-for-business) come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval, which is why these should be monitored regularly. Remediation actions are tracked in the Action center.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Action center**.<br/><br/>2. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus or antimalware protection, automated investigations, manual response activities, or live response sessions.<br/><br/>3. Select the **History** tab to view a list of completed actions.|
| Review devices with threat detections | When threats are detected on devices, your security team needs to know so that any needed actions, such as isolating a device, can be taken promptly. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports > General > Security report**.<br/><br/>2. Scroll down to the **Vulnerable devices** row. If threats were detected on devices, you'll see that information in this row.|
| Learn about new incidents or alerts | As threats are detected and alerts are triggered, incidents are created. Your company's security team can view and manage incidents in the Microsoft 365 Defender portal.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation menu, select **Incidents**. Incidents are displayed on the page with associated alerts.<br/><br/>2. Select an alert to open its flyout pane, where you can learn more about the alert.<br/><br/>3. In the flyout, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert. |
| Run a scan or automated investigation | Your security team can initiate a scan or an automated investigation on a device that has a high risk level or detected threats. Depending on the results of the scan or automated investigation, [remediation actions](#remediation-actions-in-microsoft-defender-for-business) can occur automatically or upon approval.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Assets** > **Devices**.<br/><br/>2. Select a device to open its flyout panel, and review the information that is displayed.<br/>- Select the ellipsis (...) to open the actions menu.<br/>- Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**. |

## Weekly tasks

| Task | Description  |
|---------|---------|
| Monitor and improve your Microsoft Secure score | Microsoft Secure Score is a measurement of your organization's security posture. Higher numbers indicate that fewer improvement actions are needed. By using Secure Score, you can: <br/>- Report on the current state of your organization's security posture.<br/>- Improve your security posture by providing discoverability, visibility, guidance, and control.<br/>- Compare with benchmarks and establish key performance indicators (KPIs).<br/><br/>To check your score, follow these steps:<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane choose **Secure score**. <br/><br/>2. Review and make decisions about the remediations and actions in order to improve your overall Microsoft secure score. |
| Improve your secure score for devices | Improve your security configuration by remediating issues using the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities going forward. It's always worth the time it takes to review and improve your score.<br/><br/>To check your secure score, follow these steps: <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane select **Secure score**.<br/><br/>2. From the **Microsoft Secure Score for Devices** card in the Defender Vulnerability Management dashboard, select one of the categories. A list of recommendations related to that category displays, along with recommendations.<br/><br/>3.Select an item on the list to display details related to the recommendation.<br/><br/>4. Select **Remediation options**.<br/><br/>5. Read the description to understand the context of the issue and what to do next. Choose a due date, add notes, and select **Export all remediation activity data to CSV** so you can attach it to an email for follow-up. A confirmation message tells you the remediation task has been created.<br/><br/>6. Send a follow-up email to your IT Administrator and allow for the time that you've allotted for the remediation to propagate in the system.<br/><br/>7. Return to the Microsoft Secure Score for Devices card on the dashboard. The number of security controls recommendations has decreased as a result of your actions.<br/><br/>8. Select **Security controls** to go back to the Security recommendations page. The item that you addressed isn't listed there anymore, which results in your Microsoft secure score improving. |

### Monthly tasks 

| Task | Description  |
|---------|---------|
| Run reports | Several reports are available in the Microsoft 365 Defender portal.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Reports**.<br/><br/>2. Choose a report to review. Each report displays many pertinent categories for that report.<br/><br/>3. Select **View details** to see deeper information for each category.<br/><br/>4. Select the title of a particular threat to see details specific to it.|
| Run a simulation tutorial | It's always a good idea to increase the security preparedness for you and your team through training. You can access simulation tutorials in the Microsoft 365 Defender portal. The tutorials cover several types of cyber threats. To get started, follow these steps:<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Tutorials**.<<br/><br/>2. Read the walk-through for a tutorial you're interested in running, and then download the file, or copy the script needed to run the simulation according to the instructions. |
| Explore the Learning hub | Use the Learning hub to increase your knowledge of cybersecurity threats and how to address them. We recommend exploring the resources that are offered, especially in the Microsoft 365 Defender and Endpoints sections.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Learning hub**.<br/><br/>2. Select an area, such as **Microsoft 365 Defender** or **Endpoints**.<br/><br/>3. Select an item to learn more about each concept. <br/><br/>Note that some resources in the Learning hub might cover functionality that isn't actually included in Defender for Business. For example, advanced hunting capabilities are included in enterprise subscriptions, such as Defender for Endpoint Plan 2 or Microsoft 365 Defender, but not in Defender for Business. [Compare security features in Microsoft 365 plans for small and medium-sized businesses](compare-mdb-m365-plans.md). |

### Tasks to perform as needed

| Task | Description  |
|---------|---------|
| Use the Threat analytics dashboard | Use the threat analytics dashboard to get an overview of the current threat landscape by highlighting reports that are most relevant to your organization. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Threat analytics** to display the Threat analytics dashboard. The dashboard summarizes the threats into the following sections:<br/>- **Latest threats** lists the most recently published or updated threat reports, along with the number of active and resolved alerts.<br/>- **High-impact threats** lists the threats that have the highest impact to your organization. This section lists threats with the highest number of active and resolved alerts first.<br/>- **Highest exposure** lists threats with the highest exposure levels first. The exposure level of a threat is calculated using two pieces of information: how severe the vulnerabilities associated with the threat are, and how many devices in your organization could be exploited by those vulnerabilities.<br/><br/>3. Select the title of the one you want to investigate, and read the associated report.<br/><br/>4. You can also review the full Analyst report for more details, or select other headings to view the related incidents, impacted assets, and exposure and mitigations.|
| Remediate an item | Defender for Business includes several [remediation actions](#remediation-actions-in-microsoft-defender-for-business). Some actions are taken automatically, and others await approval by your security team.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, go to **Assets** > **Devices**.<br/><br/>2. Select a device, such as one with a high risk level or exposure level. A flyout pane opens and displays more information about alerts and incidents generated for that item.<br/><br/>3. On the flyout, view the information that is displayed. Select the ellipsis (...) to open a menu that lists available actions.<br/><br/>4. Select an available action. For example, you might choose **Run antivirus scan**, which will cause Microsoft Defender Antivirus to start a quick scan on the device. Or, you could select **Initiate Automated Investigation** to trigger an automated investigation on the device. |


## Remediation actions in Defender for Business

The following table summarizes remediation actions that are available in Defender for Business:

| Source  | Actions  |
|---------|---------|
| Automated investigations      | Quarantine a file<br/>Remove a registry key<br/>Kill a process<br/>Stop a service<br/>Disable a driver<br/>Remove a scheduled task |
| Manual response actions   | Run antivirus scan<br/>Isolate device<br/>Add an indicator to block or allow a file |
| Live response  | <br/>Collect forensic data<br/>Analyze a file<br/>Run a script<br/>Send a suspicious entity to Microsoft for analysis<br/>Remediate a file<br/>Proactively hunt for threats |


## See also

- [Maintain your Defender for Business environment](mdb-maintain-environment.md)
- [Defender for Business security administration guide](mdb-security-admin-guide.md)