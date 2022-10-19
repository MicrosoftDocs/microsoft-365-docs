---
title: Frequently asked questions on tamper protection
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Frequently asked questions on configuring tamper protection.
keywords: malware, defender, antivirus, tamper protection
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 10/17/2022
audience: ITPro
ms.topic: article
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

## On which versions of Windows can I configure 'tamper protection'?

- Windows 11
- Windows 11 Enterprise multi-session
- Windows 10 OS [1709](/lifecycle/announcements/revised-end-of-service-windows-10-1709), [1803](/lifecycle/announcements/windows-server-1803-end-of-servicing), [1809](/windows/release-health/status-windows-10-1809-and-windows-server-2019), or later together with [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint).
- Windows 10 Enterprise multi-session
  
If you're using Configuration Manager, version 2006, with tenant attach, tamper protection can be extended to Windows Server 2012 R2, Windows Server 2016, Windows Server 2019, and Windows Server 2022. See [Tenant attach: Create and deploy endpoint security Antivirus policy from the admin center (preview)](/mem/configmgr/tenant-attach/deploy-antivirus-policy).

## Will tamper protection affect non-Microsoft antivirus registration in the Windows Security app?

No. Non-Microsoft antivirus offerings will continue to register with the Windows Security application.

## What happens if Microsoft Defender Antivirus isn't active on a device?

Devices that are onboarded to Microsoft Defender for Endpoint will have Microsoft Defender Antivirus running in passive mode. In these cases, tamper protection will continue to protect the service and its features.

## How do I turn tamper protection on or off?

If you're a home user, see [Manage tamper protection on an individual device](manage-tamper-protection-individual-device.md).

If you're an organization using [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint), you should be able to manage 'tamper protection' in Intune similar to how you manage other endpoint protection features. See the following sections of this article:

- [Manage tamper protection using Microsoft Endpoint Manager](manage-tamper-protection-microsoft-endpoint-manager.md)
- [Manage tamper protection using Microsoft 365 Defender](manage-tamper-protection-microsoft-365-defender.md)

## How does configuring tamper protection in Intune affect how I manage Microsoft Defender Antivirus with Group Policy?

If you're currently using Intune to configure and manage tamper protection, you should continue using Intune. 

When tamper protection is turned on and you use Group Policy to make changes to Microsoft Defender Antivirus settings, the settings that are tamper protected will be ignored. 

## If we use Microsoft Intune to configure tamper protection, does it apply only to the entire organization?

You have flexibility in configuring tamper protection with Intune. You can target your entire organization, or select specific devices and user groups.

## Can I configure tamper protection with Microsoft Endpoint Configuration Manager?

If you're using tenant attach, you can use Microsoft Endpoint Configuration Manager. See the following resources:

- [Manage tamper protection using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md)
- [Tech Community blog: Announcing Tamper Protection for Configuration Manager Tenant Attach clients](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/announcing-tamper-protection-for-configuration-manager-tenant/ba-p/1700246#.X3QLR5Ziqq8.linkedin)

## I have the Windows E3 enrollment. Can I use configuring tamper protection in Intune?

Currently, configuring tamper protection in Intune is only available for customers who have [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint).

## I'm an enterprise customer. Can local admins change tamper protection on their devices?

No. Local admins can't change or modify tamper protection settings.

## What happens if my device is onboarded with Microsoft Defender for Endpoint and then goes into an off-boarded state?

If a device is off-boarded from Microsoft Defender for Endpoint, tamper protection is turned on, which is the default state for unmanaged devices.

## If the status of tamper protection changes, are alerts shown in the Microsoft 365 Defender portal?

Yes. The alert is shown in [https://security.microsoft.com](https://security.microsoft.com) under **Alerts**.

Your security operations team can also use hunting queries, such as the following example:

`AlertInfo|where Title == "Tamper Protection bypass"`

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
