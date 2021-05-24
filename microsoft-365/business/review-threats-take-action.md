---
title: "Review detected threats and take action"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article 
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
description: "Learn how to review and manage threats detected by Microsoft Defender Antivirus on your Windows 10 devices." 
---

# Review detected threats and take action

As soon as a malicious file or software is detected, Microsoft Defender Antivirus blocks it and prevents it from running. And with cloud-delivered protection turned on, newly detected threats are added to the antivirus and antimalware engine so that your other devices and users are protected, as well.

Microsoft Defender Antivirus detects and protects against the following kinds of threats:

- Viruses, malware, and web-based threats on devices
- Phishing attempts
- Data theft attempts

As an IT professional/admin, you can view information about threat detections across [Windows 10 devices that are enrolled in Intune](/mem/intune/enrollment/device-enrollment) in the Microsoft 365 admin center. You'll see summary information, such as:

- How many devices need antivirus protection
- How many devices are not in compliance with security policies
- How many threats are currently active, mitigated, or resolved

You have several options to view specific information about threat detections and devices:

- The **Active devices** page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. See [Manage threat detections on the Active devices page](#manage-threat-detections-on-the-active-devices-page) in this article.
- The **Active threats** page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. See [Manage threat detections on the Active threats page](#manage-threat-detections-on-the-active-threats-page) in this article.
- The **Antivirus** page in <a href="https://go.microsoft.com/fwlink/p/?linkid=2150463" target="_blank">Microsoft Endpoint Manager</a>. See [Manage threat detections in Microsoft Endpoint Manager](#manage-threat-detections-in-microsoft-endpoint-manager) in this article.

To learn more, see [Threats detected by Microsoft Defender Antivirus](threats-detected-defender-av.md).

## Manage threat detections on the **Active devices** page

The following procedure applies to customers who have Microsoft 365 Business Premium.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a> and sign in.

2. In the navigation page, select **Devices** > **Active devices**. You'll see a list of active devices and details, such as protection status, antivirus (AV) protection state, and the number of active threats detected.

3. Select a device to view more details about that device and available actions. A flyout opens with recommendations and available actions, such as **Update policy**, **Update antivirus**, **Run quick scan**, **Run full scan**, and more.

## Manage threat detections on the **Active threats** page

The following procedure applies to customers who have Microsoft 365 Business Premium. [Windows 10 devices must be secured](./secure-win-10-pcs.md) and [enrolled in Intune](/mem/intune/enrollment/windows-enrollment-methods).

> [!NOTE]
> The **Microsoft Defender Antivirus** card and **Active threats** page are being rolled out in phases, so you may not have immediate access to them.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a> and sign in.

2. On the **Microsoft Defender Antivirus** card, select **View active threats**. (Alternatively, in the navigation pane, select **Health** > **Threats & antivirus**.)

3. On the **Active threats** page, select a detected threat to learn more about it. A flyout opens with details about that threat, including which devices are affected.

4. On the flyout, select a device to view available actions, such as **Update policy**, **Update antivirus**, **Run quick scan**, and more.

## Actions you can take

When you view details about specific threats or devices, you'll see recommendations and one or more actions you can take. The following table describes actions that you might see.<br><br>

| Action | Description |
|--|--|
| Configure protection | Your threat protection policies need to be configured. Select the link to go to your policy configuration page.<br><br>Need help? See [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). |
| Update policy | Your antivirus and real-time protection policies need to be updated or configured. Select the link to go to the policy configuration page.<br><br>Need help? See [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). |
| Run quick scan | Starts a quick antivirus scan on the device, focusing on common locations where malware might be registered, such as registry keys and known Windows startup folders. |
| Run full scan | Starts a full antivirus scan on the device, focusing on common locations where malware might be registered, and including every file and folder on the device. Results are sent to [Microsoft Endpoint Manager](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager). |
| Update antivirus | Requires the device to get [security intelligence updates](https://go.microsoft.com/fwlink/?linkid=2149926) for antivirus and antimalware protection. |
| Restart device | Forces a Windows 10 device to restart within five minutes.<br><br>**IMPORTANT:** The device owner or user is not automatically notified of the restart and could lose unsaved work. |

## Manage threat detections in Microsoft Endpoint Manager

You can use Microsoft Endpoint Manager to manage threat detections. Windows 10 devices must be [enrolled in Intune](/mem/intune/enrollment/windows-enrollment-methods) (part of Microsoft Endpoint Manager).

1. Go to the Microsoft Endpoint Manager admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2150463" target="_blank">https://endpoint.microsoft.com</a> and sign in.

2. In the navigation pane, select **Endpoint security**.

3. Under **Manage**, select **Antivirus**. You'll see several tabs, such as **Summary**, **Windows 10 unhealthy endpoints**, and **Windows 10 detected malware**.

4. Review the information on the available tabs, and then take any needed action.

For example, suppose that devices are listed on the **Windows 10 detected malware** tab. When you select a device, you'll have certain actions available, such as **Restart**, **Quick Scan**, **Full Scan**, **Sync**, or **Update signatures**. Select an action for that device.

The following table describes the actions you might see in Microsoft Endpoint Manager.<br><br>

| Action | Description |
|--|--|
| Restart | Forces a Windows 10 device to restart within five minutes.<br><br>**IMPORTANT:** The device owner or user is not automatically notified of the restart and could lose unsaved work. |
| Quick Scan | Starts a quick antivirus scan on the device, focusing on common locations where malware might be registered, such as registry keys and known Windows startup folders. Results are sent to [Microsoft Endpoint Manager](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager). |
| Full Scan | Starts a full antivirus scan on the device, focusing on common locations where malware might be registered, and including every file and folder on the device. Results are sent to [Microsoft Endpoint Manager](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager). |
| Sync | Requires a device to check in with Intune (part of Microsoft Endpoint Manager). When the device checks in, the device receives any pending actions or policies assigned to the device. |
| Update signatures | Requires the device to get [security intelligence updates](https://go.microsoft.com/fwlink/?linkid=2149926) for antivirus and antimalware protection. |

> [!TIP]
> For more information, see [Remote actions for devices](/mem/intune/protect/endpoint-security-manage-devices#remote-actions-for-devices).

## How to submit a file for malware analysis

If you have a file that you think was missed or wrongly classified as malware, you can submit that file to Microsoft for malware analysis. Users and IT admins can submit a file for analysis. Visit [https://www.microsoft.com/wdsi/filesubmission](https://www.microsoft.com/wdsi/filesubmission).