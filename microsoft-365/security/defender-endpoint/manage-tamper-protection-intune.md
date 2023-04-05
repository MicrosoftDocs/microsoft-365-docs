---
title: Manage tamper protection for your organization using Microsoft Intune
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for your organization in Microsoft Intune.
keywords: malware, defender, antivirus, tamper protection, Microsoft Intune
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 03/09/2023
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

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium](../../business-premium/index.md)

**Platforms**
- Windows

[Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) helps protect certain [security settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on), such as virus and threat protection, from being disabled or changed. If you're part of your organization's security team, and you're using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you can manage tamper protection for your organization in the [Intune admin center](https://endpoint.microsoft.com). 

Using Intune, you can:

- [Turn tamper protection on (or off) for some or all devices](#turn-tamper-protection-on-or-off-in-microsoft-intune). 
- [Tamper protect antivirus exclusions](#tamper-protection-for-antivirus-exclusions) that are defined for Microsoft Defender Antivirus.

> [!IMPORTANT]
> If you're using Microsoft Intune to manage Defender for Endpoint settings, make sure to set [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp#configurationdisablelocaladminmerge) to true on devices.
>
> When tamper protection is turned on, [tamper-protected settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on) cannot be changed from their default values. To avoid breaking management experiences, including Intune and Configuration Manager, keep in mind that changes to tamper-protected settings might appear to succeed but are actually blocked by tamper protection. You can use Intune and [Configuration Manager](manage-tamper-protection-configuration-manager.md) to exclude devices from tamper protection. And, if you're managing tamper protection through Intune, you can change [tamper-protected antivirus exclusions](#tamper-protection-for-antivirus-exclusions).

## Requirements for managing tamper protection in Intune

- You must have appropriate permissions assigned through roles, such as Global Administrator or Security Administrator. (See [Azure Active Directory roles with Intune access](/mem/intune/fundamentals/role-based-access-control#azure-active-directory-roles-with-intune-access).)

- Your organization uses [Intune to manage devices](/mem/intune/fundamentals/manage-devices). (Intune licenses are required; Intune is included in Microsoft 365 E3/E5, Enterprise Mobility + Security E3/E5, Microsoft 365 Business Premium, Microsoft 365 F1/F3, Microsoft 365 Government G3/G5, and corresponding education licenses.)

- Windows devices must be running Windows 10 [version 1709 or later](/lifecycle/announcements/revised-end-of-service-windows-10-1709) or Windows 11. (For more information about releases, see [Windows release information](/windows/release-health/release-information).)

- You must be using Windows security with [security intelligence](https://www.microsoft.com/wdsi/definitions) updated to version 1.287.60.0 (or above).

- Devices must be using anti-malware platform version `4.18.1906.3` (or above) and anti-malware engine version `1.1.15500.X` (or above). (See [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).)

- Your Intune and Defender for Endpoint tenants must share the same Microsoft Entra (Azure Active Directory) infrastructure.

- Your devices must be onboarded to Defender for Endpoint.

> [!NOTE]
> If devices are not enrolled in Microsoft Defender for Endpoint, tamper protection will show as **Not Applicable** until the onboarding process completes.
> Tamper protection can prevent changes to security settings from occurring. If you see an error code with Event ID 5013, see [Review event logs and error codes to troubleshoot issues with Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/).

## Turn tamper protection on (or off) in Microsoft Intune

:::image type="content" source="images/turnontamperprotectinmem.png" alt-text="Turn tamper protection turned on with Intune" lightbox="images/turnontamperprotectinmem.png":::

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint security** \> **Antivirus**, and then choose **+ Create Policy**.

   - In the **Platform** list, select **Windows 10, Windows 11, and Windows Server**.
   - In the **Profile** list, select **Windows Security experience**.

2. Create a profile that includes the following setting:

    - **TamperProtection (Device): On**

3. Finish selecting options and settings for your policy.

4. Deploy the policy to devices.

## Tamper protection for antivirus exclusions

If your organization has [exclusions defined for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md), tamper protection will protect those exclusions, provided all of the following conditions are met:

- Devices are running Windows Defender platform `4.18.2211.5` or later. (See [Monthly platform and engine versions](microsoft-defender-antivirus-updates.md#monthly-platform-and-engine-versions).)

- `DisableLocalAdminMerge` is enabled. (See [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp).)

- Tamper protection is deployed through Intune, and devices are managed by Intune only.

- Microsoft Defender Antivirus exclusions are managed in Microsoft Intune. (See [Settings for Microsoft Defender Antivirus policy in Microsoft Intune for Windows devices](/mem/intune/protect/antivirus-microsoft-defender-settings-windows).)

- Functionality to protect Microsoft Defender Antivirus exclusions is enabled on devices. (See [How to determine whether antivirus exclusions are tamper protected on a Windows device](#how-to-determine-whether-antivirus-exclusions-are-tamper-protected-on-a-windows-device).)

> [!TIP]
> For more detailed information about Microsoft Defender Antivirus exclusions, see [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

## How to determine whether antivirus exclusions are tamper protected on a Windows device

You can use a registry key to determine whether the functionality to protect Microsoft Defender Antivirus exclusions is enabled. Note that the following procedure describes how to view, but not change, tamper protection status.

1. On a Windows device open Registry Editor. (Read-only mode is fine; you won't be editing the registry key.)

2. To confirm that the device is managed by Intune only, go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender` (or `HKLM\SOFTWARE\Microsoft\Windows Defender`), and look for a `REG_DWORD` entry called **ManagedDefenderProductType**. 

   - If **ManagedDefenderProductType** has a value of `6`, then the device is managed by Intune only (*this value is required for exclusions to be tamper protected*).
   - If **ManagedDefenderProductType** has a value of `7`, then the device is co-managed, such as by Intune and Configuration Manager (*this value indicates that exclusions are not currently tamper protected*).

3. To confirm that tamper protection is deployed and that exclusions are tamper protected, go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features` (or `HKLM\SOFTWARE\Microsoft\Windows Defender\Features`), and look for a `REG_DWORD` entry called **TPExclusions**.

   - If **TPExclusions** has a value of `1`, then all required conditions are met, and the new functionality to protect exclusions is enabled on the device. In this case, exclusions are tamper protected. 
   - If **TPExclusions** has a value of `0`, then tamper protection isn't currently protecting exclusions on the device. (*If you meet all the requirements and this state seems incorrect, contact support*.)

> [!CAUTION]
> **Do not change the value of the registry keys**. Use the preceding procedure for information only. Changing keys will have no effect on whether tamper protection applies to exclusions.

## See also

- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
