---
title: Client behavioral blocking
description: Client behavioral blocking is part of behavioral blocking and containment capabilities at Microsoft Defender for Endpoint
keywords: behavioral blocking, rapid protection, client behavior, Microsoft Defender for Endpoint
ms.pagetype: security
ms.subservice: mde
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.custom:
  - next-gen
  - edr
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 12/18/2020
---

# Client behavioral blocking

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platform**
- Windows

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

## Overview

Client behavioral blocking is a component of [behavioral blocking and containment capabilities](behavioral-blocking-containment.md) in Defender for Endpoint. As suspicious behaviors are detected on devices (also referred to as clients or endpoints), artifacts (such as files or applications) are blocked, checked, and remediated automatically.

:::image type="content" source="images/pre-execution-and-post-execution-detection-engines.png" alt-text="Cloud and client protection" lightbox="images/pre-execution-and-post-execution-detection-engines.png":::

Antivirus protection works best when paired with cloud protection.

## How client behavioral blocking works

[Microsoft Defender Antivirus](microsoft-defender-antivirus-in-windows-10.md) can detect suspicious behavior, malicious code, fileless and in-memory attacks, and more on a device. When suspicious behaviors are detected, Microsoft Defender Antivirus monitors and sends those suspicious behaviors and their process trees to the cloud protection service. Machine learning differentiates between malicious applications and good behaviors within milliseconds, and classifies each artifact. In almost real time, as soon as an artifact is found to be malicious, it's blocked on the device.

Whenever a suspicious behavior is detected, an [alert](alerts-queue.md) is generated and is visible while the attack was detected and stopped; alerts, such as an "initial access alert," are triggered and appear in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender) (formerly Microsoft 365 Defender).

Client behavioral blocking is effective because it not only helps prevent an attack from starting, it can help stop an attack that has begun executing. And, with [feedback-loop blocking](feedback-loop-blocking.md) (another capability of behavioral blocking and containment), attacks are prevented on other devices in your organization.

## Behavior-based detections

Behavior-based detections are named according to the [MITRE ATT&CK Matrix for Enterprise](https://attack.mitre.org/matrices/enterprise). The naming convention helps identify the attack stage where the malicious behavior was observed:

|Tactic|Detection threat name|
|---|---|
|Initial Access|`Behavior:Win32/InitialAccess.*!ml`|
|Execution|`Behavior:Win32/Execution.*!ml`|
|Persistence|`Behavior:Win32/Persistence.*!ml`|
|Privilege Escalation|`Behavior:Win32/PrivilegeEscalation.*!ml`|
|Defense Evasion|`Behavior:Win32/DefenseEvasion.*!ml`|
|Credential Access|`Behavior:Win32/CredentialAccess.*!ml`|
|Discovery|`Behavior:Win32/Discovery.*!ml`|
|Lateral Movement|`Behavior:Win32/LateralMovement.*!ml`|
|Collection|`Behavior:Win32/Collection.*!ml`|
|Command and Control|`Behavior:Win32/CommandAndControl.*!ml`|
|Exfiltration|`Behavior:Win32/Exfiltration.*!ml`|
|Impact|`Behavior:Win32/Impact.*!ml`|
|Uncategorized|`Behavior:Win32/Generic.*!ml`|

> [!TIP]
> To learn more about specific threats, see **[recent global threat activity](https://www.microsoft.com/wdsi/threats)**.

## Configuring client behavioral blocking

If your organization is using Defender for Endpoint, client behavioral blocking is enabled by default. However, to benefit from all Defender for Endpoint capabilities, including [behavioral blocking and containment](behavioral-blocking-containment.md), make sure the following features and capabilities of Defender for Endpoint are enabled and configured:

- [Defender for Endpoint baselines](configure-machines-security-baseline.md)
- [Devices onboarded to Defender for Endpoint](onboard-configure.md)
- [EDR in block mode](edr-in-block-mode.md)
- [Attack surface reduction](attack-surface-reduction.md)
- [Next-generation protection](configure-microsoft-defender-antivirus-features.md) (antivirus, antimalware, and other threat protection capabilities)

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
