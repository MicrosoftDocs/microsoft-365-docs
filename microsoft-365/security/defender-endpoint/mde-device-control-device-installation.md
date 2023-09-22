---
title: Microsoft Defender for Endpoint Device Control Device Installation
description: This topic provides a walk through about Microsoft Defender for Endpoint Device Control Device Installation
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 10/18/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender for Endpoint Device Control Device Installation

**Applies to**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)


> [!NOTE]
> If you want to manage removable storage, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control).

Microsoft Defender for Endpoint Device Control Device Installation enables you to do the following task:

- Prevent people from installing specific devices.
- Allow people to install specific devices but prevent other devices.

> [!NOTE]
> To find the difference between Device Installation and Removable storage access control, see [Microsoft Defender for Endpoint Device Control Removable Storage Protection](/microsoft-365/security/defender-endpoint/device-control-removable-storage-protection?view=o365-worldwide&preserve-view=true).

|Privilege|Permission|
|:---|:---|
|Access|Device installation |
|Action Mode|Allow, Prevent |
|CSP Support|Yes|
|GPO Support|Yes|
|User-based Support|No|
|Machine-based Support|Yes|

## Prepare your endpoints

Deploy Device Installation on Windows 10, Windows 11 devices, Windows Server 2022.

## Device properties

The following device properties are supported by Device Installation support:

- Device ID
- Hardware ID
- Compatible ID
- Device Class
- Removable device type: Some devices could be classified as a removable device. A device is considered removable when the driver for the device to which it's connected indicates that the device is removable. For example, a USB device is reported to be removable by the drivers for the USB hub to which the device is connected.

For more information, see [Device Installation in Windows](/windows/client-management/manage-device-installation-with-group-policy).

## Policies

### Allow installation of devices that match any of these Device IDs

This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is allowed to install. This policy setting is intended to be used only when the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting is enabled.

When this policy setting is enabled together with the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting, Windows is allowed to install or update any device whose Plug and Play hardware ID or compatible ID appears in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:

- Prevent installation of devices that match these device IDs.
- Prevent installation of devices that match any of these device instance IDs.

If the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting is not enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.

> [!NOTE]
> The **Prevent installation of devices not described by other policy settings** policy setting has been replaced by the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting for supported target Windows 10 versions and Windows 11. Use the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting when possible.

### Allow installation of devices that match any of these device instance IDs

This policy setting allows you to specify a list of Plug and Play device instance IDs for devices that Windows is allowed to install. This policy setting is intended to be used only when the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting is enabled.

When this policy setting is enabled together with the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting, Windows is allowed to install or update any device whose Plug and Play device instance ID appears in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:

- Prevent installation of devices that match any of these device instance IDs

If the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting is not enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.

### Allow installation of devices using drivers that match these device setup classes

This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for driver packages that Windows is allowed to install. This policy setting is intended to be used only when the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting is enabled.

When this policy setting is enabled together with the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting, Windows is allowed to install or update driver packages whose device setup class GUIDs appear in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:

- Prevent installation of devices for these device classes
- Prevent installation of devices that match these device IDs
- Prevent installation of devices that match any of these device instance IDs

If the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting is not enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.

### Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria

This policy setting will change the evaluation order in which Allow and Prevent policy settings are applied when more than one install policy setting is applicable for a given device. Enable this policy setting to ensure that overlapping device match criteria are applied based on an established hierarchy where more specific match criteria supersedes less specific match criteria. The hierarchical order of evaluation for policy settings that specify device match criteria is as follows:

**Device instance IDs** \> **Device IDs** \> **Device setup class** \> **Removable devices**

#### Device instance IDs

1. Prevent installation of devices using drivers that match these device instance IDs.
2. Allow installation of devices using drivers that match these device instance IDs.

#### Device IDs

1. Prevent installation of devices using drivers that match these device IDs.
2. Allow installation of devices using drivers that match these device IDs.

#### Device setup class

1. Prevent installation of devices using drivers that match these device setup classes.
2. Allow installation of devices using drivers that match these device setup classes.

#### Removable devices

Prevent installation of removable devices

> [!NOTE]
> This policy setting provides more granular control than the **Prevent installation of devices not described by other policy settings** policy setting. If these conflicting policy settings are enabled at the same time, the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting will be enabled and the other policy setting will be ignored.

### Prevent installation of devices that match any of these device IDs

This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.

> [!NOTE]
> To enable the **Allow installation of devices that match any of these device instance IDs** policy setting to supersede this policy setting for applicable devices, enable the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting.

If you enable this policy setting, Windows is prevented from installing a device whose hardware ID or compatible ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

If you disable or don't configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.

### Prevent installation of devices that match any of these device instance IDs

This policy setting allows you to specify a list of Plug and Play device instance IDs for devices that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.

If you enable this policy setting, Windows is prevented from installing a device whose device instance ID appears in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

If you disable or don't configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.

### Prevent installation of devices using drivers that match these device setup classes

This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for driver packages that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.

> [!NOTE]
> To enable the **Allow installation of devices that match any of these device IDs** and **Allow installation of devices that match any of these device instance IDs** policy settings to supersede this policy setting for applicable devices, enable the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting.

If you enable this policy setting, Windows is prevented from installing or updating driver packages whose device setup class GUIDs appear in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

If you disable or don't configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.

### Prevent installation of removable devices

This policy setting allows you to prevent Windows from installing removable devices. A device is considered removable when the driver for the device to which it's connected indicates that the device is removable. For example, a Universal Serial Bus (USB) device is reported to be removable by the drivers for the USB hub to which the device is connected. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.

> [!NOTE]
> To enable the **Allow installation of devices using drivers that match these device setup classes**, **Allow installation of devices that match any of these device IDs**, and **Allow installation of devices that match any of these device instance IDs** policy settings to supersede this policy setting for applicable devices, enable the **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria** policy setting. Also, the allow policy won't take precedence if the **Block Removable Storage** option is selected in Device Control.

If you enable this policy setting, Windows is prevented from installing removable devices and existing removable devices cannot have their drivers updated. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of removable devices from a remote desktop client to the remote desktop server.

If you disable or don't configure this policy setting, Windows can install and update driver packages for removable devices as allowed or prevented by other policy settings.

## Common Removable Storage Access Control scenarios

To help familiarize you with Microsoft Defender for Endpoint Removable Storage Access Control, we have put together some common scenarios for you to follow.

### Scenario 1: Prevent installation of all USB devices while allowing an installation of only an authorized USB thumb-drive

For this scenario, following policies will be used:

- Prevent installation of devices using drivers that match these device setup classes.
- Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria.
- Allow installation of devices that match any of these device instance IDs or Allow installation of devices that match any of these device IDs.

#### Deploying and managing policy via Intune

The Device installation feature allows you to apply policy through Intune to device.

#### Licensing

Before you get started with Device installation, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/en-in/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Device installation, you must have Microsoft 365 E3.

#### Permission

For Policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions:

- Policy and profile Manager role
- Or custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Or Global admin

#### Deploying policy

In the Microsoft Intune admin center [https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)

1. Configure **Prevent installation of devices using drivers that match these device setup classes**.

    Open **Endpoint security** > **Attack surface reduction** > **Create Policy** > **Platform: Windows 10 (and later) & Profile: Device control**.

      :::image type="content" source="../../media/devicepolicy-editprofile.png" alt-text="The Edit profile page" lightbox="../../media/devicepolicy-editprofile.png":::

2. Plug in a USB, device and you will see following error message:

      :::image type="content" source="../../media/devicepolicy-errormsg.png" alt-text="The error message" lightbox="../../media/devicepolicy-errormsg.png":::

3. Enable **Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria**.

    **only support OMA-URI for now**: **Devices** > **Configuration profiles** > **Create profile** > **Platform: Windows 10 (and later) & Profile: Custom**

      :::image type="content" source="../../media/devicepolicy-editrow.png" alt-text="The Edit Row page" lightbox="../../media/devicepolicy-editrow.png":::

4. Enable and add allowed USB Instance ID – **Allow installation of devices that match any of these device IDs**.

    Update the Device control profile from step 1.

      :::image type="content" source="../../media/devicepolicy-devicecontrol.png" alt-text="An identifier in the Device Control page" lightbox="../../media/devicepolicy-devicecontrol.png":::

    We added `PCI\CC_0C03; PCI\CC_0C0330; PCI\VEN_8086; PNP0CA1; PNP0CA1&HOST; USB\ROOT_HUB30; USB\ROOT_HUB20; USB\USB20_HUB` as shown in the preceding image because it's not enough to enable only a single hardware ID to enable a single USB thumb-drive. You must ensure all the USB devices that preceding the target one aren't blocked (allowed) as well. You can open Device Manager and change the view to **Devices by connections** to see the way devices are installed in the PnP tree. In this case, the following devices must allowed so the target USB thumb-drive could be allowed as well:

    - "Intel(R) USB 3.0 eXtensible Host Controller – 1.0 (Microsoft)" -> PCI\CC_0C03
    - "USB Root Hub (USB 3.0)" -> USB\ROOT_HUB30
    - "Generic USB Hub" -> USB\USB20_HUB

    :::image type="content" source="../../media/devicepolicy-devicemgr.png" alt-text="The View menu item in the Device Manager page" lightbox="../../media/devicepolicy-devicemgr.png":::

    > [!NOTE]
    > Some devices in the system have several layers of connectivity to define their installation on the system. USB thumb drives are such devices. Thus, when looking to either block or allow them on a system, it's important to understand the path of connectivity for each device. There are several generic device IDs that are commonly used in systems and could provide a good start to build an "Allow list" in such cases. The following is one example (it is not always the same for all USBs; you need to understand the PnP tree of the device you want to manage through the Device Manager):
    >
    > `PCI\CC_0C03; PCI\CC_0C0330; PCI\VEN_8086; PNP0CA1; PNP0CA1&HOST (for Host Controllers)/ USB\ROOT_HUB30; USB\ROOT_HUB20 (for USB Root Hubs)/ USB\USB20_HUB (for Generic USB Hubs)/`
    >
    > Specifically for desktop machines, it's important to list all the USB devices that your keyboards and mice are connected through in the above list. Failing to do so could block a user from accessing its machine through HID devices.
    >
    > Different PC manufacturers sometimes have different ways to nest USB devices in the PnP tree, but in general this is how it's done.

5. Plug in the allowed USB again. You'll see that it's now allowed and available.

    :::image type="content" source="../../media/devicepolicy-removedrive.png" alt-text="The Remove drive details page" lightbox="../../media/devicepolicy-removedrive.png":::

#### Deploying and managing policy via Group Policy

The Device installation feature allows you to apply policy through Group Policy.

#### Deploying policy

See [Manage Device Installation with Group Policy (Windows 10) - Windows Client](/windows/client-management/manage-device-installation-with-group-policy).

## View Device Control Removable Storage Access Control data in Microsoft Defender for Endpoint

The [Microsoft 365 Defender portal](https://sip.security.microsoft.com/homepage) shows removable storage blocked by the Device Control Device Installation.

```kusto
//events triggered by Device Installation policies
DeviceEvents
| where ActionType == "PnpDeviceBlocked" or ActionType == "PnpDeviceAllowed"
| extend parsed=parse_json(AdditionalFields)
| extend MediaClassGuid = tostring(parsed.ClassGuid)
| extend MediaInstanceId = tostring(parsed.DeviceInstanceId)
| extend MediaDeviceId = tostring(parsed.MatchingDeviceId)
| project Timestamp , DeviceId, DeviceName, ActionType, MediaClassGuid, MediaDeviceId, MediaInstanceId, AdditionalFields
| order by Timestamp desc
```

:::image type="content" source="../../media/block-removable-storage2.png" alt-text="The Block storage" lightbox="../../media/block-removable-storage2.png":::

## Frequently asked questions

### How do I confirm that a device gets a deployed policy?

You can use following query to get antimalware client version on the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)):

```kusto
//check whether the Device installation policy has been deployed to the target machine, event only when modification happens
DeviceRegistryEvents
| where RegistryKey contains "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\DeviceInstall\\"
| order by Timestamp desc
```

## Why doesn't the Allow policy work?

It is not enough to enable only a single hardware ID to enable a single USB thumb-drive. Ensure that all the USB devices that precede the target one aren't blocked (allowed) as well.

:::image type="content" source="../../media/devicemgrscrnshot.png" alt-text="The Device install faq" lightbox="../../media/devicemgrscrnshot.png":::
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
