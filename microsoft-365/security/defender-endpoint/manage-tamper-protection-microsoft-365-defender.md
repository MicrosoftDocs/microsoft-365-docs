---
title: Manage tamper protection for your organization using Microsoft 365 Defender
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for your tenant using the Microsoft 365 Defender portal.
keywords: malware, defender, antivirus, tamper protection, Microsoft 365 Defender
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

# Manage tamper protection for your organization using Microsoft 365 Defender portal

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium](../../business-premium/index.md)

**Platforms**
- Windows

[Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) helps protect certain [security settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on), such as virus and threat protection, from being disabled or changed. If you're part of your organization's security team, you can turn tamper protection on (or off) tenant wide by using the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

> [!IMPORTANT]
> If tamper protection is [deployed and managed through Intune](manage-tamper-protection-intune.md), turning tamper protection on or off in the Microsoft 365 Defender portal won't impact the state of tamper protection. It restricts tamper-protected settings to their secure default values. For more information, see [What happens when tamper protection is turned on](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on)?

## Requirements for managing tamper protection in the Microsoft 365 Defender portal

- You must have appropriate permissions assigned through roles, such as Global Administrator or Security Administrator. (See [Microsoft 365 Defender role-based access control (RBAC)](../defender/manage-rbac.md).)

- Devices must be running certain versions of Windows or macOS. (See [On what devices can tamper protection be enabled?](prevent-changes-to-security-settings-with-tamper-protection.md#on-what-devices-can-tamper-protection-be-enabled).)

- Devices must be [onboarded to Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/onboarding).

- Devices must be using anti-malware platform version `4.18.2010.7` (or above) and anti-malware engine version `1.1.17600.5` (or above). ([Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).)

- [Cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) must be turned on.

> [!NOTE]
> When tamper protection is enabled via the Microsoft 365 Defender portal, [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md) is required so that the enabled state of tamper protection can be controlled. Starting with the November 2021 update (platform version `4.18.2111.5`), if cloud-delivered protection is not already turned on for a device, when tamper protection is turned on, cloud-delivered protection is turned on automatically on the device.   

## Turn tamper protection on (or off) in the Microsoft 365 Defender portal

:::image type="content" source="../../media/mde-turn-tamperprotectionon.png" alt-text="Turn tamper protection turned on in the Microsoft 365 Defender portal" lightbox="../../media/mde-turn-tamperprotectionon.png":::

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** \> **Endpoints**.

3. Go to **General** \> **Advanced features**, and then turn tamper protection on.

## Important points to keep in mind

- Currently, the option to manage tamper protection in the Microsoft 365 Defender portal is on by default for new deployments, as part of [built-in protection, which helps guard against ransomware](built-in-protection.md). For existing deployments, tamper protection is available on an opt-in basis. To opt in, in the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), choose **Settings** \> **Endpoints** \> **Advanced features** \> **Tamper protection**. 

- When you enable tamper protection in the Microsoft 365 Defender portal, the setting is applied tenant wide and restricts [tamper-protected settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on) to their secure defaults. Any changes made to tamper-protected settings are ignored. Depending on your particular scenario, you have several options available: 

   - If you must make changes to a device and those changes are blocked by tamper protection, you can use [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device.
   
   - You can use [Intune](manage-tamper-protection-intune.md) or [Configuration Manager](manage-tamper-protection-configuration-manager.md) to exclude devices from tamper protection. 
   
   - If you're managing tamper protection through Intune and certain other conditions are met, you can [manage tamper-protected antivirus exclusions](manage-tamper-protection-intune.md#tamper-protection-for-antivirus-exclusions).  

## See also

- [Built-in protection helps guard against ransomware](built-in-protection.md)
- [What happens when tamper protection is turned on?](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on)
- [Protect macOS security settings with tamper protection](tamperprotection-macos.md)
- [Troubleshoot problems with tamper protection](troubleshoot-problems-with-tamper-protection.yml)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
