---
title: Frequently asked questions on tamper protection
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Frequently asked questions on configuring tamper protection.
keywords: malware, defender, antivirus, tamper protection
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 03/15/2023
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

# Frequently asked questions on tamper protection

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

## On which versions of Windows can I configure tamper protection?

- Windows 11
- Windows 11 Enterprise multi-session
- Windows 10 OS [1709](/lifecycle/announcements/revised-end-of-service-windows-10-1709), [1803](/lifecycle/announcements/windows-server-1803-end-of-servicing), [1809](/windows/release-health/status-windows-10-1809-and-windows-server-2019), or later together with [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint).
- Windows 10 Enterprise multi-session
  
If you're using Configuration Manager, version 2006, with tenant attach, tamper protection can be extended to Windows Server 2012 R2, Windows Server 2016, Windows Server 2019, and Windows Server 2022. See [Tenant attach: Create and deploy endpoint security Antivirus policy from the admin center (preview)](/mem/configmgr/tenant-attach/deploy-antivirus-policy).

## How do I turn tamper protection on or off?

If you're an organization using [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint), you can choose from several options to manage tamper protection:

- The [Microsoft 365 Defender portal](manage-tamper-protection-microsoft-365-defender.md) (turn tamper protection on or off, tenant wide)
- [Intune](manage-tamper-protection-intune.md) (turn tamper protection on or off for some or all devices, and edit tamper-protected antivirus exclusions)
- [Configuration Manager](manage-tamper-protection-configuration-manager.md) (with tenant attach, you can configure tamper protection for some or all devices by using the Windows Security experience profile)
- [Windows Security app](manage-tamper-protection-individual-device.md) (for an individual device used at home or that isn't centrally managed by a security team)

> [!IMPORTANT]
> If you're using Group Policy, keep in mind that any changes you make to tamper protected settings will be ignored. You can't use Group Policy to enable or disable tamper protection. Use Intune, the Microsoft 365 Defender portal, or Configuration Manager to manage tamper protection.

For more information, see [How do I configure or manage tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md#how-do-i-configure-or-manage-tamper-protection)?

## Tamper protection is preventing my security team from managing a device. What should we do?

If tamper protection prevents your IT or security team from performing a necessary task on a device, consider using [troubleshooting mode](enable-troubleshooting-mode.md). We recommend keeping tamper protection turned on for your organization.

## Can I change individual tamper-protected settings?

If tamper protection is turned on for your organization, you won't be able to make changes to individual settings that are tamper protected. 

If you're using [Intune](manage-tamper-protection-intune.md) or [Configuration Manager](manage-tamper-protection-configuration-manager.md), you can exclude devices from tamper protection. And if you're using Intune, you can edit exclusions for Microsoft Defender Antivirus. See [Tamper protection for antivirus exclusions](manage-tamper-protection-intune.md#tamper-protection-for-antivirus-exclusions).

## Does tamper protection apply to Microsoft Defender Antivirus exclusions?

New functionality is rolling out now to protect Microsoft Defender Antivirus exclusions on devices that are managed by Intune. Certain conditions must be met. See [Tamper protection for antivirus exclusions](manage-tamper-protection-intune.md#tamper-protection-for-antivirus-exclusions).

## How does configuring tamper protection in Intune affect how I manage Microsoft Defender Antivirus with Group Policy?

If you're currently using Intune to configure and manage tamper protection, you should continue using Intune. When tamper protection is turned on and you use Group Policy to make changes to Microsoft Defender Antivirus settings, any settings that are protected by tamper protection will be ignored. 

## If we use Microsoft Intune to configure tamper protection, does it apply only to the entire organization?

If you're using Intune to configure and manage tamper protection, you can target your entire organization, or select specific devices and user groups.

## What settings can't be changed when tamper protection is turned on?

When tamper protection is turned on, tamper-protected settings can't be changed from their default value, even if you're using Intune or Configuration Manager to manage your security settings. Changes might appear to be successful in Intune or Configuration Manager, but won't actually be allowed by tamper protection. For a list of settings, see [What happens when tamper protection is turned on](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on)?

## If tamper protection is turned on in Microsoft 365 Defender, can Intune override it?

A tamper protection policy defined in Intune can override tamper protection that is turned on in the Microsoft 365 Defender portal. Policies defined in Intune take priority. Affected devices must be part of a device group that is included in the Intune policy. 

## How do I deploy DisableLocalAdminMerge?

Use Intune to deploy [DisableLocalAdminMerge](/windows/client-management/mdm/defender-csp). 

## How can I confirm whether exclusions are tamper protected on a Windows device?

See [How to determine whether antivirus exclusions are tamper protected on a Windows device](manage-tamper-protection-intune.md#how-to-determine-whether-antivirus-exclusions-are-tamper-protected-on-a-windows-device).

## Can I configure tamper protection with Microsoft Configuration Manager?

If you're using tenant attach, you can use Microsoft Configuration Manager. See the following resources:

- [Manage tamper protection using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md)
- [Tech Community blog: Announcing Tamper Protection for Configuration Manager Tenant Attach clients](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/announcing-tamper-protection-for-configuration-manager-tenant/ba-p/1700246#.X3QLR5Ziqq8.linkedin)

## Will tamper protection affect non-Microsoft antivirus registration in the Windows Security app?

No. Non-Microsoft antivirus offerings will continue to register with the Windows Security application.

## What happens if Microsoft Defender Antivirus isn't active on a device?

Devices that are onboarded to Microsoft Defender for Endpoint will have Microsoft Defender Antivirus running in passive mode. In these cases, tamper protection will continue to protect the service and its features.

## I have the Windows E3 enrollment. Can I use configuring tamper protection in Intune?

Currently, configuring tamper protection in Intune is only available for customers whose subscriptions include [Microsoft Defender for Endpoint Plan 1 or Plan 2](/microsoft-365/security/defender-endpoint).

## I'm an enterprise customer. Can local admins change tamper protection on their devices?

In general, tamper protection helps protect against users being able to change security settings directly on devices. Tamper protection is part of anti-tampering capabilities that include [standard protection attack surface reduction rules](attack-surface-reduction-rules-reference.md). To further prevent malware from running in kernel, consider using  [driver block rules with Application Control for Windows](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules).

## What happens if my device is onboarded with Microsoft Defender for Endpoint and then goes into an off-boarded state?

If a device is off-boarded from Microsoft Defender for Endpoint, tamper protection is turned on, which is the default state for unmanaged devices.

## If the status of tamper protection changes, are alerts shown in the Microsoft 365 Defender portal?

Alerts should be listed in the [Microsoft 365 Defender portal](https://security.microsoft.com) under **Alerts**.

Your security operations team can also use hunting queries, such as the following example:

`AlertInfo|where Title == "Tamper Protection bypass"`

## Does tamper protection require cloud protection?
  
Depending on the method or management tool you use to enable tamper protection, there might be a dependency on [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md). Cloud-delivered protection is also referred to as cloud protection, or Microsoft Advanced Protection Service (MAPS). The following table summarizes whether there's a dependency on cloud protection.

| How tamper protection is enabled | Dependency on cloud protection? |
|---|---|
| Microsoft Intune | No |
| Microsoft Configuration Manager with Tenant Attach | No |
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | Yes |

## See also

- [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- [Manage tamper protection for your organization using Microsoft Intune](manage-tamper-protection-intune.md)
- [Manage tamper protection for your organization using Microsoft 365 Defender portal](manage-tamper-protection-microsoft-365-defender.md)

If you're looking for Antivirus related information for other platforms, see:
- [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
