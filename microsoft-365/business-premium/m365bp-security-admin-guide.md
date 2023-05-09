---
title: "Security administration guide for Microsoft 365 Business Premium"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 05/09/2023
ms.localizationpriority: medium
ms.collection:
- m365solution-smb
- highpri
- m365-security
- tier1
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Learn about tasks that security admins perform in Microsoft 365 Business Premium."
---

# Microsoft 365 Business Premium security administration guide

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

## See also

- [Microsoft 365 Business Premium general administration guide](m365bp-admin-guide.md)
- [Microsoft 365 Business Premium security operations guide](m365bp-security-operations-guide.md)
- [Microsoft Defender for Office 365 Security Operations Guide](../security/office-365-security/mdo-sec-ops-guide.md)


