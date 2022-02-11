---
title: Manage Microsoft Defender for Endpoint using Intune
description: Learn how to manage Microsoft Defender for Endpoint with Intune
keywords: post-migration, manage, operations, maintenance, utilization, intune, Microsoft Defender for Endpoint, edr
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-scenario
ms.topic: article
ms.date: 11/29/2021
ms.reviewer: chventou
---

# Manage Microsoft Defender for Endpoint with Intune

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

We recommend using [Microsoft Endpoint Manager](/mem), which includes Microsoft Intune (Intune) to manage your organization's threat protection features for devices (also referred to as endpoints). [Learn more about Endpoint Manager](/mem/endpoint-manager-overview).

This article describes how to find your Microsoft Defender for Endpoint settings in Intune, and lists various tasks you can perform.

## Find your Microsoft Defender for Endpoint settings in Intune

> [!IMPORTANT]
> You must have either the global administrator or service administrator role assigned in Intune to configure the settings described in this article. To learn more, see **[Types of administrators (Intune)](/mem/intune/fundamentals/users-add#types-of-administrators)**.

1. Go to the Azure portal ([https://portal.azure.com](https://portal.azure.com)) and sign in.

2. Under **Azure Services**, choose **Intune**.

3. In the navigation pane on the left, choose **Device configuration**, and then, under **Manage**, choose **Profiles**.

4. Select an existing profile, or create a new one.

> [!TIP]
> Need help? See **[Using Microsoft Defender for Endpoint with Intune](/mem/intune/protect/advanced-threat-protection#example-of-using-microsoft-defender-atp-with-intune)**.

## Configure Microsoft Defender for Endpoint with Intune

The following table lists various tasks you can perform to configure Microsoft Defender for Endpoint with Intune. You don't have to configure everything all at once; choose a task, read the corresponding resources, and then proceed.

<br/><br/>

|Task|Resources to learn more|
|---|---|
|**Manage your organization's devices using Intune** to protect those devices and data stored on them|[Protect devices with Microsoft Intune](/mem/intune/protect/device-protect)|
|**Integrate Microsoft Defender for Endpoint with Intune** as a Mobile Threat Defense solution <br/>*(for Android devices and devices running Windows 10 or Windows 11)*|[Enforce compliance for Microsoft Defender for Endpoint with Conditional Access in Intune](/mem/intune/protect/advanced-threat-protection)|
|**Use Conditional Access** to control the devices and apps that can connect to your email and company resources|[Configure Conditional Access in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/configure-conditional-access)|
|**Configure Microsoft Defender Antivirus settings** using the Policy configuration service provider ([Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider))|[Device restrictions: Microsoft Defender Antivirus](/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) <br/><br/> [Policy CSP - Microsoft Defender for Endpoint](/windows/client-management/mdm/policy-csp-defender)|
|**If necessary, specify exclusions for Microsoft Defender Antivirus** <br/><br/> *Generally, you shouldn't need to apply exclusions. Microsoft Defender Antivirus includes a number of automatic exclusions based on known operating system behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios.*|[Virus scanning recommendations for Enterprise computers that are running currently supported versions of Windows](https://support.microsoft.com/help/822158/virus-scanning-recommendations-for-enterprise-computers) <br/><br/> [Device restrictions: Microsoft Defender Antivirus Exclusions for Windows 10 and Windows 11 devices](/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions) <br/><br/> [Configure Microsoft Defender Antivirus exclusions on Windows Server 2016 or 2019 or 2022](/windows/security/threat-protection/microsoft-defender-antivirus/configure-server-exclusions-microsoft-defender-antivirus)|
|**Configure your attack surface reduction rules** to target software behaviors that are often abused by attackers <br/><br/> *Configure your attack surface reduction rules in [audit mode](/microsoft-365/security/defender-endpoint/audit-windows-defender) at first (for at least one week and up to two months). You can monitor status using Power BI ([get our template](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Attack%20Surface%20Reduction%20rules)), and then set those rules to active mode when you're ready.*|[Audit mode in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/audit-windows-defender) <br/><br/> [Endpoint protection: Attack Surface Reduction](/mem/intune/protect/endpoint-protection-windows-10?toc=/intune/configuration/toc.json&bc=/intune/configuration/breadcrumb/toc.json#attack-surface-reduction) <br/><br/> [Learn more about attack surface reduction rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction) <br/><br/> [Tech Community blog post: Demystifying attack surface reduction rules - Part 1](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/demystifying-attack-surface-reduction-rules-part-1/ba-p/1306420)|
|**Configure your network filtering** to block outbound connections from any app to IP addresses or domains with low reputations  <br/><br/> *Network filtering is also referred to as [network protection](/microsoft-365/security/defender-endpoint/network-protection).* <br/><br/> *Make sure that Windows 10 and Windows 11 devices have the latest [antimalware platform updates](https://support.microsoft.com/help/4052623/update-for-microsoft-defender-antimalware-platform) installed.*|[Endpoint protection: Network filtering](/mem/intune/protect/endpoint-protection-windows-10#network-filtering) <br/><br/> [Review network protection events in Windows Event Viewer](/microsoft-365/security/defender-endpoint/evaluate-network-protection#review-network-protection-events-in-windows-event-viewer)|
|**Configure controlled folder access** to protect against ransomware <br/><br/> *[Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders) is also referred to as antiransomware protection.*|[Endpoint protection: Controlled folder access](/mem/intune/protect/endpoint-protection-windows-10#controlled-folder-access) <br/><br/> [Enable controlled folder access in Intune](/microsoft-365/security/defender-endpoint/enable-controlled-folders#intune)|
|**Configure exploit protection** to protect your organization's devices from malware that uses exploits to spread and infect other devices <br/><br/> *[Exploit protection](/microsoft-365/security/defender-endpoint/exploit-protection) is also referred to as Exploit Guard.*|[Endpoint protection: Microsoft Defender Exploit Guard](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-exploit-guard) <br/><br/> [Enable exploit protection in Intune](/microsoft-365/security/defender-endpoint/enable-exploit-protection#intune)|
|**Configure Microsoft Defender SmartScreen** to protect against malicious sites and files on the internet. <br/><br/> *Microsoft Edge should be installed on your organization's devices. For protection on Google Chrome and FireFox browsers, configure exploit protection.*|[Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) <br/><br/> [Device restrictions: Microsoft Defender SmartScreen](/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-smartscreen) <br/><br/> [Policy settings for managing SmartScreen in Intune](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings#mdm-settings)|
|**Configure Microsoft Defender Firewall** to block unauthorized network traffic flowing into or out of your organization's devices|[Endpoint protection: Microsoft Defender Firewall](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-firewall) <br/><br/> [Microsoft Defender Firewall with Advanced Security](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security)|
|**Configure encryption and BitLocker** to protect information on your organization's devices running Windows|[Endpoint protection: Windows Encryption](/mem/intune/protect/endpoint-protection-windows-10#windows-encryption) <br/><br/> [BitLocker for Windows 10 and Windows 11 devices](/windows/security/information-protection/bitlocker/bitlocker-overview)|
|**Configure Microsoft Defender Credential Guard** to protect against credential theft attacks|For Windows 10, Windows 11, Windows Server 2016, and Windows Server 2019, and Windows Server 2022, see [Endpoint protection: Microsoft Defender Credential Guard](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-credential-guard) <br/><br/> For Windows 7 SP1, Windows Server 2008 R2 SP1, Windows 8.1, and Windows Server 2012 R2, see [Mitigating Pass-the-Hash (PtH) Attacks and Other Credential Theft, Versions 1 and 2](https://www.microsoft.com/download/details.aspx?id=36036)|
|**Configure Microsoft Defender Application Control** to choose whether to audit or trust apps on your organization's devices <br/><br/> *Microsoft Defender Application Control is also referred to as [AppLocker](/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-overview).*|[Deploy Microsoft Defender Application Control policies by using Microsoft Intune](/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune) <br/><br/> [Endpoint protection: Microsoft Defender Application Control](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-application-control) <br/><br/> [AppLocker CSP](/windows/client-management/mdm/applocker-csp)|
|**Configure device control and USB peripherals access** to help prevent threats in unauthorized peripherals from compromising your devices|[Control USB devices and other removable media using Microsoft Defender for Endpoint and Intune](/windows/security/threat-protection/device-control/control-usb-devices-using-intune)|

## Configure your Microsoft 365 Defender portal

If you haven't already done so, configure your Microsoft 365 Defender portal to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture. See [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender). You can also configure whether and what features end users can see in the Microsoft 365 Defender portal.

- [Overview of Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/use)
- [Endpoint protection: Microsoft 365 Defender](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)

## Next steps

- [Get an overview of threat and vulnerability management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
- [Visit the Microsoft 365 Defender portal security operations dashboard](/microsoft-365/security/defender-endpoint/security-operations-dashboard)
