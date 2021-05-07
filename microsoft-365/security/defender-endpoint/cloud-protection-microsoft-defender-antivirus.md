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

# Use next-generation technologies in Microsoft Defender Antivirus through cloud-delivered protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- Microsoft Defender Antivirus

Microsoft next-generation technologies in Microsoft Defender Antivirus provide near-instant, automated protection against new and emerging threats. To dynamically identify new threats, these technologies work with large sets of interconnected data in the Microsoft Intelligent Security Graph and powerful artificial intelligence (AI) systems driven by advanced machine learning models.  

Microsoft Defender Antivirus uses multiple detection and prevention technologies to deliver accurate, real-time, and intelligent protection. [Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/).
![List of Microsoft Defender AV engines](images/microsoft-defender-atp-next-generation-protection-engines.png)  

To take advantage of the power and speed of these next-generation technologies, Microsoft Defender Antivirus works seamlessly with Microsoft cloud services. These cloud protection services, also referred to as Microsoft Advanced Protection Service (MAPS), enhances standard real-time protection, providing arguably the best antivirus defense. 

>[!NOTE]
>The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it is called a cloud service, it is not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional Security intelligence updates.

With cloud-delivered protection, next-generation technologies provide rapid identification of new threats, sometimes even before a single machine is infected. Watch the following video about Microsoft AI and Microsoft Defender Antivirus in action: 
 
<iframe 
src="https://www.microsoft.com/videoplayer/embed/RE1Yu4B" width="768" height="432" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe>

To understand how next-generation technologies shorten protection delivery time through the cloud, watch the following video: 
 
<iframe 
src="https://videoplayercdn.osi.office.net/embed/c2f20f59-ca56-4a7b-ba23-44c60bc62c59" width="768" height="432" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe>

Read the following blog posts for detailed protection stories involving cloud-protection and Microsoft AI: 

- [Why Microsoft Defender Antivirus is the most deployed in the enterprise](https://www.microsoft.com/security/blog/2018/03/22/why-windows-defender-antivirus-is-the-most-deployed-in-the-enterprise) 
- [Behavior monitoring combined with machine learning spoils a massive Dofoil coin mining campaign](https://www.microsoft.com/security/blog/2018/03/07/behavior-monitoring-combined-with-machine-learning-spoils-a-massive-dofoil-coin-mining-campaign)
- [How artificial intelligence stopped an Emotet outbreak](https://www.microsoft.com/security/blog/2018/02/14/how-artificial-intelligence-stopped-an-emotet-outbreak)
- [Detonating a bad rabbit: Microsoft Defender Antivirus and layered machine learning defenses](https://www.microsoft.com/security/blog/2017/12/11/detonating-a-bad-rabbit-windows-defender-antivirus-and-layered-machine-learning-defenses)
- [Microsoft Defender Antivirus cloud protection service: Advanced real-time defense against never-before-seen malware](https://www.microsoft.com/security/blog/2017/07/18/windows-defender-antivirus-cloud-protection-service-advanced-real-time-defense-against-never-before-seen-malware) 
 
## Get cloud-delivered protection 

Cloud-delivered protection is enabled by default. However, you may need to re-enable it if it has been disabled as part of previous organizational policies.

Organizations running Windows 10 E5 can also take advantage of emergency dynamic intelligence updates, which provide near real-time protection from emerging threats. When you turn on cloud-delivered protection, fixes for malware issues can be delivered via the cloud within minutes, instead of waiting for the next update.

>[!TIP]
>You can also visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

The following table describes the differences in cloud-delivered protection between recent versions of Windows and Configuration Manager.

|OS version or service application |Cloud-protection service label  |Reporting level (MAPS membership level)  |Cloud block timeout period  |
|---------|---------|---------|---------|
|Windows 8.1 (Group Policy)     |Microsoft Advanced Protection Service   |Basic, Advanced   |No         |
|Windows 10, version 1607 (Group Policy)  |Microsoft Advanced Protection Service      |Advanced         |No         |
|Windows 10, version 1703 or greater (Group Policy)	     |Cloud-based Protection      |Advanced         |Configurable         |
|System Center 2012 Configuration Manager  |      N/A         |Dependent on Windows version         |Not configurable |
|Microsoft Endpoint Manager (Current Branch)	     |Cloud protection service         |Dependent on Windows version          |Configurable         |
|Microsoft Intune     |Microsoft Advanced Protection Service         |Dependent on Windows version         |Configurable         |

You can also [configure Microsoft Defender Antivirus to automatically receive new protection updates based on reports from our cloud service](manage-event-based-updates-microsoft-defender-antivirus.md#cloud-report-updates).


## Tasks

- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md). You can enable cloud-delivered protection with Microsoft Endpoint Configuration Manager, Group Policy, Microsoft Intune, and PowerShell cmdlets.

- [Specify the cloud-delivered protection level](specify-cloud-protection-level-microsoft-defender-antivirus.md). You can specify the level of protection offered by the cloud with Group Policy and Microsoft Endpoint Configuration Manager. The protection level will affect the amount of information shared with the cloud and how aggressively new files are blocked.

- [Configure and validate network connections for Microsoft Defender Antivirus](configure-network-connections-microsoft-defender-antivirus.md). There are certain Microsoft URLs that your network and endpoints must be able to connect to for cloud-delivered protection to work effectively. This article lists the URLs that should be allowed via firewall or network filtering rules, and instructions for confirming your network is properly enrolled in cloud-delivered protection.

- [Configure the block at first sight feature](configure-block-at-first-sight-microsoft-defender-antivirus.md). The "block at first sight" feature can block new malware within seconds, without having to wait hours for traditional Security intelligence. You can enable and configure it with Microsoft Endpoint Manager and Group Policy.

- [Configure the cloud block timeout period](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md). Microsoft Defender Antivirus can block suspicious files from running while it queries our cloud-delivered protection service. You can configure the amount of time the file will be prevented from running with Microsoft Endpoint Manager and Group Policy.