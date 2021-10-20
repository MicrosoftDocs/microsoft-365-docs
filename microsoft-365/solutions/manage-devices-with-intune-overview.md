---
title: "Manage devices with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: 
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
ms.custom: seo-marvel-jun2020
keywords: 
description: 
---

# Manage devices with Intune

A core component of enterprise-level security includes managing and protecting devices. Whether you’re building a Zero Trust security architecture, hardening your environment against ransomware, or building in protections to support remote workers, managing devices is part of the strategy. 

While Microsoft 365 includes several tools and methodologies for managing and protecting devices, this guidance walks through Microsoft’s recommendations using Microsoft Intune. This is the right guidance for you if:
- Criteria 1
- Criteria 2
- Criteria 3

On the other hand, if your environment includes _______, see [Microsoft Endpoint Manager documentation](https://docs.microsoft.com/mem/) to develop the best path for your organization. 

## Implementing the layers of protection on and for devices

Protecting the data and apps on devices and the devices themselves is a multi-layer process. There are some protections you can gain on unmanaged devices. After enrolling devices into management, you can implement more sophisticated controls. When threat protection is deployed across your endpoints, you gain even more insights and the ability to automatically remediate some attacks. Finally, if your organization has put the work into identifying sensitive data, applying classification and labels, and configuring data loss prevention policies, you can obtain even more granular protection for data on your endpoints.

The following diagram illustrates building blocks to achieve a Zero Trust security posture for Microsoft 365 and other SaaS apps that you introduce to this environment. The elements related to devices are numbered 1 through 7. These are the layers of protection device administers will coordinate with other administrators to accomplish. 

![What is information protection for data privacy regulations.](../media/devices/m365-zero-trust-deployment-stack-devices.png#lightbox)

In this illustration: 


|  |Step |Description  |Licensing requirements  |
|---------|---------|---------|---------|
|1     | Configure starting-point Zero Trust identity and device access policies       | Work with your identity administrator to [Implement Level 2 App Protection Policies (APP) data protection](manage-devices-with-intune-app-protection.md). These policies do not require that you manage devices. You configure the APP policies in Intune. Your identity admin configures a conditional access policy to require approved apps.          |       |
|2     | Register endpoints with Azure AD        | Work with your identity admin to [Register devices with Azure AD](manage-devices-with-intune-register-azure-ad.md). Why? . . . need some context for this task. And what about Azure AD joined devices? Do we need both?        |         |
|3     | Enroll devices into management and configure Configuration Policies        |  This task requires more planning and time to implement. While you have a choice of tools and methods to accomplish this, [Step 3—Enroll devices into management](manage-devices-with-intune-enroll.md) guides you through the process using Intune with Autopilot and automated enrollment.        |         |
|4     | Configure recommended Zero Trust identity and device access policies        |Now that your devices are enrolled, you can work with your identity admin to [tune conditional access policies to require healthy and compliant devices](manage-devices-with-intune-require-healthy.md).          |         |
|5     | Connect Defender for Endpoint to Intune       |  After Defender for Endpoint is first introduced (even in trial or pilot mode in your production tenant), you can [easily connect Intune](manage-devices-with-intune-defender.md).        |         |
|6     |Monitor device risk as a condition for access         | With Defender for Endpoint deployed you can work with your identity admin to [monitor device risk as a condition for access](manage-devices-with-intune-monitor-risk.md). Devices that are found to be in a risky state will be blocked.         |         |
|7     |Implement data loss protection with information protection capabilities    | If your organization has put the work into identifying sensitive data and labeling documents, you can work with your information protection admin to [protect sensitive information and documents on your devices](manage-devices-with-intune-dlp-mip.md).         |         |
| | | | |