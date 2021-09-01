---
title: Manage Microsoft Defender for Endpoint post migration
description: Now that you've made the switch to Microsoft Defender for Endpoint, your next step is to manage your threat protection features
keywords: post-migration, manage, operations, maintenance, utilization, Microsoft Defender for Endpoint, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-scenario
ms.topic: conceptual
ms.date: 01/26/2021
ms.reviewer: chventou
---

# Manage Microsoft Defender for Endpoint, post migration

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

After you have moved from your previous endpoint protection and antivirus solution to Microsoft Defender for Endpoint, your next step is to manage your features and capabilities. We recommend using [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), which includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Endpoint Configuration Manager](/mem/configmgr/core/understand/introduction), to manage your organization's devices and security settings. However, you can use other tools/methods, such as [Group Policy Objects in Azure Active Directory Domain Services](/azure/active-directory-domain-services/manage-group-policy).

The following table lists various tools/methods you can use, with links to learn more.

<br>

****

|Tool/Method|Description|
|---|---|
|**[Threat and vulnerability management dashboard insights](/windows/security/threat-protection/microsoft-defender-atp/tvm-dashboard-insights)** in the [Microsoft 365 Defender](https://security.microsoft.com/) portal|The threat & vulnerability management dashboard provides actionable information that your security operations team can use to reduce exposure and improve your organization's security posture. <p> See [Threat & vulnerability management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt) and [Overview of Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/use).|
|**[Microsoft Intune](/mem/intune/fundamentals/what-is-intune)**  (recommended)|Microsoft Intune (Intune), a component of [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), focuses on mobile device management (MDM) and mobile application management (MAM). With Intune, you control how your organization's devices are used, including mobile phones, tablets, and laptops. You can also configure specific policies to control applications. <p> See [Manage Microsoft Defender for Endpoint using Intune](manage-atp-post-migration-intune.md).|
|**[Microsoft Endpoint Configuration Manager](/mem/configmgr/core/understand/introduction)**|Microsoft Endpoint Manager (Configuration Manager), formerly known as System Center Configuration Manager, is a component of [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). Configuration Manager is a powerful tool to manage your users, devices, and software. <p> See [Manage Microsoft Defender for Endpoint with Configuration Manager](manage-atp-post-migration-configuration-manager.md).|
|**[Group Policy Objects in Azure Active Directory Domain Services](/azure/active-directory-domain-services/manage-group-policy)**|[Azure Active Directory Domain Services](/azure/active-directory-domain-services/overview) includes built-in Group Policy Objects for users and devices. You can customize the built-in Group Policy Objects as needed for your environment, as well as create custom Group Policy Objects and organizational units (OUs). <p> See [Manage Microsoft Defender for Endpoint with Group Policy Objects](manage-atp-post-migration-group-policy-objects.md).|
|**[PowerShell, WMI, and MPCmdRun.exe](manage-atp-post-migration-other-tools.md)**|*We recommend using Microsoft Endpoint Manager (which includes Intune and Configuration Manager) to manage threat protection features on your organization's devices. However, you can configure some settings, such as Microsoft Defender Antivirus settings on individual devices (endpoints) with PowerShell, WMI, or the MPCmdRun.exe tool.* <p> You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules. See [Configure Microsoft Defender for Endpoint with PowerShell](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-for-endpoint-with-powershell). <p> You can use Windows Management Instrumentation (WMI) to manage Microsoft Defender Antivirus and exclusions. See [Configure Microsoft Defender for Endpoint with WMI](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-for-endpoint-with-windows-management-instrumentation-wmi). <p> You can use the Microsoft Malware Protection Command-Line Utility (MPCmdRun.exe) to manage Microsoft Defender Antivirus and exclusions, as well as validate connections between your network and the cloud. See [Configure Microsoft Defender for Endpoint with MPCmdRun.exe](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-for-endpoint-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe).|
|

## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
