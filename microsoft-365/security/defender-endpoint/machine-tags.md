---
title: Create and manage device tags
description: Use device tags to group devices to capture context and enable dynamic list creation as part of an incident
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: reference
ms.custom: api
ms.subservice: reference
search.appverid: met150
ms.date: 02/27/2023
---

# Create and manage device tags

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Add tags on devices to create a logical group affiliation. Device tags support proper mapping of the network, enabling you to attach different tags to capture context and to enable dynamic list creation as part of an incident. Tags can be used as a filter in the **Device inventory** view, or to group devices. For more information on device grouping, see [Create and manage device groups](machine-groups.md).

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

You can add tags on devices using the following ways:

- Using the portal
- Using dynamic rules for device tagging
- Setting a registry key value (Windows)
- Using Defender for Endpoint security settings management (macOS / Linux)
- Creating a configuration profile (macOS / Linux)
- Creating a custom profile in Microsoft Intune (Windows 10 or later)
- Using App configuration policy in Intune (iOS / Android)

> [!NOTE]
> There might be some latency between the time a tag is added to a device and its availability in the devices list and device page.

To add device tags using API, see [Add or remove device tags API](api/add-or-remove-machine-tags.md).

## Add device tags using the portal

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

## Add device tags using dynamic rules for device tagging

You can create and manage rules that automatically assign and remove tags from devices based on user-defined criteria directly in the Microsoft Defender portal. Please refer to following documents for details 

- [Manage your devices with ease using dynamic rules for device tagging in Microsoft Defender](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/manage-your-devices-with-ease-using-dynamic-rules-for-device/ba-p/4024988)
- [Asset rule management - Dynamic rules for devices](/microsoft-365/security/defender/configure-asset-rules)

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

## Add device tags using the Defender for Endpoint security settings management

> [!NOTE]
> Applicable only on the following devices:
>
> - macOS
> - Linux

You can use Defender for Endpoint security settings management to define and apply device tags for macOS and Linux. You can perform this task by creating Endpoint detection and response security policy. Please refer to following documentation for details.

- [Manage endpoint security policies on devices onboarded to Microsoft Defender for Endpoint](/mem/intune/protect/mde-security-integration)
- [Manage endpoint security policies in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/manage-security-policies)

## Add device tags by creating a configuration profile

> [!NOTE]
> Applicable only on the following devices:
>
> - macOS
> - Linux

You can use configuration profile to set device tag for macOS and Linux. Please refer to following documentation for details.

- **For macOS**, create configuration profile (.plist file) and deploy it manually or through management tool including Intune. See the guidance in [Set preferences for Microsoft Defender for Endpoint on macOS](/microsoft-365/security/defender-endpoint/mac-preferences?view=o365-worldwide). To deploy configuration profile with Intune, follow the guidance in [Use custom settings for macOS devices in Microsoft Intune](/mem/intune/configuration/custom-settings-macos).

- **For Linux**, create configuration profile (.json file) and deploy it manually or through management tool. See the guidance in [Set preferences for Microsoft Defender for Endpoint on Linux](/microsoft-365/security/defender-endpoint/linux-preferences)

## Add device tags by creating a custom profile in Microsoft Intune

> [!NOTE]
> Applicable only on the following devices:
>
> - Windows 10
> - Windows 11

You can use Microsoft Intune to define and apply device tags. You can perform this task by creating a device configuration profile using custom settings in Intune. For more information, see [Create a profile with custom settings in Intune](/mem/intune/configuration/custom-settings-configure).

- In the [Create the profile](/mem/intune/configuration/custom-settings-configure) procedure, for step 3, choose [Windows 10 and later](/mem/intune/configuration/custom-settings-windows-10).

- In the [OMA-IRU settings](/mem/intune/configuration/custom-settings-windows-10) section, for **Data type**, choose **String**. For **OMA-URI**, type (or paste) `./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/DeviceTagging/Group`.



## Add device tags by creating app configuration policy in Microsoft Intune

> [!NOTE]
> Applicable only on the following devices:
>
> - iOS
> - Android

You can use Microsoft Intune to define and apply tag for mobile devices. You can perform this task by creating a app configuration profile in Intune. For more information, please refer to following information.

- [Tag mobile devices with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-mobile-device-tagging-for-ios-and-android/ba-p/3897368)

- **For iOS**, follow the guidance in [Configure Microsoft Defender for Endpoint on iOS features](/microsoft-365/security/defender-endpoint/ios-configure-features?view=o365-worldwide).
- **For Android**, follow the guidance on [Configure Defender for Endpoint on Android features](/microsoft-365/security/defender-endpoint/android-configure?view=o365-worldwide).

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
