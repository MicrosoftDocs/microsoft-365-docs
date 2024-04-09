---
title: What's new in Microsoft Defender for Endpoint
description: See what features are generally available (GA) in the latest release of Microsoft Defender for Endpoint, and security features in Windows 10 and Windows Server.
search.appverid: met150
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
ms.date: 04/09/2024
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
---

# What's new in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

The following features are in preview or generally available (GA) in the latest release of Microsoft Defender for Endpoint.

For more information on preview features, see [Preview features](preview.md).

For more information on what's new with Microsoft Defender for Endpoint on Windows, see:
[What's new in Microsoft Defender for Endpoint on Windows](windows-whatsnew.md)

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft Defender XDR](../defender/whats-new.md)
- [What's new in Microsoft Defender for Office 365](../office-365-security/defender-for-office-365-whats-new.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

For more information on Microsoft Defender for Endpoint on specific operating systems:

- [What's new in Defender for Endpoint on Windows](windows-whatsnew.md)
- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on Linux](linux-whatsnew.md)
- [What's new in Defender for Endpoint on Android](android-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)


> [!TIP]
> RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:        > 
> 
> (/api/search/rss?search=%22features+are+generally+available+%28GA%29+in+the+latest+release+of+Microsoft+Defender+for+Endpoint%22&locale=en-us&facet=)
> 
> (/api/search/rss?search=%22features+are+generally+available+%28GA%29+in+the+latest+release+of+Microsoft+Defender+for+Endpoint%22&locale=en-us&facet=)

## April 2024

**Microsoft Defender for Endpoint on macOS** feature now in GA:

- **Troubleshooting mode for macOS** : Troubleshooting mode helps you identify instances where antivirus might be causing issues with your applications or system resources. To learn more, see [Troubleshooting mode in Microsoft Defender for Endpoint on macOS](mac-troubleshoot-mode.md).

## (GA) March 2024

**Built-in Scheduled scan for macOS**: For information on Scheduled Scan built-in for Microsoft Defender for Endpoint on macOS, see [How to schedule scans with Microsoft Defender for Endpoint on macOS](mac-schedule-scan.md)

## February 2024

**Attack Surface Reduction (ASR) Rules**

Two new ASR rules are now in public preview: 
- [Block rebooting machine in Safe Mode (preview)](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-rebooting-machine-in-safe-mode-preview): This rule prevents the execution of commands to restart machines in Safe Mode.
- [Block use of copied or impersonated system tools (preview)](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-use-of-copied-or-impersonated-system-tools-preview): This rule blocks the use of executable files that are identified as copies of Windows system tools. These files are either duplicates or impostors of the original system tools.

**Microsoft Defender for Endpoint on macOS** features are in public preview:

- **Built-in Scheduled Scan for macOS** (preview): Scheduled Scan built-in for Microsoft Defender for Endpoint on macOS is now available in public preview. To learn more, see [How to schedule scans with Microsoft Defender for Endpoint on macOS](mac-schedule-scan.md).

- **Troubleshooting mode for macOS** (preview): Troubleshooting mode for macOS is now available in public preview. Troubleshooting mode helps you identify instances where antivirus might be causing issues with your applications or system resources. To learn more, see [Troubleshooting mode in Microsoft Defender for Endpoint on macOS](mac-troubleshoot-mode.md).

## January 2024

- **Defender Boxed is available for a limited period of time**. Defender Boxed highlights your organization's security successes, improvements, and response actions during 2023. Take a moment to celebrate your organization's improvements in security posture, overall response to detected threats (manual and automatic), blocked emails, and more. 

   - Defender Boxed opens automatically when you go to the **Incidents** page in the Microsoft Defender portal. 
   - If you close Defender Boxed and you want to reopen it, in the Microsoft Defender portal, go to **Incidents**, and then select **Your Defender Boxed**.
   - Act quickly! Defender Boxed is available only for a short period of time.
- (GA) [User Contain](https://www.microsoft.com/en-us/security/blog/2023/10/11/microsoft-defender-for-endpoint-now-stops-human-operated-attacks-on-its-own) can now contain compromised users automatically stopping Human Operated Ransomware in its track using Automatic Attack Disruption.


## November 2023

- [Microsoft Defender Core service](microsoft-defender-antivirus-windows.md#microsoft-defender-core-service) is now available for consumers and is planned to begin rolling out to enterprise customers in early 2024.
- The [Microsoft Defender for Endpoint plug-in for Windows Subsystem for Linux (WSL)](/microsoft-365/security/defender-endpoint/mde-plugin-wsl) is now available in public preview.
- Support for [mixed-license scenarios](defender-endpoint-subscription-settings.md) is now generally available in Defender for Endpoint.

## October 2023

- (GA) The device isolation and run AV scan responses in macOS and Linux are now generally available. You can now remotely [run an AV scan](respond-machine-alerts.md#run-microsoft-defender-antivirus-scan-on-devices) or [isolate devices](respond-machine-alerts.md#isolate-devices-from-the-network) when responding to attacks.
- (Public Preview) [Streamlined device connectivity for Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-a-streamlined-device-connectivity-experience-for/ba-p/3956236) is available in public preview for Windows, macOS, and Linux. This experience makes it easier to configure and manage Defender for Endpoint services by reducing the number of URLs required for connectivity, providing IP & Azure service tag support, and simplifying post-deployment network management.
- (Public Preview) [User Contain](https://www.microsoft.com/en-us/security/blog/2023/10/11/microsoft-defender-for-endpoint-now-stops-human-operated-attacks-on-its-own) can now contain compromised users automatically stopping Human Operated Ransomware in its track using Automatic Attack Disruption.

## September 2023

(GA) The [Protecting Dev Drive using performance mode](microsoft-defender-endpoint-antivirus-performance-mode.md) is now generally available. The goal of Performance mode is to improve functional performance for developers who use Windows 11.  Performance mode which reduces the performance impact of Microsoft Defender Antivirus scans for files stored on designated Dev Drive.

## August 2023

- (GA) The [Monthly security summary report](monthly-security-summary-report.md) is now generally available. The report helps organizations get a visual summary of key findings and overall preventative actions taken to enhance the organization's overall security posture completed in the last month.  

## July 2023

- The eBPF-based sensor for Microsoft Defender for Endpoint on Linux is available for public preview on all supported Linux devices. For more information, see [Use eBPF-based sensor for Microsoft Defender for Endpoint on Linux](linux-support-ebpf.md).
- [Manage endpoint security policies in Defender for Endpoint is now in public preview](manage-security-policies.md)  <br> You can now configure security settings directly in Microsoft Defender XDR.
- A new file page is now available in Defender for Endpoint. The file page now includes information like file details and file content and capabilities. For more information, see [Investigate files](investigate-files.md).
 
## June 2023

- Microsoft Defender Antivirus scan response action is supported for macOS and Linux for client version 101.98.84 and above. It is in preview. See [Run Microsoft Defender Antivirus scan on devices](respond-machine-alerts.md#run-microsoft-defender-antivirus-scan-on-devices). 
- Isolating devices from the network is supported for macOS for client version 101.98.84 and above. It is in preview. See [Isolate devices from the network](respond-machine-alerts.md#isolate-devices-from-the-network).
- Forcibly releasing devices from isolation is now available for public preview. This new capability allows you to forcibly release devices from isolation, when isolated devices become unresponsive. For more information, see [Forcibly release device from isolation](respond-machine-alerts.md#forcibly-release-device-from-isolation).

## May 2023

- Performance mode for Microsoft Defender Antivirus is now available for public preview. This new capability provides asynchronous scanning on a Dev Drive, and doesn't change the security posture of your system drive or other drives. For more information, see [Protecting Dev Drive using performance mode](microsoft-defender-endpoint-antivirus-performance-mode.md).

## March 2023

- Support for mixed-licensing scenarios is now in preview! With these capabilities, you can [Manage Microsoft Defender for Endpoint subscription settings across client devices (preview!)](defender-endpoint-subscription-settings.md).

## February 2023
 
- The Microsoft Defender for Identity integration toggle is now removed from the Microsoft Defender for Endpoint Settings > Advanced features page. Because Defender for Identity is now integrated with Microsoft Defender XDR, this toggle is no longer required. You don't need to manually configure integration between services. See [What's new - Microsoft Defender for Identity](/defender-for-identity/whats-new#defender-for-identity-release-2194).

## January 2023

- [Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) can now protect exclusions when deployed with Microsoft Intune. See [Protect Microsoft Defender Antivirus exclusions from tampering](prevent-changes-to-security-settings-with-tamper-protection.md#protect-microsoft-defender-antivirus-exclusions)

- Live Response is now generally available for macOS and Linux. For more information, see [Investigate entities on devices using live response](live-response.md).

- [Live response API and library API for Linux and macOS is now generally available](run-live-response.md) <br/> You can now run live response API commands on Linux and macOS.

## Prior to 2023

For information about features released prior to 2023, see [Archive - What's new in Defender for Endpoint, December 2022 and earlier](whats-new-mde-archive.md#whats-new-in-microsoft-defender-for-endpoint---before-2023)
