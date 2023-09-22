---
title: Microsoft Defender for Endpoint on other platforms
description: Learn about Microsoft Defender for Endpoint capabilities on other platforms
keywords: non windows, mac, macos, linux, android
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-evalutatemtp
  - highpri
  - tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Microsoft Defender for Endpoint on other platforms

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1 and Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft has been on a journey to extend its industry leading endpoint security capabilities beyond Windows and Windows Server to macOS, Linux, Android, and iOS.

Organizations face threats across a variety of platforms and devices. Our teams have committed to building security solutions not just *for* Microsoft, but also *from* Microsoft to enable our customers to protect and secure their heterogenous environments. We're listening to customer feedback and partnering closely with our customers to build solutions that meet their needs.

With Microsoft Defender for Endpoint, customers benefit from a unified view of all threats and alerts in the Microsoft 365 Defender portal, across Windows and non-Windows platforms, enabling them to get a full picture of what's happening in their environment, which empowers them to more quickly assess and respond to threats.

> [!NOTE]
> Microsoft Defender for Endpoint doesn't support native compute workloads in Amazon Web Services (AWS) and Google Cloud Platform (GCP).

## Microsoft Defender for Endpoint on macOS

Microsoft Defender for Endpoint on macOS offers antivirus, endpoint detection and response (EDR), and vulnerability management capabilities for the three latest released versions of macOS. Customers can deploy and manage the solution through Microsoft Intune and Jamf. Just like with Microsoft Office applications on macOS, Microsoft Auto Update is used to manage Microsoft Defender for Endpoint on Mac updates. For information about the key features and benefits, read our [announcements](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/bg-p/MicrosoftDefenderATPBlog/label-name/macOS).

For more details on how to get started, visit the Defender for Endpoint on macOS [documentation](microsoft-defender-endpoint-mac.md).

> [!NOTE]
> The following capabilities are not currently supported on macOS endpoints:
>
> - Security Management for Microsoft Defender for Endpoint

## Microsoft Defender for Endpoint on Linux

Microsoft Defender for Endpoint on Linux offers preventative antivirus (AV), endpoint detection and response (EDR), and vulnerability management capabilities for Linux servers. This includes a full command line experience to configure and manage the agent, initiate scans, and manage threats. We support recent versions of the six most common Linux Server distributions: RHEL 7.2+, CentOS Linux 7.2+, Ubuntu 16 LTS, or higher LTS, SLES 12+, Debian 9+, and Oracle Linux 7.2. Microsoft Defender for Endpoint on Linux can be deployed and configured using Puppet, Ansible, or using your existing Linux configuration management tool. For information about the key features and benefits, read our
[announcements](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/bg-p/MicrosoftDefenderATPBlog/label-name/Linux).

For more details on how to get started, visit the Microsoft Defender for Endpoint on Linux [documentation](microsoft-defender-endpoint-linux.md).


> [!NOTE]
> The following capabilities are not currently supported on Linux endpoints:
>
> - Data loss prevention
> - Security Management for Microsoft Defender for Endpoint

## Microsoft Defender for Endpoint on Android

Microsoft Defender for Endpoint on Android is our mobile threat defense solution for devices running Android 6.0 and higher. Both Android Enterprise (Work Profile) and Device Administrator modes are supported. On Android, we offer web protection, which includes anti-phishing, blocking of unsafe connections, and setting of custom indicators. The solution scans for malware and potentially unwanted applications (PUA) and offers additional breach prevention capabilities through integration with Microsoft Intune and Conditional Access. For information about the key features and benefits, read our [announcements](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/bg-p/MicrosoftDefenderATPBlog/label-name/Android).

For more details on how to get started, visit the Microsoft Defender for Endpoint on Android [documentation](microsoft-defender-endpoint-android.md).

## Microsoft Defender for Endpoint on iOS

Microsoft Defender for Endpoint on iOS is our mobile threat defense solution for devices running iOS 11.0 and higher. Devices that are registered within a customer's tenant (enrolled or unenrolled) are supported. Both supervised and unsupervised enrolled devices are supported. On iOS, we offer web protection, which includes anti-phishing, blocking unsafe connections and setting custom indicators, and jailbreak detection. For more information about the key features and benefits, read our [announcements](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bg-p/MicrosoftDefenderATPBlog/label-name/iOS).

For more details on how to get started, visit the Microsoft Defender for Endpoint on iOS [documentation](microsoft-defender-endpoint-ios.md).

## Licensing requirements

Eligible Licensed Users may use Microsoft Defender for Endpoint on up to five concurrent devices. Microsoft Defender for Endpoint is also available for purchase from a Cloud Solution Provider (CSP).

Customers can obtain Microsoft Defender for Endpoint on macOS through a standalone Microsoft Defender for Endpoint license, as part of Microsoft 365 A5/E5, or Microsoft 365 Security.

Recently announced capabilities of Microsoft Defender for Endpoint on Android and iOS are included in the above mentioned offers as part of the five qualified devices for eligible licensed users.

Defender for Endpoint on Linux is available through the Defender for Endpoint Server SKU that is available for both commercial and education customers.

Please contact your account team or CSP for pricing and additional eligibility requirements.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
