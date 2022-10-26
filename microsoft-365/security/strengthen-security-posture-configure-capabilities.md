---

title: "Strengthen your security posture Phase 1: Configure capabilities"
f1.keywords:
- security posture
- strengthen security posture
ms.author: siosulli
author: siosulli
manager: dansimp
audience: Admin
description: Learn how to strengthen your organization's security posture.
ms.topic: tutorial
ms.service: microsoft-365-security
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection:
- m365solution-securityposture
- m365solution-overview
- m365-security
- securityposture-solution
- highpri
- tier1
---

# Strengthen your security posture - Phase 1: Configure capabilities

Welcome to **Phase 1: Configure capabilities** to **[Strengthen your security posture](/security-posture-solution-overview.md)**!

This phase provides guidance on how to configure the capabilities available to you:

1. [Configure device discovery](#1-configure-device-discovery)
2. [Configure ASR in audit mode](#2-configure-asr-in-audit-mode)
3. [Check your mail routing configuration](#3-configure-microsoft-defender-for-identity)

## 1. Configure device discovery

it's critical to have full visibility of all the devices in your organization. You can't protect what you can't see. Device discovery will help you
discover unmanaged endpoints that can be onboarded and secured by Microsoft Defender for Endpoint on your corporate network.

See [Configure device discovery](../security/defender-endpoint/configure-device-discovery.md) for guidance you can use as a starting point.

## 2. Configure ASR in audit mode

Attack surface reduction rules help reduce your attack surface by minimizing the places where your organization might be vulnerable to cyber attacks.
You can test attack surface reduction (ASR) rules to determine if the rules would affect your organization if enabled. The first step in this process is to turn on the ASR rules with the rules set to Audit.

To get started, see [Test attack surface reduction (ASR) rules](../security/defender-endpoint/attack-surface-reduction-rules-deployment-test.md).

## 3. Configure Microsoft Defender for Identity

Use [Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) with Microsoft Defender for Endpoint to further improve you device discovery capabilities, to learn more see: [improving-device-discoverability-and-classification-within-mde](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/improving-device-discoverability-and-classification-within-mde/ba-p/3625559).

## Next step

- Proceed to [Phase 2: Assess and Protect](/security-posture-solution-overview.md).
