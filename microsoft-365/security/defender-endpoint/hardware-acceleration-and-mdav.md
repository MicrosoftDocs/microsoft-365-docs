---
title: Hardware acceleration and Microsoft Defender Antivirus.
description: Describe hardware acceleration with Microsoft Defender Antivirus.
description: How Microsoft Defender Antivirus incorporates hardware acceleration and Microsoft Defender Antivirus.
author: siosulli
ms.author: siosulli
manager: deniseb
ms.reviewer: yongrhee
ms.service: defender-endpoint
ms.topic: overview
ms.date: 02/26/2024
ms.subservice: ngp
ms.localizationpriority: medium
ms.custom: partner-contribution
search.appverid: MET150
f1 keywords: NOCSH
audience: ITPro
---

# Hardware acceleration and Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)  
- Microsoft Defender Antivirus
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)

**Platforms:**

- Windows 11, Windows 10

**Known limitations:**

- Processors designated as servers aren't supported by Intel TDT.
- Multi-level virtualization isn't currently supported.
- Not supported on Windows Server workloads.
- Not supported on Windows clients running on Xeon processors due to Intel Xeon processors not supporting Intel TDT functionality.

## Microsoft Defender Antivirus (MDAV) and Intel Threat Detection Technology (TDT)

This table shows the Intel TDT technologies Microsoft have collaborated with Intel on to provide security while also balancing performance:

|Available since |Intel TDT technology | Intel Threat Detection Technology (TDT) available on|
|:---|:---|:---|
|2018|Intel TDT – Accelerated Memory Scanning (AMS)|Intel integrated graphic 6th Gen Core (circa 2015) or newer family of processors, running on laptops, tablets, and desktop systems.|
|2021|Intel TDT - Cryptojacking detector| Intel 6th Gen Core (circa 2015) or newer family of processors, running on laptops, tablets and desktop systems.|
|2022|Intel TDT - Ransomware detector| Intel 8th Gen Core or newer family of processors.|

**Intel Threat Detection Technology (TDT) - Accelerated Memory Scanning (AMS):** Introduced extra memory scanning capabilities to detect fileless attacks that are expensive on the Central Processing Unit (CPU) and then offload them to the integrated Graphics Processor Unit (integrated GPU). This provides two benefits:

- lower CPU consumption
- A reduction of System-on-a-chip (SoC) power consumption leading to longer battery life on laptops and tablets

**Intel Threat Detection Technology (TDT) - Cryptojacking:** Enhanced detection by leveraging Intel’s Central Processing Unit (CPU) performance monitoring unit (PMU) and offloading to the integrated Graphics Processor Unit (integrated GPU) to detect the malware code execution (fingerprint) of repeated mathematical operations at runtime. The signals are processed by a layer of machine learning with minimal overhead.

## How do you enable Intel TDT AMS or Cryptojacking integration?

When Microsoft Defender Antivirus is running, it’s enabled by default.

### What do the detections show up as?

The regular Microsoft Defender Antivirus Event ID **1116**

### What type of attacks does it help with?

We utilize the Intel TDT - Cryptojacking detector to thwart various cryptojacking malwares. Notably, the following Coinminer campaigns were successfully detected and blocked using the TDT Cryptojacking detector:

- [YouTube Pirated Software Videos Deliver Triple Threat: Vidar Stealer, LaPlasa Clipper, XMRig Miner](https://www.fortinet.com/blog/threat-research/youtube-pirated-software-videos-deliver-triple-threat-vidar-stealer-laplas-clipper-xmrig-miner)

Additionally, we're leveraging the Intel TDT detector to identify instances of CryptoJacking malware abusing Windows binaries (lolbins), and then employing Defender behavioral signatures to prevent and block such activities effectively. For more information, see [Hardware-based threat defense against increasingly complex cryptojackers](https://www.microsoft.com/security/blog/2022/08/18/hardware-based-threat-defense-against-increasingly-complex-cryptojackers/).

## Related articles

- [Defending against ransomware with Microsoft Defender for Endpoint and Intel TDT: A Case Study](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/defending-against-ransomware-with-microsoft-defender-for/ba-p/3243941)
