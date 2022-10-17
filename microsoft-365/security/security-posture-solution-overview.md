---
title: "Strengthen your security posture with Microsoft 365 Defender"
f1.keywords:
- deploy zero trust
- zero trust strategy
ms.author: siosulli
author: siosulli
manager: dansimp
audience: Admin
description: Learn how to strengthen your organization's security posture with the capabilities available in Microsoft 365 Defender.
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

# Strengthen your security posture with Microsoft 365 Defender

It has never been more important to be able to detect and defend your organization against cyber security threats. Knowing your assets, using the built-in configurations available to you, and taking recommended actions will help you build great security posture and resilience while also empowering you to respond rapidly to new and evolving threats.

As an organization’s security posture is constantly changing alongside the cybersecurity landscape, making security posture improvements should be a continuous process. This article describes how you can strengthen your organization's security posture using capabilities available in Microsoft Defender 365.

It will help you better understand your overall security posture and provide a framework to help you continually assess, improve, and maintain your security posture to fit your organization's security needs.

## Before you begin

This solution guide provides specific and actionable steps to strengthen your security posture, and assumes the following facts:

- you are a global admin
- you have successfully deployed Microsoft Defender for Endpoint
- you're beyond the initial stage of onboarding devices and have a management tool in place to support future device onboarding

## Overview of the solution

This illustration provides a representation of the high level flow you can follow to improve your security posture.

:::image type="content" source="../media/content-understanding/security-posture-overview.png" alt-text="The Zero Trust security architecture" lightbox="../media/content-understanding/security-posture-overview.png":::

## Get started

The guidance is organized into 4 different stages, that follow a suggested flow, to help you strengthen your security posture. Each stage and its corresponding tasks are outlined in the following table:

|Phase|Description|
|---|---|
|[Configure](#configure-a-secure-environment)|<ol><li> Configure device discovery</li><li>Configure Microsoft Defender for Identity Configure </li><li> ASR in audit mode</li></ol>|
|[Assess and Protect](#assess-and-protect)|<ol><li>Assess your devices</li><li> Assign device value</li><li> Onboard newly discovered endpoints</li></ol>|
|[Investigate and Improve](#investigate-and-improve)|<ol><li> Review Secure Score</li></ol>|
|[Track and Maintain](#track-and-maintain)|<ol><li> Enable email notifications for new vulnerabilities</li><li> Hunt for threats with advanced hunting </li><li>Understand your exposure to zero days threats]</li></ol>|

### Configure a secure environment

[Configure device discovery](../security/defender-endpoint/configure-device-discovery.md)
Configure ASR in audit mode

**Configure Microsoft Defender for Identity**
[Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) is a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Focus on this next because it protects your on-prem and your cloud infrastructure, has no dependencies or prerequisites, and can provide immediate benefit.

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
