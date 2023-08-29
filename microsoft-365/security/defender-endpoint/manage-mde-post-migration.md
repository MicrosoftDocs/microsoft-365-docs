---
title: Manage Microsoft Defender for Endpoint after initial setup or migration
description: Now that you've made the switch to Microsoft Defender for Endpoint, your next step is to manage your threat protection features
keywords: post-migration, manage, operations, maintenance, utilization, Microsoft Defender for Endpoint, edr
ms.service: microsoft-365-security
ms.subservice: mde
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 04/17/2023
ms.reviewer: chventou
search.appverid: met150
---

# Manage Microsoft Defender for Endpoint after initial setup or migration

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

After you have set up and configured Microsoft Defender for Endpoint, your next step is to manage your features and capabilities. We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) to manage your organization's devices and security settings. However, you can use other tools/methods, such as [Microsoft Configuration Manager](/mem/configmgr/core/understand/introduction) or [Group Policy Objects in Azure Active Directory Domain Services](/azure/active-directory-domain-services/manage-group-policy).

The following table lists various tools/methods you can use, with links to learn more.

|Tool/Method|Description|
|---|---|
|**[Microsoft Defender Vulnerability Management dashboard insights](/windows/security/threat-protection/microsoft-defender-atp/tvm-dashboard-insights)** in the [Microsoft 365 Defender](https://security.microsoft.com/) portal|The Defender Vulnerability Management dashboard provides actionable information that your security operations team can use to reduce exposure and improve your organization's security posture. <br/><br/> See [Defender Vulnerability Management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt) and [Overview of Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/use).|
|**[Microsoft Intune](/mem/intune/fundamentals/what-is-intune)** | Intune provides mobile device management (MDM) and mobile application management (MAM) capabilities. With Intune, you control how your organization's devices are used, including mobile phones, tablets, and laptops. You can also configure specific policies to control applications. <br/><br/> See [Manage Microsoft Defender for Endpoint using Intune](manage-mde-post-migration-intune.md).|
|**[Microsoft Configuration Manager](/mem/configmgr/core/understand/introduction)**|Microsoft Configuration Manager, formerly known as System Center Configuration Manager, is a powerful tool to manage your users, devices, and software. <br/><br/> See [Manage Microsoft Defender for Endpoint with Configuration Manager](manage-mde-post-migration-configuration-manager.md).|
|**[Group Policy Objects in Azure Active Directory Domain Services](/azure/active-directory-domain-services/manage-group-policy)**|[Azure Active Directory Domain Services](/azure/active-directory-domain-services/overview) includes built-in Group Policy Objects for users and devices. You can customize the built-in Group Policy Objects as needed for your environment, as well as create custom Group Policy Objects and organizational units (OUs). <br/><br/> See [Manage Microsoft Defender for Endpoint with Group Policy Objects](manage-mde-post-migration-group-policy-objects.md).|
|**[PowerShell, WMI, and MPCmdRun.exe](manage-mde-post-migration-other-tools.md)**|*We recommend using Microsoft Intune or Configuration Manager to manage threat protection features on your organization's devices. However, you can configure some settings, such as Microsoft Defender Antivirus settings on individual devices (endpoints) with PowerShell, WMI, or the MPCmdRun.exe tool.* <br/><br/> You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules. See [Configure Microsoft Defender for Endpoint with PowerShell](manage-mde-post-migration-other-tools.md#configure-microsoft-defender-for-endpoint-with-powershell). <br/><br/> You can use Windows Management Instrumentation (WMI) to manage Microsoft Defender Antivirus and exclusions. See [Configure Microsoft Defender for Endpoint with WMI](manage-mde-post-migration-other-tools.md#configure-microsoft-defender-for-endpoint-with-windows-management-instrumentation-wmi). <br/><br/> You can use the Microsoft Malware Protection Command-Line Utility (MPCmdRun.exe) to manage Microsoft Defender Antivirus and exclusions, as well as validate connections between your network and the cloud. See [Configure Microsoft Defender for Endpoint with MPCmdRun.exe](manage-mde-post-migration-other-tools.md#configure-microsoft-defender-for-endpoint-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe).|


## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
