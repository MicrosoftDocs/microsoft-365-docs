---
title: "Strengthen your security posture"
f1.keywords:
- security posture
- strengthen security posture
ms.author: siosulli
author: siosulli
manager: dansimp
audience: Admin
description: Learn how to strengthen your organization's security posture.
ms.topic: tutorial
ms.service: microsoft-365-security
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- m365solution-securityposture
- m365solution-overview
- m365-security
- securityposture-solution
- highpri
- tier1
---

# Strengthen your security posture

It has never been more important to be able to detect and defend your organization against cyber security threats. Knowing your assets, using the built-in configurations available to you, and taking recommended actions will help you build great security posture and resilience while also empowering you to respond rapidly to new and evolving threats.

As an organization’s security posture is constantly changing alongside the cybersecurity landscape, making security posture improvements should be a continuous process. This article describes how you can strengthen your organization's security posture using capabilities available in Microsoft 365 Defender and other related Microsoft security products.

It will help you better understand your overall security posture and provide a framework to help you continually assess, improve, and maintain a security posture to fit your organization's security needs.

## Before you begin

This solution guide provides specific and actionable steps to strengthen your security posture, and assumes the following facts:

- You're a global admin
- You have successfully deployed Microsoft Defender for Endpoint
- You're beyond the initial stage of onboarding devices and have a management tool in place to support future device onboarding. For more information on Onboarding devices, see [Onboarding and configuration tool options](../security/defender-endpoint/onboard-configure.md#onboarding-and-configuration-tool-options).

## Overview of the solution

This illustration provides a representation of the high level flow you can follow to improve your security posture.

:::image type="content" source="../media/content-understanding/security-posture-overview.png" alt-text="Stages in the improve your security posture flow" lightbox="../media/content-understanding/security-posture-overview.png":::

The 4 phases are described in the following table with the steps for each phase detailed in the corresponding section later in this article.

|Phase|Steps|
|---|---|
|[1 - Configure capabilities](#1-configure-capabilities)|<ol><li>[Configure device discovery](strengthen-security-posture-configure-capabilities#11-configure-device-discovery)</li><li>[Configure ASR in audit mode](strengthen-security-posture-configure-capabilities#12-configure-asr-in-audit-mode)</li><li> [Configure Microsoft Defender for Identity](strengthen-security-posture-configure-capabilities#13-configure-microsoft-defender-for-identity)</li></ol>|
|[2 - Assess and protect your assets](#2-assess-and-protect)|<ol><li>Assess your devices</li><li> Assign device value</li><li> Onboard newly discovered endpoints</li></ol>|
|[3 - Improve your security posture](#3-investigate-and-improve)|<ol><li> Review Secure Score</li></ol>|
|[4 - Maintain a secure posture](#4-track-and-maintain)|<ol><li> Enable email notifications for new vulnerabilities</li><li> Hunt for threats with advanced hunting </li><li>Understand your exposure to zero days threats]</li></ol>|

## 1. Configure capabilities

Configure the capabilities available to you, for example, configure the device discovery capability to help you find unmanaged devices connected your network and test attack surface reduction rules to see how they might impact your environment.

For more information, see [Strengthen your security posture - Phase 1: Configure capabilities](strengthen-security-posture-configure-capabilities.md)

## 2. Assess and Protect

[Assess your devices](../security/defender-endpoint/machine.md)

[Assign device value](../security/defender-vulnerability-management/tvm-assign-device-value.md)
Onboard newly discovered endpoints

## 3. Investigate and Improve

[Review Secure Score](../security/defender/microsoft-secure-score.md)

## 4. Track and Maintain

Enable email notifications for new vulnerabilities](../security/defender-endpoint/configure-email-notifications.md)
[Hunt for threats with advanced hunting](../security/defender/advanced-hunting-overview.md)
[Understand your exposure to zero days threats](../security/defender-vulnerability-management/tvm-zero-day-vulnerabilities.md)|
