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

[Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) helps prevent, detect, investigate, and respond to advanced threats, such as ransomware attacks. [Next-generation protection](next-generation-protection.md), a component of Defender for Endpoint, is designed to catch emerging threats. Next-generation protection includes cloud-protection, always-on scanning, and regular protection updates. Protection from ransomware and other cyberthreats requires certain settings to be configured in order for protection to be in place. Built-in protection can help!

## What is built-in protection, and how does it work?

Built-in protection is a set of default settings to help ensure your devices are protected as soon as those devices are onboarded. The default settings are designed to protect devices from ransomware and other threats. Initially, built-in protection will include turning [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) on for your tenant. 

- When built-in protection becomes available, you'll be notified that your tenant is about to receive it. 
- When built-in protection arrives, tamper protection will be turned on for your tenant and will be applied to your organization's Windows devices.
- After built-in protection has arrived, whenever new devices are onboarded to Defender for Endpoint, built-in protection settings will be applied to the new devices running Windows.

## Can I change built-in protection settings?

Built-in protection is a set of default settings; however, you are not required to keep these default settings in place. You can always change your settings to suit your business needs, including turning off built-in protection (although we don't recommend it). You can also exclude certain devices from receiving built-in protection settings.

## See also

- [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security)

- [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure)

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration)
