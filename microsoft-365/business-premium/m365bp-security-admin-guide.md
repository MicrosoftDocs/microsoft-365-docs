---
title: "Security adminstration guide for Microsoft 365 Business Premium"
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

Security administrators (also referred to as *security admins*) perform a variety of tasks, such as:

- Defining or editing security policies
- Onboarding or offboarding devices
- Taking steps to protect high-risk user accounts or devices
- ... and more.

The following table lists tasks security admins typically perform along with links to additional information.

| Task | Description |
|---|---|
| Manage false positives/negatives | A false positive is an entity, such as a file or a process that was detected and identified as malicious even though the entity isn't actually a threat. A false negative is an entity that wasn't detected as a threat, even though it actually is malicious. False positives/negatives can occur with any threat protection solution, including Microsoft Defender for Office 365 and Microsoft Defender for Business, which are both included in Microsoft 365 Business Premium.<br/><br/>Fortunately, steps can be taken to address and reduce these kinds of issues. <br/><br/>For false positives/negatives on devices, see [Address false positives/negatives in Microsoft Defender for Endpoint](../security/defender-endpoint/defender-endpoint-false-positives-negatives.md).<br/><br/>For false positives/negatives in email, see the following articles: <br/>- [How to handle malicious emails that are delivered to recipients (False Negatives), using Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/step-by-step-guides/how-to-handle-false-negatives-in-microsoft-defender-for-office-365)<br/>- [How to handle Legitimate emails getting blocked (False Positive), using Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/step-by-step-guides/how-to-handle-false-positives-in-microsoft-defender-for-office-365) |
| Strengthen your security posture | Defender for Business includes a vulnerability management dashboard that provides you with exposure score and enables you to view information about exposed devices and see relevant security recommendations. You can use your Defender Vulnerability Management dashboard to reduce exposure and improve your organization's security posture. <br/><br/>See the following articles:<br/>- [Use your vulnerability management dashboard in Microsoft Defender for Business](../security/defender-business/mdb-view-tvm-dashboard.md)<br/>- [Dashboard insights](../security/defender-vulnerability-management/tvm-dashboard-insights.md) |
| Adjust security policies |  Reports are available so that you can to view information about detected threats, device status, and more. Sometimes it's necessary to adjust your security policies. For example, you might apply strict protection to some user accounts or devices, and standard protection to others. <br/><br/>See the following articles: <br/>- For device protection: [View or edit policies in Microsoft Defender for Business](../security/defender-business/mdb-view-edit-create-policies.md) <br/>- For email protection: [Recommended settings for EOP and Microsoft Defender for Office 365 security](../security/office-365-security/recommended-settings-for-eop-and-office365.md) |
| Analyze admin submissions | |
| Protect priority user accounts | |
| Protect high-risk devices |  |
| Onboard devices (client and server) |  |
| Offboard devices | | 

## See also

- [Microsoft 365 Business Premium administration guide](m365bp-admin-guide.md)
- [Microsoft 365 Business Premium security operations guide](m365bp-security-operations-guide.md)
- [Microsoft Defender for Office 365 Security Operations Guide](../security/office-365-security/mdo-sec-ops-guide.md)


