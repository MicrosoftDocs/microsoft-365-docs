---
title: Get started with your Microsoft Defender for Endpoint deployment
description: Learn how to get started with the deploy, setup, licensing validation, tenant configuration, network configuration stages.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-endpointprotect
  - m365solution-scenario
  - highpri
  - tier1
  - essentials-get-started
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: onboard
search.appverid: met150
ms.date: 01/19/2024
---

# Get started with your Microsoft Defender for Endpoint deployment

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!TIP]
> As a companion to this article, we recommend using the [Microsoft Defender for Endpoint automated setup guide](https://go.microsoft.com/fwlink/?linkid=2251910) when signed in to the Microsoft 365 admin center. This guide will customize your experience based on your environment. To review best practices without signing in and activating automated setup features, go to the [Microsoft 365 setup guide](https://go.microsoft.com/fwlink/?linkid=2251563).

Maximize available security capabilities and better protect your enterprise from cyber threats by deploying Microsoft Defender for Endpoint and onboarding your devices. Onboarding your devices enables you to identify and stop threats quickly, prioritize risks, and evolve your defenses across operating systems and network devices.

This guide provides five steps to help deploy Defender for Endpoint as your multi-platform endpoint protection solution. It helps you choose the best deployment tool, onboard devices, and configure capabilities. Each step corresponds to a separate article.

The steps to deploy Defender for Endpoint are:

:::image type="content" source="../../media/defender-endpoint/onboard-mde.png" alt-text="The deployment steps" lightbox="../../media/defender-endpoint/onboard-mde.png":::

1. [Step 1 - Set up Microsoft Defender for Endpoint deployment](production-deployment.md): This step focuses on getting your environment ready for deployment.
2. [Step 2 - Assign roles and permissions](prepare-deployment.md): Identify and assign roles and permissions to view and manage Defender for Endpoint.
3. [Step 3 - Identify your architecture and choose your deployment method](deployment-strategy.md): Identify your architecture and the deployment method that best suits your organization.
4. [Step 4 - Onboard devices](onboarding.md): Assess and onboard your devices to Defender for Endpoint.
5. [Step 5 - Configure capabilities](onboard-configure.md): You're now ready to configure Defender for Endpoint security capabilities to protect your devices.

## Requirements

Here's a list of prerequisites required to deploy Defender for Endpoint:

- You're a global admin
- Your environment meets the [minimum requirements](minimum-requirements.md)
- You have a full inventory of your environment. The following table provides a starting point to gather information and ensure your environment is deeply understood by stakeholders, which helps identify potential dependencies and/or changes required in technologies or processes.

|What|Description|
|---|---|
|Endpoint count|Total count of endpoints by operating system.|
|Server count|Total count of Servers by operating system version.|
|Management engine|Management engine name and version (for example, System Center Configuration Manager Current Branch 1803).|
|CDOC distribution|High level CDOC structure (for example, Tier 1 outsourced to Contoso, Tier 2 and Tier 3 in-house distributed across Europe and Asia).|
|Security information and event (SIEM)|SIEM technology in use.|

## Next step

Start your deployment with [Step 1 - Set up Microsoft Defender for Endpoint deployment](production-deployment.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
