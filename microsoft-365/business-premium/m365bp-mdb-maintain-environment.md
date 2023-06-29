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
ms.date: 06/29/2023
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
description: "Maintain your systems, user accounts, and policies to help protect against cyberattacks."
---

# Maintain your environment

After you have set up and configured [Microsoft 365 Business Premium](index.md) or [Microsoft Defender for Business](../security/defender-business/mdb-overview.md) (standalone), your next step is to prepare a plan for maintenance and operations. You can use this article as a guide to prepare your plan. 

| Area | Description |
|---|---|
| Microsoft 365 administration<br/>(*tenant administration*) | Microsoft 365 administration includes tasks that your administrators (also referred to as *admins*) perform in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) (and potentially other admin centers, such as the Exchange admin center). <br/><br/>As new employees come in and other employees leave, it's important to manage user accounts and devices. Your admins can add or remove users, reset passwords, reset devices to factory settings, and more. These kinds of tasks (and more!) are listed in [Tenant administration](#tenant-administration). |
| Security administration | Security administration includes tasks that your security administrators (also referred to as *security admins*) perform in portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) <br/>- The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))<br/>- The Microsoft Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com))<br/><br/>These kinds of tasks include defining or editing security policies, onboarding or offboarding devices, and so forth, and are listed in [Security administration](#security-administration). |
| Security operations | Security operations (also referred to as *SecOps*) and includes tasks that your security team performs in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). <br/><br/>As threats are detected, those threats must be reviewed and addressed. Regular antivirus scans should occur on devices, and you can initiate scans when needed. In addition, you can run automated investigations on devices that have a high risk level or detected threats. These kinds of security tasks (and more!) are listed in [Security operations](#security-operations). |


## Tenant administration

## [**Microsoft 365 Business Premium**](#tab/M365BP)

Maintaining your Microsoft 365 Business Premium environment includes managing user accounts, managing devices, and keeping things up to date and working correctly. Use this article as an admin guide for your organization.

Many admin tasks can be performed in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), although some tasks, such as adding/removing devices, can be performed in other portals (such as the Microsoft 365 Defender portal or the Microsoft Intune admin center). 

If you're new to Microsoft 365, take a moment to get an [Overview of the Microsoft 365 admin center](../admin/admin-overview/admin-center-overview.md).

## General tasks

| Task | Resources to learn more |
|:---|:---|
| Get started using the Microsoft 365 admin center | [Overview of the Microsoft 365 admin center](../admin/admin-overview/admin-center-overview.md) |
| Learn about new features in the Microsoft 365 admin center | [What's new in the Microsoft 365 admin center](../admin/whats-new-in-preview.md) |
| Find out about new product updates and features so you can help prepare users | [Stay on top of Microsoft 365 product and feature changes](../admin/manage/stay-on-top-of-updates.md) |
| View usage reports to see how people are using Microsoft 365 | [Microsoft 365 Reports in the admin center](../admin/activity-reports/activity-reports.md) |
| Open a technical support ticket | [Get support for Microsoft 365 for business](../admin/get-help-support.md) |

## Users, groups, and passwords

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

## Email and calendars

| Task | Resources to learn more |
|:---|:---|
| Migrate email and contacts from Gmail or another email provider to Microsoft 365 | [Migrate email and contacts to Microsoft 365](../admin/setup/migrate-email-and-contacts-admin.md) |
| Add an email signature, legal disclaimer, or disclosure statement to email messages that come in or go out | [Create organization-wide signatures and disclaimers](../admin/setup/create-signatures-and-disclaimers.md) |
| Set up, edit, or delete a security group | [Create, edit, or delete a security group in the Microsoft 365 admin center](../admin/email/create-edit-or-delete-a-security-group.md) |
| Add users to a distribution group | [Add a user or contact to a Microsoft 365 distribution group](../admin/email/add-user-or-contact-to-distribution-list.md) |
| Set up a shared mailbox so people can monitor and send email from a common email addresses, like `info@contoso.com` | [Create a shared mailbox](../admin/email/create-a-shared-mailbox.md) |

## Devices

| Task | Resources to learn more |
|:---|:---|
| Use Windows Autopilot to set up and pre-configure new devices or to to reset, repurpose, and recover devices | [Overview of Windows Autopilot](/mem/autopilot/windows-autopilot) |
| View current status of and manage devices | [Manage devices in Microsoft Defender for Business](../security/defender-business/mdb-manage-devices.md) |
| Onboard devices to Defender for Business | [Onboard devices to Defender for Business](../security/defender-business/mdb-onboard-devices.md) |
| Offboard devices from Defender for Business | [Offboard a device from Defender for Business](../security/defender-business/mdb-offboard-devices.md) |
| Manage devices with Intune | [What does device management with Intune mean?](/mem/intune/fundamentals/what-is-device-management)<br/><br/>[Manage your devices and control device features in Microsoft Intune](/mem/intune/fundamentals/manage-devices) |

## Domains

| Task | Resources to learn more |
|:---|:---|
| Add a domain (like contoso.com) to your Microsoft 365 subscription | [Add a domain to Microsoft 365](../admin/setup/add-domain.md) |
| Buy a domain | [Buy a domain name](../admin/get-help-with-domains/buy-a-domain-name.md) |
| Remove a domain | [Remove a domain](../admin/get-help-with-domains/remove-a-domain.md) |

## Subscriptions and billing

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

## General tasks

| Task | Resources to learn more |
|:---|:---|
| Get started using the Microsoft 365 admin center | [Overview of the Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview) |
| Learn about new features in the Microsoft 365 admin center | [What's new in the Microsoft 365 admin center](/microsoft-365/admin/whats-new-in-preview) |
| Find out about new product updates and features so you can help prepare users | [Stay on top of Microsoft 365 product and feature changes](/microsoft-365/admin/manage/stay-on-top-of-updates) |
| View usage reports to see how people are using Microsoft 365 | [Microsoft 365 Reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports) |
| Open a technical support ticket | [Get support for Microsoft 365 for business](/microsoft-365/admin/get-help-support) |

## Users, groups, and passwords

| Task | Resources to learn more |
|:---|:---|
| Add a new user | [Add a new employee to Microsoft 365](/microsoft-365/admin/add-users/add-new-employee) |
| Assign licenses to users | [Assign Microsoft 365 licenses to users in the Microsoft 365 admin center](/microsoft-365/admin/manage/assign-licenses-to-users) <br/>[Assign Microsoft 365 licenses to user accounts by using PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell) |
| Assign admin roles to people who need admin permissions | [Assign admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/assign-admin-roles) <br/>[Assign admin roles to Microsoft 365 user accounts with PowerShell](/microsoft-365/enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell)|
| Remove licenses from users | [Unassign Microsoft 365 licenses from users in the Microsoft 365 admin center](/microsoft-365/admin/manage/remove-licenses-from-users)<br/>[Remove Microsoft 365 licenses from user accounts with PowerShell](/microsoft-365/enterprise/remove-licenses-from-user-accounts-with-microsoft-365-powershell) |
| Remove a user account when someone leaves your organization | [Overview: Remove a former employee and secure data](/microsoft-365/admin/add-users/remove-former-employee) |
| Reset passwords for user accounts | [Reset passwords in Microsoft 365 for business](/microsoft-365/admin/add-users/reset-passwords) |

## Devices

| Task | Resources to learn more |
|:---|:---|
| View current status of and manage devices | [Manage devices in Defender for Business](mdb-manage-devices.md) |
| Onboard devices to Defender for Business | [Onboard devices to Defender for Business](mdb-onboard-devices.md) |
| Offboard devices from Defender for Business | [Offboard a device from Defender for Business](mdb-offboard-devices.md) |
| Manage devices with Intune | [What does device management with Intune mean?](/mem/intune/fundamentals/what-is-device-management)<br/>[Manage your devices and control device features in Microsoft Intune](/mem/intune/fundamentals/manage-devices) |

## Subscriptions and billing

| Task | Resources to learn more |
|:---|:---|
| View your bill or invoice | [View your Microsoft 365 for business subscription bill or invoice](/microsoft-365//commerce/billing-and-payments/view-your-bill-or-invoice) |
| Manage your payment methods | [Manage payment methods](/microsoft-365/commerce/billing-and-payments/manage-payment-methods) |
| Change the frequency of your payments | [Change your Microsoft 365 subscription billing frequency](/microsoft-365/commerce/billing-and-payments/change-payment-frequency) |
| Change your billing address | [Change your Microsoft 365 for business billing addresses](/microsoft-365/commerce/billing-and-payments/change-your-billing-addresses) |
| Upgrade your subscription | [Try or buy Microsoft 365 Business Premium](../../business-premium/m365-business-premium-setup.md#sign-up-for-microsoft-365-business-premium) |
| Add Microsoft Intune to your subscription<br/>(for additional security capabilities) | [Get an overview of Intune](/mem/intune/fundamentals/what-is-intune) <br/>[Microsoft Intune Plans and Pricing](https://www.microsoft.com/en-us/security/business/microsoft-intune-pricing) |
| Try Defender for Office 365 <br/>(to protect email and collaboration content) | [Try Microsoft Defender for Office 365](../office-365-security/try-microsoft-defender-for-office-365.md) |

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
| **Strengthen your security posture** | Defender for Business includes a vulnerability management dashboard that provides you with exposure score and enables you to view information about exposed devices and see relevant security recommendations. You can use your Defender Vulnerability Management dashboard to reduce exposure and improve your organization's security posture. <br/><br/>See the following articles:<br/>- [Use your vulnerability management dashboard in Defender for Business](mdb-view-tvm-dashboard.md)<br/>- [Dashboard insights](/microsoft-365/security/defender-vulnerability-management/tvm-dashboard-insights) |
| **Adjust security policies** |  [Reports](mdb-reports.md) are available so that you can view information about detected threats, device status, and more. Sometimes it's necessary to adjust your security policies. For example, you might apply strict protection to some user accounts or devices, and standard protection to others. <br/><br/>See [View or edit policies in Defender for Business](mdb-view-edit-create-policies.md). |
| **Protect high-risk devices** | The overall risk assessment of a device is based on a combination of factors, such as the types and severity of active alerts on the device. As your security team resolves active alerts, approves remediation activities, and suppresses subsequent alerts, the risk level decreases. <br/><br/>See [Manage devices in Defender for Business](mdb-manage-devices.md). |
| **Onboard or offboard devices**  | As devices are replaced or retired, new devices are purchased, or your business needs change, you can onboard or offboard devices from Defender for Business. <br/><br/>See the following articles: <br/>- [Onboard devices to Defender for Business](mdb-onboard-devices.md) <br/>- [Offboard a device from Defender for Business](mdb-offboard-devices.md) |

---

## Security operations

## [**Microsoft 365 Business Premium**](#tab/M365BP)


## [**Defender for Business**](#tab/MDB)


---

## See also

[Security incident management](m365bp-security-incident-management.md)  