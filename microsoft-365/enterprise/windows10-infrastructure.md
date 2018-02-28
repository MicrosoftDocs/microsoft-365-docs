---
title: Windows 10 Enterprise infrastructure for Microsoft 365 Enterprise | Microsoft docs
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: CelesteDG
localization_priority: Normal
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 01/29/2018
ms.author: celested
---

# Phase 3: Windows 10 Enterprise

Microsoft 365 Enterprise includes Windows 10 Enterprise, which gives organizations the tools you need to do more and stay secure. Windows 10 is:
* Integrated for simplicity - Harness the power of the cloud to help reduce the complexity of managing today's modern IT device environment, no matter the size.
* Intelligent security - Is the most secure release of Windows ever, with intelligent security capabilities that are designed to work together to better protect your organization.
* Enables creativity and teamwork - Unlocks creativity and teamwork to deliver the most productive experience that both users and IT will love.

You need to understand the different ways you can deploy the Windows 10 operating system and choose the right one for your organization. Depending on your Microsoft 365 Enterprise subscription, there are also Windows 10 security features that you'll need to deploy and configure to get the most out of Windows 10.

## Deployment
There are multiple ways you can deploy Windows 10 Enterprise for your organization. Here, we'll focus on how you can configure and deploy a Windows 10 Enterprise image through these modern deployment scenarios.

| Deployment scenario | When to use it |
|:--- |:--- |
| [Using System Center Configuration Manager as an in-place upgrade](windows10-deploy-inplaceupgrade.md) | If you have existing computers running Windows 7, Windows 8, or Windows 8.1, we recommend this path if your organization is deploying Windows 10. This leverages the Windows installation program (Setup.exe) to perform an in-place upgrade, which automatically preserves all data, settings, applications, and drivers from the existing operating system version. This requires the least IT effort, because there is no need for any complex deployment infrastructure. |
| [Using Windows AutoPilot](windows10-deploy-autopilot.md) | If you have new Windows 10 PCs, you can use Windows AutoPilot to customize the out-of-box-experience (OOBE) for your organization, and deploy a new system with apps and settings already configured. There are no images to deploy, no drivers to inject, and no infrastructure to manage. Users can go through the deployment process independently, without the need consult their IT administrator. |

If these deployment scenarios do not fit the needs of your organization, you can learn about other scenarios and understand the capabilities and limitations of each in [Windows 10 deployment scenarios](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios).

## Security
Windows 10 provides features to help protect against threats, help you secure your devices, and help with access control. With Windows 10, you get critical security features that protect your device right from the start. Microsoft 365 E3 adds security features such as Windows Hello for Business, Windows Defender Application Control, and Windows Information Protection. With Microsoft 365 E5, you get all the protection from Microsoft 365 E3 security plus cloud-based security features and Windows Defender Advanced Threat Protection. 

To learn more about the security features that you get with Windows 10 Enterprise and get guidance on how you can deploy, manage, configure, and troubleshoot three key security features, see [Enable Windows 10 Enterprise security features](windows10-enable-security-features.md).

## Learn more
[Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)</br>
[Windows 10](https://docs.microsoft.com/windows/windows-10)</br>
[Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/)

