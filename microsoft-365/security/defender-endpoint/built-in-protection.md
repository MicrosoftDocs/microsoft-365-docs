---
title: Built-in protection helps guard against ransomware
description: Learn about built-in protection with Defender for Endpoint and how it helps guard against ransomware.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 08/15/2022 
ms.prod: m365-security
ms.technology: mde
ms.localizationpriority: medium
ms.collection: 
ms.custom: 
ms.reviewer: joshbregman
f1.keywords: NOCSH
---

# Built-in protection helps guard against ransomware

[Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) helps prevent, detect, investigate, and respond to advanced threats, such as ransomware attacks. [Next-generation protection](next-generation-protection.md), a component of Defender for Endpoint, is designed to catch emerging threats. Next-generation protection includes [cloud-protection](cloud-protection-microsoft-defender-antivirus.md), [always-on scanning](configure-protection-features-microsoft-defender-antivirus.md), and [regular protection updates](manage-updates-baselines-microsoft-defender-antivirus.md). Protection from ransomware and other cyberthreats requires certain settings to be configured. For example, [protection from potentially unwanted applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) (PUA), software that can cause your machine to run slowly, display unexpected ads, or even install unexpected or unwanted software, is not turned on by default. [Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md), a key part of your ransomware protection, should be turned on (if it's not already enabled). This is where built-in protection can help!

## What is built-in protection, and how does it work?

Built-in protection is a set of default settings to help ensure your devices are protected as soon as those devices are onboarded. Built-in protection means some settings, such as tamper protection, will be turned on by default, helping to guard against ransomware from day one. 

When built-in protection becomes available, you'll be notified that your tenant is about to receive it. When built-in protection arrives, tamper protection will be turned on for your tenant, and these settings will be applied to your organization's Windows devices.

After built-in protection has arrived, whenever devices are onboarded to Defender for Endpoint, built-in protection settings will be applied to devices running Windows.

## Can I exclude devices from built-in protection?