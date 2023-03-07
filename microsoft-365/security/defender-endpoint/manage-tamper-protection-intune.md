---
title: Manage tamper protection for your organization using Microsoft Intune
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for your organization in Microsoft Intune.
keywords: malware, defender, antivirus, tamper protection, Microsoft Intune
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 03/06/2023
audience: ITPro
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Manage tamper protection for your organization using Microsoft Intune

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1 and Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

[Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) helps protect your security settings from being disabled or changed. If your organization uses [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you manage tamper protection for your organization in the [Intune admin center](https://endpoint.microsoft.com). With Intune, you can enable tamper protection on some, but not all devices. You can also tamper protect exclusions that are defined for Microsoft Defender Antivirus.

Tamper protection is part of anti-tampering capabilities that include [standard protection attack surface reduction rules](attack-surface-reduction-rules-reference.md).

> [!IMPORTANT]
> If you're using Microsoft Intune to manage Defender for Endpoint settings, we recommend setting [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp#configurationdisablelocaladminmerge) to true on devices.
>
> When tamper protection is turned on, tamper protected settings cannot be changed from their default value. Changes might appear to be successful in Intune, but will not actually be allowed by tamper protection. For the most current list of tamper protected settings, contact support.

## Requirements for managing tamper protection in Intune

- You must have appropriate [permissions](/microsoft-365/security/defender-endpoint/assign-portal-access) assigned, such as global admin, security admin, or security operations.
- Your organization uses [Intune to manage devices](/mem/endpoint-manager-getting-started). (Intune licenses are required; Intune is included in Microsoft 365 E3/E5, Enterprise Mobility + Security E3/E5, Microsoft 365 Business Premium, Microsoft 365 F1/F3, Microsoft 365 Government G3/G5, and corresponding education licenses.)
- Your Windows devices must be running Windows 10 [version 1709 or later](/lifecycle/announcements/revised-end-of-service-windows-10-1709) or Windows 11. (For more information about releases, see [Windows release information](/windows/release-health/release-information).)
- You must be using Windows security with [security intelligence](https://www.microsoft.com/wdsi/definitions) updated to version 1.287.60.0 (or above).
- Your devices must be using anti-malware platform version 4.18.1906.3 (or above) and anti-malware engine version `1.1.15500.X` (or above). ([Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).)
- Your Intune and Defender for Endpoint tenants must share the same Microsoft Entra (Azure Active Directory) infrastructure.
- Your devices must be onboarded to Defender for Endpoint.

> [!NOTE]
> If your devices are not enrolled in Microsoft Defender for Endpoint, tamper protection will show as **Not Applicable** until the onboarding process completes.
> Tamper protection can prevent changes to security settings from occurring. If you see an error code with Event ID 5013, see [Review event logs and error codes to troubleshoot issues with Microsoft Defender Antivirus](troubleshoot-microsoft-defender-antivirus.md).

## Turn tamper protection on (or off) in Microsoft Intune

:::image type="content" source="images/turnontamperprotectinmem.png" alt-text="Turn tamper protection turned on with Intune" lightbox="images/turnontamperprotectinmem.png":::

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint security** \> **Antivirus**, and then choose **+ Create Policy**.

   - In the **Platform** list, select **Windows 10, Windows 11, and Windows Server**.
   - In the **Profile** list, select **Windows Security experience**.

2. Create a profile that includes the following setting:

    - **TamperProtection (Device): Enable**

3. Assign the profile to one or more groups.

## How to tell if a Windows device is managed by Intune

You can use a registry key to confirm whether a Windows device is managed by Intune, or co-managed by Intune and Configuration Manager. 

1. On a Windows device open Registry Editor. (Read-only mode is fine; you won't be editing the registry key.)

2. Go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender` (or `HKLM\SOFTWARE\Microsoft\Windows Defender`), and look for a `REG_DWORD` entry called **ManagedDefenderProductType**. 

   - If **ManagedDefenderProductType** has a value of `6`, then the device is managed by Intune.
   - If **ManagedDefenderProductType** has a value of `7`, then the device is [co-managed](/mem/configmgr/comanage/overview) by Intune and Configuration Manager.

> [!CAUTION]
> Do not change the value of **ManagedDefenderProductType**. Use the preceding procedure for information only. Changing the key will have no effect on how the device is managed.

## Tamper protection for exclusions

If your organization has [exclusions defined for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md), tamper protection will protect those exclusions, provided all of the following conditions are met:

- Tamper protection is deployed and managed by using Intune, and devices are managed by Intune.
- `DisableLocalAdminMerge` is enabled. (See [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp).)
- Microsoft Defender Antivirus exclusions are managed in Microsoft Intune. (See [Settings for Microsoft Defender Antivirus policy in Microsoft Intune for Windows devices](/mem/intune/protect/antivirus-microsoft-defender-settings-windows).)
- Devices are running Windows Defender platform `4.18.2211.5` or later. (See [Monthly platform and engine versions](manage-updates-baselines-microsoft-defender-antivirus.md#monthly-platform-and-engine-versions).)
- Functionality to protect exclusions is enabled on devices. (See [How to determine whether the functionality is enabled on a Windows device](#how-to-determine-whether-the-functionality-to-protect-exclusions-is-enabled-on-a-windows-device).)

> [!TIP]
> For more detailed information about exclusions, see [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

### How to determine whether the functionality to protect exclusions is enabled on a Windows device

You can use a registry key to determine whether the functionality to protect Microsoft Defender Antivirus exclusions is enabled. Note that the following procedure describes how to view, but not change, tamper protection status.

1. On a Windows device open Registry Editor. (Read-only mode is fine; you won't be editing the registry key.)

2. To confirm that the device is managed by Intune only, go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender` (or `HKLM\SOFTWARE\Microsoft\Windows Defender`), and look for a `REG_DWORD` entry called **ManagedDefenderProductType**. 

   - If **ManagedDefenderProductType** has a value of `6`, then the device is managed by Intune only (*this value is required for exclusions to be tamper protected*).
   - If **ManagedDefenderProductType** has a value of `7`, then the device is co-managed, such as by Intune and Configuration Manager.

3. To confirm that tamper protection is deployed and that exclusions are tamper protected, go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features` (or `HKLM\SOFTWARE\Microsoft\Windows Defender\Features`), and look for the `REG_DWORD` entries that are listed in the following table: 

   | REG_DWORD | Value | What it means |
   |:---|:---|:---|
   | **TamperProtection** | 5 | Tamper protection is deployed to the device. |
   | **TamperProtectionSource** | 64 | Tamper protection is managed by Intune. |
   | **TPExclusions** | 1 | Required conditions are met, and the new functionality to protect exclusions is enabled on the device. In this case, exclusions are tamper protected. |
   | **TPExclusions** | 0 | Tamper protection isn't currently protecting exclusions on the device. |

> [!CAUTION]
> Do not change the value of the registry keys. Use the preceding procedure for information only. Changing keys will have no effect on whether tamper protection applies to exclusions.




> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
