---
title: Cloud protection and Microsoft Defender Antivirus
description: Learn about cloud protection and Microsoft Defender Antivirus
keywords: Microsoft Defender Antivirus, next-generation technologies, next-generation av, machine learning, antimalware, security, defender, cloud, cloud protection
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.technology: mde
ms.topic: article
ms.date: 08/25/2021
---

# Cloud protection and Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- Microsoft Defender Antivirus

Next-generation technologies in Microsoft Defender Antivirus provide near-instant, automated protection against new and emerging threats. To identify new threats dynamically, next-generation technologies work with large sets of interconnected data in the Microsoft Intelligent Security Graph and powerful artificial intelligence (AI) systems driven by advanced machine learning models. Microsoft Defender Antivirus uses multiple detection and prevention technologies to deliver accurate, real-time, and intelligent protection. 

> [!TIP]
> Want to learn more? See the blog post, [Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/).

Microsoft Defender Antivirus works seamlessly with Microsoft cloud services. These cloud protection services, also referred to as Microsoft Advanced Protection Service (MAPS), enhance standard real-time protection. With cloud protection, next-generation technologies provide rapid identification of new threats, sometimes even before a single endpoint is infected. 

The following blog posts illustrate how cloud protection works:

- [Why Microsoft Defender Antivirus is the most deployed in the enterprise](https://www.microsoft.com/security/blog/2018/03/22/why-windows-defender-antivirus-is-the-most-deployed-in-the-enterprise) 
- [Behavior monitoring combined with machine learning spoils a massive coin-mining campaign](https://www.microsoft.com/security/blog/2018/03/07/behavior-monitoring-combined-with-machine-learning-spoils-a-massive-dofoil-coin-mining-campaign)
- [How artificial intelligence stopped an "Emotet" outbreak](https://www.microsoft.com/security/blog/2018/02/14/how-artificial-intelligence-stopped-an-emotet-outbreak)
- [Detonating a bad rabbit: Microsoft Defender Antivirus and layered machine learning defenses](https://www.microsoft.com/security/blog/2017/12/11/detonating-a-bad-rabbit-windows-defender-antivirus-and-layered-machine-learning-defenses)
- [Microsoft Defender Antivirus cloud protection service: Advanced real-time defense against never-before-seen malware](https://www.microsoft.com/security/blog/2017/07/18/windows-defender-antivirus-cloud-protection-service-advanced-real-time-defense-against-never-before-seen-malware) 


> [!NOTE]
> The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. As a cloud service, it is not simply protection for files stored in the cloud; instead, the cloud service uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional security intelligence updates.

## Why cloud protection should be turned on

Microsoft Defender Antivirus cloud protection helps protect against malware on your endpoints and across your network. We recommend keeping cloud protection turned on. Certain security features and capabilities in Microsoft Defender for Endpoint only work when cloud protection is enabled. These features and capabilities are listed in the following table: <br/><br/>

| Feature/Capability  | Description  |
|---------|---------|
| Checking against metadata in the cloud  | The Microsoft Defender Antivirus cloud service uses machine learning models as an additional layer of defense. These machine learning models include metadata, so when a suspicious or malicious file is detected, its metadata is checked. <br/><br/>To learn more, see [Blog: Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/)  |
| Cloud protection and sample submission | Files and executables can be sent to the Microsoft Defender Antivirus cloud service for detonation and analysis. <br/><br/>To learn more, see [Cloud protection and sample submission in Microsoft Defender Antivirus](cloud-protection-microsoft-antivirus-sample-submission.md).<br/><br/>**NOTE**: Automatic sample submission relies on cloud protection, although it can also be configured as a standalone setting.         |
| Tamper protection | Tamper protection helps protect against unwanted changes to your organization's security settings. To enforce tamper protection in the Microsoft 365 Defender portal, cloud protection must be enabled.        |
| Block at first sight | Block at first sight detects new malware and blocks it within seconds. When a suspicious or malicious file is detected, block at first sight capabilities queries the cloud protection backend and applies heuristics, machine learning, and automated analysis of the file to determine whether it is a threat.<br/><br/>To learn more, see [What is "block at first sight"?](configure-block-at-first-sight-microsoft-defender-antivirus.md#what-is-block-at-first-sight).   |
| Emergency signature updates  | When malicious content is detected, emergency signature updates and fixes are deployed. Rather than wait for the next regular update, you can receive these fixes and updates within minutes.   |
| Attack surface reduction rules | Attack surface reduction is all about reducing the places and ways your organization's endpoints are vulnerable to a cyber attack. Attack surface reduction rules are intelligent rules that you can configure to  help stop malware. <br/><br/>To learn more, see [Use attack surface reduction rules to prevent malware infection](attack-surface-reduction.md).  |
| Indicators of compromise (IoCs)  | IoCs in Defender for Endpoint can be configured to define the detection, prevention, and exclusion of entities. For example, "allow" indicators can be used to define exceptions to Microsoft Defender Antivirus scans and remediation actions in Defender for Endpoint. As another example, "alert and block" indicators can be used to prevent files or processes from executing, and to track these activities with alerts that are viewable in the Microsoft 365 Defender portal. <br/><br/>To learn more, see [Create indicators](manage-indicators.md).    |

## How to get cloud protection 

Cloud protection is enabled by default. However, you might need to re-enable it if it has been disabled as part of previous organizational policies. To learn more, see [Turn on cloud protection](enable-cloud-protection-microsoft-defender-antivirus.md).

If your subscription includes Windows 10 E5, you can take advantage of emergency dynamic intelligence updates, which provide near real-time protection from emerging threats. When you turn on cloud protection, fixes for malware issues can be delivered via the cloud within minutes, instead of waiting for the next update. See [Configure Microsoft Defender Antivirus to automatically receive new protection updates based on reports from our cloud service](manage-event-based-updates-microsoft-defender-antivirus.md#cloud-report-updates).

> [!TIP]
> Visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

## Next steps

Now that you have an overview of cloud protection in Microsoft Defender Antivirus, here are some next steps:

1. **[Enable cloud protection](enable-cloud-protection-microsoft-defender-antivirus.md)**. You can enable cloud protection with Microsoft Endpoint Manager (which now includes Microsoft Endpoint Configuration Manager and Microsoft Intune), Group Policy, or PowerShell cmdlets.

2. **[Specify the cloud protection level](specify-cloud-protection-level-microsoft-defender-antivirus.md)**. You can specify the level of protection offered by the cloud by using Microsoft Endpoint Manager or Group Policy. The protection level affects the amount of information shared with the cloud and how aggressively new files are blocked.

3. **[Configure and validate network connections for Microsoft Defender Antivirus](configure-network-connections-microsoft-defender-antivirus.md)**. There are certain Microsoft URLs that your network and endpoints must be able to connect to for cloud protection to work effectively. This article lists the URLs that should be allowed via firewall or network filtering rules, and instructions for confirming your network is properly enrolled in cloud protection.

4. **[Configure the "block at first sight" feature](configure-block-at-first-sight-microsoft-defender-antivirus.md)**. The "block at first sight" feature can block new malware within seconds, without having to wait hours for traditional Security intelligence. You can enable and configure it by using Microsoft Endpoint Manager or Group Policy.

5. **[Configure the cloud block timeout period](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md)**. Microsoft Defender Antivirus can block suspicious files from running while it queries our cloud protection service. You can configure the amount of time the file will be prevented from running by using Microsoft Endpoint Manager or Group Policy.