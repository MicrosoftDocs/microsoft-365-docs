---
title: "Monitor Microsoft 365 Business Premium and Defender for Business"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.collection:
- M365-Campaigns
- m365solution-smb
- highpri
- m365-security
- tier2
- essentials-manage
- trust-pod
ms.custom:
- MiniMaven
search.appverid:
- BCS160[Email and calendars](#email-and-calendars)
- MET150
description: "Use this article as a security operations (SecOps) guide to monitor and maintain security in Microsoft 365 Business Premium and Microsoft Defender for Business."
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium" target="_blank">Microsoft 365 Business Premium</a>
  - ✅ <a href="https://m365forcampaigns.microsoft.com/" target="_blank">Microsoft 365 for Campaigns</a>
---

# Monitor Microsoft 365 Business Premium and Defender for Business

In Microsoft 365 Business Premium or the standalone version of [Microsoft Defender for Business](/defender-business/mdb-overview), you need to prepare a plan for security maintenance and security operations. It's important to keep your systems, devices, user accounts, and security policies up to date to help protect against attacks. You can use this article as a guide to prepare your plan.

Security tasks are typically done by members of the Security Administrators and Security Operators roles. For more information, see the following articles:

- [Learn more about admin roles](../add-users/about-admin-roles.md)
- [Assign security roles and permissions](/defender-business/mdb-roles-permissions)

> [!TIP]
> For information about general maintenance tasks in Business Premium, see [Maintain Microsoft 365 Business Premium](/microsoft-365/business-premium/m365bp-mdb-maintain-environment).

## Daily security tasks

|Task|Description|
|---|---|
|**Check the Microsoft Defender Vulnerability Management dashboard**|Get a snapshot of the vulnerability of your organization to cybersecurity threats. A high exposure score means your organization is more vulnerable to exploitation. <br/> To check your score, do the following steps: <ol><li>In the Microsoft Defender portal, go to the **Microsoft Defender Vulnerability Management dashboard** at <https://security.microsoft.com/tvm_dashboard/Endpoint>.</li><li>On the **Microsoft Defender Vulnerability Management dashboard** page, go to the **Organization exposure score** card. A higher exposure score means your devices are more vulnerable to exploitation.</li><li>Select **Improve score** to see more details and security recommendations to improve (lower) your exposure score.</li></ol> <br/> Awareness of your exposure score helps you to: <ul><li>Quickly understand and identify high-level takeaways about the state of security in your organization.</li><li>Detect and respond to areas that require investigation or action to improve the current state.</li><li>Communicate with peers and management about the results of security efforts.</li></ul> <br/> For more information, see [Use your vulnerability management dashboard in Microsoft Defender for Business](/defender-business/mdb-view-tvm-dashboard).|
|**Review pending actions in the Action center**|As threats are detected, [remediation actions](#remediation-actions-for-devices) come into play. Depending on the threat and your security settings configuration, remediation actions are taken automatically or only after approval, so you need to regularly monitor remediation actions. <br/> To check pending actions, do the following steps: <ol><li>In the Defender portal, go to the **Action Center** page at <https://security.microsoft.com/action-center/>.</li><li>On the **Action Center** page, use the **Pending** tab to view and approve or reject any pending actions. Actions on the **Pending** tab can arise from anti-virus protection, anti-malware protection, automated investigations, manual response activities, or live response sessions.</li><li>Use the **History** tab to view completed actions.</li></ol> <br/> For more information, see [Review remediation actions in the Action center](/defender-business/mdb-review-remediation-actions).|
|**Review devices with threat detections**|Learn about threat detections on devices so you can promptly take any required actions (for example, isolate the device). <br/> To review devices with threat detections, do the following steps: <ol><li>In the Defender portal, go to the **Security report** page at <https://security.microsoft.com/reports>.</li><li>On the **Security report** page, use the information in the **Devices** section to see detected threats and details about detected malware on devices.</li></ol> <br/> For more information, see [Security report](/defender-business/mdb-reports#security-report).|
|**Check incidents and alerts**|Incidents are created as threats are detected and alerts are triggered. <br/> To check your incidents and alerts, do the following steps: <ol><li>In the Defender portal, go to the **Incidents** page at <https://security.microsoft.com/incidents>.</li><li>On the **Incidents** page. incidents and the associated alerts are displayed.</li><li>When you select an incident from the list, a details flyout opens where you can learn more about the alert. The details flyout contains the alert title, a list of affected assets (for example, endpoints or user accounts), available actions, links to view more information, and a link to an alert details page.</li></ol> <br/> For more information, see [View and manage incidents in Microsoft Defender for Business](/defender-business/mdb-view-manage-incidents).|
|**Run a scan or automated investigation**|You can initiate a scan or an automated investigation on a device that has a high risk level or detected threats. Depending on the results, [remediation actions](#remediation-actions-for-devices) are taken automatically or after approval. <br/> To run a scan or automated investigation on a device, do the following steps: <ol><li>In the Defender portal, go to the **Device inventory** page at <https://security.microsoft.com/machines>.</li><li>On the **Device inventory** page, select a device from the list by clicking anywhere in the row other than the check box or the **Name** value.</li><li>At the top of the devices details flyout that opens, select :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions**, and then select :::image type="icon"source="../../media/m365-cc-sc-link-alert-icon.png" border="false"::: **Run antivirus scan** or :::image type="icon"source="../../media/m365-cc-sc-initiate-automated-investigation-icon.png" border="false"::: **Initiate Automated Investigation**.</li></ol> <br/> For more information, see [Manage devices in Microsoft Defender for Business](/defender-business/mdb-manage-devices).|

## Weekly security tasks

|Task|Description|
|---|---|
|**Monitor and improve your Microsoft Secure Score**|Microsoft Secure Score is a measurement of your organization's security posture. Higher numbers indicate your organization needs fewer improvement actions. By using Secure Score, you can: <ul><li>Report on the current state of your organization's security posture.</li><li>Improve your security posture by providing discoverability, visibility, guidance, and control.</li><li>Compare with benchmarks and establish key performance indicators (KPIs).</li></ul> <br/> To check your score, do the following steps: <ol><li>In the Defender portal, go to the **Microsoft Secure Score** page at <https://security.microsoft.com/exposure-secure-score>.</li><li>On the **Microsoft Secure Score** page, review and make decisions about the remediations and actions in order to improve your overall Microsoft secure score.</li></ol> <br/> For more information, see [Assess your security posture with Microsoft Secure Score](/defender-xdr/microsoft-secure-score-improvement-actions).|
|**Monitor and improve your Microsoft Secure Score for Devices**|Remediate issues using the security recommendations list. As you do, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities. <br/> To check your secure score for devices, do the following steps: <ol><li>In the Microsoft Defender portal, go to the **Microsoft Defender Vulnerability Management dashboard** at <https://security.microsoft.com/tvm_dashboard/Endpoint>.</li><li>On the **Microsoft Defender Vulnerability Management dashboard** page, go to the **Microsoft Secure Score for Devices** card, and then do one of the following steps to open the **Security recommendations** page: <ul><li>Select the data in one of the available categories (for example, **Application**, **OS**, **Network**, **Accounts, or **Security controls**) to open the **Security recommendations** page filtered by that category.</li><li>Select **Improve score** to open the the **Security recommendations** page unfiltered</li></ul></li><li>On the **Security recommendations** page, select an entry from the list. The details flyout that opens has **General** **Remediation options**, and **Exposed devices** tabs that contain details related to the recommendation.</li><li>On the **Remediation options** tab, select **Remediation options**, fill out the form, and then select **Submit**.</li><li></li><li>Send a follow-up notification email to your security admin to approve or reject the request.</li><li>View the status of the remediation on the **Remediation** page at <https://security.microsoft.com/remediation/remediation-activities>.</li>/<ol> <br/> For more information, see [Use your vulnerability management dashboard in Microsoft Defender for Business](/defender-business/mdb-view-tvm-dashboard).|

## Monthly security tasks

|Task|Description|
|---|---|
|**Run security reports**|Many security reports are available on the **Reports** page in the Defender portal at <https://security.microsoft.com/securityreports>. For more information, see the following articles: <ul><li>[Reports in Microsoft Defender for Business](/defender-business/mdb-reports)</li><li>[View email security reports in the Microsoft Defender portal](/defender-office-365/reports-email-security)</li><li>[View Defender for Office 365 reports in the Microsoft Defender portal](/defender-office-365/reports-defender-for-office-365)</li><li>[Mail flow reports in the new Exchange admin center in Exchange Online](/exchange/monitoring/mail-flow-reports/mail-flow-reports)</li></ul>|

## As needed security tasks

|Task|Description|
|---|---|
|**Manage false positives and false negatives**|False positives are good items identified as bad. False negatives are bad items that aren't identified as threats. False positives and false negatives happen in any threat protection solution, including Defender for Office 365 Plan 1 and Defender for Business, which are both included in Microsoft 365 Business Premium. Fortunately, you can take steps to address and reduce false positives and false negatives: <ul><li>**Devices**: See [Address false positives/negatives in Microsoft Defender for Endpoint](/defender-endpoint/defender-endpoint-false-positives-negatives).</li><li>**Email & collaboration**: See the following articles:</ul><li>[Handle false negative email messages in Defender for Office 365](/defender-office-365/step-by-step-guides/how-to-handle-false-negatives-in-microsoft-defender-for-office-365)</li><li>>[Handle false positive email messages in Defender for Office 365](/defender-office-365/step-by-step-guides/how-to-handle-false-positives-in-microsoft-defender-for-office-365)</li></ul></li></ul>.|
|**Strengthen your security posture**|Defender for Business includes the **Microsoft Defender Vulnerability Management dashboard** that gives your organization an exposure score, shows information about exposed devices, and shows relevant security recommendations. Use the dashboard to reduce your organization's exposure to threats and improve your security posture. <br/><br/> For more information, see the following articles: <ul><li>[Use your vulnerability management dashboard in Microsoft Defender for Business](/defender-business/mdb-view-tvm-dashboard)</li><li>[Dashboard insights](/defender-vulnerability-management/tvm-dashboard-insights)</li></ul>.|
|**Adjust security policies**|[Reports](#monthly-security-tasks) display information about detected threats, device status, and more. Sometimes it's necessary to adjust your security policies or apply more strict or less strict settings to specific groups of users. <br/><br/> For more information, see the following articles: <ul><li>**Devices**: See [View or edit policies in Microsoft Defender for Business](/defender-business/mdb-view-edit-create-policies).</li><li>**Email & collaboration**: See the following articles:<ul>[Recommended email and collaboration threat policy settings for cloud organizations](/defender-office-365/recommended-settings-for-eop-and-office365)<li></li><li>[Configuration analyzer for threat policies in cloud organizations](/defender-office-365/configuration-analyzer-for-security-policies)</li><li>[Configure threat policies in Defender for Office 365](/defender-office-365/mdo-deployment-guide#step-2-configure-threat-policies)</li></ul>|
|**Admin submissions**|Sometimes it's necessary to submit suspicious or misjudged email messages, email attachments, or URLs to Microsoft for further analysis. Reporting these items is critical to train the system to reduce false positives and false negatives, and to improve threat detection accuracy. <br/><br/> For more information, see the following articles: <ul><li>[Submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](/defender-office-365/submissions-admin)<li></li>[Admin review for user reported messages](/defender-office-365/submissions-admin-review-user-reported-messages)</li></ul>|
|**Protect priority accounts**|Accounts for executives, leaders, or other users with access to sensitive, proprietary, or high priority information are valuable targets for attackers. If compromised, these accounts pose a serious threat to the security and stability of your organization. We call these types of accounts _priority accounts_. In Business Premium, you can designate specific users as priority accounts so they receive targeted and more appropriate protections. <br/><br/> For more information, see the following articles: <ul><li>[Admin account security in Microsoft 365 for business](m365b-account-security-admins.md)</li><li>[Security recommendations for priority accounts in Microsoft 365](/defender-office-365/priority-accounts-security-recommendations)</li><li>[Manage and monitor priority accounts](../setup/priority-accounts.md)</li><li>[User tags (priority accounts) in reports and features](/defender-office-365/user-tags-about#user-tags-in-reports-and-features)</li></ul>|
|**Protect high-risk devices**|The overall risk assessment of a device is based on a combination of factors (for example, the type and severity of active alerts on the device). As you resolve active alerts, approve remediation activities, and suppresses subsequent alerts, the risk level decreases. <br/><br/> For more information, see [Manage devices in Microsoft Defender for Business](/defender-business/mdb-manage-devices).|
|**Onboard or offboard devices**|As you replace or retire devices, purchase new devices, or your business needs change, you can onboard or offboard devices from Defender for Business. <br/><br/>For more information, see the following articles: <ul><li>>[Onboard devices to Microsoft Defender for Business](/defender-business/mdb-onboard-devices)</li><li>[Offboard devices from Microsoft Defender for Business](/defender-business/mdb-offboard-devices)</li><li>|
|**Remediate an item**|Several [remediation actions](#remediation-actions-for-devices) are available. Some actions are taken automatically, and others await approval. <ol><li>In the Defender portal, go to the **Device inventory** page at <https://security.microsoft.com/machines>.</li><li>On the **Device inventory** page, select a device from the list by clicking anywhere in the row other than the check box or the **Name** value (for example, select a device with a higher **Risk level** or **Exposure level** value).</li><li>At the top of the devices details flyout that opens, select :::image type="icon"source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions**, and then select and available action. For example, you might select :::image type="icon"source="../../media/m365-cc-sc-link-alert-icon.png" border="false"::: **Run antivirus scan** or :::image type="icon"source="../../media/m365-cc-sc-initiate-automated-investigation-icon.png" border="false"::: **Initiate Automated Investigation**.</li></ol> <br/> For more information, see [Manage devices in Microsoft Defender for Business](/defender-business/mdb-manage-devices).|

## Remediation actions for devices

<!--- Unclear how to validate these lists--->

The following table summarizes remediation actions that are available for devices in Microsoft 365 Business Premium and Defender for Business:

|Source|Actions|
|---|---|
|**Automated investigations**|<ul><li>Quarantine a file</li><li>Remove a registry key</li><li>Kill a process</li><li>Stop a service</li><li>Disable a driver</li><li>Remove a scheduled task</li></ul>|
|**Manual response actions**|<ul><li>Run antivirus scan</li><li>Isolate device</li><li>Add an indicator to block or allow a file</li></ul>|
|**Live response**|<ul><li>Collect forensic data</li><li>Analyze a file</li><li>Run a script</li><li>Send a suspicious entity to Microsoft for analysis</li><li>Remediate a file</li><li>Proactively hunt for threats</li></ul>|

## See also

- [Security incident management](/defender-business/mdb-view-manage-incidents)
- [Reports in Defender for Business](/defender-business/mdb-reports)
- [Microsoft 365 for business security best practices](m365b-security-best-practices.md)
