---
title: Manage tamper protection for your organization using Microsoft Intune
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov, oogunrinde
manager: deniseb
description: Turn tamper protection on or off for your organization in Microsoft Intune.
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.date: 10/24/2023
audience: ITPro
ms.topic: how-to
author: siosulli
ms.author: siosulli
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: ngp
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Manage tamper protection for your organization using Microsoft Intune

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium](../../business-premium/m365bp-overview.md)

**Platforms**
- Windows

Tamper protection helps protect certain [security settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on), such as virus and threat protection, from being disabled or changed. If you're part of your organization's security team, and you're using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you can manage tamper protection for your organization in the [Intune admin center](https://endpoint.microsoft.com). Or, you can use [Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-protection-configure). With Intune or Configuration Manager, you can:

- [Turn tamper protection on (or off) for some or all devices](#turn-tamper-protection-on-or-off-in-microsoft-intune). 
- [Protect Microsoft Defender Antivirus exclusions from tampering](#tamper-protection-for-antivirus-exclusions) (certain requirements must be met).

> [!IMPORTANT]
> If you're using Microsoft Intune to manage Defender for Endpoint settings, make sure to set [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp#configurationdisablelocaladminmerge) to true on devices.
>
> When tamper protection is turned on, [tamper-protected settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on) cannot be changed. To avoid breaking management experiences, including Intune (and [Configuration Manager](manage-tamper-protection-configuration-manager.md)), keep in mind that changes to tamper-protected settings might appear to succeed but are actually blocked by tamper protection. Depending on your particular scenario, you have several options available: 
> - If you must make changes to a device and those changes are blocked by tamper protection, we recommend using [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. Note that after troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.
> - You can use Intune or [Configuration Manager](manage-tamper-protection-configuration-manager.md) to exclude devices from tamper protection. 
> - If you're managing tamper protection through Intune, you can change [tamper-protected antivirus exclusions](#tamper-protection-for-antivirus-exclusions).

## Requirements for managing tamper protection in Intune

| Requirement | Details |
|---|---|
| Roles and permissions | You must have appropriate permissions assigned through roles, such as Global Administrator or Security Administrator. See [Microsoft Entra roles with Intune access](/mem/intune/fundamentals/role-based-access-control#azure-active-directory-roles-with-intune-access). |
| Device management | Your organization uses [Intune to manage devices](/mem/intune/fundamentals/manage-devices). |
| Intune licenses | Intune licenses are required. See [Microsoft Intune licensing](/mem/intune/fundamentals/licenses). |
| Operating System | Windows devices must be running Windows 10 [version 1709 or later](/lifecycle/announcements/revised-end-of-service-windows-10-1709) or Windows 11. (For more information about releases, see [Windows release information](/windows/release-health/release-information).) <br/><br/>For Mac, see [Protect macOS security settings with tamper protection](tamperprotection-macos.md). |
| Security intelligence | You must be using Windows security with [security intelligence](https://www.microsoft.com/wdsi/definitions) updated to version `1.287.60.0` (or later). |
| Antimalware platform | Devices must be using antimalware platform version `4.18.1906.3` (or above) and anti-malware engine version `1.1.15500.X` (or later). See [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md). |
| Microsoft Entra ID | Your Intune and Defender for Endpoint tenants must share the same Microsoft Entra infrastructure. |
| Defender for Endpoint | Your devices must be onboarded to Defender for Endpoint. |

> [!NOTE]
> If devices are not enrolled in Microsoft Defender for Endpoint, tamper protection shows up as **Not Applicable** until the onboarding process completes.
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

If your organization has [exclusions defined for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md), tamper protection protects those exclusions, provided all of the following conditions are met:

| Condition | Criteria |
|---|---|
| Microsoft Defender platform | Devices are running Microsoft Defender platform `4.18.2211.5` or later. For more information, see [Monthly platform and engine versions](microsoft-defender-antivirus-updates.md#monthly-platform-and-engine-versions). |
| `DisableLocalAdminMerge` setting | This setting is also known as preventing local list merging. `DisableLocalAdminMerge` is enabled so that settings configured on a device aren't merged with organization policies, such as settings in Intune. For more information, see [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp). |
| Device management | Devices are either managed in Intune only, or are managed with Configuration Manager only. Sense must be enabled. |
| Antivirus exclusions | Microsoft Defender Antivirus exclusions are managed in Microsoft Intune. For more information, see [Settings for Microsoft Defender Antivirus policy in Microsoft Intune for Windows devices](/mem/intune/protect/antivirus-microsoft-defender-settings-windows). <br/><br/>Functionality to protect Microsoft Defender Antivirus exclusions is enabled on devices. For more information, see [How to determine whether antivirus exclusions are tamper protected on a Windows device](#how-to-determine-whether-antivirus-exclusions-are-tamper-protected-on-a-windows-device). |

> [!TIP]
> For more detailed information about Microsoft Defender Antivirus exclusions, see [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

## How to determine whether antivirus exclusions are tamper protected on a Windows device

You can use a registry key to determine whether the functionality to protect Microsoft Defender Antivirus exclusions is enabled. The following procedure describes how to view, but not change, tamper protection status.

1. On a Windows device open Registry Editor. (Read-only mode is fine; you're not editing the registry key.)

2. To confirm that the device is managed by Intune only or managed by Configuration Manager only, with Sense enabled, check the following registry key values:

   - `ManagedDefenderProductType` (located at `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender` or `HKLM\SOFTWARE\Microsoft\Windows Defender`) 
   - `EnrollmentStatus` (located at `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SenseCM` or `HKLM\SOFTWARE\Microsoft\SenseCM`)

   The following table summarizes what the registry key values mean:

   | `ManagedDefenderProductType` value | `EnrollmentStatus` value | What the value means |
   |---|---|---|
   | `6` | (any value) |The device is managed by Intune only. <br/>(*Meets a requirement for exclusions to be tamper protected.*) |
   | `7` | `4` | The device is managed by Configuration Manager. <br/>(*Meets a requirement for exclusions to be tamper protected.*) |
   | A value other than `6` or `7` | (any value) | The device isn't managed by Intune only or Configuration Manager only. <br/>(*Exclusions aren't tamper protected*.) |

3. To confirm that tamper protection is deployed and that exclusions are tamper protected, check the `TPExclusions` registry key (located at `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features` or `HKLM\SOFTWARE\Microsoft\Windows Defender\Features`).

   | `TPExclusions` | What the value means |
   |---|---|
   | `1` | The required conditions are met, and the new functionality to protect exclusions is enabled on the device.<br/>(*Exclusions are tamper protected.*) |
   | `0` | Tamper protection isn't currently protecting exclusions on the device.<br/> (*If all the requirements are met and this state seems incorrect, contact support*.) |

> [!CAUTION]
> **Do not change the value of the registry keys**. Use the preceding procedure for information only. Changing keys has no effect on whether tamper protection applies to exclusions.

## See also

- [Frequently asked questions (FAQs) on tamper protection](faqs-on-tamper-protection.yml)
- [Defender for Endpoint on non-Windows devices](configure-endpoints-non-windows.md)
- [Troubleshoot problems with tamper protection](troubleshoot-problems-with-tamper-protection.yml)
- [Manage Microsoft Defender for Endpoint on devices with Microsoft Intune](/mem/intune/protect/mde-security-integration)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
