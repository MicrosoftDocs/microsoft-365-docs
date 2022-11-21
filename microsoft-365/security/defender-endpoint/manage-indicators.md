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

## Indicator of compromise (IoC) overview

An Indicator of compromise (IoC) is a forensic artifact, observed on the network or host. An Ioc indicates - with high confidence - a computer or network intrusion has occurred. IoCs are observable, which link them directly to measurable events. Some IoC examples include:

- hashes of known malware
- signatures of malicious network traffic
- URLs or domains that are known malware distributors
- registry keys created after (because of) a compromise

To halt additional compromise or prevent breaches of known IoCs, successful IoC tools should be able to detect all malicious data that is enumerated by the tool's rule set.

IoC matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Create indicators that define the detection, prevention, and exclusion of IoC entities. You can define the action to be taken as well as the duration for when to apply the action, and the scope of the device group to apply it to.

### About Microsoft indicators

As a general rule, you should only create indicators for known bad IoCs that you think Microsoft isn't blocking, or for any SmartScreen Filtering Policy (FP) or allow list. See [Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings) and [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview).

You can help drive improvements to Microsoft's ability to block IoCs correctly by submitting false positives, and suspicious or known-bad IoCs for analysis. If you believe a warning or block was incorrectly shown for a file or application, or if you believe an undetected file is malware, you can [submit a file to Microsoft for review](https://www.microsoft.com/wdsi/filesubmission/). For more information, see [Submit files for analysis](/microsoft-365/security/intelligence/submission-guide).  Also see the Microsoft Blog article: [Unified submissions in Microsoft 365 Defender](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)

#### IP/URL indicators

There several reasons for using IP/URL indicators, such as unblocking users from a SmartScreen Filtering Policy (FP) or overriding a Web Content Filtering (WFC) categorization.

You can use URL and IP indicators to manage site access. You can create interim IP and URL indicators to temporarily unblock users from the SmartScreen filtering policy. But you might also have indicators that you keep for a long period of time to selectively bypass web content filtering.

Consider the case where you have a web content filtering categorization for a particular site that is correct. In this example, you have web content filtering set to block all social media, which is correct for your overall organizational goals. However, the marketing team has a real need to use a specific social media site for advertising and announcements. In that case, you can unblock the specific social media site using IP or URL indicators for the specific group (or groups) to use.

See [Web protection](web-protection-overview.md) and [Web content filtering](web-content-filtering.md)

#### File and software indicators

In some cases, creating a new indicator for a newly-identified software IoC - as an immediate stop-gap measure - might be appropriate to block files or applications. However, using indicators to block applications all-up might cause performance issues or other issues. The preferred methods of blocking applications are to use [Windows Defender Application Control (WDAC) or AppLocker](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/wdac-and-applocker-overview).

Because each version of an application has a different file hash, using indicators to block hashes is not recommended.

[Windows Defender Application Control (WDAC)](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create)

## IoC detection engines

Currently, the supported Microsoft sources for IoCs are:

- [Cloud detection engine](#cloud-detection-engine) of Defender for Endpoint
- [Automated investigation and remediation (AIR) engine](#automated-investigation-and-remediation-engine) in Microsoft Defender for Endpoint
- [Endpoint prevention engine](#endpoint-prevention-engine) (Microsoft Defender Antivirus)

## Cloud detection engine

The cloud detection engine of Defender for Endpoint regularly scans collected data and tries to match the indicators you set. When there is a match, action will be taken according to the settings you specified for the IoC.

## Endpoint prevention engine

The same list of indicators is honored by the prevention agent. Meaning, if Microsoft Defender Antivirus is the primary Antivirus configured, the matched indicators will be treated according to the settings. For example, if the action is "Alert and Block", Microsoft Defender Antivirus will prevent file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Microsoft Defender Antivirus will not detect nor block the file from being run.

## Automated investigation and remediation engine

The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation will ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation will treat it as "bad".

The `EnableFileHashComputation` setting computes the file hash for the cert and file IoC during file scans. It supports IoC enforcement of hashes and certs belong to trusted applications. It will be concurrently enabled and disabled with the allow or block file setting. `EnableFileHashComputation` is enabled manually through Group Policy, and is disabled by default.

When creating a new indicator (IoC), one or more of the following actions are available:

- **Allow** – the IoC will be allowed to run on your devices.
- **Audit** – an alert will be triggered when the IoC runs.
- **Warn** – the IoC will prompt a warning that the user can bypass
- **Block execution** - the IoC will not be allowed to run.
- **Block and remediate** - the IoC will not be allowed to run and a remediation action will be applied to the IoC.

>[!NOTE]
> Using Warn mode will prompt your users with a warning if they open a risky app. The prompt won't block them from using the app, but you can provide a custom message and links to a company page that describes appropriate usage of the app. Users can still bypass the warning and continue to use the app if they need. For more information, see [Govern apps discovered by Microsoft Defender for Endpoint](/cloud-app-security/mde-govern).

You can create an indicator for:

- [Files](indicator-file.md)
- [IP addresses and URLs/domains](indicator-ip-domain.md)
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

> [!NOTE]
>
> There is a limit of 15,000 indicators per tenant. File and certificate indicators do not block [exclusions defined for Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus). Indicators are not supported in Microsoft Defender Antivirus when it is in passive mode.
>
> The format for importing new indicators (IoCs) has changed according to the new updated actions and alerts settings. We recommend downloading the new CSV format that can be found at the bottom of the import panel.

## Indicators for iOS and Android

For the tested scenarios listed below, Android and iOS third-party browsers will compley with indicators if the browsers are deployed as _managed applications_ through Intune. When third-party browsers are deployed as managed applications using Intune, indicators and notifications function as expected.

| Device type: | Browser: | Personal Store </br>/ App Store: | Intune-managed app: | Indicator status:|
|:---|:---|:---|:---|:---|
| Android | Edge | Installed | | Non-compliant |
| Android | Edge | | Installed | Compliant |
| Android | Chrome | Installed by Default | | Non-compliant |
| Android | Chrome | | Installed | Compliant |
| Android | Firefox | Installed | | Non-compliant |
| Android | Firefox  | | Installed | Compliant |
| iOS | Edge  | Installed | | Compliant |
| iOS | Edge | | Not tested but expected to work | _expected_|
| iOS | Chrome | Installed | | Non-compliant |
| iOS | Chrome |  | Installed |  |
| iOS | Firefox | Installed | | Compliant |
| iOS | FireFox | | Not tested but expected to work | _expected_ |
| iOS | Safari | Installed by Default | | Non-compliant |
| iOS | Safari | | Installed | Compliant |

> [!NOTE]
>
> **Android** Edge was tested with a personal profile and then signed in with the AAD account, but the set indicator doesn't apply. The IoC only applies with work profiles.
> **iOS**
>
> - **Chrome** Unless Chrome is deployed from Intune, no browsers are compliant with IOCs
> - **Safari** must be added as a managed app to ensure compliance with IOCs
>
> **Order of install (iOS)**:
>
> - Chrome (Managed App)
> - Edge (App Store)
> - Safari (Managed App) {Installed by default}
> - Firefox (App Store)
>
> _Changes in installation order might change functionality_
> &nbsp;

## Related topics

- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Use the Microsoft Defender for Endpoint indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)
