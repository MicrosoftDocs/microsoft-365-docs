---
title: Get started with your Microsoft Defender for Endpoint deployment
description: Learn how to get started with the deploy, setup, licensing validation, tenant configuration, network configuration stages
keywords: deploy, setup, network configuration
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
  - m365solution-endpointprotect
  - m365solution-scenario
  - highpri
  - tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Get started with your Microsoft Defender for Endpoint deployment

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

To ensure your network is secure from attackers, it is important to onboard all of your devices to Microsoft Defender for Endpoint. This will help you to quickly identify and stop attacks, prioritize risks, and evolve your defenses across operating systems and network devices.

Microsoft Defender for Endpoint provides tools to help you assess, onboard, and protect your devices. It also probes and scans your network to discover unmanaged devices in your environment that you can subsequently onboard. By onboarding your devices to Microsoft Defender for Endpoint, you can ensure that your network is secure from attackers and that your devices are protected from threats.

This article provides an overview of the steps to deploy Defender for Endpoint as a multi-platform endpoint protection solution. It will help you choose the best deployment method, onboard devices, and configure capabilities. Each section corresponds to a separate article.

## Before you begin

Preparation is key to any successful deployment. In this section guides, you'll be guided on the points you'll need to consider as you prepare to deploy Defender for Endpoint.

- You're a global admin
- You meet the [minimum requirements](minimum-requirements.md)
- You have a full inventory of your environment. The table below provides a starting point to gather information and ensure your environment is deeply understood by stakeholders, which will help identify potential dependencies and/or changes required in technologies or processes.

|What|Description|
|---|---|
|Endpoint count|Total count of endpoints by operating system.|
|Server count|Total count of Servers by operating system version.|
|Management engine|Management engine name and version (for example, System Center Configuration Manager Current Branch 1803).|
|CDOC distribution|High level CDOC structure (for example, Tier 1 outsourced to Contoso, Tier 2 and Tier 3 in-house distributed across Europe and Asia).|
|Security information and event (SIEM)|SIEM technology in use.|

The steps to deploy Defender for Endpoint are:

:::image type="content" source="../../media/defender-endpoint/onboard-mde.png" alt-text="The deployment steps" lightbox="../../media/defender-endpoint/onboard-mde.png":::

## Step 1 - Set up Microsoft Defender for Endpoint deployment

In this deployment scenario, you'll be guided through the steps on:

Licensing validation
Tenant configuration
Network configuration

For more information see, [Set up Microsoft Defender for Endpoint deployment](production-deployment.md)

## Step 2 - Assign roles and permissions

Microsoft recommends using the concept of least privileges. Defender for Endpoint leverages built-in roles within Azure Active Directory. Microsoft recommends [review the different roles that are available](/azure/active-directory/roles/permissions-reference) and choose the right one to solve your needs for each persona for this application. Some roles may need to be applied temporarily and removed after the deployment has been completed.

For more information, see [Assign roles and permissions](prepare-deployment.md).

## Step 3 - Identify your architecture

We understand that every enterprise environment is unique, so we've provided several options to give you the flexibility in choosing how to deploy the service. Depending on your environment, some tools are better suited for certain architectures.

To select the appropriate Defender for Endpoint architecture that best suites your organization, see [Identify your architecture](deployment-strategy.md).

## Step 4 - Choose your deployment method and onboard devices

1. Assess your devices: Use the Microsoft Defender for Endpoint assessment tool to determine which devices need to be onboarded.

2. Onboard your devices: Use the onboarding wizard to add your devices to Microsoft Defender for Endpoint.

The following table lists the supported endpoints and the corresponding deployment tool that you can use so that you can plan the deployment appropriately. For more information, see [Choose your deployment method](onboarding.md)

## Step 5 - Configure Microsoft Defender for Endpoint capabilities

After onboarding endpoints, configure the security capabilities in Defender for Endpoint so that you can maximize the robust security protection available in the suite. Capabilities include:

Endpoint detection and response
Next-generation protection
Attack surface reduction

In many cases, organizations will have existing endpoint security products in place. The bare minimum every organization should have been an antivirus solution. But in some cases, an organization might also have implanted an EDR solution already.

Historically, replacing any security solution used to be time intensive and difficult to achieve due to the tight hooks into the application layer and infrastructure dependencies. However, because Defender for Endpoint is built into the operating system, replacing third-party solutions is now easy to achieve.

For more information, see [Configure Microsoft Defender for Endpoint capabilities](onboarding.md).

After you've completed this guide, you'll be set up with the right access permissions, your endpoints will be onboarded and reporting sensor data to the service, and capabilities such as next-generation protection and attack surface reduction will be in place.

## Next steps

After reading this article, proceed to:

- **[Set up Microsoft Defender for Endpoint deployment](production-deployment.md)**
