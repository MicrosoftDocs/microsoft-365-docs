---
title: "Mitigate threats in Microsoft 365 Lighthouse with Microsoft Defender Antivirus"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 09/27/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the mitigate threats with Microsoft Defender Antivirus."
---

# Mitigate threats in Microsoft 365 Lighthouse with Microsoft Defender Antivirus

Microsoft 365 Lighthouse lets you investigate and mitigate threats across all your tenants. You can also initiate antivirus scans on devices, make sure devices are getting the latest updates for Microsoft Defender Antivirus, and review pending actions following antivirus scans. Lighthouse only supports devices running Windows 10 or later.

## Before you begin

- Microsoft 365 Lighthouse is deployed in the partner tenant only—not in the customer tenants, but make sure you and your customer tenants meet the requirements listed in [Microsoft 365 Lighthouse requirements](m365-lighthouse-requirements.md).

- Users must be running Microsoft Defender Antivirus (included with Windows). Lighthouse does not support non-Microsoft antivirus software. For more information, see [Turn on Microsoft Defender Antivirus](/mem/intune/user-help/turn-on-defender-windows).

- You must hold at least one of the following Microsoft Entra roles for the customer tenants whose data you want to read:
    - Security Reader
    - Security Operator
    - Intune Administrator
    - Global Reader
    - Helpdesk Administrator

## Investigate active threats

To investigate a specific threat:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Threat management**.

2. Select the **Threats** tab.

3. From the list of threats, select the threat you want to investigate.

The threat details pane provides the following information:

| Category                                      | Definition                                                                                                   |
|-----------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Device and tenant                             | The device name and tenant where the threat was found. Select the device name to see additional information. |
| Threat status                                 | The status of the threat.                                                                                    |
| Threat type                                   | Type of threat.                                                                                              |
| Threat severity                               | Severity of threat (Severe, High, Moderate, Low, Unknown)                                                    |
| Instances                                     | Number of instances of this threat present on the device.                                                    |
| First detected                                | When the threat was first detected on this device.                                                           |
| Documentation                                 | Link to additional information about the threat.                                                             |
| Other devices on this tenant with this threat | A list of other devices in the same tenant with the same active threat.                                      |
| Other tenants with this threat                | A list of other tenants with the same active threat.                                                         |

To investigate threats on a specific device:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Threat management**.

2. Select the **Antivirus protection** tab.

3. Select a device from the list.

4. From the device details pane, select the **Current threats** tab.

Lighthouse displays all threats found on the device. To see details, select the threat.

## Scan for threats on a device

A quick scan searches common locations where malware could be, such as registry keys and know startup folders. A full scan searches the entire device. In most cases, a quick scan is sufficient and is the recommended option for scheduled scans.

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Threat management**.

2. Select the **Antivirus protection** tab.

3. From the list of devices, select a device.

4. In the device details pane, select **Run full scan** or **Run quick scan**.

To scan multiple devices, select the checkbox next to each device name in the list, and then select **Run full scan** or **Run quick scan**.

## Get updates for Microsoft Defender Antivirus

To update Microsoft Defender Antivirus on a single device:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Threat management**.

2. Select the **Antivirus protection** tab.

3. From the list of devices, select a device.

4. In the device details pane, select **Update antivirus**.

To get updates for multiple devices, select the checkbox next to each device name in the list, and then select **Update antivirus**.

If you need to create a new policy, select **Update policy** in the device details pane. Lighthouse will redirect you to the Microsoft Intune admin center. For more information about creating a policy, see [Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy).

## Check pending antivirus actions on a device

When consecutive actions are applied to a device, you'll receive an action-pending message. To check which actions are pending on a device:

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Threat management**.

2. Select the **Antivirus protection** tab.

3. From the list of devices, select a device.

4. In the device details pane, select the **Device action statuses** tab to view pending actions.

## Restart a device

Some updates may require a device to restart to install correctly.

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Devices** > **Threat management**.

2. Select the **Antivirus protection** tab.

3. From the list of devices, select a device.

4. In the device details pane, select **Restart device**.

To restart multiple devices, select the checkbox next to each device name in the list, and then select **Restart device**.

## Related content

[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)\
[Overview of the Threat management page in Microsoft 365 Lighthouse](m365-lighthouse-threat-management-page-overview.md) (article)\
[Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy) (article)\
[Enable and configure Microsoft Defender Antivirus always-on protection](/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus) (article)\
[Microsoft Security Intelligence](https://www.microsoft.com/wdsi/threats) (web page)
