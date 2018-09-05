---
title: Windows 10 Enterprise infrastructure for Microsoft 365 Enterprise
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: greg-lindsay
localization_priority: Normal
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 06/28/2018
ms.author: greglin
---

# Phase 3: Windows 10 Enterprise

![](./media/deploy-foundation-infrastructure/win10enterprise_icon.png)

Microsoft 365 Enterprise includes Windows 10 Enterprise, which gives you the tools to do more and stay secure. Windows 10 Enterprise:

- **Is integrated for simplicity** - Harness the power of the cloud to help reduce the complexity of managing today's modern IT device environment, no matter the size.
- **Has intelligent security** - It's the most secure release of Windows ever, with intelligent security capabilities that are designed to work together to better protect your organization.
- **Enables creativity and teamwork** - Unlocks creativity and teamwork to deliver the most productive experience that both users and IT will love.

You'll need to understand the different ways you can deploy the Windows 10 operating system and choose the right one for your organization. Depending on your Microsoft 365 Enterprise subscription, there are also Windows 10 services and security features that you'll need to configure to get the most out of Windows 10.

Windows 10 enables these strategic business scenarios for Microsoft 365 Enterprise:

- Harness collective knowledge and expertise by empowering people to discover, share, and progress files, information, and ideas across your organization
- Work securely from anywhere, anytime across your device to achieve more while maintaining a flexible workstyle
- Provide peace-of-mind with controls and visibility for industry-verified conformity with global standards in compliance
- Protect your information and reduce the risk of data loss
- Detect and protect against external threats --Monitor, report and analyze activity to react promptly to provide organizational security
- Protect your users and their accounts
- Support your organization with enhanced privacy and compliance to meet the General Data Protection Regulation (GDPR)
- Get current and stay current on your desktop software and devices while reducing security risks and maximizing IT efficiency

For more information, see the [Discover Value tool](https://online.valuediscoveryworkshop.com/). 

## Windows 10 deployment

There are multiple ways you can deploy Windows 10 Enterprise for your organization. Here, we'll focus on how you can configure and deploy a Windows 10 Enterprise image through these modern deployment scenarios.

| Deployment scenario | When to use it |
|:--- |:--- |
| [Using System Center Configuration Manager as an in-place upgrade](windows10-deploy-inplaceupgrade.md) | Select this option if you need to upgrade Windows 7 or Windows 8.1 computers to the <a href="https://aka.ms/windows-10-release-information" target="_blank">current version</a> of Windows 10 Enterprise and your computers are currently managed with <a href="https://aka.ms/introtosccm" target="_blank">System Center Configuration Manager (Current branch)</a>. |
| [Using Windows Autopilot](windows10-deploy-autopilot.md) | Select this option if you are setting up new Windows computers that have Windows 10 Enterprise, version 1703 or later pre-installed. End users will initiate setup using your desired configuration by entering their work or school account credentials. |

If these deployment scenarios do not fit the needs of your organization, you can learn about other scenarios and understand the capabilities and limitations of each in [Windows 10 deployment scenarios](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios). You can also <a href="https://aka.ms/planforwin10deployment" target="_blank">plan for Windows 10 deployment</a> on your own.

You can learn more about Windows 10 with these articles:

- [Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)
- [Windows 10](https://docs.microsoft.com/windows/windows-10)
- [Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/)


## Additional services and features
As part of your deployment of Windows 10 Enterprise, you can add these additional services and features.

### Windows Analytics

Windows uses diagnostics data to provide rich, actionable information to help you gain deep insights into operational efficiency and the health of Windows 10 devices in your environment.

* Upgrade Readiness - Upgrade Readiness will help you move to Windows 10 and stay current with new Windows 10 Feature Updates. 
* Update Compliance - Update Compliance is targeted to the IT admin who wants to gain a holistic view of all their Windows 10 devices, without any additional infrastructure requirements.
* Device Health - You can use Device Health to proactively detect and remediate end-user impacting issues.

See [Windows Analytics Overview](https://docs.microsoft.com/windows/deployment/update/windows-analytics-overview) for more information.

### Windows security

Windows 10 provides features to help protect against threats, help you secure your devices, and help with access control. With Windows 10, you get critical security features that protect your device right from the start. Microsoft 365 E3 adds security features such as Windows Hello for Business, Windows Defender Application Control, and Windows Information Protection. With Microsoft 365 E5, you get all the protection from Microsoft 365 E3 security plus cloud-based security features and Windows Defender Advanced Threat Protection. 

To learn more about the security features that you get with Windows 10 Enterprise and get guidance on how you can deploy, manage, configure, and troubleshoot three key ecurity features, see [Step 5: Deploy Windows 10 Enterprise security features](windows10-enable-security-features.md).

## How Microsoft does Microsoft 365 Enterprise

To peek inside Microsoft and learn how the company planned for, deployed, and is managing updates for Windows 10, see:

- [Preparing your organization for a seamless Windows 10 deployment](https://www.microsoft.com/itshowcase/windows10deployment?wt.mc_id=bmkg_itsc)
- [Adopting Windows as a service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft)
- [Deploying Windows 10 at Microsoft as an in-place upgrade](https://www.microsoft.com/itshowcase/Article/Content/668/Deploying-Windows-10-at-Microsoft-as-an-inplace-upgrade)
- [Implementing strong user authentication with Windows Hello for Business](https://www.microsoft.com/itshowcase/Article/Content/756/Implementing-strong-user-authentication-with-Windows-Hello-for-Business)
- [Windows 10 deployment: tips and tricks from Microsoft IT](https://www.microsoft.com/itshowcase/Article/Content/951/Windows-10-deployment-tips-and-tricks-from-Microsoft-IT) (video)
- [Windows Defender ATP helps detect sophisticated threats](https://www.microsoft.com/itshowcase/Article/Content/854/Windows-Defender-ATP-helps-detect-sophisticated-threats)
- [Securing the modern enterprise with Windows Defender and Windows Defender ATP](https://www.microsoft.com/itshowcase/Article/Content/903/Securing-the-modern-enterprise-with-Windows-Defender-and-Windows-Defender-ATP) (video)

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step1.png)| [Prepare your organization for Windows 10 Enterprise](windows10-prepare-your-org.md) |
