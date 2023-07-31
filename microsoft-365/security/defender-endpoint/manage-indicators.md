---
title: Create indicators
description: Create indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
keywords: manage, allowed, blocked, block, clean, malicious, file hash, ip address, urls, domain
ms.service: microsoft-365-security
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
ms.reviewer: thdoucet
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/20/2023
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

An Indicator of compromise (IoC) is a forensic artifact, observed on the network or host. An IoC indicates - with high confidence - a computer or network intrusion has occurred. IoCs are observable, which links them directly to measurable events. Some IoC examples include:

- hashes of known malware
- signatures of malicious network traffic
- URLs or domains that are known malware distributors

To halt additional compromise or prevent breaches of known IoCs, successful IoC tools should be able to detect all malicious data that is enumerated by the tool's rule set. 
IoC matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Organizations can create indicators that define the detection, prevention, and exclusion of IoC entities. You can define the action to be taken as well as the duration for when to apply the action, and the scope of the device group to apply it to.

This video shows a walkthrough of creating and adding indicators:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4qLVw]

### About Microsoft indicators

As a general rule, you should only create indicators for known bad IoCs, or for any files / websites that should be explicitly allowed in your organization. For more information on the types of sites that MDE may block by default, see [Microsoft Defender SmartScreen overview](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview).

False Positive (FP) refers to a SmartScreen false positive, Microsoft says it's malware / phish but it's actually a safe site, so customer wants to create an allow policy for this.

You can also help drive improvements to Microsoft's security intelligence by submitting false positives, and suspicious or known-bad IoCs for analysis. If you believe a warning or block was incorrectly shown for a file or application, or if you believe an undetected file is malware, you can submit a file to Microsoft for review. For more information, see [Submit files for analysis](https://www.microsoft.com/en-us/wdsi/filesubmission/).

#### IP/URL indicators

There several reasons for using IP/URL indicators, such as unblocking users from a SmartScreen false positive (FP) or overriding a Web Content Filtering (WFC) block.

You can use URL and IP indicators to manage site access. You can create interim IP and URL indicators to temporarily unblock users from a SmartScreen block. You may also have indicators that you keep for a long period of time to selectively bypass web content filtering blocks.

Consider the case where you have a web content filtering categorization for a particular site that is correct. In this example, you have web content filtering set to block all social media, which is correct for your overall organizational goals. However, the marketing team has a real need to use a specific social media site for advertising and announcements. In that case, you can unblock the specific social media site using IP or URL indicators for the specific group (or groups) to use.

See [Web protection](web-protection-overview.md) and [Web content filtering](web-content-filtering.md)

## IP/URL Indicators: Network protection and the TCP three-way handshake

With network protection, the determination of whether to allow or block access to a site is made after the completion of the [three-way handshake via TCP/IP](/troubleshoot/windows-server/networking/three-way-handshake-via-tcpip). Thus, when a site is blocked by network protection, you might see an action type of `ConnectionSuccess` under `NetworkConnectionEvents` in the Microsoft 365 Defender portal, even though the site was blocked. `NetworkConnectionEvents` are reported from the TCP layer, and not from network protection. After the three-way handshake has completed, access to the site is allowed or blocked by network protection.

Here's an example of how that works:

1. Suppose that a user attempts to access a website on their device. The site happens to be hosted on a dangerous domain, and it should be blocked by network protection.  

2. The three-way handshake via TCP/IP commences. Before it completes, a `NetworkConnectionEvents` action is logged, and its `ActionType` is listed as `ConnectionSuccess`. However, as soon as the three-way handshake process completes, network protection blocks access to the site. All of this happens quickly. A similar process occurs with [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview); it's when the three-way handshake completes that a determination is made, and access to a site is either blocked or allowed.

3. In the Microsoft 365 Defender portal, an alert is listed in the [alerts queue](alerts-queue.md). Details of that alert include both `NetworkConnectionEvents` and `AlertEvents`. You can see that the site was blocked, even though you also have a `NetworkConnectionEvents` item with the ActionType of `ConnectionSuccess`.

#### File hash indicators

In some cases, creating a new indicator for a newly identified file IoC - as an immediate stop-gap measure - might be appropriate to block files or even applications. However, using indicators to attempt to block an application may not provide the expected results as applications are typically composed of many different files. The preferred methods of blocking applications are to use [Windows Defender Application Control (WDAC)](/windows/security/threat-protection/windows-defender-application-control/wdac-and-applocker-overview) or AppLocker.

Because each version of an application has a different file hash, using indicators to block hashes isn't recommended.  

[Windows Defender Application Control (WDAC)](/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create)

#### Certificate indicators

In some cases, there may be a specific certificate that has been used to sign a file or application that your organization would like to allow / block. Certificate indicators are supported in MDE, provided they are of the .CER or .PEM file format. See [Create indicators based on certificates](indicator-certificates.md) for more details.

## IoC detection engines

Currently, the supported Microsoft sources for IoCs are:

- [Cloud detection engine](#cloud-detection-engine) of Defender for Endpoint
- [Automated investigation and remediation (AIR) engine](#automated-investigation-and-remediation-engine) in Microsoft Defender for Endpoint
- [Endpoint prevention engine](#endpoint-prevention-engine) (Microsoft Defender Antivirus)

## Cloud detection engine

The cloud detection engine of Defender for Endpoint regularly scans collected data and tries to match the indicators you set. When there's a match, action is taken according to the settings you specified for the IoC.

## Endpoint prevention engine

The same list of indicators is honored by the prevention agent. Meaning, if Microsoft Defender Antivirus is the primary Antivirus configured, the matched indicators are treated according to the settings. For example, if the action is "Alert and Block", Microsoft Defender Antivirus prevents file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Microsoft Defender Antivirus won't detect nor block the file from being run.

## Automated investigation and remediation engine

The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation treat it as "bad".

The `EnableFileHashComputation` setting computes the file hash for the cert and file IoC during file scans. It supports IoC enforcement of hashes and certs belong to trusted applications. It is concurrently enabled with the allow or block file setting. `EnableFileHashComputation` is enabled manually through Group Policy, and is disabled by default.

## Enforcement types for Indicators 

When creating a new indicator (IoC), one or more of the following actions are available:

- **Allow** – the IoC is allowed to run on your devices.
- **Audit** – an alert is triggered when the IoC runs.
- **Warn** – the IoC prompts a warning that the user can bypass
- **Block execution** - the IoC won't be allowed to run.
- **Block and remediate** - the IoC won't be allowed to run and a remediation action will be applied to the IoC.

> [!NOTE]
> Using Warn mode will prompt your users with a warning if they open a risky app or website. The prompt won't block them from allowing the application or website to run, but you can provide a custom message and links to a company page that describes appropriate usage of the app. Users can still bypass the warning and continue to use the app if they need. For more information, see Govern apps discovered by Microsoft Defender for Endpoint.

You can create an indicator for:

- [Files](indicator-file.md)
- [IP addresses](indicator-ip-domain.md)
- [URLs/domains](indicator-ip-domain.md)
- [Certificates](indicator-certificates.md)

The table below shows exactly which actions are available per indicator (IoC) type:

| IoC type | Available actions |
|:---|:---|
| [Files](indicator-file.md) | Allow <br> Audit <br> Warn <br> Block execution <br> Block and remediate |
| [IP addresses](indicator-ip-domain.md) | Allow <br> Audit <br> Warn <br> Block execution |
| [URLs and domains](indicator-ip-domain.md) | Allow <br> Audit <br> Warn <br> Block execution |
| [Certificates](indicator-certificates.md) | Allow <br> Block and remediate |

The functionality of pre-existing IoCs won't change. However, the indicators were renamed to match the current supported response actions:

- The "alert only" response action was renamed to "audit" with the generate alert setting enabled.
- The "alert and block" response was renamed to "block and remediate" with the optional generate alert setting.

The IoC API schema and the threat ids in advance hunting have been updated to align with the renaming of the IoC response actions. The API scheme changes apply to all IoC Types.

> [!NOTE]
>
> There is a limit of 15,000 indicators per tenant. File and certificate indicators do not block [exclusions defined for Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus). Indicators are not supported in Microsoft Defender Antivirus when it is in passive mode.
>
> The format for importing new indicators (IoCs) has changed according to the new updated actions and alerts settings. We recommend downloading the new CSV format that can be found at the bottom of the import panel.

## Known issues and limitations

Customers may experience issues with alerts for Indicators of Compromise. The following scenarios are situations where alerts may not be created or may be created with inaccurate information. Each of these issues are being investigated by our engineering team and will be resolved in an upcoming update.

- **Block indicators** – Generic alerts with informational severity only will be fired. Custom alerts (i.e. custom title and severity) will not be fired in these cases.
- **Warn indicators** – Generic alerts and custom alerts are possible in this scenario, however, the results are not deterministic due to an issue with the alert detection logic. In some cases, customers may see a generic alert, whereas a custom alert may show in other cases.
- **Allow** – No alerts are generated (by design).
- **Audit** - Alerts will be generated based on the severity provided by the customer.
- In some cases, alerts coming from EDR detections may take precedence over those stemming from AV blocks, in which case an information alert will be generated.

## Related articles

- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Use the Microsoft Defender for Endpoint indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)



[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
