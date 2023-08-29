---
title: Optimize ASR rule deployment and detections
description: Optimize your attack surface reduction (ASR) rules to identify and prevent typical malware exploits.
keywords: onboard, Intune management, Microsoft Defender for Endpoint, Microsoft Defender, Windows Defender, attack surface reduction, ASR, security baseline
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Optimize ASR rule deployment and detections

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

[Attack surface reduction (ASR) rules](./attack-surface-reduction.md) identify and prevent typical malware exploits. They control when and how potentially malicious code can run. For example, they can prevent JavaScript or VBScript from launching a downloaded executable, block Win32 API calls from Office macros, and block processes that run from USB drives.

:::image type="content" source="../../media/attack-surface-mgmt.png" alt-text="Attack surface management card" lightbox="../../media/attack-surface-mgmt.png":::

> *Attack surface management card*

The *Attack surface management card* is an entry point to tools in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> that you can use to:

- Understand how ASR rules are currently deployed in your organization.
- Review ASR detections and identify possible incorrect detections.
- Analyze the impact of exclusions and generate the list of file paths to exclude.

Select **Go to attack surface management** \> **Reports** \> **Attack surface reduction rules** \> **Add exclusions**. From there, you can navigate to other sections of Microsoft 365 Defender portal.

:::image type="content" source="images/secconmgmt_asr_m365exlusions.png" alt-text="Add exclusions tab in the Attack surface reduction rules page in the Microsoft 365 Defender portal" lightbox="images/secconmgmt_asr_m365exlusions.png":::

> *The **Add exclusions** tab in the Attack surface reduction rules page in Microsoft 365 Defender portal*

> [!NOTE]
> To access Microsoft 365 Defender portal, you need a Microsoft 365 E3 or E5 license and an account that has certain roles on Azure Active Directory. [Read about required licenses and permissions](/microsoft-365/security/defender/prerequisites).

For more information about ASR rule deployment in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, see [Optimize ASR rule deployment and detections](configure-machines-asr.md).

## Related topics

- [Ensure your devices are configured properly](configure-machines.md)
- [Get devices onboarded to Microsoft Defender for Endpoint](configure-machines-onboarding.md)
- [Monitor compliance to the Microsoft Defender for Endpoint security baseline](configure-machines-security-baseline.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
