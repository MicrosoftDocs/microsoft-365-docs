---
title: Create and manage device tags
description: Use device tags to group devices to capture context and enable dynamic list creation as part of an incident
keywords: tags, device tags, device groups, groups, remediation, level, rules, aad group, role, assign, rank
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 02/27/2023
---

# Create and manage device tags

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Add tags on devices to create a logical group affiliation. Device tags support proper mapping of the network, enabling you to attach different tags to capture context and to enable dynamic list creation as part of an incident. Tags can be used as a filter in the **Device inventory** view, or to group devices. For more information on device grouping, see [Create and manage device groups](machine-groups.md).

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

You can add tags on devices using the following ways:

- Using the portal
- Setting a registry key value

> [!NOTE]
> There may be some latency between the time a tag is added to a device and its availability in the devices list and device page.

To add device tags using API, see [Add or remove device tags API](add-or-remove-machine-tags.md).

## Add and manage device tags using the portal

1. Select the device that you want to manage tags on. You can select or search for a device from any of the following views:

   - **Alerts queue** - Select the device name beside the device icon from the alerts queue.
   - **Devices inventory** - Select the device name from the list of devices.
   - **Search box** - Select Device from the drop-down menu and enter the device name.

     You can also get to the alert page through the file and IP views.

2. Select **Manage tags** from the row of Response actions.

    :::image type="content" source="images/manage-tags-option.png" alt-text="Image of manage tags button" lightbox="images/manage-tags-option.png":::
    

3. Type to find or create tags

    :::image type="content" source="images/create-new-tag.png" alt-text="Adding tags on device1" lightbox="images/create-new-tag.png":::

Tags are added to the device view and will also be reflected on the **Devices inventory** view. You can then use the **Tags** filter to see the relevant list of devices.

> [!NOTE]
> Filtering might not work on tag names that contain parenthesis or commas.
>
> When you create a new tag, a list of existing tags are displayed. The list only shows tags created through the portal. Existing tags created from client devices will not be displayed.

You can also delete tags from this view.

:::image type="content" source="images/new-tag-label-display.png" alt-text="Adding tags on device2" lightbox="images/new-tag-label-display.png":::

## Add device tags by setting a registry key value

> [!NOTE]
> Applicable only on the following devices:
>
> - Windows 11
> - Windows 10, version 1709 or later
> - Windows Server, version 1803 or later
> - Windows Server 2016
> - Windows Server 2012 R2
> - Windows Server 2008 R2 SP1
> - Windows 8.1
> - Windows 7 SP1

> [!NOTE]
> The maximum number of characters that can be set in a tag is 200.

Devices with similar tags can be handy when you need to apply contextual action on a specific list of devices.

Use the following registry key entry to add a tag on a device:

- Registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\DeviceTagging\`
- Registry key value (REG_SZ): `Group`
- Registry key data: `Name of the tag you want to set`

> [!NOTE]
> The device tag is part of the device information report that's generated once a day. As an alternative, you may choose to restart the endpoint that would transfer a new device information report.
>
> If you need to remove a tag that was added using the above Registry key, clear the contents of the Registry key data instead of removing the 'Group' key.

## Add device tags by creating a custom profile in Microsoft Intune

You can use Microsoft Intune to define and apply device tags. You can perform this task by creating a device configuration profile using custom settings in Intune. For more information, see [Create a profile with custom settings in Intune](/mem/intune/configuration/custom-settings-configure).

- In the [Create the profile](/mem/intune/configuration/custom-settings-configure) procedure, for step 3, choose either [macOS](/mem/intune/configuration/custom-settings-macos) or [Windows 10 and later](/mem/intune/configuration/custom-settings-windows-10), depending on the devices you want to tag.

- **For Windows 10 or later**, in the [OMA-IRU settings](/mem/intune/configuration/custom-settings-windows-10) section, for **Data type**, choose **String**. For **OMA-URI**, type (or paste) `./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/DeviceTagging/Group`.

- **For macOS**, follow the guidance in [Use custom settings for macOS devices in Microsoft Intune](/mem/intune/configuration/custom-settings-macos).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
