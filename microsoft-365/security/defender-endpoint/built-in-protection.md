---
title: Built-in protection  helps guard against ransomware
description: Learn how built-in protection protects against ransomware as part of Microsoft Defender for Endpoint.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/07/2022
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.collection: 
- m365-security
- tier2
ms.custom: 
ms.reviewer: joshbregman
f1.keywords: NOCSH 
---

# Built-in protection helps guard against ransomware

[Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) helps prevent, detect, investigate, and respond to advanced threats, such as ransomware attacks. [Next-generation protection](next-generation-protection.md) and [attack surface reduction](overview-attack-surface-reduction.md) capabilities in Defender for Endpoint were designed to catch emerging threats. In order for the best protection from ransomware and other cyberthreats to be in place, certain settings must be configured. Built-in protection can help by providing you with default settings for better protection.

> [!TIP]
> **You don't have to wait for built-in protection to come to you**! You can protect your organization's devices now by configuring these capabilities:
> - [Enable cloud protection](why-cloud-protection-should-be-on-mdav.md)
> - [Turn tamper protection on](prevent-changes-to-security-settings-with-tamper-protection.md)
> - [Set standard attack surface reduction rules to block mode](attack-surface-reduction-rules-deployment.md)
> - [Enable network protection in block mode](enable-network-protection.md)

## What is built-in protection, and how does it work?

Built-in protection is a set of default settings that are rolling out to help ensure your devices are protected. These default settings are designed to protect devices from ransomware and other threats. Initially, built-in protection will include turning [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) on for your tenant, with other default settings coming soon. For more information, see the Tech Community blog post, [Tamper protection will be turned on for all enterprise customers](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/tamper-protection-will-be-turned-on-for-all-enterprise-customers/ba-p/3616478).

| Phase | What happens |
|:---|:---|
| Built-in protection is rolling out in [preview](preview.md) | Customers who have opted to receive preview features are receiving [notification](#what-does-the-notification-look-like) that built-in protection is coming. If it's not already configured, tamper protection will be turned on for customers who have Defender for Endpoint Plan 2 or Microsoft 365 E5. |
| Built-in protection becomes available for your tenant | You'll be [notified](#what-does-the-notification-look-like) that your tenant is about to receive built-in protection and when tamper protection will be turned on (if it's not already configured). |
| Built-in protection arrives | Tamper protection will be turned on for your tenant, and will be applied to your organization's Windows devices. You can [opt out](#can-i-opt-out) or [change your built-in protection settings](#can-i-change-built-in-protection-settings). |
| After built-in protection has arrived | Whenever new devices are onboarded to Defender for Endpoint, built-in protection settings will be applied to any new devices running Windows. You can always [change your built-in protection settings](#can-i-change-built-in-protection-settings). |

> [!NOTE]
> Built-in protection sets default values for Windows devices. If endpoint security settings change, such as through baselines or policies in [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), those settings override the built-in protection settings.  

## What does the notification look like?

You can expect to receive two types of notifications:

- A message center post indicating that built-in protection is coming soon; and 
- A banner in the Microsoft 365 Defender portal that resembles the following image:

   :::image type="content" source="media/bip-notification-m365defender.png" alt-text="Screenshot showing yellow banner highlighting built in protection in Microsoft 365 Defender portal.":::

Your notification will tell you when built-in protection is coming and when tamper protection will be turned on (if it's not already configured) for your tenant.

## Can I opt out?

You can opt out of built-in protection by specifying your own security settings. For example, if you prefer to not have tamper protection turned on automatically for your tenant, you can explicitly opt out.

> [!NOTE]
> **We do not recommend turning tamper protection off**. Tamper protection provides you with better ransomware protection.
> You must be a global administrator or security administrator to perform the following procedure.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Advanced features**.

3. Set **Tamper protection** to **On** (if it's not already on), and then select **Save preferences**. *Don't leave this page yet*.

4. Set **Tamper protection** to **Off**, and then select **Save preferences**.

## Can I change built-in protection settings?

Built-in protection is a set of default settings. You aren't required to keep these default settings in place. You can always change your settings to suit your business needs. The following table lists tasks your security team might perform, along with links to learn more. 

| Task | Description |
|:---|:---|
| Determine whether tamper protection is turned on | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.<br/>2. Go to **Settings** > **Endpoints** > **Advanced features** > **Tamper protection**.  |
| Manage tamper protection tenant wide using the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.<br/>2. Go to **Settings** > **Endpoints** > **Advanced features**.<br/>3. Set **Tamper protection** to **On** (*recommended*) or **Off**.<br/>4. Select **Save preferences**.<br/><br/>See [Manage tamper protection for your organization using Microsoft 365 Defender portal](manage-tamper-protection-microsoft-365-defender.md). |
| Set tamper protection settings for some, but not all, devices | Use endpoint security policies and profiles that are applied to specific devices. See the following articles:<br/>- [Manage tamper protection using Microsoft Endpoint Manager](manage-tamper-protection-microsoft-endpoint-manager.md)<br/>- [Manage tamper protection using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md)|
| Turn tamper protection on or off on an individual device | 1. On your Windows device, select **Start**, and start typing *Security*.<br/>2. In the search results, select **Windows Security**.<br/>3. Select **Virus & threat protection** > **Virus & threat protection settings**.<br/>4. Set **Tamper Protection** to **On** (*recommended*) or **Off**. <br/><br/>If the device is onboarded to Defender for Endpoint, or the device is managed in the Microsoft Endpoint Manager admin center, those settings will override user settings on the individual device. <br/><br/>See [Manage tamper protection on an individual device](manage-tamper-protection-individual-device.md). |
| Temporarily disable tamper protection on a device for troubleshooting purposes | See the following articles:<br/>- [Get started with troubleshooting mode in Microsoft Defender for Endpoint](enable-troubleshooting-mode.md)<br/>- [Troubleshooting mode scenarios in Microsoft Defender for Endpoint](troubleshooting-mode-scenarios.md) |

## See also

- [Tech Community blog: Tamper protection will be turned on for all enterprise customers](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/tamper-protection-will-be-turned-on-for-all-enterprise-customers/ba-p/3616478)
- [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security)
- [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure)
- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration)
- [Responding to ransomware attacks](../defender/playbook-responding-ransomware-m365-defender.md)
