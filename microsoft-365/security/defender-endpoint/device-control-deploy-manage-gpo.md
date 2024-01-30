---
title: Deploy and manage device control in Microsoft Defender for Endpoint with Group Policy           
description: Learn how to deploy and manage device control in Defender for Endpoint using Group Policy
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/30/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-asr
ms.custom: 
- partner-contribution
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
---

# Deploy and manage device control in Microsoft Defender for Endpoint using Group Policy

If you're using Group Policy to manage Defender for Endpoint settings, you can use it to deploy and manage device control.

## Enable or disable removable storage access control

:::image type="content" source="media/deploy-dc-gpo/enable-disable-rsac.png" alt-text="Screenshot of enable disable rsac." lightbox="media/deploy-dc-gpo/enable-disable-rsac.png":::

1. On a device running Windows, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Features** \> **Device Control**.

2. In the **Device Control** window, select **Enabled**.

> [!NOTE]
> If you don't see these Group Policy Objects, you need to add the Group Policy Administrative Templates (ADMX). You can download administrative template (WindowsDefender.adml and WindowsDefender.admx) from [mdatp-devicecontrol / Removable Storage Access Control Samples](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) in GitHub.

## Set default enforcement

You can set default access such as, `Deny` or `Allow` for all device control features, such as `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, and `PrinterDevices`.

:::image type="content" source="images/set-default-enforcement-deny-gp.png" alt-text="Screenshot of set default enforcement." lightbox="images/set-default-enforcement-deny-gp.png":::

For example, you can have either a `Deny` or an `Allow` policy for `RemovableMediaDevices`, but not for `CdRomDevices` or `WpdDevices`. If you set `Default Deny` through this policy, then Read/Write/Execute access to `CdRomDevices` or `WpdDevices` is blocked. If you only want to manage storage, make sure to create `Allow` policy for printers. Otherwise, default enforcement (Deny) is applied to printers, too.

1. On a device running Windows, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Features** \> **Device Control** \> **Select Device Control Default Enforcement Policy**.

2. In the **Select Device Control Default Enforcement Policy** window, select **Default Deny**.

## Configure device types

:::image type="content" source="media/deploy-dc-gpo/configure-device.png" alt-text="Screenshot of configure device types." lightbox="media/deploy-dc-gpo/configure-device.png":::

To configure the device types that a device control policy is applied, follow these steps:

1. On a computer running Windows, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Turn on device control for specific device types**.

2. In the **Turn on device control for specific types** window, specify the product family IDs, separate by a pipe (`|`). Product family IDs include `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, or `PrinterDevices`.

## Define groups

:::image type="content" source="media/deploy-dc-gpo/define-groups.png" alt-text="Screenshot of define groups." lightbox="media/deploy-dc-gpo/define-groups.png":::

1. Create one XML file for each removable storage group. 

2. Use the properties in your removable storage group to create an XML file for each removable storage group. 

3. Save each XML file to your network share.

4. Define the settings as follows:

   1. On a device running Windows, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Define device control policy groups**.

   2. In the **Define device control policy groups** window, specify the network share file path containing the XML groups data.

You can create different group types. Here's one group example XML file for any removable storage and CD-ROM, Windows portable devices, and approved USBs group: [XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml)

> [!NOTE]
> Comments using XML comment notation `<!--COMMENT-->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

## Define Policies

:::image type="content" source="media/deploy-dc-gpo/define-policies.png" alt-text="Screenshot of define policies." lightbox="media/deploy-dc-gpo/define-policies.png":::


1. Create one XML file for access policy rule.

2. Use the properties in removable storage access policy rule(s) to create an XML for each group's removable storage access policy rule. 

3. Save the XML file to network share.

4. Define the settings as follows:

   1. On a device running Windows, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Define device control policy rules**.

   2. In the **Define device control policy rules** window, select **Enabled**, and then specify the network share file path containing the XML rules data.

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

## Set location for a copy of the file (evidence)

:::image type="content" source="media/deploy-dc-gpo/set-loc-copy-file.png" alt-text="Screenshot of set location for a copy of the file." lightbox="media/deploy-dc-gpo/set-loc-copy-file.png":::

If you want to have a copy of the file (evidence) having Write access, set right **Options** in your removable storage access policy rule in the XML file, and then specify the location where system can save the copy.

1. On a device running Windows, go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Define Device Control evidence data remote location**.

2. In the **Define Device Control evidence data remote location** window, select **Enabled**, and then specify the local or network share folder path.

## Retention period for local evidence cache

:::image type="content" source="media/deploy-dc-gpo/retention-loc-cache.png" alt-text="Screenshot of retention period for local cache." lightbox="media/deploy-dc-gpo/retention-loc-cache.png":::

If you want to change the default value of 60 days for persisting the local cache for file evidence, follow these steps:

1. Go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Set the retention period for files in the local device control cache**.

2. In the **Set the retention period for files in the local device control cache** window, select  **Enabled**, and then enter the number of days to retain the local cache (default 60).

## See also

[Device control in Microsoft Defender for Endpoint](device-control-overview.md)

[Device control policies and entries in Microsoft Defender for Endpoint](device-control-policies-entries.md)

[Device Control for macOS](mac-device-control-overview.md)