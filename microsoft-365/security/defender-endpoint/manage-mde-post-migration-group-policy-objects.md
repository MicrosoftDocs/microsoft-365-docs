---
title: Manage Microsoft Defender for Endpoint using Group Policy Objects
description: Learn how to manage Microsoft Defender for Endpoint with Group Policy Objects
keywords: post-migration, manage, operations, maintenance, utilization, PowerShell, Microsoft Defender for Endpoint, edr
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.date: 01/27/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.reviewer: chventou
search.appverid: met150
---

# Manage Microsoft Defender for Endpoint with Group Policy Objects

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) or [Configuration Manager](/mem/configmgr/core/understand/introduction) to manage Defender for Endpoint settings. However, you can use Group Policy Objects in Azure Active Directory Domain Services to manage some of your Defender for Endpoint settings.

## Configure Microsoft Defender for Endpoint with Group Policy Objects

> [!NOTE]
> If you're using [the new, unified Microsoft Defender for Endpoint solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-functionality-in-the-modern-unified-solution-for-windows-server-2012-r2-and-2016-preview), please ensure you are using the latest ADMX files in your central store to get access to the correct Microsoft Defender for Endpoint policy options. Please reference [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) and download the latest files **for use with Windows 10**. 

The following table lists various tasks you can perform to configure Microsoft Defender for Endpoint with Group Policy Objects.

|Task|Resources to learn more|
|---|---|
|**Manage settings for user and computer objects** <br/><br/> *Customize built-in Group Policy Objects, or create custom Group Policy Objects and organizational units to suit your organizational needs.*|[Administer Group Policy in an Azure Active Directory Domain Services managed domain](/azure/active-directory-domain-services/manage-group-policy)|
|**Configure Microsoft Defender Antivirus** <br/><br/> *Configure antivirus features & capabilities, including policy settings, exclusions, remediation, and scheduled scans on your organization's devices (also referred to as endpoints).*|[Use Group Policy settings to configure and manage Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus) <br/><br/> [Use Group Policy to enable cloud-delivered protection](/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus#use-group-policy-to-enable-cloud-delivered-protection)|
|**Manage your organization's attack surface reduction rules** <br/><br/> *Customize your attack surface reduction rules by excluding files & folders, or by adding custom text to notification alerts that appear on users' devices.*|[Customize attack surface reduction rules with Group Policy Objects](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-deployment-implement)|
|**Manage exploit protection settings** <br/><br/> *You can customize your exploit protection settings, import a configuration file, and then use Group Policy to deploy that configuration file.*|[Customize exploit protection settings](/microsoft-365/security/defender-endpoint/customize-exploit-protection) <br/><br/> [Import, export, and deploy exploit protection configurations](/microsoft-365/security/defender-endpoint/import-export-exploit-protection-emet-xml) <br/><br/> [Use Group Policy to distribute the configuration](/microsoft-365/security/defender-endpoint/import-export-exploit-protection-emet-xml#use-group-policy-to-distribute-the-configuration)|
|**Enable Network Protection** to help prevent employees from using apps that malicious content on the Internet <br/><br/> *We recommend using [audit mode](/microsoft-365/security/defender-endpoint/evaluate-network-protection) at first for network protection in a test environment to see which apps would be blocked before rolling out.*|[Turn on network protection using Group Policy](/microsoft-365/security/defender-endpoint/enable-network-protection#group-policy)|
|**Configure controlled folder access** to protect against ransomware <br/><br/> *[Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders) is also referred to as antiransomware protection.*|[Enable controlled folder access using Group Policy](/microsoft-365/security/defender-endpoint/enable-controlled-folders#group-policy)|
|**Configure Microsoft Defender SmartScreen** to protect against malicious sites and files on the internet.|[Configure Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings using Group Policy](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings#group-policy-settings)|
|**Configure encryption and BitLocker** to protect information on your organization's devices running Windows|[BitLocker Group Policy settings](/windows/security/information-protection/bitlocker/bitlocker-group-policy-settings)|
|**Configure Microsoft Defender Credential Guard** to protect against credential theft attacks|[Enable Windows Defender Credential Guard by using Group Policy](/windows/security/identity-protection/credential-guard/credential-guard-manage#enable-windows-defender-credential-guard-by-using-group-policy)|

## Configure your Microsoft 365 Defender portal

If you haven't already done so, configure your Microsoft 365 Defender portal to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture. See [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender). You can also configure whether and what features end users can see in the Microsoft 365 Defender portal.

- [Overview of Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/use)
- [Endpoint protection: Microsoft 365 Defender](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)

## Next steps

- [Get an overview of Defender Vulnerability Management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
