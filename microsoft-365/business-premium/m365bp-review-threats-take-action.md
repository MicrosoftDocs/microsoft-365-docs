---
title: "Review detected threats on devices and take action"
f1.keywords: NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual 
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 09/15/2022
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier1
search.appverid: MET150
description: "Learn how to review and manage threats detected by Microsoft Defender Antivirus on your Windows devices." 
---

# Review detected threats

As soon as Microsoft Defender detects a malicious file or software, Microsoft Defender blocks it and prevents it from running. And with cloud-delivered protection turned on, newly detected threats are added to the antivirus and antimalware engine so that your other devices and users are protected, as well.

Microsoft Defender Antivirus detects and protects against the following kinds of threats:

- Viruses, malware, and web-based threats on devices
- Phishing attempts
- Data theft attempts

As an IT professional/admin, you can view information about threat detections across [Windows devices enrolled in Intune](/mem/intune/enrollment/device-enrollment) in the Microsoft 365 admin center. You'll see summary information, such as:

- How many devices need antivirus protection
- How many devices aren't in compliance with security policies
- How many threats are currently active, mitigated, or resolved

## Actions you can take

When you view details about specific threats or devices, you'll see recommendations and one or more actions you can take. The following table describes actions that you might see.<br><br>

| Action | Description |
|--|--|
| Configure protection | Your threat protection policies need to be configured. Select the link to go to your policy configuration page.<br><br>Need help? See [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). |
| Update policy | Your antivirus and real-time protection policies need to be updated or configured. Select the link to go to the policy configuration page.<br><br>Need help? See [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). |
| Run quick scan | Starts a quick antivirus scan on the device, focusing on common locations where malware might be registered, such as registry keys and known Windows startup folders. |
| Run full scan | Starts a full antivirus scan on the device, focusing on common locations where malware might be registered, and including every file and folder on the device. Results are sent to [Microsoft Intune](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager). |
| Update antivirus | Requires the device to get [security intelligence updates](https://go.microsoft.com/fwlink/?linkid=2149926) for antivirus and antimalware protection. |
| Restart device | Forces a Windows device to restart within five minutes.<br><br>**IMPORTANT:** The device owner or user isn't automatically notified of the restart and could lose unsaved work. |

## View and manage threat detections in the Microsoft 365 Defender portal

1. Go to the ([Microsoft 365 Defender portal](https://security.microsoft.com)) and sign in.

1. In the navigation pane, choose **Threat Analytics** to see all the current threats. Threads are categorized by threat severity and type.

1. Click on a threat to see more details about the threat.

1. In the table, you can filter the alerts according to a number of criteria.

## Manage threat detections in Microsoft Intune

You can use Microsoft Intune to manage threat detections as well. First, all devices whether Windows, iOS or Android, must be [enrolled in Intune](/mem/intune/enrollment/windows-enrollment-methods).

1. Go to the Microsoft Intune admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2150463" target="_blank">https://endpoint.microsoft.com</a> and sign in.

2. In the navigation pane, select **Endpoint security**.

3. Under **Manage**, select **Antivirus**. You'll see tabs for **Summary**, **Unhealthy endpoints**, and **Active malware**.

4. Review the information on the available tabs, and then take any needed action.

For example, suppose that devices are listed on the **Active malware** tab. When you select a device, you'll have certain actions available, such as **Restart**, **Quick Scan**, **Full Scan**, **Sync**, or **Update signatures**. Select an action for that device.

The following table describes the actions you might see in Microsoft Intune.<br><br>

| Action | Description |
|--|--|
| Restart | Forces a Windows device to restart within five minutes.<br><br>**IMPORTANT:** The device owner or user isn't automatically notified of the restart and could lose unsaved work. |
| Quick Scan | Starts a quick antivirus scan on the device, focusing on common locations where malware might be registered, such as registry keys and known Windows startup folders. Results are sent to [Microsoft Intune](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager). |
| Full Scan | Starts a full antivirus scan on the device, focusing on common locations where malware might be registered, and including every file and folder on the device. Results are sent to [Microsoft Intune](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager). |
| Sync | Requires a device to check in with Intune. When the device checks in, the device receives any pending actions or policies assigned to the device. |
| Update signatures | Requires the device to get [security intelligence updates](https://go.microsoft.com/fwlink/?linkid=2149926) for antivirus and antimalware protection. |

> [!TIP]
> For more information, see [Remote actions for devices](/mem/intune/protect/endpoint-security-manage-devices#remote-actions-for-devices).

## How to submit a file for malware analysis

If you have a file that you think was missed or wrongly classified as malware, you can submit that file to Microsoft for malware analysis. Users and IT admins can submit a file for analysis. Visit [https://www.microsoft.com/wdsi/filesubmission](https://www.microsoft.com/wdsi/filesubmission).

## See also

[Best practices for securing Microsoft 365 for business plans](secure-your-business-data.md)

[Overview of Microsoft Defender for Business](../security/defender-business/mdb-overview.md) (Defender for Business is rolling out to Microsoft 365 Business Premium customers, beginning March 1, 2022)
