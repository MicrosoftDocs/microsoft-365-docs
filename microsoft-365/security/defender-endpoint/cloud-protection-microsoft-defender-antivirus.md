---
title: Cloud-delivered protection and Microsoft Defender Antivirus
description: Learn about cloud-delivered protection and Microsoft Defender Antivirus
keywords: Microsoft Defender Antivirus, next-generation technologies, next-generation av, machine learning, antimalware, security, defender, cloud, cloud-delivered protection
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.reviewer: shwjha
manager: dansimp
ms.custom: nextgen
ms.technology: mde
ms.topic: article
---

# Cloud-delivered protection and Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- Microsoft Defender Antivirus

Next-generation technologies in Microsoft Defender Antivirus provide near-instant, automated protection against new and emerging threats. To identify new threats dynamically, next-generation technologies work with large sets of interconnected data in the Microsoft Intelligent Security Graph and powerful artificial intelligence (AI) systems driven by advanced machine learning models. Microsoft Defender Antivirus uses multiple detection and prevention technologies to deliver accurate, real-time, and intelligent protection. 

> [!TIP]
> Want to learn more? See the blog post, [Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/).

Microsoft Defender Antivirus works seamlessly with Microsoft cloud services. These cloud protection services, also referred to as Microsoft Advanced Protection Service (MAPS), enhances standard real-time protection, providing arguably the best antivirus defense. 

> [!NOTE]
> The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. As a cloud service, it is not simply protection for files stored in the cloud; instead, the cloud service uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional security intelligence updates.

With cloud-delivered protection, next-generation technologies provide rapid identification of new threats, sometimes even before a single machine is infected. The following blog posts illustrate how cloud-delivered protection works:

- [Why Microsoft Defender Antivirus is the most deployed in the enterprise](https://www.microsoft.com/security/blog/2018/03/22/why-windows-defender-antivirus-is-the-most-deployed-in-the-enterprise) 
- [Behavior monitoring combined with machine learning spoils a massive coin-mining campaign](https://www.microsoft.com/security/blog/2018/03/07/behavior-monitoring-combined-with-machine-learning-spoils-a-massive-dofoil-coin-mining-campaign)
- [How artificial intelligence stopped an "Emotet" outbreak](https://www.microsoft.com/security/blog/2018/02/14/how-artificial-intelligence-stopped-an-emotet-outbreak)
- [Detonating a bad rabbit: Microsoft Defender Antivirus and layered machine learning defenses](https://www.microsoft.com/security/blog/2017/12/11/detonating-a-bad-rabbit-windows-defender-antivirus-and-layered-machine-learning-defenses)
- [Microsoft Defender Antivirus cloud protection service: Advanced real-time defense against never-before-seen malware](https://www.microsoft.com/security/blog/2017/07/18/windows-defender-antivirus-cloud-protection-service-advanced-real-time-defense-against-never-before-seen-malware) 
 
## How to get cloud-delivered protection 

Cloud-delivered protection is enabled by default. However, you may need to re-enable it if it has been disabled as part of previous organizational policies. To learn more, see [Turn on cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md).

Organizations running Windows 10 E5 can also take advantage of emergency dynamic intelligence updates, which provide near real-time protection from emerging threats. When you turn on cloud-delivered protection, fixes for malware issues can be delivered via the cloud within minutes, instead of waiting for the next update. [Configure Microsoft Defender Antivirus to automatically receive new protection updates based on reports from our cloud service](manage-event-based-updates-microsoft-defender-antivirus.md#cloud-report-updates).

> [!TIP]
> Visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

## Next steps

1. [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md). You can enable cloud-delivered protection with Microsoft Endpoint Manager (which now includes Microsoft Endpoint Configuration Manager and Microsoft Intune), Group Policy, or PowerShell cmdlets.

2. [Specify the cloud-delivered protection level](specify-cloud-protection-level-microsoft-defender-antivirus.md). You can specify the level of protection offered by the cloud by using Microsoft Endpoint Manager or Group Policy. The protection level affects the amount of information shared with the cloud and how aggressively new files are blocked.

3. [Configure and validate network connections for Microsoft Defender Antivirus](configure-network-connections-microsoft-defender-antivirus.md). There are certain Microsoft URLs that your network and endpoints must be able to connect to for cloud-delivered protection to work effectively. This article lists the URLs that should be allowed via firewall or network filtering rules, and instructions for confirming your network is properly enrolled in cloud-delivered protection.

4. [Configure the "block at first sight" feature](configure-block-at-first-sight-microsoft-defender-antivirus.md). The "block at first sight" feature can block new malware within seconds, without having to wait hours for traditional Security intelligence. You can enable and configure it by using Microsoft Endpoint Manager or Group Policy.

5. [Configure the cloud block timeout period](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md). Microsoft Defender Antivirus can block suspicious files from running while it queries our cloud-delivered protection service. You can configure the amount of time the file will be prevented from running by using Microsoft Endpoint Manager or Group Policy.