---
title: "Security administration guide for Microsoft Defender for Business"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.date: 05/09/2023
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier2
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Learn about tasks that security admins perform with Microsoft Defender for Business."
---

# Microsoft Defender for Business security administration guide

Security administrators (also referred to as *security admins*) perform various tasks, such as:

- Defining or editing security policies
- Onboarding or offboarding devices
- Taking steps to protect high-risk user accounts or devices

The following table lists common tasks that security admins typically perform, with links to more detailed information.

| Task | Description |
|---|---|
| **Manage false positives/negatives** | A false positive is an entity, such as a file or a process that was detected and identified as malicious even though the entity isn't actually a threat. A false negative is an entity that wasn't detected as a threat, even though it actually is malicious. False positives/negatives can occur with any threat protection solution, including Microsoft Defender for Office 365 and Microsoft Defender for Business, which are both included in Microsoft 365 Business Premium. Fortunately, steps can be taken to address and reduce these kinds of issues. <br/><br/>For false positives/negatives on devices, see [Address false positives/negatives in Microsoft Defender for Endpoint](../security/defender-endpoint/defender-endpoint-false-positives-negatives.md). |
| **Strengthen your security posture** | Defender for Business includes a vulnerability management dashboard that provides you with exposure score and enables you to view information about exposed devices and see relevant security recommendations. You can use your Defender Vulnerability Management dashboard to reduce exposure and improve your organization's security posture. <br/><br/>See the following articles:<br/>- [Use your vulnerability management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md)<br/>- [Dashboard insights](/microsoft-365/security/defender-vulnerability-management/tvm-dashboard-insights) |
| **Adjust security policies** |  [Reports](mdb-reports.md) are available so that you can view information about detected threats, device status, and more. Sometimes it's necessary to adjust your security policies. For example, you might apply strict protection to some user accounts or devices, and standard protection to others. <br/><br/>See [View or edit policies in Microsoft Defender for Business](mdb-view-edit-create-policies.md) |
| **Protect high-risk devices** | The overall risk assessment of a device is based on a combination of factors, such as the types and severity of active alerts on the device. As your security team resolves active alerts, approves remediation activities, and suppresses subsequent alerts, the risk level decreases. <br/><br/>See [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md). |
| **Onboard or offboard devices**  | As devices are replaced or retired, new devices are purchased, or your business needs change, you can onboard or offboard devices from Defender for Business. <br/><br/>See the following articles: <br/>- [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md) <br/>- [Offboard a device from Microsoft Defender for Business](mdb-offboard-devices.md) |

## See also

- [Microsoft Defender for Business security operations guide](mdb-security-operations-guide.md)
- 
