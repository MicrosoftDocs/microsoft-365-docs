---
title: Onboard devices and configure Microsoft Defender for Endpoint capabilities
description: Onboard Windows 10 devices, servers, non-Windows devices and learn how to run a detection test.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365-initiative-defender-endpoint
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Onboard devices and configure Microsoft Defender for Endpoint capabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

Deploying Microsoft Defender for Endpoint is a two-step process.

- Onboard devices to the service
- Configure capabilities of the service

:::image type="content" source="images/deployment-steps.png" alt-text="The onboarding and configuration process" lightbox="images/deployment-steps.png":::

## Role-based access control

We recommend using Privileged Identity Management to manage your roles to provide additional auditing, control, and access review for users with directory permissions.

Defender for Endpoint supports two ways to manage permissions:

- **Basic permissions management**: Sets permissions to either full access or read-only. Users with global administrator or security administrator roles in Azure Active Directory (Azure AD) have full access. The security reader role has read-only access and does not grant access to view machines/device inventory.

- **Role-based access control (RBAC)**: Sets granular permissions by defining roles, assigning Azure AD user groups to the roles, and granting the user groups access to device groups. For more information. see [Manage portal access using role-based access control](rbac.md).
    > [!NOTE]
    > Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

We recommend leveraging RBAC to ensure that only users that have a business justification can access Defender for Endpoint.

## Onboard devices to the service
You'll need to go the onboarding section of the Defender for Endpoint portal to onboard any of the supported devices. Depending on the device, you'll be guided with appropriate steps and provided management and deployment tool options suitable for the device. 

To onboard devices to the service:

- Verify that the device fulfills the [minimum requirements](minimum-requirements.md)
- Depending on the device, follow the configuration steps provided in the onboarding section of the Defender for Endpoint portal
- Use the appropriate management tool and deployment method for your devices
- Run a detection test to verify that the devices are properly onboarded and reporting to the service

This article provides information on onboarding methods applicable to Windows Client and Server versions.

## Onboarding and configuration tool options
The following table lists the available tools based on the endpoint that you need to onboard.

| Endpoint     | Tool options                       |
|--------------|------------------------------------------|
| **Windows Client**  |     [Mobile Device Management / Microsoft Intune](configure-endpoints-mdm.md) <br> [Group Policy](configure-endpoints-gp.md) <br> [Local script (up to 10 devices)](configure-endpoints-script.md) <br>[VDI scripts](configure-endpoints-vdi.md)  |
| **Windows Server**  | [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [VDI scripts](configure-endpoints-vdi.md) <br> [Onboard Windows servers to the Microsoft Defender for Endpoint service](configure-server-endpoints.md)  |
| **macOS**    | [Local scripts](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md)   |
| **iOS**      | [Microsoft Endpoint Manager](ios-install.md)           |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)            | 


> [!NOTE]
> For devices that aren't managed by a Microsoft Endpoint Manager (either Microsoft Intune or Microsoft Endpoint Configuration Manager), you can use the Security Management for Microsoft Defender for Endpoint to receive security configurations for Microsoft Defender directly from Endpoint Manager.

The following table lists the available tools based on the endpoint that you need to onboard.

## Configure capabilities of the service
Onboarding devices effectively enables the endpoint detection and response capability of Microsoft Defender for Endpoint.

After onboarding the devices, you'll then need to configure the other capabilities of the service. The following table lists the capabilities you can configure to get the best protection for your environment.

| Capability | Description |
|-|-|
| [Configure Microsoft Defender Vulnerability Management (MDVM)](tvm-prerequisites.md) | Defender Vulnerability Management is a component of Microsoft Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including: <br><br> - Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities. <br><br> - Invaluable device vulnerability context during incident investigations. <br><br> - Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager.  |
| [Configure Next-generation protection (NGP)](configure-microsoft-defender-antivirus-features.md) | Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers. Microsoft Defender Antivirus includes:<br> <br>-Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Microsoft Defender Antivirus.<br> <br> - Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection").<br><br> - Dedicated protection updates based on machine learning, human and automated big-data analysis, and in-depth threat resistance research. |
| [Configure attack surface reduction (ASR)](overview-attack-surface-reduction.md) | Attack surface reduction capabilities in Microsoft Defender for Endpoint help protect the devices and applications in the organization from new and emerging threats. |
| [Configure Auto Investigation & Remediation (AIR) capabilities](configure-automated-investigations-remediation.md) | Microsoft Defender for Endpoint uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. |
| [Configure Microsoft Threat Experts (MTE) capabilities](configure-microsoft-threat-experts.md) | Microsoft Threat Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed.      |

For more information, see [Supported Microsoft Defender for Endpoint capabilities by platform](supported-capabilities-by-platform.md).


