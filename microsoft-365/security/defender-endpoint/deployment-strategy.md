---
title: Identify Defender for Endpoint architecture and deployment method
description: Select the best Microsoft Defender for Endpoint deployment strategy for your environment
keywords: deploy, plan, deployment strategy, cloud native, management, on prem, evaluation, onboarding, local, group policy, gp, endpoint manager, mem, intune
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Identify Defender for Endpoint architecture and deployment method

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-secopsdashboard-abovefoldlink)

You've already completed steps to set up your Microsoft Defender for Endpoint deployment and assigned roles and permissions for Defender for Endpoint. Next, plan for onboarding your devices by identifying your architecture and choosing your deployment method.

We understand that every enterprise environment is unique, so we've provided several options to give you the flexibility in choosing how to deploy the service. Deciding how to onboard endpoints to the Defender for Endpoint service comes down to two important steps:

:::image type="content" source="../../media/defender-endpoint/onboarding-architecture-2.png" alt-text="The deployment flow" lightbox="../../media/defender-endpoint/onboarding-architecture-2.png":::

## Step 1: Identify your architecture

Depending on your environment, some tools are better suited for certain architectures. Use the table below to decide which Defender for Endpoint architecture best suits your organization.

|Architecture |Description |
|---|---|
|**Cloud-native**| We recommend using Microsoft Intune to onboard, configure, and remediate endpoints from the cloud for enterprises that don't have an on-premises configuration management solution or are looking to reduce their on-premises infrastructure. |
|**Co-management**| For organizations that host both on-premises and cloud-based workloads we recommend using Microsoft's ConfigMgr and Intune for their management needs. These tools provide a comprehensive suite of cloud-powered management features, as well as unique co-management options to provision, deploy, manage, and secure endpoints and applications across an organization. |
|**On-premise**|For enterprises that want to take advantage of the cloud-based capabilities of Microsoft Defender for Endpoint while also maximizing their investments in Configuration Manager or Active Directory Domain Services, we recommend this architecture.|
|**Evaluation and local onboarding**|We recommend this architecture for SOCs (Security Operations Centers) that are looking to evaluate or run a Microsoft Defender for Endpoint pilot, but don't have existing management or deployment tools. This architecture can also be used to onboard devices in small environments without management infrastructure, such as a DMZ (Demilitarized Zone).|

## Step 2: Select deployment method

Once you have determined the architecture of your environment and have created an inventory as outlined in the [requirements section](../defender-endpoint/mde-planning-guide.md#requirements), use the table below to select the appropriate deployment tools for the endpoints in your environment. This will help you plan the deployment effectively.

|Endpoint|Deployment tool|
|---|---|
|**Windows**|[Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Intune/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)|
|**Windows servers<br>Linux servers** | [Integration with Microsoft Defender for Cloud](azure-server-integration.md)
|**macOS**|[Local script](mac-install-manually.md) <br> [Microsoft Intune](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md)|
|**Linux servers**|[Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md) <br> [Chef](linux-deploy-defender-for-endpoint-with-chef.md)<br> [Saltstack](linux-install-with-saltack.md)|
|**Android**|[Microsoft Intune](android-intune.md)|
|**iOS**|[Microsoft Intune](ios-install.md) <br> [Mobile Application Manager](ios-install-unmanaged.md) |

>[!Note]
> For devices that aren't managed by Microsoft Intune or Microsoft Configuration Manager, you can use the Security Management for Microsoft Defender for Endpoint to receive security configurations for Microsoft Defender directly from Intune.

## Next step

After choosing your Defender for Endpoint architecture and deployment method continue to [Step 4 - Onboard devices](onboarding.md).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
