---
title: Migrating servers from Microsoft Defender for Endpoint to Microsoft Defender for Cloud
description: Learn how to migrate servers from Microsoft Defender for Endpoint to Microsoft Defender for Cloud.
keywords: migrate server, server, Microsoft Defender for Endpoint server, Microsoft Defender for Cloud, MDE, azure, azure cloud, CSPM, CWP, cloud workload protection, threat protection, advanced threat protection, Microsoft Azure, multi-cloud connector
author: alekyaj
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection: 
- m365-security
- tier2
ms.custom: migrationguides
ms.date: 07/19/2022
ms.subservice: mde
search.appverid: met150
---

# Migrating servers from Microsoft Defender for Endpoint to Microsoft Defender for Cloud

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

This article guides you in migrating servers from Microsoft Defender for Endpoint (MDE) to Defender for Cloud.

[Microsoft Defender for Endpoint](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-endpoint) (MDE) is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats.

[Microsoft Defender for Cloud](https://azure.microsoft.com/services/defender-for-cloud/) is a solution for cloud security posture management (CSPM) and cloud workload protection (CWP) that finds weak spots across your cloud configuration. It also helps strengthen the overall security posture of your environment, and can protect workloads across multi-cloud and hybrid environments from evolving threats.

While both products offer server protection capabilities, Microsoft Defender for Cloud is our primary solution to protect infrastructure resources, including servers. 

## How do I migrate my servers from Microsoft Defender for Endpoint to Microsoft Defender for Cloud?

If you have servers onboarded to Defender for Endpoint, the migration process varies depending on machine type, but there's a set of shared prerequisites. 

Microsoft Defender for Cloud is a subscription-based service in the Microsoft Azure portal. Therefore, Defender for Cloud and the underlying plans like Microsoft Defender for Servers Plan 2 need to be enabled on Azure subscriptions.

To enable Defender for Servers for Azure VMs and non-Azure machines connected through [Azure Arc-enabled servers](/azure/azure-arc/servers/overview), follow this guideline:

1. If you aren't already using Azure, plan your environment following the [Azure Well-Architected Framework](/azure/architecture/framework/).

2. Enable [Microsoft Defender for Cloud](/azure/defender-for-cloud/get-started) on your subscription(s).

3. Enable one of the Microsoft Defender for Server plans on your [subscription(s)](/azure/defender-for-cloud/enable-enhanced-security). In case you're using Defender for Servers Plan 2, make sure to also enable it on the Log Analytics workspace your machines are connected to; it enables you to use optional features like File Integrity Monitoring, Adaptive Application Controls and more.

4. Make sure the [MDE integration](/azure/defender-for-cloud/integration-defender-for-endpoint?tabs=windows) is enabled on your subscription. If you have pre-existing Azure subscriptions, you may see one (or both) of the two opt-in buttons shown in the image below.

     :::image type="content" source="images/mde-integration.png" alt-text="Screenshot that shows how to enable MDE integration." lightbox="images/mde-integration.png":::

   If you have any of these buttons in your environment, make sure to enable integration for both. On new subscriptions, both options are enabled by default. In this case, you won't see these buttons in your environment.

5. Make sure the connectivity requirements for Azure Arc are met. Microsoft Defender for Cloud requires all on-premises and non-Azure machines to be connected via the Azure Arc agent. In addition, Azure Arc doesn't support all MDE supported operating systems. So, learn how to plan for [Azure Arc deployments here](/azure/azure-arc/servers/plan-at-scale-deployment).

6. *Recommended:* If you want to see vulnerability findings in Defender for Cloud, make sure to enable [Microsoft Defender Vulnerability Management](/azure/defender-for-cloud/enable-data-collection?tabs=autoprovision-va) for Defender for Cloud.

   :::image type="content" source="images/enable-threat-and-vulnerability-management.png" alt-text="Screenshot that shows how to enable vulnerability management." lightbox="images/enable-threat-and-vulnerability-management.png"::: 

## How do I migrate existing Azure VMs to Microsoft Defender for Cloud?

For Azure VMs, no extra steps are required, these are automatically onboarded to Microsoft Defender for Cloud, thanks to the native integration between the Azure platform and Defender for Cloud.

## How do I migrate on-premises machines to Microsoft Defender for Servers?

Once all prerequisites are met, [connect](/azure/defender-for-cloud/quickstart-onboard-machines?pivots=azure-arc) your on-premises machines via Azure Arc-connected servers.

## How do I migrate VMs from AWS or GCP environments?

1. Create a new multi-cloud connector on your subscription. (For more information on connector, see [AWS accounts](/azure/defender-for-cloud/quickstart-onboard-aws?pivots=env-settings) or [GCP projects](/azure/defender-for-cloud/quickstart-onboard-gcp?pivots=env-settings).

2. On your multi-cloud connector, enable Defender for Servers on [AWS](/azure/defender-for-cloud/quickstart-onboard-aws?pivots=env-settings#prerequisites) or [GCP](/azure/defender-for-cloud/quickstart-onboard-gcp?pivots=env-settings#configure-the-servers-plan) connectors.

3. Enable auto-provisioning on the multi-cloud connector for the Azure Arc agent, Microsoft Defender for Endpoint extension, Vulnerability Assessment and, optionally, Log Analytics extension.

     :::image type="content" source="images/select-plans-aws-gcp.png" alt-text="Screenshot that shows how to enable auto-provisioning for Azure Arc agent." lightbox="images/select-plans-aws-gcp.png":::

   For more information, see [Defender for Cloud's multicloud capabilities](https://aka.ms/mdcmc).

## What happens once all migration steps are completed?

Once you've completed the relevant migration steps, Microsoft Defender for Cloud deploys the `MDE.Windows` or `MDE.Linux` extension to your Azure VMs and non-Azure machines connected through Azure Arc (including VMs in AWS and GCP compute).

The extension acts as a management and deployment interface, which orchestrates and wraps the MDE installation scripts inside the operating system and reflect its provisioning state to the Azure management plane. The installation process recognizes an existing Defender for Endpoint installation and connects it to Defender for Cloud by automatically adding Defender for Endpoint service tags.

In case you have Windows Server 2012 R2 or 2016 machines that are provisioned with the legacy, Log Analytics-based Microsoft Defender for Endpoint solution, Microsoft Defender for Cloud's deployment process deploys the Defender for Endpoint [unified solution](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution). After successful deployment, it will stop and disable the legacy Defender for Endpoint process on these machines.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
