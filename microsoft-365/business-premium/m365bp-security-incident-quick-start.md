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

The following guidance provides a starting point to help you make decisions about security incident priorities.  
  
## If you only have 5 minutes

Here are some suggestions for security tasks you can pursue.

### Devices with threat detections

1. Go to the Microsoft 365 Defender portal (https://security.microsoft.com) and sign in.

1. In the navigation pane, choose **Reports > General > Security report**.

1. Scroll down to the Vulnerable devices row. If threats were detected on devices, you'll see that information in this row.

### New incidents or alerts

1. In the Microsoft 365 Defender portal (https://security.microsoft.com), in the navigation menu, select **Incidents**. Incidents that are listed on the page.

1. Select an alert to open its flyout pane, where you can learn more about the alert.

1. In the flyout, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert.

## If you have only 10 minutes

Here are suggestions of some security tasks for you.

### Run a scan or investigate a detected threat

1. In the Microsoft 365 Defender portal (https://security.microsoft.com), in the navigation pane, choose Device inventory.

1. Select a device to open its flyout panel, and review the information that is displayed.

1. Select the ellipsis (...) to open the actions menu.

1. Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**.

### Look at threat vulnerability

In a nutshell, you can get a snapshot of threat vulnerability by looking at the Vulnerability management dashboard. It reflects how vulnerable your organization is to cybersecurity threats. Low exposure score means your devices are less vulnerable from exploitation.

1. In the Navigation pane, select **Vulnerability management > Dashboard**.

1. Take a look at your Organization exposure score. If it's in the acceptable or "High" range, you can move on. If it isn't, click **Improve score** to see additional details and security recommendations to improve this score.

Being aware of your exposure score helps you:

- Quickly understand and identify high-level takeaways about the state of security in your organization.
- Detect and respond to areas that require investigation or action to improve the current state.
- Communicate with peers and management about the impact of security efforts.

### Take a peek at your Microsoft Secure score

A higher Microsoft Secure Score for Devices means your endpoints are more resilient from cybersecurity threat attacks. It reflects the collective security configuration state of your devices.

The data in the Microsoft Secure Score for Devices card is the product of a meticulous and ongoing vulnerability discovery process. It is aggregated with configuration discovery assessments that continuously:

- Compare collected configurations to the collected benchmarks to discover misconfigured assets
- Map configurations to vulnerabilities that can be remediated or partially remediated (risk reduction)
- Collect and maintain best practice configuration benchmarks (vendors, security feeds, internal research teams)
- Collect and monitor changes of security control configuration state from all assets.

To check your secure score, in the Navigation pane choose **Secure score** and review and make decisions about the Remediations and Actions you can take to improve your overall Microsoft secure score.

### Improve your secure score with improved security

Improve your security configuration by remediating issues using the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities going forward. It's always worth the time it takes to review and improve your score.

1. To check your secure score, in the Navigation pane choose **Secure score**.

1. From the Microsoft Secure Score for Devices card in the Defender Vulnerability Management dashboard, select one of the categories. You'll view the list of recommendations related to that category, and it will take you to the Security recommendations page. If you want to see all security recommendations, once you get to the Security recommendations page, clear the search field.

1. Select an item on the list. The flyout panel will open with details related to the recommendation. Select Remediation options.

1. Read the description to understand the context of the issue and what to do next. Select a due date, add notes, and select Export all remediation activity data to CSV so you can attach it to an email for follow-up. You'll see a confirmation message that the remediation task has been created.

1. Send a follow-up email to your IT Administrator and allow for the time that you've allotted for the remediation to propagate in the system.

1. Review the Microsoft Secure Score for Devices card again on the dashboard. The number of security controls recommendations will have decreased as a result of your efforts. When you select Security controls to go back to the Security recommendations page, the item that you've addressed will not be listed there anymore. This is how you can go about increasing your Microsoft secure score.

## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)