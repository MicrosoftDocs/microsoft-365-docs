---
title: Client behavioral blocking
description: Client behavioral blocking is part of behavioral blocking and containment capabilities in Microsoft Defender for Endpoint
keywords: behavioral blocking, rapid protection, client behavior, Microsoft Defender for Endpoint
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro
ms.topic: article
ms.prod: m365-security
localization_priority: Normal
ms.custom: 
  - next-gen
  - edr
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.technology: mde
---

# Client behavioral blocking

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

## Overview

Client behavioral blocking is a component of [behavioral blocking and containment capabilities](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/behavioral-blocking-containment) in Defender for Endpoint. As suspicious behaviors are detected on devices (also referred to as clients or endpoints), artifacts (such as files or applications) are blocked, checked, and remediated automatically. 

:::image type="content" source="images/pre-execution-and-post-execution-detection-engines.png" alt-text="Cloud and client protection":::

Antivirus protection works best when paired with cloud protection.

## How client behavioral blocking works

[Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) can detect suspicious behavior, malicious code, fileless and in-memory attacks, and more on a device. When suspicious behaviors are detected, Microsoft Defender Antivirus monitors and sends those suspicious behaviors and their process trees to the cloud protection service. Machine learning differentiates between malicious applications and good behaviors within milliseconds, and classifies each artifact. In almost real time, as soon as an artifact is found to be malicious, it's blocked on the device. 

Whenever a suspicious behavior is detected, an [alert](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/alerts-queue) is generated, and is visible in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)).

Client behavioral blocking is effective because it not only helps prevent an attack from starting, it can help stop an attack that has begun executing. And, with [feedback-loop blocking](feedback-loop-blocking.md) (another capability of behavioral blocking and containment), attacks are prevented on other devices in your organization.

## Behavior-based detections

Behavior-based detections are named according to the [MITRE ATT&CK Matrix for Enterprise](https://attack.mitre.org/matrices/enterprise). The naming convention helps identify the attack stage where the malicious behavior was observed:


|Tactic |	Detection threat name |
|----|----|
|Initial Access	| Behavior:Win32/InitialAccess.*!ml |
|Execution	| Behavior:Win32/Execution.*!ml |
|Persistence	| Behavior:Win32/Persistence.*!ml |
|Privilege Escalation	| Behavior:Win32/PrivilegeEscalation.*!ml |
|Defense Evasion	| Behavior:Win32/DefenseEvasion.*!ml |
|Credential Access	| Behavior:Win32/CredentialAccess.*!ml |
|Discovery	| Behavior:Win32/Discovery.*!ml |
|Lateral Movement |	Behavior:Win32/LateralMovement.*!ml |
|Collection |	Behavior:Win32/Collection.*!ml |
|Command and Control | Behavior:Win32/CommandAndControl.*!ml |
|Exfiltration	| Behavior:Win32/Exfiltration.*!ml |
|Impact	| Behavior:Win32/Impact.*!ml |
|Uncategorized	| Behavior:Win32/Generic.*!ml |

> [!TIP]
> To learn more about specific threats, see **[recent global threat activity](https://www.microsoft.com/wdsi/threats)**.


## Configuring client behavioral blocking

If your organization is using Defender for Endpoint, client behavioral blocking is enabled by default. However, to benefit from all Defender for Endpoint capabilities, including [behavioral blocking and containment](behavioral-blocking-containment.md), make sure the following features and capabilities of Defender for Endpoint are enabled and configured:

- [Defender for Endpoint baselines](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/configure-machines-security-baseline)

- [Devices onboarded to Defender for Endpoint](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/onboard-configure)

- [EDR in block mode](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/edr-in-block-mode)

- [Attack surface reduction](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/attack-surface-reduction)

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-microsoft-defender-antivirus-features) (antivirus)

## Related articles

- [Behavioral blocking and containment](behavioral-blocking-containment.md)

- [Feedback-loop blocking](feedback-loop-blocking.md)

- [(Blog) Behavioral blocking and containment: Transforming optics into protection](https://www.microsoft.com/security/blog/2020/03/09/behavioral-blocking-and-containment-transforming-optics-into-protection/)

- [Helpful Defender for Endpoint resources](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/helpful-resources)
