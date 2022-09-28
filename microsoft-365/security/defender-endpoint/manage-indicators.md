---
title: Create indicators
ms.reviewer: 
description: Create indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
keywords: manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: article
ms.subservice: mde
search.appverid: met150
---

# Create indicators

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](/microsoft-365/security/defender-endpoint/defender-endpoint-plan-1)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!TIP]
>
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action as well as the scope of the device group to apply it to.

Currently supported sources are the cloud detection engine of Defender for Endpoint, the automated investigation and remediation engine, and the endpoint prevention engine (Microsoft Defender Antivirus).

## Cloud detection engine

The cloud detection engine of Defender for Endpoint regularly scans collected data and tries to match the indicators you set. When there is a match, action will be taken according to the settings you specified for the IoC.

## Endpoint prevention engine

The same list of indicators is honored by the prevention agent. Meaning, if Microsoft Defender Antivirus is the primary Antivirus configured, the matched indicators will be treated according to the settings. For example, if the action is "Alert and Block", Microsoft Defender Antivirus will prevent file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Microsoft Defender Antivirus will not detect nor block the file from being run.

## Automated investigation and remediation engine

The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation will ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation will treat it as "bad".

The EnableFileHashComputation setting computes the file hash for the cert and file IoC during file scans. It supports IoC enforcement of hashes and certs belong to trusted applications. It will be concurrently enabled and disabled with the allow or block file setting. EnableFileHashComputation is enabled manually through Group Policy, and is disabled by default.

When creating a new indicator (IoC), one or more of the following actions are available:

- Allow – the IoC will be allowed to run on your devices.
- Audit – an alert will be triggered when the IoC runs.
- Warn – the IoC will prompt a warning that the user can bypass 
- Block execution - the IoC will not be allowed to run.
- Block and remediate - the IoC will not be allowed to run and a remediation action will be applied to the IoC.

>[!NOTE]
> Using Warn mode will prompt your users with a warning if they open a risky app. The prompt won't block them from using the app, but you can provide a custom message and links to a company page that describes appropriate usage of the app. Users can still bypass the warning and continue to use the app if they need. For more information, see [Govern apps discovered by Microsoft Defender for Endpoint](/cloud-app-security/mde-govern).

You can create an indicator for:

- [Files](indicator-file.md)
- [IP addresses, URLs/domains](indicator-ip-domain.md)
- [Certificates](indicator-certificates.md)

The table below shows exactly which actions are available per indicator (IoC) type:

| IoC type | Available actions |
|:---|:---|
| [Files](indicator-file.md) | Allow <br> Audit <br> Block and remediate |
| [IP addresses](indicator-ip-domain.md) | Allow <br> Audit <br> Block execution <br> Warn |
| [URLs and domains](indicator-ip-domain.md) | Allow <br> Audit <br> Block execution<br> Warn |
| [Certificates](indicator-certificates.md) | Allow <br> Block and remediate |

The functionality of pre-existing IoCs will not change. However, the indicators were renamed to match the current supported response actions:

- The "alert only" response action was renamed to "audit" with the generate alert setting enabled.
- The "alert and block" response was renamed to "block and remediate" with the optional generate alert setting.

The IoC API schema and the threat ids in advance hunting have been updated to align with the renaming of the IoC response actions. The API scheme changes apply to all IoC Types.

> [!Note]
> There is a limit of 15,000 indicators per tenant. File and certificate indicators do not block [exclusions defined for Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus). Indicators are not supported in Microsoft Defender Antivirus when it is in passive mode.
>
> The format for importing new indicators (IoCs) has changed according to the new updated actions and alerts settings. We recommend downloading the new CSV format that can be found at the bottom of the import panel.

## Related topics

- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Use the Microsoft Defender for Endpoint indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)
