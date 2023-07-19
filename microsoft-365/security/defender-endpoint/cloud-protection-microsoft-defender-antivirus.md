---
title: Cloud protection and Microsoft Defender Antivirus
description: Learn about cloud protection and Microsoft Defender Antivirus
keywords: Microsoft Defender Antivirus, next-generation technologies, next-generation av, machine learning, antimalware, security, defender, cloud, cloud protection
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.topic: conceptual
ms.date: 10/18/2021
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Cloud protection and Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Next-generation technologies in Microsoft Defender Antivirus provide near-instant, automated protection against new and emerging threats. To identify new threats dynamically, next-generation technologies work with large sets of interconnected data in the Microsoft Intelligent Security Graph and powerful artificial intelligence (AI) systems driven by advanced machine learning models. Cloud protection works together with Microsoft Defender Antivirus to deliver accurate, real-time, and intelligent protection. 

[:::image type="content" source="images/mde-cloud-protection.png" alt-text="Diagram showing how cloud protection works together with Microsoft Defender Antivirus" lightbox="images/mde-cloud-protection.png":::](enable-cloud-protection-microsoft-defender-antivirus.md)

> [!TIP]
> We recommend keeping cloud protection turned on. To learn more, see [Why cloud protection should be turned on](enable-cloud-protection-microsoft-defender-antivirus.md#why-cloud-protection-should-be-turned-on). 

## How cloud protection works

Microsoft Defender Antivirus works seamlessly with Microsoft cloud services. These cloud protection services, also referred to as Microsoft Advanced Protection Service (MAPS), enhance standard real-time protection. With cloud protection, next-generation technologies provide rapid identification of new threats, sometimes even before a single endpoint is infected. 

The following blog posts illustrate how cloud protection works:

- [Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/)

- [Why Microsoft Defender Antivirus is the most deployed in the enterprise](https://www.microsoft.com/security/blog/2018/03/22/why-windows-defender-antivirus-is-the-most-deployed-in-the-enterprise) 

- [Behavior monitoring combined with machine learning spoils a massive coin-mining campaign](https://www.microsoft.com/security/blog/2018/03/07/behavior-monitoring-combined-with-machine-learning-spoils-a-massive-dofoil-coin-mining-campaign)

- [How artificial intelligence stopped an "Emotet" outbreak](https://www.microsoft.com/security/blog/2018/02/14/how-artificial-intelligence-stopped-an-emotet-outbreak)

- [Detonating a bad rabbit: Microsoft Defender Antivirus and layered machine learning defenses](https://www.microsoft.com/security/blog/2017/12/11/detonating-a-bad-rabbit-windows-defender-antivirus-and-layered-machine-learning-defenses)

- [Microsoft Defender Antivirus cloud protection service: Advanced real-time defense against never-before-seen malware](https://www.microsoft.com/security/blog/2017/07/18/windows-defender-antivirus-cloud-protection-service-advanced-real-time-defense-against-never-before-seen-malware) 


> [!NOTE]
> The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. As a cloud service, it is not simply protection for files stored in the cloud; instead, the cloud service uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional security intelligence updates.

## How to get cloud protection 

Cloud protection is enabled by default. However, you might need to re-enable it if it has been disabled as part of previous organizational policies. To learn more, see [Turn on cloud protection](enable-cloud-protection-microsoft-defender-antivirus.md).

If your subscription includes Windows 10 E5, you can take advantage of emergency dynamic intelligence updates, which provide near real-time protection from emerging threats. When you turn on cloud protection, fixes for malware issues can be delivered via the cloud within minutes, instead of waiting for the next update. See [Configure Microsoft Defender Antivirus to automatically receive new protection updates based on reports from our cloud service](manage-event-based-updates-microsoft-defender-antivirus.md#cloud-report-updates).

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
