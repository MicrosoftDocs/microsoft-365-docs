---
title: Built-in protection  helps guard against ransomware
description: Learn how built-in protection protects against ransomware as part of Microsoft Defender for Endpoint.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 08/19/2022
ms.prod: m365-security
ms.technology: mde
ms.localizationpriority: medium
ms.collection: 
ms.custom: 
ms.reviewer: joshbregman
f1.keywords: NOCSH 
---

# Built-in protection helps guard against ransomware

[Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) helps prevent, detect, investigate, and respond to advanced threats, such as ransomware attacks. [Next-generation protection](next-generation-protection.md) and [attack surface reduction](overview-attack-surface-reduction.md) capabilities were designed to catch emerging threats. In order for the best protection from ransomware and other cyberthreats to be in place, certain settings must be configured. Built-in protection can help!

## What is built-in protection, and how does it work?

Built-in protection is a set of default settings that are rolling out to help ensure your devices are protected. These default settings are designed to protect devices from ransomware and other threats. Initially, built-in protection will include turning [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) on for your tenant. 

- When built-in protection becomes available, you'll be notified that your tenant is about to receive it. 
- When built-in protection arrives, tamper protection will be turned on for your tenant, and will be applied to your organization's Windows devices. (You can [opt out](#can-i-opt-out) or [change your built-in protection settings](#can-i-change-built-in-protection-settings).)
- After built-in protection has arrived, whenever new devices are onboarded to Defender for Endpoint, built-in protection settings will be applied to any new devices running Windows.

> [!NOTE]
> Built-in protection sets default values for Windows devices. If endpoint security settings change, such as through baselines or policies in [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), those settings override the built-in protection settings.  

## What does the notification look like?



## Can I opt out?

You can opt out of built-in protection settings. If you prefer to not have tamper protection turned on automatically for your tenant, you can explicitly opt out.

> [!NOTE]
> We do not recommend turning tamper protection off. Tamper protection provides you with better ransomware protection.
> You must be a global administrator or security administrator to perform the following procedure:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Advanced features**.

3. Set **Tamper protection** to **On** (if it's not already on), and then select **Save preferences**. *Don't leave this page yet*.

4. Set **Tamper protection** to **Off**, and then select **Safe preferences**.

## Can I change built-in protection settings?

Built-in protection is a set of default settings. You aren't required to keep these default settings in place. You can always change your settings to suit your business needs, as listed in the following table. 

| To do this...| See these resources...|
|:---|:---|
| Determine whether tamper protection is turned on | |
| Manage tamper protection tenant wide using the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | [Manage tamper protection for your organization using Microsoft 365 Defender portal](manage-tamper-protection-microsoft-365-defender.md) |
| Set tamper protection settings for some, but not all, devices | [Manage tamper protection for your organization using Microsoft Endpoint Manager](manage-tamper-protection-microsoft-endpoint-manager.md) <p> [Manage tamper protection using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md)|
| Temporarily disable tamper protection on a device for troubleshooting purposes | [Get started with troubleshooting mode in Microsoft Defender for Endpoint](enable-troubleshooting-mode.md)<p>[Troubleshooting mode scenarios in Microsoft Defender for Endpoint](troubleshooting-mode-scenarios.md) |







## See also

- [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security)
- [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure)
- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration)
