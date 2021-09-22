---
title: Why cloud protection should be enabled for Microsoft Defender Antivirus
description: See why cloud protection should be turned on for Microsoft Defender Antivirus. It helps many security features in Microsoft Defender for Endpoint work
keywords: Microsoft Defender Antivirus, cloud protection, security features, sample submission
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
ms.date: 09/21/2021
---

# Why cloud protection should be enabled for Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- Microsoft Defender Antivirus

Microsoft Defender Antivirus cloud protection helps protect against malware on your endpoints and across your network. We recommend keeping cloud protection turned on, because certain security features and capabilities in Microsoft Defender for Endpoint only work when cloud protection is enabled. 

[:::image type="content" source="image/mde-cloud-protection.png" alt-text="Diagram showing how cloud protection works together with Microsoft Defender Antivirus":::](enable-cloud-protection-microsoft-defender-antivirus.md)

The following table summarizes the features and capabilities that depend on cloud protection: <br/><br/>

| Feature/Capability  | Subscription |  Description  |
|---------|---------|--------|
| Checking against metadata in the cloud  | Microsoft 365 E5 or E3 | The Microsoft Defender Antivirus cloud service uses machine learning models as an extra layer of defense. These machine learning models include metadata, so when a suspicious or malicious file is detected, its metadata is checked. <br/><br/>To learn more, see [Blog: Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/)  |
| Cloud protection and sample submission | Microsoft 365 E5 or E3 | Files and executables can be sent to the Microsoft Defender Antivirus cloud service for detonation and analysis. <br/><br/>To learn more, see [Cloud protection and sample submission in Microsoft Defender Antivirus](cloud-protection-microsoft-antivirus-sample-submission.md).<br/><br/>**NOTE**: Automatic sample submission relies on cloud protection, although it can also be configured as a standalone setting.         |
| Tamper protection | Microsoft 365 E5 | Tamper protection helps protect against unwanted changes to your organization's security settings. To enforce tamper protection in the Microsoft 365 Defender portal, cloud protection must be enabled. <br/><br/>To learn more, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md).        |
| Block at first sight | Microsoft 365 E5 or E3 | Block at first sight detects new malware and blocks it within seconds. When a suspicious or malicious file is detected, block at first sight capabilities queries the cloud protection backend and applies heuristics, machine learning, and automated analysis of the file to determine whether it is a threat.<br/><br/>To learn more, see [What is "block at first sight"?](configure-block-at-first-sight-microsoft-defender-antivirus.md#what-is-block-at-first-sight).   |
| Emergency signature updates | Microsoft 365 E5 | When malicious content is detected, emergency signature updates and fixes are deployed. Rather than wait for the next regular update, you can receive these fixes and updates within minutes.   |
| Endpoint detection and response (EDR) in block mode | Microsoft 365 E5 | EDR in block mode provides extra protection when Microsoft Defender Antivirus is not the primary antivirus product on a device. EDR in block mode remediates artifacts found during EDR-generated scans that the non-Microsoft, primary antivirus solution might have missed. When enabled for devices with Microsoft Defender Antivirus as the primary antivirus solution, EDR in block mode provides the added benefit of automatically remediating artifacts identified during EDR-generated scans. <br/><br/>To learn more, see [EDR in block mode](edr-in-block-mode.md).|
| Attack surface reduction rules | Microsoft 365 E5 or E3 | Attack surface reduction is all about reducing the places and ways your organization's endpoints are vulnerable to a cyber attack. Attack surface reduction rules are intelligent rules that you can configure to  help stop malware. Certain rules require cloud protection to be turned on in order to function fully. These rules include: <br/>- Block executable files from running unless they meet a prevalence, age, or trusted list criteria <br/>- Use advanced protection against ransomware <br/>- Block untrusted programs from running from removable drives <br/><br/>To learn more, see [Use attack surface reduction rules to prevent malware infection](attack-surface-reduction.md).  |
| Indicators of compromise (IoCs) | Microsoft 365 E5  | IoCs in Defender for Endpoint can be configured to define the detection, prevention, and exclusion of entities. For example, "allow" indicators can be used to define exceptions to Microsoft Defender Antivirus scans and remediation actions in Defender for Endpoint. As another example, "alert and block" indicators can be used to prevent files or processes from executing, and to track these activities with alerts that are viewable in the Microsoft 365 Defender portal. <br/><br/>To learn more, see [Create indicators](manage-indicators.md).    |


## Next steps

Now that you have an overview of cloud protection and its role in Microsoft Defender Antivirus, here are some next steps:

1. **[Enable cloud protection](enable-cloud-protection-microsoft-defender-antivirus.md)**. You can enable cloud protection with Microsoft Endpoint Manager (which now includes Microsoft Endpoint Configuration Manager and Microsoft Intune), Group Policy, or PowerShell cmdlets.

2. **[Specify the cloud protection level](specify-cloud-protection-level-microsoft-defender-antivirus.md)**. You can specify the level of protection offered by the cloud by using Microsoft Endpoint Manager or Group Policy. The protection level affects the amount of information shared with the cloud and how aggressively new files are blocked.

3. **[Configure and validate network connections for Microsoft Defender Antivirus](configure-network-connections-microsoft-defender-antivirus.md)**. There are certain Microsoft URLs that your network and endpoints must be able to connect to for cloud protection to work effectively. This article lists the URLs that should be allowed via firewall or network filtering rules, and instructions for confirming your network is properly enrolled in cloud protection.

4. **[Configure the "block at first sight" feature](configure-block-at-first-sight-microsoft-defender-antivirus.md)**. The "block at first sight" feature can block new malware within seconds, without having to wait hours for traditional Security intelligence. You can enable and configure it by using Microsoft Endpoint Manager or Group Policy.

5. **[Configure the cloud block timeout period](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md)**. Microsoft Defender Antivirus can block suspicious files from running while it queries our cloud protection service. You can configure the amount of time the file will be prevented from running by using Microsoft Endpoint Manager or Group Policy.
