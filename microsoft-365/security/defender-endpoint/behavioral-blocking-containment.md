---
title: Behavioral blocking and containment
description: Learn about behavioral blocking and containment capabilities at Microsoft Defender for Endpoint
keywords: Microsoft Defender for Endpoint, EDR in block mode, passive mode blocking
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.custom:
  - next-gen
  - edr
  - admindeeplinkDEFENDER
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 12/18/2020
---

# Behavioral blocking and containment

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](/microsoft-365/security/defender-endpoint/defender-endpoint-plan-1)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**
- Windows

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

## Overview

Today's threat landscape is overrun by [fileless malware](/windows/security/threat-protection/intelligence/fileless-threats) and that lives off the land, highly polymorphic threats that mutate faster than traditional solutions can keep up with, and human-operated attacks that adapt to what adversaries find on compromised devices. Traditional security solutions aren't sufficient to stop such attacks; you need artificial intelligence (AI) and device learning (ML) backed capabilities, such as behavioral blocking and containment, included in [Defender for Endpoint](/windows/security).

Behavioral blocking and containment capabilities can help identify and stop threats, based on their behaviors and process trees even when the threat has started execution. Next-generation protection, EDR, and Defender for Endpoint components and features work together in behavioral blocking and containment capabilities.

Behavioral blocking and containment capabilities work with multiple components and features of Defender for Endpoint to stop attacks immediately and prevent attacks from progressing.

- [Next-generation protection](microsoft-defender-antivirus-in-windows-10.md) (which includes Microsoft Defender Antivirus) can detect threats by analyzing behaviors, and stop threats that have started running.

- [Endpoint detection and response](overview-endpoint-detection-response.md) (EDR) receives security signals across your network, devices, and kernel behavior. As threats are detected, alerts are created. Multiple alerts of the same type are aggregated into incidents, which makes it easier for your security operations team to investigate and respond.

- [Defender for Endpoint](overview-endpoint-detection-response.md) has a wide range of optics across identities, email, data, and apps, in addition to the network, endpoint, and kernel behavior signals received through EDR. A component of [Microsoft 365 Defender](../defender/microsoft-365-defender.md), Defender for Endpoint processes and correlates these signals, raises detection alerts, and connects related alerts in incidents.

With these capabilities, more threats can be prevented or blocked, even if they start running. Whenever suspicious behavior is detected, the threat is contained, alerts are created, and threats are stopped in their tracks.

The following image shows an example of an alert that was triggered by behavioral blocking and containment capabilities:

:::image type="content" source="images/blocked-behav-alert.png" alt-text="The Alerts page with an alert through behavioral blocking and containment" lightbox="images/blocked-behav-alert.png":::

## Components of behavioral blocking and containment

- **On-client, policy-driven [attack surface reduction rules](attack-surface-reduction.md)** Predefined common attack behaviors are prevented from executing, according to your attack surface reduction rules. When such behaviors attempt to execute, they can be seen in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> as informational alerts. Attack surface reduction rules aren't enabled by default; you configure your policies in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender).

- **[Client behavioral blocking](client-behavioral-blocking.md)** Threats on endpoints are detected through machine learning, and then are blocked and remediated automatically. (Client behavioral blocking is enabled by default.)

- **[Feedback-loop blocking](feedback-loop-blocking.md)** (also referred to as rapid protection) Threat detections are observed through behavioral intelligence. Threats are stopped and prevented from running on other endpoints. (Feedback-loop blocking is enabled by default.)

- **[Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md)** Malicious artifacts or behaviors that are observed through post-breach protection are blocked and contained. EDR in block mode works even if Microsoft Defender Antivirus isn't the primary antivirus solution. (EDR in block mode isn't enabled by default; you turn it on at Microsoft 365 Defender.)

Expect more to come in the area of behavioral blocking and containment, as Microsoft continues to improve threat protection features and capabilities. To see what's planned and rolling out now, visit the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap).

## Examples of behavioral blocking and containment in action

Behavioral blocking and containment capabilities have blocked attacker techniques such as the following:

- Credential dumping from LSASS
- Cross-process injection
- Process hollowing
- User Account Control bypass
- Tampering with antivirus (such as disabling it or adding the malware as exclusion)
- Contacting Command and Control (C&C) to download payloads
- Coin mining
- Boot record modification
- Pass-the-hash attacks
- Installation of root certificate
- Exploitation attempt for various vulnerabilities

Below are two real-life examples of behavioral blocking and containment in action.

### Example 1: Credential theft attack against 100 organizations

As described in [In hot pursuit of elusive threats: AI-driven behavior-based blocking stops attacks in their tracks](https://www.microsoft.com/security/blog/2019/10/08/in-hot-pursuit-of-elusive-threats-ai-driven-behavior-based-blocking-stops-attacks-in-their-tracks), a credential theft attack against 100 organizations around the world was stopped by behavioral blocking and containment capabilities. Spear-phishing email messages that contained a lure document were sent to the targeted organizations. If a recipient opened the attachment, a related remote document was able to execute code on the user's device and load Lokibot malware, which stole credentials, exfiltrated stolen data, and waited for further instructions from a command-and-control server.

Behavior-based device-learning models in Defender for Endpoint caught and stopped the attacker's techniques at two points in the attack chain:

- The first protection layer detected the exploit behavior. Device-learning classifiers in the cloud correctly identified the threat as and immediately instructed the client device to block the attack.
- The second protection layer, which helped stop cases where the attack got past the first layer, detected process hollowing, stopped that process, and removed the corresponding files (such as Lokibot).

While the attack was detected and stopped, alerts, such as an "initial access alert," were triggered and appeared in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender).

:::image type="content" source="images/behavblockcontain-initialaccessalert.png" alt-text="Initial access alert in the Microsoft 365 Defender portal" lightbox="images/behavblockcontain-initialaccessalert.png":::

This example shows how behavior-based device-learning models in the cloud add new layers of protection against attacks, even after they have started running.

### Example 2: NTLM relay - Juicy Potato malware variant

As described in the recent blog post, [Behavioral blocking and containment: Transforming optics into protection](https://www.microsoft.com/security/blog/2020/03/09/behavioral-blocking-and-containment-transforming-optics-into-protection), in January 2020, Defender for Endpoint detected a privilege escalation activity on a device in an organization. An alert called "Possible privilege escalation using NTLM relay" was triggered.

:::image type="content" source="images/NTLMalertjuicypotato.png" alt-text="An NTLM alert for Juicy Potato malware" lightbox="images/NTLMalertjuicypotato.png":::

The threat turned out to be malware; it was a new, not-seen-before variant of a notorious hacking tool called Juicy Potato, which is used by attackers to get privilege escalation on a device.

Minutes after the alert was triggered, the file was analyzed, and confirmed to be malicious. Its process was stopped and blocked, as shown in the following image:

:::image type="content" source="images/Artifactblockedjuicypotato.png" alt-text="Artifact blocked"  lightbox="images/Artifactblockedjuicypotato.png":::

A few minutes after the artifact was blocked, multiple instances of the same file were blocked on the same device, preventing more attackers or other malware from deploying on the device.

This example shows that with behavioral blocking and containment capabilities, threats are detected, contained, and blocked automatically.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## Next steps

- [Learn more about Defender for Endpoint](overview-endpoint-detection-response.md)

- [Configure your attack surface reduction rules](attack-surface-reduction.md)

- [Enable EDR in block mode](edr-in-block-mode.md)

- [See recent global threat activity](https://www.microsoft.com/wdsi/threats)

- [Get an overview of Microsoft 365 Defender](../defender/microsoft-365-defender.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
