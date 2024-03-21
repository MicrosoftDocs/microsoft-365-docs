---
title: What's new in Microsoft Defender for Endpoint - Before 2023
description: See what features were available for Microsoft Defender for Endpoint in the releases before 2023.
search.appverid: met150
ms.service: defender-endpoint
ms.author: Denise Vangel
author: denisebmsft
ms.localizationpriority: medium
ms.date: 03/21/2024
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
---

# What's new in Microsoft Defender for Endpoint - Before 2023

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink) and (https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-pullalerts-abovefoldlink).

The following features are in preview or generally available (GA) in the latest release of Microsoft Defender for Endpoint.

For more information on preview features, see [Preview features](preview.md).

For more information on what's new with Microsoft Defender for Endpoint on Windows, see:
[What's new in Microsoft Defender for Endpoint on Windows](windows-whatsnew.md)

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft Defender XDR](../defender/whats-new.md)
- [What's new in Microsoft Defender for Office 365](../office-365-security/defender-for-office-365-whats-new.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

For more information on Microsoft Defender for Endpoint on specific operating systems and on other operating systems:

- [What's new in Defender for Endpoint on Windows](windows-whatsnew.md)
- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on Linux](linux-whatsnew.md)
- [What's new in Defender for Endpoint on Android](android-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)

## December 2022

- Microsoft Defender for Endpoint Device control removable storage access control updates:
    1. Microsoft Intune support for removable storage access control is now available. See [Deploy and manage device control with Intune](device-control-deploy-manage-intune.md).
    2. The new default enforcement policy of removable storage access control is designed for all device control features. Printer Protection is now available for this policy. If you create a Default Deny policy, printers will be blocked in your organization.
        - Intune: *./Vendor/MSFT/Defender/Configuration/DefaultEnforcement* <br> See [Deploy and manage device control using Intune](device-control-deploy-manage-intune.md)
        - Group policy: *Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus > Features > Device Control > Select Device Control Default Enforcement*<br> See [Deploy and manage device control with Group Policy](device-control-deploy-manage-gpo.md)

- Microsoft Defender for Endpoint Device control New Printer Protection solution to manage printer is now available. For more information, see [Device control policies](device-control-policies.md).

## November 2022

- [Built-in protection](built-in-protection.md) is now generally available. Built-in protection helps protect your organization from ransomware and other threats with default settings that help ensure that your devices are protected.

## October 2022

[Network protection C2 detection and remediation is now generally available](network-protection.md#block-command-and-control-attacks). <br/>Attackers often compromise existing internet-connected servers to become their command and control servers. Attackers can use the compromised servers to hide malicious traffic and deploy malicious bots that are used to infect endpoints. Network protection detection and remediation helps improve the time it takes for the security operations (SecOps) teams to pinpoint and respond to malicious network threats that are looking to compromise endpoints.

## September 2022

- [Attack surface reduction rules report now available in the Microsoft Defender portal](attack-surface-reduction-rules-report.md). <br/>The attack surface reduction rules report is now available in the Microsoft Defender portal. This ASR report provides information about the attack surface reduction rules that are applied to devices in your organization and helps you detect threats, block potential threats, and get visibility into ASR and device configuration.
- [Built-in protection](built-in-protection.md) (preview) is rolling out. Built-in protection is a set of default settings, such as tamper protection turned on, to help protect devices from ransomware and other threats.
- [Device health reporting is now generally available](device-health-reports.md). <br/>The device health report provides information about the health and security of your endpoints. The report includes trending information showing the sensor health state, antivirus status, OS platforms, Windows 10 versions, and Microsoft Defender Antivirus update versions.
- [Device health reporting is now available for US Government customers using Defender for Endpoint](device-health-reports.md). <br/>Device health reporting is now available for GCC, GCC High, and DoD customers.
- [Troubleshooting mode](enable-troubleshooting-mode.md) is now available for more Windows operating systems, including Windows Server 2012 R2 and higher. For more information about the required updates, see [Troubleshooting mode](enable-troubleshooting-mode.md).

## August 2022

- [Device health status](investigate-machines.md#device-health-status)<br>The Device health status card shows a summarized health report for the specific device.

- [Device health reporting (Preview)](/microsoft-365/security/defender-endpoint/machine-reports)<br> The devices status report provides high-level information about the devices in your organization. The report includes trending information showing the sensor health state, antivirus status, OS platforms, and Windows 10 versions.

- [Tamper protection on macOS is now generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/tamper-protection-on-macOS-is-now-generally-available/ba-p/3595422)<br> This feature will be released with audit mode enabled by default, and you can decide whether to enforce (block) or turn off the capability. Later this year, we'll offer a gradual rollout mechanism that will automatically switch endpoints to "block" mode;  this mechanism applies only if you haven't made a choice to either enable ("block" mode) or disable the capability.

- [Network Protection and Web Protection for macOS and Linux is now in Public Preview!](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/network-protection-and-web-protection-for-macOS-and-linux-is-now/ba-p/3601576)<br>Network Protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet. It's the foundation on which our Web Protection for Microsoft Defender for Endpoint is built. These capabilities include Web threat protection, Web content filtering, and IP/URL Custom indicators. Web protection enables you to secure your devices against web threats and helps to regulate unwanted content.

- [Improved Microsoft Defender for Endpoint onboarding for Windows Server 2012 R2 and Windows Server 2016](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2207#improved-microsoft-defender-for-endpoint-mde-onboarding-for-windows-server-2012-r2-and-windows-server-2016)<br>Configuration Manager version 2207 now supports automatic deployment of modern, unified Microsoft Defender for Endpoint for Windows Server 2012 R2 & 2016. Windows Server 2012 and 2016 devices that are targeted with Microsoft Defender for Endpoint onboarding policy will use the unified agent versus the existing Microsoft Monitoring Agent-based solution, if configured through Client Settings.

## July 2022

- [Add domain controller devices - Evaluation lab enhancement](evaluation-lab.md#add-a-domain-controller)<br>Now generally available - Add a domain controller to run complex scenarios such as lateral movement and multistage attacks across multiple devices.

- [Announcing File page enhancements in Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-file-page-enhancements-in-microsoft-defender-for/ba-p/3584004)<br>Have you ever investigated files in Microsoft Defender for Endpoint? We now make it even easier with our recent announcement of enhancements to the File page and side panel. Users can now streamline processes by having a more efficient navigation experience that hosts all this information in one place.

- [Introducing the new alert suppression experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-the-new-alert-suppression-experience/ba-p/3562719)<br>We're excited to share that the new and advanced alert suppression experience is now Generally Available. The new experience provides tighter granularity and control, allowing users to tune Microsoft Defender for Endpoint alerts.

- [Prevent compromised unmanaged devices from moving laterally in your organization with "Contain](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/prevent-compromised-unmanaged-devices-from-moving-laterally-in/ba-p/3482134)<br>Starting today, when a device that isn't enrolled in Microsoft Defender for Endpoint is suspected of being compromised, as an SOC analyst, you'll be able to "Contain" it. As a result, any device enrolled in Microsoft Defender for Endpoint will now block any incoming/outgoing communication with the suspected device.

- [Mobile device support is now available for US Government Customers using Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/mobile-device-support-is-now-available-for-us-government/ba-p/3472590)<br>Microsoft Defender for Endpoint for US Government customers is built in the Azure US Government environment and uses the same underlying technologies as Defender in Azure Commercial. This offering is available to GCC, GCC High, and DoD customers, and it further extends our platform availability from Windows, macOS, and Linux, to Android and iOS devices.

## June 2022

- [Defender for Servers Plan 2 now integrates with MDE unified solution](https://techcommunity.microsoft.com/t5/microsoft-defender-for-cloud/defender-for-servers-plan-2-now-integrates-with-mde-unified/ba-p/3527534)<br>You can now start deploying the modern, unified solution for Windows Server 2012 R2 and 2016 to servers covered by Defender for Servers Plan 2, using a single button.

- [Mobile Network Protection in Microsoft Defender for Endpoint on Android & iOS now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/mobile-network-protection-in-microsoft-defender-for-endpoint-on/ba-p/3559121)<br>Microsoft offers a mobile network protection feature in Defender for Endpoint that helps organizations identify, assess, and remediate endpoint weaknesses with the help of robust threat intelligence. We're delighted to announce that users can now benefit from this new feature on both Android and iOS platforms that have Microsoft Defender for Endpoint.

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]

## October 2021

- [Updated onboarding and feature parity for Windows Server 2012 R2 and Windows Server 2016 (preview)](configure-server-endpoints.md)<br> The new unified solution package makes it easier to onboard servers by removing dependencies and installation steps. In addition, this unified solution package comes with many new feature improvements.

- Windows 11 support added to Microsoft Defender for Endpoint and Microsoft 365 Defender.

## September 2021

[Web content filtering](web-content-filtering.md) <br/>As part of web protection capabilities in Microsoft Defender for Endpoint, web content filtering enables your organization's security team to track and regulate access to websites based on their content categories. Categories include adult content, high bandwidth, legal liability, leisure, and uncategorized. Although many websites that fall into one or more of these categories might not be malicious, they could be problematic because of compliance regulations, bandwidth usage, or other concerns. [Learn more about web content filtering](web-content-filtering.md).

## August 2021

- (Preview) [Microsoft Defender for Endpoint Plan 1 ](defender-endpoint-plan-1.md) <br/>Defender for Endpoint Plan 1 (preview) is an endpoint protection solution that includes next-generation protection, attack surface reduction, centralized management and reporting, and APIs. Defender for Endpoint Plan 1 (preview) is a new offering for customers who:
    - Want to try our endpoint protection capabilities
    - Have Microsoft 365 E3, and
    - Don't yet have Microsoft 365 E5

For more information on Defender for Endpoint Plan 1 (preview), see [Microsoft Defender for Endpoint Plan 1 (preview)](defender-endpoint-plan-1.md). 

Existing [Defender for Endpoint](microsoft-defender-endpoint.md) capabilities will be known as Defender for Endpoint Plan 2.

- (Preview) [Web Content Filtering](web-content-filtering.md)<br>  Web content filtering is part of web protection capabilities in Microsoft Defender for Endpoint. It enables your organization to track and regulate access to websites based on their content categories. Many of these websites, while not malicious, might be problematic because of compliance regulations, bandwidth usage, or other concerns.

## July 2021

- (Preview) [Device health and compliance report](machine-reports.md) <br>  The device health and compliance report provides high-level information about the devices in your organization.

## June 2021

- [Delta export software vulnerabilities assessment](get-assessment-methods-properties.md#31-methods) API <br> An addition to the [Export assessments of vulnerabilities and secure configurations](get-assessment-methods-properties.md) API collection. <br> Unlike the full software vulnerabilities assessment (JSON response) - which is used to obtain an entire snapshot of the software vulnerabilities assessment of your organization by device - the delta export API call is used to fetch only the changes that have happened between a selected date and the current date (the "delta" API call). Instead of getting a full export with a large amount of data every time, you'll only get specific information on new, fixed, and updated vulnerabilities. Delta export API call can also be used to calculate different KPIs such as "how many vulnerabilities were fixed" or "how many new vulnerabilities were added to an organization."

- [Export assessments of vulnerabilities and secure configurations](get-assessment-methods-properties.md) API <br> Adds a collection of APIs that pull threat and vulnerability management data on a per-device basis. There are different API calls to get different types of data: secure configuration assessment, software inventory assessment, and software vulnerabilities assessment. Each API call contains the requisite data for devices in your organization.

- [Remediation activity](get-remediation-methods-properties.md) API <br>  Adds a collection of APIs with responses that contain threat and vulnerability management remediation activities that have been created in your tenant. Response information types include one remediation activity by ID, all remediation activities, and exposed devices of one remediation activity.

- [Device discovery](device-discovery.md) <br> Helps you find unmanaged devices connected to your corporate network without the need for extra appliances or cumbersome process changes. Using onboarded devices, you can find unmanaged devices in your network and assess vulnerabilities and risks. You can then onboard discovered devices to reduce risks associated with having unmanaged endpoints in your network.

   > [!IMPORTANT]
   > Standard discovery will be the default mode for all customers starting July 19, 2021. You can choose to retain the "basic mode" through the **Settings** page.

- [Device group definitions](/microsoft-365/security/defender-endpoint/machine-groups) can now include multiple values for each condition. You can set multiple tags, device names, and domains to the definition of a single device group.

- [Mobile Application management support](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-new-capabilities-on-android-and-ios/ba-p/2442730) <br> This enhancement enables Microsoft Defender for Endpoint protect an organization’s data within a managed application when Intune is being used to manage mobile applications. For more information about mobile application management, see [this documentation](/microsoft-365/mem/intune/apps/mam-faq).

- [Microsoft Tunnel VPN integration](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-new-capabilities-on-android-and-ios/ba-p/2442730) <br> Microsoft Tunnel VPN capabilities are now integrated with Microsoft Defender for Endpoint app for Android. This unification enables organizations to offer a simplified end-user experience with one security app – offering both mobile threat defense and the ability to access on-prem resources from their mobile device – while security and IT teams are able to maintain the same admin experiences they are familiar with.

- [Jailbreak detection on iOS](/microsoft-365/security/defender-endpoint/ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios) <br> Jailbreak detection capability in Microsoft Defender for Endpoint on iOS is now generally available. This adds to the phishing protection that already exists. For more information, see [Setup Conditional Access Policy based on device risk signals](/microsoft-365/security/defender-endpoint/ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios).

## March 2021

[Manage tamper protection using the Microsoft Defender Security Center](prevent-changes-to-security-settings-with-tamper-protection.md#manage-tamper-protection-for-your-organization-using-the-microsoft-365-defender-portal) <br> You can manage tamper protection settings on Windows 10, Windows Server 2016, Windows Server 2019, and Windows Server 2022 by using a method called *tenant attach*.

## January 2021

[Windows Virtual Desktop](https://azure.microsoft.com/services/virtual-desktop/) <br> Microsoft Defender for Endpoint now adds support for Windows Virtual Desktop.

## December 2020

- [Microsoft Defender for Endpoint for iOS](microsoft-defender-atp-ios.md) <br> Microsoft Defender for Endpoint now adds support for iOS. Learn how to install, configure, update, and use Microsoft Defender for Endpoint for iOS.

## September 2020

- [Microsoft Defender for Endpoint for Android](microsoft-defender-atp-android.md) <br> Microsoft Defender for Endpoint now adds support for Android. The article [Microsoft Defender for Endpoint for Android](microsoft-defender-atp-android.md) enables you learn how to install, configure, update, and use Microsoft Defender for Endpoint for Android.
- [Threat and vulnerability management macOS support](tvm-supported-os.md)<br> Threat and vulnerability management for macOS is now in public preview, and will continuously detect vulnerabilities on your macOS devices to help you prioritize remediation by focusing on risk. For more information, see [Microsoft Tech Community blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/microsoft-defender-for-endpoint-adds-depth-and-breadth-to-threat/ba-p/1695824).

## August 2020

- [Microsoft Defender for Endpoint for Android](microsoft-defender-atp-android.md) <br> Microsoft Defender for Endpoint now adds support for Android. The article [Microsoft Defender for Endpoint for Android](microsoft-defender-atp-android.md) enables you learn how to install, configure, and use Microsoft Defender for Endpoint for Android.

## July 2020

[Create indicators for certificates](manage-indicators.md) <br> Create indicators to allow or block certificates.

## June 2020

- [Microsoft Defender for Endpoint for Linux](microsoft-defender-atp-linux.md) <br> Microsoft Defender for Endpoint now adds support for Linux. This article [Microsoft Defender for Endpoint for Linux](microsoft-defender-atp-linux.md) enables you learn how to install, configure, update, and use Microsoft Defender for Endpoint for Linux.

- [Attack simulators in the evaluation lab](evaluation-lab.md#threat-simulator-scenarios) <br> Microsoft Defender for Endpoint has partnered with various threat simulation platforms to give you convenient access to test the capabilities of the platform right from within the portal.

## April 2020

- [Threat & Vulnerability Management API support](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/exposed-apis-list) <BR>Run Threat & Vulnerability Management-related API calls such as get your organization's threat exposure score or device secure score, software and device vulnerability inventory, software version distribution, device vulnerability information, and security recommendation information. For more information, see [Microsoft Tech Community blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/threat-amp-vulnerability-management-apis-are-now-generally/ba-p/1304615).

## November-December 2019

- [Microsoft Defender for Endpoint for Mac](microsoft-defender-atp-mac.md) <BR> Microsoft Defender for Endpoint for Mac brings the next-generation protection to Mac devices. Core components of the unified endpoint security platform will now be available for Mac devices, including [endpoint detection and response](endpoint-detection-response-mac-preview.md).
 
- [Threat & Vulnerability Management application and application version end-of-life information](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation) <BR>Applications and application versions which have reached their end of life (EOL) are tagged or labeled as such; so, you are aware that they will no longer be supported, and can take action to either uninstall or replace. Doing so will help lessen the risks related to various vulnerability exposures due to unpatched applications.

- [Threat & Vulnerability Management Advanced Hunting Schemas](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-schema-reference) <BR>Use the Threat & Vulnerability Management tables in the Advanced hunting schema to query about software inventory, vulnerability knowledgebase, security configuration assessment, and security configuration knowledgebase.
 
 - [Threat & Vulnerability Management role-based access controls](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group) <BR>Use the new permissions to allow maximum flexibility to create SecOps-oriented roles, Threat & Vulnerability Management-oriented roles, or hybrid roles so that only authorized users are accessing specific data to do their task. You can also achieve even further granularity by specifying whether a Threat & Vulnerability Management role can only view vulnerability-related data, or can create and manage remediation and exceptions.

- [Device health and compliance report](machine-reports.md) <br/> The device health and compliance report provides high-level information about the devices in your organization.

## October 2019

- [Indicators for IP addresses, URLs/Domains](manage-indicators.md) <BR> You can now allow or block URLs/domains using your own threat intelligence.

- [Microsoft Threat Experts - Experts on Demand](microsoft-threat-experts.md) <BR> You now have the option to consult with Microsoft Threat Experts from several places in the portal to help you in the context of your investigation. 

- [Connected Azure AD applications](connected-applications.md)<br> The **Connected applications** page provides information about the Azure AD applications connected to Microsoft Defender for Endpoint in your organization. 

- [API Explorer](api-explorer.md)<br> The API explorer makes it easy to construct and execute API queries, and to test and send requests for any available Microsoft Defender for Endpoint API endpoint.

## September 2019

- [Tamper Protection settings using Intune](../microsoft-defender-antivirus/prevent-changes-to-security-settings-with-tamper-protection.md#turn-tamper-protection-on-or-off-for-your-organization-using-intune)<br/>You can now turn on Tamper Protection (or turn off) for your organization in the Microsoft 365 Device Management Portal (Intune).

- [Live response](live-response.md)<BR> Get instantaneous access to a device using a remote shell connection. Do in-depth investigative work and take immediate response actions to promptly contain identified threats - real time.

- [Evaluation lab](evaluation-lab.md) <BR> The Microsoft Defender for Endpoint evaluation lab is designed to eliminate the complexities of device and environment configuration so that you can
 focus on evaluating the capabilities of the platform; running simulations; and seeing the prevention, detection, and remediation features in action.

- [Windows Server 2008 R2 SP1](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-server-endpoints#windows-server-2008-r2-sp1--windows-server-2012-r2-and-windows-server-2016) <BR> You can now onboard Windows Server 2008 R2 SP1.

## June 2019

- [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) <BR> A new built-in capability that uses a risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.
  
- [Device health and compliance report](machine-reports.md)  The device health and compliance report provides high-level information about the devices in your organization.

## May 2019

- [Threat protection reports](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-protection-reports-windows-defender-advanced-threat-protection)<BR>The threat protection report provides high-level information about alerts generated in your organization.

- [Microsoft Threat Experts](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/microsoft-threat-experts)<BR> Microsoft Threat Experts is the new managed threat hunting service in Microsoft Defender for Endpoint that provides proactive hunting, prioritization, and additional context and insights that further empower security operations centers (SOCs) to identify and respond to threats quickly and accurately. It provides an additional layer of expertise and optics that Microsoft customers can utilize to augment security operation capabilities as part of Microsoft 365.  

- [Indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/ti-indicator) <BR> APIs for indicators are now generally available.


- [Interoperability](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/partner-applications) <BR> Microsoft Defender for Endpoint supports third-party applications to help enhance the detection, investigation, and threat intelligence capabilities of the platform.

## April 2019

- [Microsoft Threat Experts Targeted Attack Notification capability](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts#targeted-attack-notification) <BR> Microsoft Threat Experts' Targeted Attack Notification alerts are tailored for organizations to provide as much information as can be quickly delivered, thus bringing attention to critical threats in their network, including the timeline, scope of breach, and the methods of intrusion.

- [Microsoft Defender for Endpoint API](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/apis-intro) <BR> Microsoft Defender for Endpoint exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Microsoft Defender for Endpoint capabilities.

## February 2019

- [Incidents](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/incidents-queue) <BR> Incident is a new entity in Microsoft Defender for Endpoint that brings together all relevant alerts and related entities to narrate the broader-attack story, giving analysts better perspective on the purview of complex threats.
- [Onboard previous versions of Windows](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/onboard-downlevel-windows-defender-advanced-threat-protection)<BR> Onboard supported versions of Windows devices so that they can send sensor data to the Microsoft Defender for Endpoint sensor.

## October 2018

- [Attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)<BR>All Attack surface reduction rules are now supported on Windows Server 2019.

- [Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard)<BR> Controlled folder access is now supported on Windows Server 2019.

- [Custom detection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-custom-detections)<BR>With custom detections, you can create custom queries to monitor events for any kind of behavior such as suspicious or emerging threats. This can be done by leveraging the power of advanced hunting through the creation of custom detection rules.

- [Integration with Azure Security Center](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-server-endpoints-windows-defender-advanced-threat-protection#integration-with-azure-security-center)<BR> Microsoft Defender for Endpoint integrates with Azure Security Center to provide a comprehensive server protection solution. With this integration, Azure Security Center can leverage the power of Microsoft Defender for Endpoint to provide improved threat detection for Windows Servers.

- [Managed security service provider (MSSP) support](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/mssp-support-windows-defender-advanced-threat-protection)<BR> Microsoft Defender for Endpoint adds support for this scenario by providing MSSP integration. The integration allows MSSPs to take the following actions: Get access to MSSP customer's Microsoft Defender Security Center portal, fetch email notifications, and fetch alerts through security information and event management (SIEM) tools.

- [Removable device control](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/19/windows-defender-atp-has-protections-for-usb-and-removable-devices/)<BR>Microsoft Defender for Endpoint provides multiple monitoring and control features to help prevent threats from removable devices, including new settings to allow or block specific hardware IDs.

- [Support for iOS and Android devices](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-endpoints-non-windows-windows-defender-advanced-threat-protection#turn-on-third-party-integration)<BR> iOS and Android devices are now supported and can be onboarded to the service.

- [Threat analytics](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-analytics)<BR>
Threat Analytics is a set of interactive reports published by the Microsoft Defender for Endpoint research team as soon as emerging threats and outbreaks are identified. The reports help security operations teams assess impact on their environment and provide recommended actions to contain, increase organizational resilience, and prevent specific threats.

- New in Windows 10 version 1809, there are two new attack surface reduction rules:
  - Block Adobe Reader from creating child processes
  - Block Office communication application from creating child processes

- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)

- Antimalware Scan Interface (AMSI) was extended to cover Office VBA macros as well. [Office VBA + AMSI: Parting the veil on malicious macros](https://cloudblogs.microsoft.com/microsoftsecure/2018/09/12/office-vba-amsi-parting-the-veil-on-malicious-macros/).
    - Microsoft Defender Antivirus, new in Windows 10 version 1809, can now [run within a sandbox](https://www.microsoft.com/security/blog/2018/10/26/windows-defender-antivirus-can-now-run-in-a-sandbox) (preview), increasing its security.
    - [Configure CPU priority settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-advanced-scan-types-microsoft-defender-antivirus) for Microsoft Defender Antivirus scans.

## March 2018

- [Advanced Hunting](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection) <BR>Query data using advanced hunting in Microsoft Defender for Endpoint.

- [Attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)<BR>The newly introduced attack surface reduction rules are: 
  - Use advanced protection against ransomware
  - Block credential stealing from the Windows local security authority subsystem (lsass.exe)
  - Block process creations originating from PSExec and WMI commands
  - Block untrusted and unsigned processes that run from USB
  - Block executable content from email client and webmail

- [Automated investigation and remediation](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)<BR> Use Automated investigations to investigate and remediate threats.

  > [!NOTE]
  > Available from Windows 10, version 1803 or later.

- [Conditional Access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection) <br> Enable conditional access to better protect users, devices, and data.

- [Microsoft Defender for Endpoint Community center](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/community-windows-defender-advanced-threat-protection)<BR>The Microsoft Defender for Endpoint Community Center is a place where community members can learn, collaborate, and share experiences about the product.

- [Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard)<BR>You can now block untrusted processes from writing to disk sectors using Controlled Folder Access.

- [Onboard non-Windows devices](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-endpoints-non-windows-windows-defender-advanced-threat-protection)<BR>Microsoft Defender for Endpoint provides a centralized security operations experience for Windows and non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft Defender Security Center and better protect your organization's network.

- [Role-based access control (RBAC)](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)<BR>Using role-based access control (RBAC), you can create roles and groups within your security operations team to grant appropriate access to the portal.

- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)<BR>Microsoft Defender Antivirus now shares detection status between M365 services and interoperates with Microsoft Defender for Endpoint. For more information, see [Use next-gen technologies in Microsoft Defender Antivirus through cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus).

Block at first sight can now block non-portable executable files (such as JS, VBS, or macros) and executable files. For more information, see [Enable block at first sight](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus).