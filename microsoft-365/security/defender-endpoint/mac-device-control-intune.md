---
title: Deploy and manage Device Control using Intune 
description: Learn how to deploy and manage device control policies using Intune.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, macOS, device, control, usb, removable, media, intune
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

# Deploy and manage Device Control using Intune

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

## Deploy policy by using Intune

### Step 1: Build mobileconfig file

Now, you have 'groups' and 'rules' and 'settings', replace the mobileconfig file with those values and put it under the Device Control node, here is the demo file: [mdatp-devicecontrol/demo.mobileconfig at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/macOS/mobileconfig/demo.mobileconfig). Make sure validate your policy with the JSON schema to make sure your policy format is correct: [mdatp-devicecontrol/device_control_policy_schema.json at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/macOS/policy/device_control_policy_schema.json).

> [!NOTE]
> See [Device Control for macOS](mac-device-control-overview.md) for information about settings, rules and groups.

### Deploy the mobileconfig file using Intune

You can deploy the mobileconfig file through [**https://endpoint.microsoft.com/**](https://endpoint.microsoft.com/) > **Devices** > **macOS**:

- select 'Create profile'
- select 'Templates' and 'Custom'

:::image type="content" source="images/macos-device-control-intune-mobileconfig.png" alt-text="Shows the Microsoft Endpoint Manager macOS Device Control / Configuration settings page." lightbox="images/macos-device-control-intune-mobileconfig.png":::

## See also

- [Device Control for macOS](mac-device-control-overview.md)
- [Deploy and manage Device Control using jamf](mac-device-control-jamf.md)
- [macOS Device Control frequently asked questions (FAQ)](mac-device-control-faq.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
