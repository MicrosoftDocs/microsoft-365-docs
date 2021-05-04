---
title: Onboard devices to the Microsoft Defender for Endpoint service
description: Onboard Windows 10 devices, servers, non-Windows devices and learn how to run a detection test.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Onboard devices to the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

You'll need to go the onboarding section of the Defender for Endpoint portal to onboard any of the supported devices. Depending on the device, you'll be guided with appropriate steps and provided management and deployment tool options suitable for the device. 

In general, to onboard devices to the service:

- Verify that the device fulfills the [minimum requirements](minimum-requirements.md)
- Depending on the device, follow the configuration steps provided in the onboarding section of the Defender for Endpoint portal
- Use the appropriate management tool and deployment method for your devices
- Run a detection test to verify that the devices are properly onboarded and reporting to the service

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4bGqr]

## Onboarding tool options
The following table lists the available tools based on the endpoint that you need to onboard.

| Endpoint     | Tool options                       |
|--------------|------------------------------------------|
| **Windows**  |  [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)   |
| **macOS**    | [Local scripts](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md)|
| **iOS**      | [App-based](ios-install.md)                                |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)               | 

