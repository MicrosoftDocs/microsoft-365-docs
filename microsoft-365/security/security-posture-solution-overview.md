---
title: "Strengthen your security posture"
f1.keywords:
- deploy zero trust
- zero trust strategy
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
- You're beyond the initial stage of onboarding devices and have a management tool in place to support future device onboarding. For more information on Onboarding devices, see [Onboarding and configuration tool options](onboard-configure.md#onboarding-and-configuration-tool-options).

## Overview of the solution

This illustration provides a representation of the high level flow you can follow to improve your security posture.

:::image type="content" source="../media/content-understanding/security-posture-overview.png" alt-text="Stages in the improve your security posture flow" lightbox="../media/content-understanding/security-posture-overview.png":::

The 4 phases are described in the following table with the steps for each phase detailed in the corresponding section later in this article.

|Phase|Steps|
|---|---|
|[Configure capabilities](#configure-capabilities)|<ol><li>[Configure device discovery](#1-configure-device-discovery)</li><li>[Configure ASR in audit mode](#2-configure-asr-in-audit-mode)</li><li> [Configure Microsoft Defender for Identity](#3-configure-microsoft-defender-for-identity)</li></ol>|
|[Assess and protect your assets](#assess-and-protect)|<ol><li>Assess your devices</li><li> Assign device value</li><li> Onboard newly discovered endpoints</li></ol>|
|[Improve your security posture](#investigate-and-improve)|<ol><li> Review Secure Score</li></ol>|
|[Maintain a secure posture ](#track-and-maintain)|<ol><li> Enable email notifications for new vulnerabilities</li><li> Hunt for threats with advanced hunting </li><li>Understand your exposure to zero days threats]</li></ol>|

## Configure capabilities

Configure the capabilities available to you, for example, configure the device discovery capability to help you find unmanaged devices connected your network and test attack surface reduction rules to see how they might impact your environment.

### 1. Configure device discovery

it's critical to have full visibility of all the devices in your organization. You can't protect what you can't see. Device discovery will help you
discover unmanaged endpoints that can be onboarded and secured by Microsoft Defender for Endpoint on your corporate network.

See [Configure device discovery](../security/defender-endpoint/configure-device-discovery.md) for guidance you can use as a starting point.

### 2. Configure ASR in audit mode

Attack surface reduction rules help reduce your attack surface by minimizing the places where your organization might be vulnerable to cyber attacks.
You can test attack surface reduction (ASR) rules to determine if the rules would affect your organization if enabled. Th first step in this process is to turn on the ASR rules with the rules set to Audit.

To get started, see [Test attack surface reduction (ASR) rules](../security/defender-endpoint/attack-surface-reduction-rules-deployment-test.md)

### 3. Configure Microsoft Defender for Identity

Using Microsoft Defender for Identity with Defender for Endpoint can further improve you device discovery capabilities, to learn more see: [improving-device-discoverability-and-classification-within-mde](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/improving-device-discoverability-and-classification-within-mde/ba-p/3625559)

[Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Focus on this next because it protects your on-prem and your cloud infrastructure, has no dependencies or prerequisites, and can provide immediate benefit.

- See [Microsoft Defender for Identity Quickstarts](/azure-advanced-threat-protection/install-atp-step1) to get setup quickly
- Watch [Video: Introduction to Microsoft Defender for Identity](https://www.youtube.com/watch?reload=9&v=EGY2m8yU_KE)
- Review the [three phases of Microsoft Defender for Identity deployment](/azure-advanced-threat-protection/what-is-atp#whats-next)

### Assess and Protect

[Assess your devices](../security/defender-endpoint/machine.md)
[Assign device value](../security/defender-vulnerability-management/tvm-assign-device-value.md)
Onboard newly discovered endpoints

### Investigate and Improve

[Review Secure Score](../security/defender/microsoft-secure-score.md)

### Track and Maintain

Enable email notifications for new vulnerabilities](../security/defender-endpoint/configure-email-notifications.md)
[Hunt for threats with advanced hunting](../security/defender/advanced-hunting-overview.md)
[Understand your exposure to zero days threats](../security/defender-vulnerability-management/tvm-zero-day-vulnerabilities.md)|
