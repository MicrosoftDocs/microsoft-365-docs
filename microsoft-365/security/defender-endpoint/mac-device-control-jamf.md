---
title: Deploy and manage device control using JAMF 
description: Learn how to use device control policies using JAMF.
keywords: microsoft, defender, endpoint, Microsoft Defender for Endpoint, mac, device, control, usb, removable, media, jamf
ms.service: microsoft-365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/31/2023
---

# Deploy and manage Device Control using JAMF

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint Device Control feature enables you to audit, allow, or prevent the read, write, or execute access to removable storage, and allows you to manage iOS and Portable device and Bluetooth media with or without exclusions.

## Licensing requirements

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=3). To access and use Removable Storage Access Control, you must have Microsoft 365 E3.

[!INCLUDE [Microsoft Defender for Endpoint third-party tool support](../../includes/support.md)]

## Deploy policy by using JAMF

### Step 1: Create policy JSON

Now, you have 'groups' and 'rules' and 'settings', combine 'settings' and 'groups' and rules into one JSON, here is the demo file: [mdatp-devicecontrol/deny_removable_media_except_kingston.json at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/macOS/policy/examples/deny_removable_media_except_kingston.json). Make sure to validate your policy with the JSON schema so your policy format is correct: [mdatp-devicecontrol/device_control_policy_schema.json at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/macOS/policy/device_control_policy_schema.json).

See [Device Control for macOS](mac-device-control-overview.md) for information about settings, rules and groups.

### Step 2: Update MDE Preferences Schema

The [MDE Preferences schema](https://github.com/microsoft/mdatp-xplat/blob/master/macos/schema/schema.json) has been updated to include the new `deviceControl/policy` key. The existing MDE Preferences configuration profile should be updated to use the new schema file's content.

:::image type="content" source="images/macos-device-control-jamf-mde-preferences-schema.png" alt-text="Shows where to edit the Microsoft Defender for Endpoint Preferences Schema to update." lightbox="images/macos-device-control-jamf-mde-preferences-schema.png":::

### Step 3: Add Device Control Policy to MDE Preferences

A new 'Device Control' property will now be available to add to the UX.  

1. Select the topmost **Add/Remove properties** button, then select **Device Control** and press **Apply**.

:::image type="content" source="images/macos-device-control-jamf-device-control-property.png" alt-text="Shows how to add Device Control in Microsoft Defender for Endpoint" lightbox="images/macos-device-control-jamf-device-control-property.png":::

2. Next, scroll down until you see the **Device Control** property (it will be the bottommost entry), and select **Add/Remove properties** directly underneath it.

3. Select **Device Control Policy**, and then click **Apply**.  

:::image type="content" source="images/macos-device-control-jamf-device-control-add-remove-property.png" alt-text="Shows how to apply Device Control Policy in Microsoft Defender for Endpoint." lightbox="images/macos-device-control-jamf-device-control-add-remove-property.png":::

4. To finish, copy and paste the Device Control policy JSON into the text box, and save your changes to the configuration profile.

:::image type="content" source="images/macos-device-control-jamf-device-control-policy-json.png" alt-text="Shows where to add the Device Control policy JSON in Microsoft Defender for Endpoint." lightbox="images/macos-device-control-jamf-device-control-policy-json.png":::

## See also

- [Device Control for macOS](mac-device-control-overview.md)
- [Deploy and manage Device Control using Intune](mac-device-control-intune.md)
- [macOS Device Control frequently asked questions (FAQ)](mac-device-control-faq.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
