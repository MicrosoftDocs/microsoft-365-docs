---
title: "Strengthen your security posture with Microsoft Defender XDR"
f1.keywords:
- security posture
- strengthen security posture
ms.author: deniseb
author: denisebmsft
manager: deniseb
audience: Admin
description: Learn how to strengthen your organization's security posture.
ms.topic: solution-overview
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
- ContentEnagagementFY24
ms.date: 08/28/2024
---

# Strengthen your security posture with Microsoft Defender XDR

It has never been more important to be able to detect and defend your organization against cyber security threats. Knowing your assets, using the built-in configurations available to you, and taking recommended actions helps you build great security posture and resilience while also empowering you to respond rapidly to new and evolving threats.

As an organization's security posture is constantly changing alongside the cybersecurity landscape, making security posture improvements should be a continuous process. This article provides an overview of how you can strengthen your organization's security posture using capabilities available in Microsoft Defender XDR and other Microsoft security products, such as Microsoft Defender for Endpoint and Microsoft Defender Vulnerability Management.

It will help you better understand your overall security posture and provide a framework to help you continually assess, improve, and maintain a security posture to fit your organization's security needs.

## Before you begin

This solution guide provides specific and actionable steps to strengthen your security posture, and assumes the following facts:

- You have sufficient permissions to configure capabilities for Microsoft Defender products. 
- You have successfully deployed [Microsoft Defender for Endpoint Plan 2](../security/defender-endpoint/microsoft-defender-endpoint.md)
- You're beyond the initial stage of onboarding devices and have a management tool in place to support future device onboarding. For more information on Onboarding devices, see [Onboarding and configuration tool options](../security/defender-endpoint/mde-planning-guide.md).

## Overview of the solution

This illustration provides a representation of the high level flow you can follow to improve your security posture.

:::image type="content" source="../media/content-understanding/security-posture-overview.png" alt-text="Stages in the improve your security posture flow" lightbox="../media/content-understanding/security-posture-overview.png":::

The four phases are described here and each section corresponds to a separate article in this solution.

## 1. Configure capabilities

It's critical to have full visibility into your assets and to the attack surface of your organization. You can't protect what you can't see. The Microsoft Defender portal provides many capabilities to discover and protect the devices in your organization against threats. This can include, configuring device discovery to help you find unmanaged devices, taking advantage of available integrations to increase visibility into a complete OT/IOT asset inventory, and testing available attack surface reduction rules to see how they might impact your environment.

For more information, see [Strengthen your security posture - Configure capabilities](strengthen-security-posture-configure-capabilities.md).

## 2. Assess and protect

Central to understanding your security posture is having a comprehensive inventory of all your assets. The Microsoft Defender for Endpoint device inventory provides you with an accurate view into the assets in your network along with detailed information about those assets. The more information you have about your assets the better you can manage and assess the risks associated with them.

For more information, see [Strengthen your security posture - Assess and protect](strengthen-security-posture-assess-protect.md).

## 3. Investigate and improve

Now that you've started to get to know your assets and taken some initial steps to protect them, it's a good time to take a measurement of your current security posture with Microsoft Secure Score. Secure Score reports on the current state of an organization's security posture, provides visibility into vulnerabilities in your organization, and guidance around taking recommended actions. The more recommended actions you take, the higher your score will be.

Defender Vulnerability Management also provides security recommendations for cybersecurity weaknesses identified in your organization and maps them to actionable security recommendations that can be prioritized.

For more information on how to start taking action to investigate and protect against weaknesses in your organization, see [Strengthen your security posture - Investigate and improve](strengthen-security-posture-investigate-improve.md).

## 4. Track and maintain

Capabilities we already discussed like continually onboarding newly discovered devices and reviewing and prioritizing security recommendations can help to maintain, and continue to improve, your security posture. The Microsoft Defender portal also provides capabilities to help you keep up to date with new vulnerabilities and provides tools to proactively explore your network for threats.

For more information, see [Strengthen your security posture - Track and maintain](strengthen-security-posture-track-maintain.md).

## Next step

- [Phase 1: Configure capabilities](strengthen-security-posture-configure-capabilities.md)
