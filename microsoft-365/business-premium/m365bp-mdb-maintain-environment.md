---
title: "Maintain your environment"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 06/30/2023
ms.localizationpriority: medium
ms.collection: 
- M365-Campaigns
- m365solution-smb
- highpri
- m365-security
- tier1
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Maintain your systems, devices, user accounts, and security policies to help protect against cyberattacks."
---

# Maintain your environment

After you have set up and configured [Microsoft 365 Business Premium](index.md) or [Microsoft Defender for Business](../security/defender-business/mdb-overview.md) (standalone), your next step is to prepare a plan for maintenance and operations. You can use this article as a guide to prepare your plan. 

- **[Microsoft 365 administration](#tenant-administration)** (also referred to as *tenant administration*) includes tasks that your administrators (also referred to as *admins*) perform, such as adding or removing users, resetting passwords, resetting devices to factory settings, and more. These kinds of tasks (and more!) are listed in [Tenant administration](#tenant-administration). 

- **[Security administration](#security-administration)** includes tasks that your security administrators (also referred to as *security admins*) perform, such as defining or editing security policies, onboarding or offboarding devices, and more. These kinds of tasks are listed in [Security administration](#security-administration). 

- **[Security operations](#security-operations)** (also referred to as *SecOps*) includes tasks that your security team performs, such as reviewing and addressing detected threats, running antivirus scans on devices, starting automated investigations, and more. These kinds of tasks are listed in [Security operations](#security-operations). 

In each section, select the tab that corresponds to your subscription.

## Tenant administration

## [**Microsoft 365 Business Premium**](#tab/M365BP)

Maintaining your Microsoft 365 Business Premium environment includes managing user accounts, managing devices, and keeping things up to date and working correctly. Use this article as an admin guide for your organization.

Many admin tasks can be performed in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), although some tasks, such as adding/removing devices, can be performed in other portals (such as the Microsoft 365 Defender portal or the Microsoft Intune admin center). 

If you're new to Microsoft 365, take a moment to get an [Overview of the Microsoft 365 admin center](../admin/admin-overview/admin-center-overview.md).

### General tasks

| Task | Resources to learn more |
|:---|:---|
| Get started using the Microsoft 365 admin center | [Overview of the Microsoft 365 admin center](../admin/admin-overview/admin-center-overview.md) |
| Learn about new features in the Microsoft 365 admin center | [What's new in the Microsoft 365 admin center](../admin/whats-new-in-preview.md) |
| Find out about new product updates and features so you can help prepare users | [Stay on top of Microsoft 365 product and feature changes](../admin/manage/stay-on-top-of-updates.md) |
| View usage reports to see how people are using Microsoft 365 | [Microsoft 365 Reports in the admin center](../admin/activity-reports/activity-reports.md) |
| Open a technical support ticket | [Get support for Microsoft 365 for business](../admin/get-help-support.md) |

### Users, groups, and passwords

| Task | Resources to learn more |
|:---|:---|
| Add a new user | [Add a new employee to Microsoft 365](../admin/add-users/add-new-employee.md) |
| Assign licenses to users | [Assign Microsoft 365 licenses to users in the Microsoft 365 admin center](../admin/manage/assign-licenses-to-users.md) <br/><br/>[Assign Microsoft 365 licenses to user accounts by using PowerShell](../enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell.md) |
| Assign admin roles to people who need admin permissions | [Assign admin roles in the Microsoft 365 admin center](../admin/add-users/assign-admin-roles.md) <br/><br/>[Assign admin roles to Microsoft 365 user accounts with PowerShell](../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md)|
| Remove licenses from users | [Unassign Microsoft 365 licenses from users in the Microsoft 365 admin center](../admin/manage/remove-licenses-from-users.md)<br/><br/>[Remove Microsoft 365 licenses from user accounts with PowerShell](../enterprise/remove-licenses-from-user-accounts-with-microsoft-365-powershell.md) |
| Turn pronouns on or off | [Turn pronouns on or off for your organization in the Microsoft 365 admin center](../admin/add-users/turn-pronouns-on-or-off.md) |
| Determine whether to allow guest access to groups for their whole organization or for individual groups | [Guest users in Microsoft 365 admin center](../admin/add-users/about-guest-users.md) |
| Remove a user account when someone leaves your organization | [Overview: Remove a former employee and secure data](../admin/add-users/remove-former-employee.md) |
| Reset passwords for user accounts | [Reset passwords in Microsoft 365 for business](../admin/add-users/reset-passwords.md) |

### Email and calendars

| Task | Resources to learn more |
|:---|:---|
| Migrate email and contacts from Gmail or another email provider to Microsoft 365 | [Migrate email and contacts to Microsoft 365](../admin/setup/migrate-email-and-contacts-admin.md) |
| Add an email signature, legal disclaimer, or disclosure statement to email messages that come in or go out | [Create organization-wide signatures and disclaimers](../admin/setup/create-signatures-and-disclaimers.md) |
| Set up, edit, or delete a security group | [Create, edit, or delete a security group in the Microsoft 365 admin center](../admin/email/create-edit-or-delete-a-security-group.md) |
| Add users to a distribution group | [Add a user or contact to a Microsoft 365 distribution group](../admin/email/add-user-or-contact-to-distribution-list.md) |
| Set up a shared mailbox so people can monitor and send email from a common email addresses, like `info@contoso.com` | [Create a shared mailbox](../admin/email/create-a-shared-mailbox.md) |

### Devices

| Task | Resources to learn more |
|:---|:---|
| Use Windows Autopilot to set up and pre-configure new devices or to to reset, repurpose, and recover devices | [Overview of Windows Autopilot](/mem/autopilot/windows-autopilot) |
| View current status of and manage devices | [Manage devices in Microsoft Defender for Business](../security/defender-business/mdb-manage-devices.md) |
| Onboard devices to Defender for Business | [Onboard devices to Defender for Business](../security/defender-business/mdb-onboard-devices.md) |
| Offboard devices from Defender for Business | [Offboard a device from Defender for Business](../security/defender-business/mdb-offboard-devices.md) |
| Manage devices with Intune | [What does device management with Intune mean?](/mem/intune/fundamentals/what-is-device-management)<br/><br/>[Manage your devices and control device features in Microsoft Intune](/mem/intune/fundamentals/manage-devices) |

### Domains

| Task | Resources to learn more |
|:---|:---|
| Add a domain (like contoso.com) to your Microsoft 365 subscription | [Add a domain to Microsoft 365](../admin/setup/add-domain.md) |
| Buy a domain | [Buy a domain name](../admin/get-help-with-domains/buy-a-domain-name.md) |
| Remove a domain | [Remove a domain](../admin/get-help-with-domains/remove-a-domain.md) |

### Subscriptions and billing

| Task | Resources to learn more |
|:---|:---|
| View your bill or invoice | [View your Microsoft 365 for business subscription bill or invoice](../commerce/billing-and-payments/view-your-bill-or-invoice.md) |
| Manage your payment methods | [Manage payment methods](../commerce/billing-and-payments/manage-payment-methods.md) |
| Change the frequency of your payments | [Change your Microsoft 365 subscription billing frequency](../commerce/billing-and-payments/change-payment-frequency.md) |
| Change your billing address | [Change your Microsoft 365 for business billing addresses](../commerce/billing-and-payments/change-your-billing-addresses.md) |

## [**Defender for Business**](#tab/MDB)

Maintaining your Defender for Business environment includes managing user accounts, managing devices, and keeping things up to date and working correctly. Use this article as an admin guide for your organization.

Many admin tasks can be performed in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), although some tasks, such as adding/removing devices, can be performed in other portals (such as the Microsoft 365 Defender portal or the Microsoft Intune admin center). 

If you're new to Microsoft 365, take a moment to get an [Overview of the Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview).

### General tasks

| Task | Resources to learn more |
|:---|:---|
| Get started using the Microsoft 365 admin center | [Overview of the Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview) |
| Learn about new features in the Microsoft 365 admin center | [What's new in the Microsoft 365 admin center](/microsoft-365/admin/whats-new-in-preview) |
| Find out about new product updates and features so you can help prepare users | [Stay on top of Microsoft 365 product and feature changes](/microsoft-365/admin/manage/stay-on-top-of-updates) |
| View usage reports to see how people are using Microsoft 365 | [Microsoft 365 Reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports) |
| Open a technical support ticket | [Get support for Microsoft 365 for business](/microsoft-365/admin/get-help-support) |

### Users, groups, and passwords

| Task | Resources to learn more |
|:---|:---|
| Add a new user | [Add a new employee to Microsoft 365](/microsoft-365/admin/add-users/add-new-employee) |
| Assign licenses to users | [Assign Microsoft 365 licenses to users in the Microsoft 365 admin center](/microsoft-365/admin/manage/assign-licenses-to-users) <br/>[Assign Microsoft 365 licenses to user accounts by using PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell) |
| Assign admin roles to people who need admin permissions | [Assign admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/assign-admin-roles) <br/>[Assign admin roles to Microsoft 365 user accounts with PowerShell](/microsoft-365/enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell)|
| Remove licenses from users | [Unassign Microsoft 365 licenses from users in the Microsoft 365 admin center](/microsoft-365/admin/manage/remove-licenses-from-users)<br/>[Remove Microsoft 365 licenses from user accounts with PowerShell](/microsoft-365/enterprise/remove-licenses-from-user-accounts-with-microsoft-365-powershell) |
| Remove a user account when someone leaves your organization | [Overview: Remove a former employee and secure data](/microsoft-365/admin/add-users/remove-former-employee) |
| Reset passwords for user accounts | [Reset passwords in Microsoft 365 for business](/microsoft-365/admin/add-users/reset-passwords) |

### Devices

| Task | Resources to learn more |
|:---|:---|
| View current status of and manage devices | [Manage devices in Defender for Business](../security/defender-business/mdb-manage-devices.md) |
| Onboard devices to Defender for Business | [Onboard devices to Defender for Business](../security/defender-business/mdb-onboard-devices.md) |
| Offboard devices from Defender for Business | [Offboard a device from Defender for Business](../security/defender-business/mdb-offboard-devices.md) |
| Manage devices with Intune | [What does device management with Intune mean?](/mem/intune/fundamentals/what-is-device-management)<br/>[Manage your devices and control device features in Microsoft Intune](/mem/intune/fundamentals/manage-devices) |

### Subscriptions and billing

| Task | Resources to learn more |
|:---|:---|
| View your bill or invoice | [View your Microsoft 365 for business subscription bill or invoice](/microsoft-365//commerce/billing-and-payments/view-your-bill-or-invoice) |
| Manage your payment methods | [Manage payment methods](/microsoft-365/commerce/billing-and-payments/manage-payment-methods) |
| Change the frequency of your payments | [Change your Microsoft 365 subscription billing frequency](/microsoft-365/commerce/billing-and-payments/change-payment-frequency) |
| Change your billing address | [Change your Microsoft 365 for business billing addresses](/microsoft-365/commerce/billing-and-payments/change-your-billing-addresses) |
| Upgrade your subscription | [Try or buy Microsoft 365 Business Premium](m365-business-premium-setup.md#sign-up-for-microsoft-365-business-premium) |
| Add Microsoft Intune to your subscription<br/>(for additional security capabilities) | [Get an overview of Intune](/mem/intune/fundamentals/what-is-intune) <br/>[Microsoft Intune Plans and Pricing](https://www.microsoft.com/en-us/security/business/microsoft-intune-pricing) |
| Try Defender for Office 365 <br/>(to protect email and collaboration content) | [Try Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/try-microsoft-defender-for-office-365) |

---

## Security administration

## [**Microsoft 365 Business Premium**](#tab/M365BP)

Security administrators (also referred to as *security admins*) perform various tasks, such as:

- Defining or editing security policies
- Onboarding or offboarding devices
- Taking steps to protect high-risk user accounts or devices

The following table lists common tasks that security admins typically perform, with links to more detailed information.

| Task | Description |
|---|---|
| **Manage false positives/negatives** | A false positive is an entity, such as a file or a process that was detected and identified as malicious even though the entity isn't actually a threat. A false negative is an entity that wasn't detected as a threat, even though it actually is malicious. False positives/negatives can occur with any threat protection solution, including Microsoft Defender for Office 365 and Microsoft Defender for Business, which are both included in Microsoft 365 Business Premium. Fortunately, steps can be taken to address and reduce these kinds of issues. <br/><br/>For false positives/negatives on devices, see [Address false positives/negatives in Microsoft Defender for Endpoint](../security/defender-endpoint/defender-endpoint-false-positives-negatives.md).<br/><br/>For false positives/negatives in email, see the following articles: <br/>- [How to handle malicious emails that are delivered to recipients (False Negatives), using Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/step-by-step-guides/how-to-handle-false-negatives-in-microsoft-defender-for-office-365)<br/>- [How to handle Legitimate emails getting blocked (False Positive), using Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/step-by-step-guides/how-to-handle-false-positives-in-microsoft-defender-for-office-365) |
| **Strengthen your security posture** | Defender for Business includes a vulnerability management dashboard that provides you with exposure score and enables you to view information about exposed devices and see relevant security recommendations. You can use your Defender Vulnerability Management dashboard to reduce exposure and improve your organization's security posture. <br/><br/>See the following articles:<br/>- [Use your vulnerability management dashboard in Microsoft Defender for Business](../security/defender-business/mdb-view-tvm-dashboard.md)<br/>- [Dashboard insights](../security/defender-vulnerability-management/tvm-dashboard-insights.md) |
| **Adjust security policies** |  [Reports](../security/defender-business/mdb-reports.md) are available so that you can view information about detected threats, device status, and more. Sometimes it's necessary to adjust your security policies. For example, you might apply strict protection to some user accounts or devices, and standard protection to others. <br/><br/>See the following articles: <br/>- For device protection: [View or edit policies in Microsoft Defender for Business](../security/defender-business/mdb-view-edit-create-policies.md) <br/>- For email protection: [Recommended settings for EOP and Microsoft Defender for Office 365 security](../security/office-365-security/recommended-settings-for-eop-and-office365.md) |
| **Analyze admin submissions** | Sometimes it's necessary to submit entities, such as email messages, URLs, or attachments to Microsoft for further analysis. Reporting items can help reduce the occurrence of false positives/negatives and improve threat detection accuracy. <br/><br/>See the following articles: <br/>- [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](../security/office-365-security/submissions-admin.md)<br/>- [Admin review for user reported messages](../security/office-365-security/submissions-admin-review-user-reported-messages.md) |
| **Protect priority user accounts** | Not all user accounts have access to the same company information. Some accounts have access to sensitive information, such as financial data, product development information, partner access to critical build systems, and more. If compromised, accounts that have access to highly confidential information pose a serious threat. We call these types of accounts priority accounts. Priority accounts include (but aren't limited to) CEOs, CISOs, CFOs, infrastructure admin accounts, build system accounts, and more.<br/><br/>See the following articles: <br/>- [Protect your administrator accounts](m365bp-protect-admin-accounts.md) <br/>- [Security recommendations for priority accounts in Microsoft 365](../security/office-365-security/priority-accounts-security-recommendations.md) |
| **Protect high-risk devices** | The overall risk assessment of a device is based on a combination of factors, such as the types and severity of active alerts on the device. As your security team resolves active alerts, approves remediation activities, and suppresses subsequent alerts, the risk level decreases. <br/><br/>See [Manage devices in Microsoft Defender for Business](../security/defender-business/mdb-manage-devices.md). |
| **Onboard or offboard devices**  | As devices are replaced or retired, new devices are purchased, or your business needs change, you can onboard or offboard devices from Defender for Business. <br/><br/>See the following articles: <br/>- [Onboard devices to Microsoft Defender for Business](../security/defender-business/mdb-onboard-devices.md) <br/>- [Offboard a device from Microsoft Defender for Business](../security/defender-business/mdb-offboard-devices.md) |

## [**Defender for Business**](#tab/MDB)

Security administrators (also referred to as *security admins*) perform various tasks, such as:

- Defining or editing security policies
- Onboarding or offboarding devices
- Taking steps to protect high-risk user accounts or devices

The following table lists common tasks that security admins typically perform, with links to more detailed information.

| Task | Description |
|---|---|
| **Manage false positives/negatives** | A false positive is an entity, such as a file or a process that was detected and identified as malicious even though the entity isn't actually a threat. A false negative is an entity that wasn't detected as a threat, even though it actually is malicious. False positives/negatives can occur with any threat protection solution, including Defender for Business. Fortunately, steps can be taken to address and reduce these kinds of issues. <br/><br/>See [Address false positives/negatives in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/defender-endpoint-false-positives-negatives). |
| **Strengthen your security posture** | Defender for Business includes a vulnerability management dashboard that provides you with exposure score and enables you to view information about exposed devices and see relevant security recommendations. You can use your Defender Vulnerability Management dashboard to reduce exposure and improve your organization's security posture. <br/><br/>See the following articles:<br/>- [Use your vulnerability management dashboard in Defender for Business](../security/defender-business/mdb-view-tvm-dashboard.md)<br/>- [Dashboard insights](/microsoft-365/security/defender-vulnerability-management/tvm-dashboard-insights) |
| **Adjust security policies** |  [Reports](../security/defender-business/mdb-reports.md) are available so that you can view information about detected threats, device status, and more. Sometimes it's necessary to adjust your security policies. For example, you might apply strict protection to some user accounts or devices, and standard protection to others. <br/><br/>See [View or edit policies in Defender for Business](../security/defender-business/mdb-view-edit-create-policies.md). |
| **Protect high-risk devices** | The overall risk assessment of a device is based on a combination of factors, such as the types and severity of active alerts on the device. As your security team resolves active alerts, approves remediation activities, and suppresses subsequent alerts, the risk level decreases. <br/><br/>See [Manage devices in Defender for Business](../security/defender-business/mdb-manage-devices.md). |
| **Onboard or offboard devices**  | As devices are replaced or retired, new devices are purchased, or your business needs change, you can onboard or offboard devices from Defender for Business. <br/><br/>See the following articles: <br/>- [Onboard devices to Defender for Business](../security/defender-business/mdb-onboard-devices.md) <br/>- [Offboard a device from Defender for Business](../security/defender-business/mdb-offboard-devices.md) |

---

## Security operations

## [**Microsoft 365 Business Premium**](#tab/M365BP)

If you're new to Microsoft 365 Business Premium, or if your business doesn't have a security operations guide in place yet, use this article as a starting point. If you do already have a security operations guide, review it against the recommendations in this article.

You can use this guidance to make decisions about security incident priorities and tasks your security team will perform in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

### Daily tasks

| Task | Description  |
|---------|---------|
| Check your threat vulnerability management dashboard | Get a snapshot of threat vulnerability by looking at your vulnerability management dashboard, which reflects how vulnerable your organization is to cybersecurity threats. A high exposure score means your devices are more vulnerable to exploitation. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Vulnerability management > Dashboard**.<br/><br/>2. Take a look at your **Organization exposure score**. If it's in the acceptable or "High" range, you can move on. If it isn't, select **Improve score** to see more details and security recommendations to improve this score. <br/><br/>Being aware of your exposure score helps you to:<br/>- Quickly understand and identify high-level takeaways about the state of security in your organization<br/>- Detect and respond to areas that require investigation or action to improve the current state<br/>- Communicate with peers and management about the impact of security efforts |
| Review pending actions in the Action center | As threats are detected, [remediation actions](#remediation-actions-in-microsoft-365-business-premium) come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval, which is why these should be monitored regularly. Remediation actions are tracked in the Action center.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Action center**.<br/><br/>2. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus or antimalware protection, automated investigations, manual response activities, or live response sessions.<br/><br/>3. Select the **History** tab to view a list of completed actions.|
| Review devices with threat detections | When threats are detected on devices, your security team needs to know so that any needed actions, such as isolating a device, can be taken promptly. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports > General > Security report**.<br/><br/>2. Scroll down to the **Vulnerable devices** row. If threats were detected on devices, you'll see that information in this row.|
| Learn about new incidents or alerts | As threats are detected and alerts are triggered, incidents are created. Your company's security team can view and manage incidents in the Microsoft 365 Defender portal.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation menu, select **Incidents**. Incidents are displayed on the page with associated alerts.<br/><br/>2. Select an alert to open its flyout pane, where you can learn more about the alert.<br/><br/>3. In the flyout, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert. |
| Run a scan or automated investigation | Your security team can initiate a scan or an automated investigation on a device that has a high risk level or detected threats. Depending on the results of the scan or automated investigation, [remediation actions](#remediation-actions-in-microsoft-365-business-premium) can occur automatically or upon approval.<br/><br/>1. In the Microsoft 365 Defender portal (https://security.microsoft.com), in the navigation pane, choose **Assets** > **Devices**.<br/><br/>2. Select a device to open its flyout panel, and review the information that is displayed.<br/>- Select the ellipsis (...) to open the actions menu.<br/>- Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**. |

### Weekly tasks

| Task | Description  |
|---------|---------|
| Monitor and improve your Microsoft Secure score | Microsoft Secure Score is a measurement of your organization's security posture. Higher numbers indicate that fewer improvement actions are needed. By using Secure Score, you can: <br/>- Report on the current state of your organization's security posture.<br/>- Improve your security posture by providing discoverability, visibility, guidance, and control.<br/>- Compare with benchmarks and establish key performance indicators (KPIs).<br/><br/>To check your score, follow these steps:<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane choose **Secure score**. <br/><br/>2. Review and make decisions about the remediations and actions in order to improve your overall Microsoft secure score. |
| Improve your secure score for devices | Improve your security configuration by remediating issues using the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities going forward. It's always worth the time it takes to review and improve your score.<br/><br/>To check your secure score, follow these steps: <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane select **Secure score**.<br/><br/>2. From the **Microsoft Secure Score for Devices** card in the Defender Vulnerability Management dashboard, select one of the categories. A list of recommendations related to that category displays, along with recommendations.<br/><br/>3.Select an item on the list to display details related to the recommendation.<br/><br/>4. Select **Remediation options**.<br/><br/>5. Read the description to understand the context of the issue and what to do next. Choose a due date, add notes, and select **Export all remediation activity data to CSV** so you can attach it to an email for follow-up. A confirmation message tells you the remediation task has been created.<br/><br/>6. Send a follow-up email to your IT Administrator and allow for the time that you've allotted for the remediation to propagate in the system.<br/><br/>7. Return to the Microsoft Secure Score for Devices card on the dashboard. The number of security controls recommendations has decreased as a result of your actions.<br/><br/>8. Select **Security controls** to go back to the Security recommendations page. The item that you addressed isn't listed there anymore, which results in your Microsoft secure score improving. |

### Monthly tasks 

| Task | Description  |
|---------|---------|
| Run reports | Several reports are available in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Reports**.<br/><br/>2. Choose a report to review. Each report displays many pertinent categories for that report.<br/><br/>3. Select **View details** to see deeper information for each category.<br/><br/>4. Select the title of a particular threat to see details specific to it.|
| Run a simulation tutorial | It's always a good idea to increase the security preparedness for you and your team through training. You can access simulation tutorials in the Microsoft 365 Defender portal. The tutorials cover several types of cyber threats. To get started, follow these steps:<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Tutorials**.<<br/><br/>2. Read the walk-through for a tutorial you're interested in running, and then download the file, or copy the script needed to run the simulation according to the instructions. |
| Explore the Learning hub | Use the Learning hub to increase your knowledge of cybersecurity threats and how to address them. We recommend exploring the resources that are offered, especially in the Microsoft 365 Defender and Endpoints sections.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Learning hub**.<br/><br/>2. Select an area, such as **Microsoft 365 Defender** or **Endpoints**.<br/><br/>3. Select an item to learn more about each concept. <br/><br/>Note that some resources in the Learning hub might cover functionality that isn't actually included in Microsoft 365 Business Premium. For example, advanced hunting capabilities are included in enterprise subscriptions, such as Defender for Endpoint Plan 2 or Microsoft 365 Defender, but not in Microsoft 365 Business Premium. [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../security/defender-business/compare-mdb-m365-plans.md). |

### Tasks to perform as needed

| Task | Description  |
|---------|---------|
| Use the Threat analytics dashboard | Use the threat analytics dashboard to get an overview of the current threat landscape by highlighting reports that are most relevant to your organization. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Threat analytics** to display the Threat analytics dashboard. The dashboard summarizes the threats into the following sections:<br/>- **Latest threats** lists the most recently published or updated threat reports, along with the number of active and resolved alerts.<br/>- **High-impact threats** lists the threats that have the highest impact to your organization. This section lists threats with the highest number of active and resolved alerts first.<br/>- **Highest exposure** lists threats with the highest exposure levels first. The exposure level of a threat is calculated using two pieces of information: how severe the vulnerabilities associated with the threat are, and how many devices in your organization could be exploited by those vulnerabilities.<br/><br/>3. Select the title of the one you want to investigate, and read the associated report.<br/><br/>4. You can also review the full Analyst report for more details, or select other headings to view the related incidents, impacted assets, and exposure and mitigations.|
| Remediate an item | Microsoft 365 Business Premium includes several [remediation actions](#remediation-actions-in-microsoft-365-business-premium). Some actions are taken automatically, and others await approval by your security team.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, go to **Assets** > **Devices**.<br/><br/>2. Select a device, such as one with a high risk level or exposure level. A flyout pane opens and displays more information about alerts and incidents generated for that item.<br/><br/>3. On the flyout, view the information that is displayed. Select the ellipsis (...) to open a menu that lists available actions.<br/><br/>4. Select an available action. For example, you might choose **Run antivirus scan**, which will cause Microsoft Defender Antivirus to start a quick scan on the device. Or, you could select **Initiate Automated Investigation** to trigger an automated investigation on the device. |

### Remediation actions in Microsoft 365 Business Premium

The following table summarizes remediation actions that are available in Microsoft 365 Business Premium:

| Source  | Actions  |
|---------|---------|
| Automated investigations      | Quarantine a file<br/>Remove a registry key<br/>Kill a process<br/>Stop a service<br/>Disable a driver<br/>Remove a scheduled task |
| Manual response actions   | Run antivirus scan<br/>Isolate device<br/>Add an indicator to block or allow a file |
| Live response  | <br/>Collect forensic data<br/>Analyze a file<br/>Run a script<br/>Send a suspicious entity to Microsoft for analysis<br/>Remediate a file<br/>Proactively hunt for threats |

## [**Defender for Business**](#tab/MDB)

If you're new to Defender for Business, or if your business doesn't have a security operations guide in place yet, use this article as a starting point. If you do already have a security operations guide, review it against the recommendations in this article.

You can use this guidance to make decisions about security incident priorities and tasks your security team will perform in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

### Daily tasks

| Task | Description  |
|---------|---------|
| **Check your threat vulnerability management dashboard** | Get a snapshot of threat vulnerability by looking at your vulnerability management dashboard, which reflects how vulnerable your organization is to cybersecurity threats. A high exposure score means your devices are more vulnerable to exploitation. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Vulnerability management > Dashboard**.<br/><br/>2. Take a look at your **Organization exposure score**. If it's in the acceptable or "High" range, you can move on. If it isn't, select **Improve score** to see more details and security recommendations to improve this score. <br/><br/>Being aware of your exposure score helps you to:<br/>- Quickly understand and identify high-level takeaways about the state of security in your organization<br/>- Detect and respond to areas that require investigation or action to improve the current state<br/>- Communicate with peers and management about the impact of security efforts |
| **Review pending actions in the Action center** | As threats are detected, [remediation actions](#remediation-actions-in-defender-for-business) come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval, which is why these should be monitored regularly. Remediation actions are tracked in the Action center.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Action center**.<br/><br/>2. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus or antimalware protection, automated investigations, manual response activities, or live response sessions.<br/><br/>3. Select the **History** tab to view a list of completed actions.|
| **Review devices with threat detections** | When threats are detected on devices, your security team needs to know so that any needed actions, such as isolating a device, can be taken promptly. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports > General > Security report**.<br/><br/>2. Scroll down to the **Vulnerable devices** row. If threats were detected on devices, you'll see that information in this row.|
| **Learn about new incidents or alerts** | As threats are detected and alerts are triggered, incidents are created. Your company's security team can view and manage incidents in the Microsoft 365 Defender portal.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation menu, select **Incidents**. Incidents are displayed on the page with associated alerts.<br/><br/>2. Select an alert to open its flyout pane, where you can learn more about the alert.<br/><br/>3. In the flyout, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert. |
| **Run a scan or automated investigation** | Your security team can initiate a scan or an automated investigation on a device that has a high risk level or detected threats. Depending on the results of the scan or automated investigation, [remediation actions](#remediation-actions-in-defender-for-business) can occur automatically or upon approval.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Assets** > **Devices**.<br/><br/>2. Select a device to open its flyout panel, and review the information that is displayed.<br/>- Select the ellipsis (...) to open the actions menu.<br/>- Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**. |

## Weekly tasks

| Task | Description  |
|---------|---------|
| **Monitor and improve your security score** | Microsoft Secure Score is a measurement of your organization's security posture. Higher numbers indicate that fewer improvement actions are needed. By using Secure Score, you can: <br/>- Report on the current state of your organization's security posture.<br/>- Improve your security posture by providing discoverability, visibility, guidance, and control.<br/>- Compare with benchmarks and establish key performance indicators (KPIs).<br/><br/>To check your score, follow these steps:<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane choose **Secure score**. <br/><br/>2. Review and make decisions about the remediations and actions in order to improve your overall Microsoft secure score. |
| **Improve your secure score for devices** | Improve your security configuration by remediating issues using the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities going forward. It's always worth the time it takes to review and improve your score.<br/><br/>To check your secure score, follow these steps: <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane select **Secure score**.<br/><br/>2. From the **Microsoft Secure Score for Devices** card in the Defender Vulnerability Management dashboard, select one of the categories. A list of recommendations related to that category displays, along with recommendations.<br/><br/>3.Select an item on the list to display details related to the recommendation.<br/><br/>4. Select **Remediation options**.<br/><br/>5. Read the description to understand the context of the issue and what to do next. Choose a due date, add notes, and select **Export all remediation activity data to CSV** so you can attach it to an email for follow-up. A confirmation message tells you the remediation task has been created.<br/><br/>6. Send a follow-up email to your IT Administrator and allow for the time that you've allotted for the remediation to propagate in the system.<br/><br/>7. Return to the Microsoft Secure Score for Devices card on the dashboard. The number of security controls recommendations has decreased as a result of your actions.<br/><br/>8. Select **Security controls** to go back to the Security recommendations page. The item that you addressed isn't listed there anymore, which results in your Microsoft secure score improving. |

### Monthly tasks 

| Task | Description  |
|---------|---------|
| **Run security reports** | Several reports are available in the Microsoft 365 Defender portal.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Reports**.<br/><br/>2. Choose a report to review. Each report displays many pertinent categories for that report.<br/><br/>3. Select **View details** to see deeper information for each category.<br/><br/>4. Select the title of a particular threat to see details specific to it.|
| **Run a simulation tutorial** | It's always a good idea to increase the security preparedness for you and your team through training. You can access simulation tutorials in the Microsoft 365 Defender portal. The tutorials cover several types of cyber threats. To get started, follow these steps:<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Tutorials**.<<br/><br/>2. Read the walk-through for a tutorial you're interested in running, and then download the file, or copy the script needed to run the simulation according to the instructions. |
| **Explore the Learning hub** | Use the Learning hub to increase your knowledge of cybersecurity threats and how to address them. We recommend exploring the resources that are offered, especially in the Microsoft 365 Defender and Endpoints sections.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Learning hub**.<br/><br/>2. Select an area, such as **Microsoft 365 Defender** or **Endpoints**.<br/><br/>3. Select an item to learn more about each concept. <br/><br/>Note that some resources in the Learning hub might cover functionality that isn't actually included in Defender for Business. For example, advanced hunting capabilities are included in enterprise subscriptions, such as Defender for Endpoint Plan 2 or Microsoft 365 Defender, but not in Defender for Business. [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../security/defender-business/compare-mdb-m365-plans.md). |

### Tasks to perform as needed

| Task | Description  |
|---------|---------|
| **Use the Threat analytics dashboard** | Use the threat analytics dashboard to get an overview of the current threat landscape by highlighting reports that are most relevant to your organization. <br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Threat analytics** to display the Threat analytics dashboard. The dashboard summarizes the threats into the following sections:<br/>- **Latest threats** lists the most recently published or updated threat reports, along with the number of active and resolved alerts.<br/>- **High-impact threats** lists the threats that have the highest impact to your organization. This section lists threats with the highest number of active and resolved alerts first.<br/>- **Highest exposure** lists threats with the highest exposure levels first. The exposure level of a threat is calculated using two pieces of information: how severe the vulnerabilities associated with the threat are, and how many devices in your organization could be exploited by those vulnerabilities.<br/><br/>3. Select the title of the one you want to investigate, and read the associated report.<br/><br/>4. You can also review the full Analyst report for more details, or select other headings to view the related incidents, impacted assets, and exposure and mitigations.|
| **Remediate an item** | Defender for Business includes several [remediation actions](#remediation-actions-in-defender-for-business). Some actions are taken automatically, and others await approval by your security team.<br/><br/>1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, go to **Assets** > **Devices**.<br/><br/>2. Select a device, such as one with a high risk level or exposure level. A flyout pane opens and displays more information about alerts and incidents generated for that item.<br/><br/>3. On the flyout, view the information that is displayed. Select the ellipsis (...) to open a menu that lists available actions.<br/><br/>4. Select an available action. For example, you might choose **Run antivirus scan**, which will cause Microsoft Defender Antivirus to start a quick scan on the device. Or, you could select **Initiate Automated Investigation** to trigger an automated investigation on the device. |


## Remediation actions in Defender for Business

The following table summarizes remediation actions that are available in Defender for Business:

| Source  | Actions  |
|---------|---------|
| **Automated investigations**      | Quarantine a file<br/>Remove a registry key<br/>Kill a process<br/>Stop a service<br/>Disable a driver<br/>Remove a scheduled task |
| **Manual response actions**   | Run antivirus scan<br/>Isolate device<br/>Add an indicator to block or allow a file |
| **Live response**  | <br/>Collect forensic data<br/>Analyze a file<br/>Run a script<br/>Send a suspicious entity to Microsoft for analysis<br/>Remediate a file<br/>Proactively hunt for threats |

---

## See also

- [Security incident management](m365bp-security-incident-management.md)  
- [Reports in Defender for Business](../security/defender-business/mdb-reports.md)
- [Microsoft 365 for business security best practices](secure-your-business-data.md)