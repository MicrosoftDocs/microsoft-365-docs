---
title: Manage devices in Microsoft Defender for Business
description: Learn how to add, remove, and manage devices in Defender for Business, endpoint protection for small and medium sized businesses.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 05/10/2023
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# Manage devices in Microsoft Defender for Business

In Defender for Business, you can manage devices as follows:

- [View a list of onboarded devices](#view-the-list-of-onboarded-devices) to see their risk level, exposure level, and health state
- [Take action on a device](#take-action-on-a-device-that-has-threat-detections) that has threat detections
- [View the state of Microsoft Defender Antivirus](#view-the-state-of-microsoft-defender-antivirus)
- [Onboard a device to Defender for Business](#onboard-a-device)  
- [Offboard a device from Defender for Business](#offboard-a-device)

## View the list of onboarded devices

:::image type="content" source="../../media/defender-business/mdb-device-inventory.png" alt-text="Screenshot of device inventory":::

> [!IMPORTANT]
> In order to view the list of onboarded devices, you must have one of the following [roles](mdb-roles-permissions.md) assigned: 
> 
> - Global Administrator
> - Security Administrator
> - Security Reader

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, go to **Assets** > **Devices**.

3. Select a device to open its flyout panel, where you can learn more about its status and take action. 

   If you don't have any devices listed yet, [Onboard devices to Defender for Business](mdb-onboard-devices.md)

## Take action on a device that has threat detections

:::image type="content" source="../../media/defender-business/mdb-selected-device.png" alt-text="Screenshot of a selected device with details and actions available":::

> [!IMPORTANT]
> In order to take action on a device with detected threats, you must have one of the following [roles](mdb-roles-permissions.md) assigned: 
> 
> - Global Administrator
> - Security Administrator

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, go to **Assets** > **Devices**. 

2. Select a device to open its flyout panel, and review the information that is displayed.

3. Select the ellipsis (**...**) to open the actions menu. 

4. Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**. 

## View the state of Microsoft Defender Antivirus

Microsoft Defender Antivirus is a key component of next-generation protection in Defender for Business. When devices are onboarded to Defender for Business, Microsoft Defender Antivirus can have one of the following states: 

- Active mode
- Passive mode
- Disabled (or uninstalled) mode

To view the state of Microsoft Defender Antivirus, you can choose from several options, such as:

- Reports, like the [Device health report](mdb-reports.md#device-health-report); or
- One of the methods described in [How to confirm the state of Microsoft Defender Antivirus](../defender-endpoint/microsoft-defender-antivirus-compatibility.md#how-to-confirm-the-state-of-microsoft-defender-antivirus).

The following table describes each state and what it means.

| Microsoft Defender Antivirus state | What it means |
|:---|:---|
| **Active mode** <br/>(*recommended*) | Microsoft Defender Antivirus is used as the antivirus app on the machine. Files are scanned, threats are remediated, and detection information is reported in the Microsoft 365 Defender portal and in the Windows Security app on a device running Windows.<br/><br/>We recommend running Microsoft Defender Antivirus in active mode so that devices onboarded to Defender for Business will get all of the following types of protection:  <br/>- **Real-time protection**, which locates and stops malware from running on devices. <br/> - **Cloud protection**, which works with Microsoft Defender Antivirus and the Microsoft cloud to identify new threats, sometimes even before a single device is affected.<br/> - **Network protection**, which helps protect against phishing scams, exploit-hosting sites, and malicious content on the internet.<br/> - **Web content filtering**, which regulates access to websites based on content categories (such as adult content, high bandwidth, and legal liability) across all browsers.<br/> - **Protection from potentially unwanted applications**, such as advertising software, bundling software that offers to install other, unsigned software, and evasion software that attempts to evade security features.  |
| **Passive mode** | A non-Microsoft antivirus/antimalware product is installed on the device, and even though the device has been onboarded to Defender for Business, Microsoft Defender Antivirus can detect threats but doesn't remediate them. Devices with Microsoft Defender Antivirus can still receive security intelligence and platform updates. <br/><br/>You can switch Microsoft Defender Antivirus to active mode automatically by uninstalling the non-Microsoft antivirus/antimalware product. |
| **Disabled mode** | A non-Microsoft antivirus/antimwalware product is installed on the device, and the device hasn't been onboarded to Defender for Business. Whether Microsoft Defender Antivirus went into disabled mode automatically or was set manually, it's not currently running on the device. In this case, Microsoft Defender Antivirus neither detects nor remediates threats on the device.<br/><br/>You can switch Microsoft Defender Antivirus to active mode by uninstalling the non-Microsoft antivirus/antimalware solution and onboarding the device to Defender for Business. |

## Onboard a device

See [Onboard devices to Defender for Business](mdb-onboard-devices.md).

## Offboard a device

See [Offboarding a device](mdb-offboard-devices.md).

## Next steps

- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)
- [Create or edit device groups](mdb-create-edit-device-groups.md)