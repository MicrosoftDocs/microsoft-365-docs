---
title: Optimize ASR rule deployment and detections
description: Optimize your attack surface reduction (ASR) rules to identify and prevent typical malware exploits.
keywords: onboard, Intune management, Microsoft Defender for Endpoint, Microsoft Defender, Windows Defender, attack surface reduction, ASR, security baseline
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Optimize ASR rule deployment and detections

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

[Attack surface reduction (ASR) rules](./attack-surface-reduction.md) identify and prevent typical malware exploits. They control when and how potentially malicious code can run. For example, they can prevent JavaScript or VBScript from launching a downloaded executable, block Win32 API calls from Office macros, and block processes that run from USB drives.


:::image type="content" source="../../media/attack-surface-mgmt.png" alt-text="Attack surface management card.":::
<br>
*Attack surface management card*

The *Attack surface management card* is an entry point to tools in Microsoft 365 security center that you can use to:

* Understand how ASR rules are currently deployed in your organization.
* Review ASR detections and identify possible incorrect detections.
* Analyze the impact of exclusions and generate the list of file paths to exclude.

Select **Go to attack surface management** \> **Reports** \> **Attack surface reduction rules** \> **Add exclusions**. From there, you can navigate to other sections of Microsoft 365 security center.

![Add exclusions tab in the Attack surface reduction rules page in Microsoft 365 security center.](images/secconmgmt_asr_m365exlusions.png)<br>
The ***Add exclusions** tab in the Attack surface reduction rules page in Microsoft 365 security center*

> [!NOTE]
> To access Microsoft 365 security center, you need a Microsoft 365 E3 or E5 license and an account that has certain roles on Azure Active Directory. [Read about required licenses and permissions](/office365/securitycompliance/microsoft-security-and-compliance#required-licenses-and-permissions).

For more information about ASR rule deployment in Microsoft 365 security center, see [Monitor and manage ASR rule deployment and detections](/office365/securitycompliance/monitor-devices#monitor-and-manage-asr-rule-deployment-and-detections).

**Related topics**

* [Ensure your devices are configured properly](configure-machines.md)
* [Get devices onboarded to Microsoft Defender for Endpoint](configure-machines-onboarding.md)
* [Monitor compliance to the Microsoft Defender for Endpoint security baseline](configure-machines-security-baseline.md)
