---
title: What's new in Microsoft Defender for Endpoint
description: See what features are generally available (GA) in the latest release of Microsoft Defender for Endpoint, and security features in Windows 10 and Windows Server.
keywords: what's new in Microsoft Defender for Endpoint, ga, generally available, capabilities, available, new
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 03/20/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
ms.subservice: mde
---

# What's new in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

The following features are in preview or generally available (GA) in the latest release of Microsoft Defender for Endpoint.

For more information on preview features, see [Preview features](preview.md).

> [!TIP]
> RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:
>
> ```https
> https://learn.microsoft.com/api/search/rss?search=%22features+are+generally+available+%28GA%29+in+the+latest+release+of+Microsoft+Defender+for+Endpoint%22&locale=en-us&facet=
> ```

For more information on what's new with Microsoft Defender for Endpoint on Windows, see:
[What's new in Microsoft Defender for Endpoint on Windows](windows-whatsnew.md)

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft 365 Defender](../defender/whats-new.md)
- [What's new in Microsoft Defender for Office 365](../office-365-security/defender-for-office-365-whats-new.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

For more information on Microsoft Defender for Endpoint on specific operating systems:

- [What's new in Defender for Endpoint on Windows](windows-whatsnew.md)
- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)
- [What's new in Defender for Endpoint on Linux](linux-whatsnew.md)

## June 2023

- Forcibly releasing devices from isolation is now available for public preview. This new capability allows you to forcibly release devices from isolation, when isolated devices become unresponsive. For more information, see [Take response actions on a device in Microsoft Defender for Endpoint](respond-machine-alerts.md).

## May 2023

- Performance mode for Microsoft Defender Antivirus is now available for public preview. This new capability provides asynchronous scanning on a Dev Drive, and does not change the security posture of your system drive or other drives. For more information, see [Protecting Dev Drive using performance mode](microsoft-defender-endpoint-antivirus-performance-mode.md).

## March 2023

- Support for [Mixed-licensing scenarios](defender-endpoint-plan-1-2.md#mixed-licensing-scenarios) is now in preview! With these capabilities, you can [Manage Microsoft Defender for Endpoint subscription settings across client devices (preview!)](defender-endpoint-subscription-settings.md).

## February 2023
 
- The Microsoft Defender for Identity integration toggle is now removed from the Microsoft Defender for Endpoint Settings > Advanced features page. Because Defender for Identity is now integrated with Microsoft 365 Defender, this toggle is no longer required. You don't need to manually configure integration between services. See [What's new - Microsoft Defender for Identity](/defender-for-identity/whats-new#defender-for-identity-release-2194).


## January 2023

- [Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) can now protect exclusions when deployed with Microsoft Intune. See [What about exclusions](prevent-changes-to-security-settings-with-tamper-protection.md#what-about-exclusions)?

- Live Response is now generally available for macOS and Linux. For more information, see, [Investigate entities on devices using live response](live-response.md).

- [Live response API and library API for Linux and macos is now generally available](run-live-response.md) <br/> You can now run live response API commands on Linux and macos. 

## December 2022

- Microsoft Defender for Endpoint Device control removable storage access control updates:
    1. Microsoft Intune support for removable storage access control is now available. See [Deploy Removable Storage Access Control by using Intune user interface](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-user-interface)
    2. The new default enforcement policy of removable storage access control is designed for all device control features. Printer Protection is now available for this policy. If you create a Default Deny policy, printers will be blocked in your organization.
        - Intune: *./Vendor/MSFT/Defender/Configuration/DefaultEnforcement* <br> See [Deploy and manage Removable Storage Access Control using Intune](deploy-manage-removable-storage-intune.md)
        - Group policy: *Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus > Features > Device Control > Select Device Control Default Enforcement*<br> See [Deploy and manage Removable Storage Access Control using group policy](deploy-manage-removable-storage-group-policy.md)

- Microsoft Defender for Endpoint Device control New Printer Protection solution to manage printer is now available. For more information, see
[Printer Protection Overview](printer-protection-overview.md)

## November 2022

- [Built-in protection](built-in-protection.md) is now generally available. Built-in protection helps protect your organization from ransomware and other threats with default settings that help ensure your devices are protected. 

- Zeek is now generally available as a component of Microsoft Defender for Endpoint.

   Microsoft has partnered with [Corelight](https://corelight.com/company/zeek-now-component-of-microsoft-windows), a leader in open source Network Detection and Response (NDR), to provide a new open-source integration with [Zeek](https://corelight.com/about-zeek/how-zeek-works) for Defender for Endpoint. With this integration, organizations can super-charge their investigation efforts with rich network signals and reduce the time it takes to detect network-based threats by having unprecedented visibility into network traffic from the endpoints' perspective.

   The new Zeek integration is available in the latest version of the Defender for Endpoint agent via the following knowledge base articles:
   - [KB5016691](https://support.microsoft.com/topic/august-25-2022-kb5016691-os-build-22000-918-preview-59097044-915a-49a0-8870-49823236adbd)
   - [KB5016693](https://support.microsoft.com/topic/august-16-2022-kb5016693-os-build-20348-946-preview-ee90d0bc-c162-4124-b7c6-f963ee7b17ed)
   - [KB5016688](https://support.microsoft.com/topic/august-26-2022-kb5016688-os-builds-19042-1949-19043-1949-and-19044-1949-preview-ec31ebdc-067d-44dd-beb0-eabcc984d843)
   - [KB5016690](https://support.microsoft.com/topic/august-23-2022-kb5016690-os-build-17763-3346-preview-b81d1ac5-75c7-42c1-b638-f13aa4242f42)

   > [!NOTE]
   > This integration doesn't currently support the use of custom scripts to gain visibility into extra signals.


## October 2022

- [Network protection C2 detection and remediation is now generally available](network-protection.md#block-command-and-control-attacks). <br/>Attackers often compromise existing internet-connected servers to become their command and control servers. Attackers can use the compromised servers to hide malicious traffic and deploy malicious bots that are used to infect endpoints. Network protection detection and remediation will help improve the time it takes security operations (SecOps) teams to pinpoint and respond to malicious network threats that are looking to compromise endpoints.


## September 2022

- [Attack surface reduction (ASR) rules report now available in the Microsoft 365 Defender portal](attack-surface-reduction-rules-report.md). <br/>The attack surface reduction (ASR) rules report is now available in the Microsoft 365 Defender portal. This ASR report provides information about the attack surface reduction rules that are applied to devices in your organization and helps you detect threats, block potential threats, and get visibility into ASR and device configuration.

- [Built-in protection](built-in-protection.md) (preview) is rolling out. Built-in protection is a set of default settings, such as tamper protection turned on, to help protect devices from ransomware and other threats.

- [Device health reporting is now generally available](device-health-reports.md). <br/>The device health report provides information about the health and security of your endpoints. The report includes trending information showing the sensor health state, antivirus status, OS platforms, Windows 10 versions, and Microsoft Defender Antivirus update versions.

- [Device health reporting is now available for US Government customers using Defender for Endpoint](device-health-reports.md). <br/>Device health reporting is now available for GCC, GCC High and DoD customers.

- [Troubleshooting mode](enable-troubleshooting-mode.md) is now available for more Windows operating systems, including Windows Server 2012 R2 and above. See the article for more information about the required updates.

## August 2022

- [Device health status](investigate-machines.md#device-health-status)<br>The Device health status card shows a summarized health report for the specific device.

- [Device health reporting (Preview)](/microsoft-365/security/defender-endpoint/machine-reports)<br> The devices status report provides high-level information about the devices in your organization. The report includes trending information showing the sensor health state, antivirus status, OS platforms, and Windows 10 versions.

- [Tamper protection on macOS is now generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/tamper-protection-on-macos-is-now-generally-available/ba-p/3595422)<br> This feature will be released with audit mode enabled by default, and you can decide whether to enforce (block) or turn off the capability. Later this year, we'll offer a gradual rollout mechanism that will automatically switch endpoints to block mode; note this will only apply if you have not made a choice to either enable (block mode) or disable the capability.

- [Network Protection and Web Protection for macOS and Linux is now in Public Preview!](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/network-protection-and-web-protection-for-macos-and-linux-is-now/ba-p/3601576)<br>Network Protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet. It's the foundation on which our Web Protection for Microsoft Defender for Endpoint is built. These capabilities include Web threat protection, Web content filtering, and IP/URL Custom indicators. Web protection enables you to secure your devices against web threats and helps to regulate unwanted content.

- [Improved Microsoft Defender for Endpoint (MDE) onboarding for Windows Server 2012 R2 and Windows Server 2016](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2207#improved-microsoft-defender-for-endpoint-mde-onboarding-for-windows-server-2012-r2-and-windows-server-2016)<br>Configuration Manager version 2207 now supports automatic deployment of modern, unified Microsoft Defender for Endpoint for Windows Server 2012 R2 & 2016. Windows Server 2012 and 2016 devices that are targeted with Microsoft Defender for Endpoint onboarding policy will use the unified agent versus the existing Microsoft Monitoring Agent based solution, if configured through Client Settings.


## July 2022

- [Add domain controller devices - Evaluation lab enhancement](evaluation-lab.md#add-a-domain-controller)<br>Now generally available - Add a domain controller to run complex scenarios such as lateral movement and multistage attacks across multiple devices.

- [Announcing File page enhancements in Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-file-page-enhancements-in-microsoft-defender-for/ba-p/3584004)<br>Have you ever investigated files in Microsoft Defender for Endpoint? We now make it even easier with our recent announcement of enhancements to the File page and side panel. Users can now streamline processes by having a more efficient navigation experience that hosts all this information in one place.

- [Introducing the new alert suppression experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-the-new-alert-suppression-experience/ba-p/3562719)<br>We're excited to share the new and advanced alert suppression experience is now Generally Available. The new experience provides tighter granularity and control, allowing users to tune Microsoft Defender for Endpoint alerts.

- [Prevent compromised unmanaged devices from moving laterally in your organization with “Contain](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/prevent-compromised-unmanaged-devices-from-moving-laterally-in/ba-p/3482134)<br>Starting today, when a device that isn't enrolled in Microsoft Defender for Endpoint is suspected of being compromised, as a SOC analyst, you'll be able to “Contain” it. As a result, any device enrolled in Microsoft Defender for Endpoint will now block any incoming/outgoing communication with the suspected device.

- [Mobile device support is now available for US Government Customers using Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/mobile-device-support-is-now-available-for-us-government/ba-p/3472590)<br>Microsoft Defender for Endpoint for US Government customers is built in the Azure US Government environment and uses the same underlying technologies as Defender in Azure Commercial. This offering is available to GCC, GCC High and DoD customers and further extends our platform availability from Windows, macOS, and Linux, to Android and iOS devices as well.


## June 2022

- [Defender for Servers Plan 2 now integrates with MDE unified solution](https://techcommunity.microsoft.com/t5/microsoft-defender-for-cloud/defender-for-servers-plan-2-now-integrates-with-mde-unified/ba-p/3527534)<br>You can now start deploying the modern, unified solution for Windows Server 2012 R2 and 2016 to servers covered by Defender for Servers Plan 2 using a single button.

- [Mobile Network Protection in Microsoft Defender for Endpoint on Android & iOS now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/mobile-network-protection-in-microsoft-defender-for-endpoint-on/ba-p/3559121)<br>Microsoft offers a mobile network protection feature in Defender for Endpoint that helps organizations identify, assess, and remediate endpoint weaknesses with the help of robust threat intelligence. We're delighted to announce that users can now benefit from this new feature on both Android and iOS platforms with Microsoft Defender for Endpoint.

## May 2022

- [Tamper protection for macOS (preview)](tamperprotection-macos.md)<br>Tamper protection helps prevent unauthorized removal of Microsoft Defender for Endpoint on macOS.

- [Add domain controller devices - Evaluation lab enhancement (preview)](evaluation-lab.md#add-a-domain-controller)<br>Add a domain controller to run complex scenarios such as lateral movement and multistage attacks across multiple devices.

- [Troubleshooting mode for Microsoft Defender for Endpoint now Generally Available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/troubleshooting-mode-for-microsoft-defender-for-endpoint-now/ba-p/3347344)<br>Introducing troubleshooting mode, a unique, innovative, and secure way to investigate and adjust configurations on your devices. This mode will enable the local admin on the device to override Microsoft Defender Antivirus security policy configurations on the device, including tamper protection. 

- [Announcing the public preview of Defender for Endpoint personal profile for Android Enterprise](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-the-public-preview-of-defender-for-endpoint-personal/ba-p/3370979)<br>We're happy to announce that users who wish to enroll their own devices in their workplace’s BYOD program can now benefit from the protection provided by Microsoft Defender for Endpoint in their personal profile as well.

- [Security Settings Management in Microsoft Defender for Endpoint is now generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/security-settings-management-in-microsoft-defender-for-endpoint/ba-p/3356970)<br>In late 2021, we announced that Microsoft Defender for Endpoint expanded its configuration management capabilities. This release empowered security teams to configure devices with their desired security settings without needing to deploy and implement other tools or infrastructure.  Made possible with Microsoft Intune, organizations have been able to manage antivirus (AV), endpoint detection and response (EDR), and firewall (FW) policies from a single view for all enlisted devices. Today, we're announcing that this capability is now generally available for Windows client and Windows server, supporting Windows 10, Windows 11, and Windows Server 2012 R2 or later.

## April 2022

- [Updated onboarding and feature parity for Windows Server 2012 R2 and Windows Server 2016)](configure-server-endpoints.md)<br/> The new unified solution package is now generally available and makes it easier to onboard servers by removing dependencies and installation steps. In addition, this unified solution package comes with many new feature improvements.

- [Integration with Tunnel for iOS](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/what-s-new-in-microsoft-endpoint-manager-2204-april-edition/ba-p/3297995). Microsoft Defender for Endpoint on iOS can now integrate with Microsoft Tunnel, a VPN gateway solution to enable security and connectivity in a single app. This feature was earlier available only on Android.

- [Enhanced Antimalware Protection in Microsoft Defender for Endpoint Android](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhanced-antimalware-protection-in-microsoft-defender-for/ba-p/3290320)<br>We're excited to share major updates to the Malware protection capabilities of Microsoft Defender for Endpoint on Android. These new capabilities form a major component of your next-generation protection in Microsoft Defender for Endpoint. This protection brings together machine learning, big-data analysis, in-depth threat research, and the Microsoft cloud infrastructure to protect Android devices (or endpoints) in your organization.

- [Enhanced antimalware engine capabilities for Linux and macOS](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/enhanced-antimalware-engine-capabilities-for-linux-and-macos/ba-p/3292003)<br>We're announcing a significant upgrade to our next-generation protection on Linux and macOS with a new, enhanced engine. The Microsoft Defender Antivirus antimalware engine is a key component of next-generation protection. This protection brings machine learning, big-data analysis, in-depth threat research, and the Microsoft cloud infrastructure, to protect devices (or endpoints) in your organization. The main benefits of this major update include performance and prevention improvements, as well as adding support for custom file indicators on macOS and Linux.

- [New Reporting Functionality for Device Control and Windows Defender Firewall](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/new-reporting-functionality-for-device-control-and-windows/ba-p/3290601)<br>We're excited to announce the new Endpoint reporting capabilities within the Microsoft 365 Defender portal. This work brings new endpoint reports together so you can see what is happening in your environment with just a couple clicks. Our reports are designed to provide insight into device behavior and activity while allowing you to take full advantage of the integrated experiences within Microsoft 365 Defender portal, such as device timeline and advanced hunting.

- [Unified submissions in Microsoft 365 Defender now Generally Available!](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/unified-submissions-in-microsoft-365-defender-now-generally/ba-p/3270770)<br>Your security team now has a “one-stop shop” for submitting emails, URLs, email attachments, and files in one, easy-to-use submission experience. To simplify the submission process, we're excited to announce a new unified submissions experience in the Microsoft 365 Defender portal (https://security.microsoft.com). With unified submissions, you can submit files to Microsoft 365 Defender for review from within the portal. We're also adding the ability to submit a file directly from a Microsoft Defender for Endpoint Alert page.  

- [Announcing expanded support and functionality for Live Response APIs](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-expanded-support-and-functionality-for-live-response/ba-p/3178432)<br>We're happy to share that we continue to expand support of existing APIs across all of our supported platforms in Microsoft Defender for Endpoint, alongside announcing new ones that will help simplify and augment organization's response automation and orchestration.

## February 2022

- [The Splunk Add-on for Microsoft Security is now available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/the-splunk-add-on-for-microsoft-security-is-now-available/ba-p/3171272)<br>We're happy to share that the Splunk-supported Splunk Add-on for Microsoft Security is now available. This add-on builds on the Microsoft 365 Defender Add-on for Splunk 1.3.0 and maps the Microsoft Defender for Endpoint Alerts API properties or the Microsoft 365 Defender Incidents API properties onto Splunk's Common Information Model (CIM).

- [Deprecating the legacy SIEM API - Postponed](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/deprecating-the-legacy-siem-api-postponed/ba-p/3139643)<br>We previously announced the SIEM REST API would be deprecated on 4/1/2022. We've listened to customer feedback and the API deprecation has been postponed for now, more details expected in Q3, 2022. We look forward to sharing exciting details about the ​Microsoft 365 Defender APIs in Microsoft Graph in Q3 2022.

## January 2022

- [Vulnerability management for Android and iOS is now generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-general-availability-of-vulnerability-management/ba-p/3071663)<br>With this new cross-platform coverage, threat and vulnerability management capabilities now support all major device platforms across the organization - spanning workstations, servers, and mobile devices. 

- [Microsoft Defender for Endpoint Plan 1 Now Included in Microsoft 365 E3/A3 Licenses](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/microsoft-defender-for-endpoint-plan-1-now-included-in-m365-e3/ba-p/3060639)<br>Starting January 14, Microsoft Defender for Endpoint Plan 1 (P1) will be automatically included in Microsoft 365 E3/A3 licenses.

- [Zero-touch onboarding of Microsoft Defender for Endpoint on iOS now in public preview](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/zero-touch-onboarding-of-microsoft-defender-for-endpoint-on-ios/ba-p/3038045)<br>With this new capability, enterprises can now deploy Microsoft Defender for Endpoint on iOS devices that are enrolled with Microsoft Intune automatically, without needing end-users to interact with the app. This eases the deployment frictions and significantly reduces the time needed to deploy the app across all devices as Microsoft Defender for Endpoint gets silently activated on targeted devices and starts protecting your iOS estate.

