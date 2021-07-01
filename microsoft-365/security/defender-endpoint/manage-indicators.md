---
title: Create indicators
ms.reviewer: 
description: Create indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
keywords: manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Create indicators

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> [!TIP]
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action as well as the scope of the device group to apply it to.

Currently supported sources are the cloud detection engine of Defender for Endpoint, the automated investigation and remediation engine, and the endpoint prevention engine (Microsoft Defender Antivirus).

**Cloud detection engine**<br>
The cloud detection engine of Defender for Endpoint regularly scans collected data and tries to match the indicators you set. When there is a match, action will be taken according to the settings you specified for the IoC.

**Endpoint prevention engine**<br>
The same list of indicators is honored by the prevention agent. Meaning, if Microsoft Defender AV is the primary AV configured, the matched indicators will be treated according to the settings. For example, if the action is "Alert and Block", Microsoft Defender AV will prevent file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Microsoft Defender AV will not detect nor block the file from being run.

**Automated investigation and remediation engine**<BR>
The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation will ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation will treat it as "bad".

> [!NOTE]
> The EnableFileHashComputation setting computes the file hash for the cert and file IoC during file scans. It supports IoC enforcement of hashes and certs belong to trusted applications. It will be concurrently enabled and disabled with the allow or block file setting. EnableFileHashComputation is enabled manually through Group Policy, and is disabled by default.


The current supported actions are:
- Allow
- Alert only
- Alert and block


You can create an indicator for:
- [Files](indicator-file.md)
- [IP addresses, URLs/domains](indicator-ip-domain.md)
- [Certificates](indicator-certificates.md)


> [!NOTE]
> There is a limit of 15,000 indicators per tenant. File and certificate indicators do not block [exclusions defined for Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus). Indicators are not supported in Microsoft Defender Antivirus when it is in passive mode. 


## Related topics

- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Use the Microsoft Defender for Endpoint indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)
