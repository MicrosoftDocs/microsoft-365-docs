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
ms.date: 11/01/2022
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
- [What's new in Microsoft Defender for Office 365](../office-365-security/whats-new-in-defender-for-office-365.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

For more information on Microsoft Defender for Endpoint on specific operating systems:

- [What's new in Defender for Endpoint on Windows](windows-whatsnew.md)
- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)
- [What's new in Defender for Endpoint on Linux](linux-whatsnew.md)

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
- [Security Settings Management in Microsoft Defender for Endpoint is now generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/security-settings-management-in-microsoft-defender-for-endpoint/ba-p/3356970)<br>In late 2021, we announced that Microsoft Defender for Endpoint expanded its configuration management capabilities. This release empowered security teams to configure devices with their desired security settings without needing to deploy and implement other tools or infrastructure.  Made possible with Microsoft Endpoint Manager, organizations have been able to manage antivirus (AV), endpoint detection and response (EDR), and firewall (FW) policies from a single view for all enlisted devices. Today, we're announcing that this capability is now generally available for Windows client and Windows server, supporting Windows 10, Windows 11, and Windows Server 2012 R2 or later.

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
- [Zero-touch onboarding of Microsoft Defender for Endpoint on iOS now in public preview](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/zero-touch-onboarding-of-microsoft-defender-for-endpoint-on-ios/ba-p/3038045)<br>With this new capability, enterprises can now deploy Microsoft Defender for Endpoint on iOS devices that are enrolled with Microsoft Endpoint Manager automatically, without needing end-users to interact with the app. This eases the deployment frictions and significantly reduces the time needed to deploy the app across all devices as Microsoft Defender for Endpoint gets silently activated on targeted devices and starts protecting your iOS estate.

## December 2021

- [Microsoft Defender Vulnerability Management can help identify Log4j vulnerabilities in applications and components](https://www.microsoft.com/security/blog/2021/12/11/guidance-for-preventing-detecting-and-hunting-for-cve-2021-44228-log4j-2-exploitation/#TVM)<br>Threat and vulnerability management automatically and seamlessly identifies devices affected by the Log4j vulnerabilities and the associated risk in the environment and significantly reduces time-to-mitigate. Microsoft continues to iterate on these features based on the latest information from the threat landscape.
- Discover IoT devices (preview): [Device discovery](device-discovery.md) now has the ability to help you find unmanaged IoT devices connected to your corporate network. This gives you a single unified view of your IoT inventory alongside the rest of your IT devices (workstations, servers, and mobile).
- [Microsoft Defender for IoT integration (preview)](enable-microsoft-defender-for-iot-integration.md): This integration enhances your device discovery capabilities with the agentless monitoring capabilities provided by Microsoft Defender for IoT. This provides increased visibility to help locate, identify, and secure the IoT devices in your network.

## November 2021

- [Security configuration management](security-config-management.md) <br/> A capability for devices that aren't managed by a Microsoft Endpoint Manager, either Microsoft Intune or Microsoft Endpoint Configuration Manager, to receive security configurations for Microsoft Defender directly from Endpoint Manager.
- [Evaluation Lab: Expanded OS support & Atomic Red Team simulations](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/evaluation-lab-expanded-os-support-amp-atomic-red-team/ba-p/2993927)<br>the Evaluation Lab now supports adding Windows 11, Windows Server 2016, and Linux devices. In addition, we’d also like to announce a new partnership with Red Canary’s open-source simulation library, Atomic Red Team!
- [Announcing the public preview of Microsoft Defender for Endpoint Mobile - Tamper protection](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-the-public-preview-of-microsoft-defender-for-endpoint/ba-p/2971038)<br>Mark a device non-compliant after seven days of inactivity in the Microsoft Defender for Endpoint mobile app.
- [Boost protection of your Linux estate with behavior monitoring, extended distro coverage, and more](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/boost-protection-of-your-linux-estate-with-behavior-monitoring/ba-p/2909320)<br>We're thrilled to share the latest news about Microsoft Defender for Endpoint on Linux next generation protection, endpoint detection and response (EDR), threat and vulnerability management (TVM). Microsoft protection for your Linux estate is getting an impressive boost across the full spectrum of the security suite. With recent Microsoft Defender for Endpoint on Linux integration into Azure Security Center, the benefits of our Linux EDR and TVM now extend to Azure Defender customers.

## October 2021

- [Updated onboarding and feature parity for Windows Server 2012 R2 and Windows Server 2016 (preview)](configure-server-endpoints.md)<br/> The new unified solution package makes it easier to onboard servers by removing dependencies and installation steps. In addition, this unified solution package comes with many new feature improvements.
- Windows 11 support added to Microsoft Defender for Endpoint and Microsoft 365 Defender.

## September 2021

- [Web content filtering](web-content-filtering.md) <br/>As part of web protection capabilities in Microsoft Defender for Endpoint, web content filtering enables your organization's security team to track and regulate access to websites based on their content categories. Categories include adult content, high bandwidth, legal liability, leisure, and uncategorized. Although many websites that fall into one or more of these categories might not be malicious, they could be problematic because of compliance regulations, bandwidth usage, or other concerns. [Learn more about web content filtering](web-content-filtering.md).

## August 2021

- (Preview) [Microsoft Defender for Endpoint Plan 1](defender-endpoint-plan-1.md) <br/>Defender for Endpoint Plan 1 (preview) is an endpoint protection solution that includes next-generation protection, attack surface reduction, centralized management and reporting, and APIs. Defender for Endpoint Plan 1 (preview) is a new offering for customers who want to try our endpoint protection capabilities, have Microsoft 365 E3, and do not yet have Microsoft 365 E5. 

   To learn more, see [Microsoft Defender for Endpoint Plan 1 (preview)](defender-endpoint-plan-1.md). Existing [Defender for Endpoint](microsoft-defender-endpoint.md) capabilities will be known as Defender for Endpoint Plan 2. 
- (Preview) [Web Content Filtering](web-content-filtering.md)<br>  Web content filtering is part of web protection capabilities in Microsoft Defender for Endpoint. It enables your organization to track and regulate access to websites based on their content categories. Many of these websites, while not malicious, might be problematic because of compliance regulations, bandwidth usage, or other concerns.

## July 2021

- (Preview) [Device health and compliance report](device-health-reports.md) <br>  The device health and compliance report provides high-level information about the devices in your organization.

## June 2021

- [Delta export software vulnerabilities assessment](get-assessment-methods-properties.md#31-methods) API <br> An addition to the [Export assessments of vulnerabilities and secure configurations](get-assessment-methods-properties.md) API collection. <br> Unlike the full software vulnerabilities assessment (JSON response) - which is used to obtain an entire snapshot of the software vulnerabilities assessment of your organization by device - the delta export API call is used to fetch only the changes that have happened between a selected date and the current date (the "delta" API call). Instead of getting a full export with a large amount of data every time, you'll only get specific information on new, fixed, and updated vulnerabilities. Delta export API call can also be used to calculate different KPIs such as "how many vulnerabilities were fixed" or "how many new vulnerabilities were added to an organization."
- [Export assessments of vulnerabilities and secure configurations](get-assessment-methods-properties.md) API <br> Adds a collection of APIs that pull Defender Vulnerability Management data on a per-device basis. There are different API calls to get different types of data: secure configuration assessment, software inventory assessment, and software vulnerabilities assessment. Each API call contains the requisite data for devices in your organization.
- [Remediation activity](get-remediation-methods-properties.md) API <br> Adds a collection of APIs with responses that contain Defender Vulnerability Management remediation activities that have been created in your tenant. Response information types include one remediation activity by ID, all remediation activities, and exposed devices of one remediation activity.
- [Device discovery](device-discovery.md) <br> Helps you find unmanaged devices connected to your corporate network without the need for extra appliances or cumbersome process changes. Using onboarded devices, you can find unmanaged devices in your network and assess vulnerabilities and risks. You can then onboard discovered devices to reduce risks associated with having unmanaged endpoints in your network.

   > [!IMPORTANT]
   > Standard discovery will be the default mode for all customers starting July 19, 2021. You can choose to retain the basic mode through the settings page.

- [Device group definitions](/microsoft-365/security/defender-endpoint/machine-groups) can now include multiple values for each condition. You can set multiple tags, device names, and domains to the definition of a single device group.
- [Mobile Application management support](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-new-capabilities-on-android-and-ios/ba-p/2442730) <br> This enhancement enables Microsoft Defender for Endpoint protect an organization's data within a managed application when Intune is being used to manage mobile applications. For more information about mobile application management, see [this documentation](/mem/intune/apps/mam-faq).
- [Microsoft Tunnel VPN integration](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-new-capabilities-on-android-and-ios/ba-p/2442730) <br> Microsoft Tunnel VPN capabilities are now integrated with Microsoft Defender for Endpoint app for Android. This unification enables organizations to offer a simplified end user experience with one security app – offering both mobile threat defense and the ability to access on-premises resources from their mobile device, while security and IT teams are able to maintain the same admin experiences they are familiar with.
- [Jailbreak detection on iOS](/microsoft-365/security/defender-endpoint/ios-configure-features#conditional-access-with-defender-for-endpoint-on-ios) <br> Jailbreak detection capability in Microsoft Defender for Endpoint on iOS is now generally available. This adds to the phishing protection that already exists.  For more information, see [Setup Conditional Access Policy based on device risk signals](/microsoft-365/security/defender-endpoint/ios-configure-features).


## March 2021
- [Manage tamper protection for your organization using Microsoft 365 Defender portal](manage-tamper-protection-microsoft-365-defender.md) <br> You can manage tamper protection settings on Windows 10, Windows Server 2016, Windows Server 2019, and Windows Server 2022 by using a method called *tenant attach*.


## January 2021

- [Azure Virtual Desktop](https://azure.microsoft.com/services/virtual-desktop/) <br> Microsoft Defender for Endpoint now adds support for Azure Virtual Desktop.
