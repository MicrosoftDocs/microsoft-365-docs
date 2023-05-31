---
title: Production ring deployment using Group Policy and Microsoft Updates
description: Microsoft Defender for Endpoint is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article explains how to deploy Microsoft Defender for Endpoint in measured, staged cycles.
keywords: deploy Microsoft Defender for Endpoint, Ring deployment Microsoft Defender for Endpoint, cybersecurity, cloud security, analytics, threat intelligence, attack surface reduction, next-generation protection, automated investigation and remediation, microsoft threat experts, secure score, advanced hunting, Microsoft 365 Defender, cyber threat hunting
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-britweston
author: v-britweston
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: intro-overview
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 05/24/2023
---

# Microsoft Defender for Endpoint production ring deployment using Group Policy and Microsoft Updates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- Windows Server

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats.

> [!TIP]
> Microsoft Defender for Endpoint is available in two plans, Defender for Endpoint Plan 1 and Plan 2. A new Microsoft Defender Vulnerability Management add-on is now available for Plan 2.
>
> For more information on the features and capabilities included in each plan, including the new Defender Vulnerability Management add-on, see [Compare Microsoft Defender for Endpoint plans](defender-endpoint-plan-1-2.md).

:::image type="content" source="images/mde-deploy-ring-gp-mu-schedule.png" alt-text="Shows an example schedule for updating Microsoft Defender Antivirus using Group Policy and Microsoft Updates." lightbox="images/mde-deploy-ring-gp-mu-schedule.png"::

## Prerequisites

Review the _read me_ article at [Readme](https://github.com/microsoft/defender-updatecontrols/blob/main/README.md) 
https://github.com/microsoft/defender-updatecontrols/blob/main/README.md

Download the latest defender .admx and .adml 

- [WindowsDefender.admx](https://github.com/microsoft/defender-updatecontrols/blob/main/WindowsDefender.admx) 
- [WindowsDefender.adml](https://github.com/microsoft/defender-updatecontrols/blob/main/WindowsDefender.adml)

2)	Copy the latest .admx and .adml to the Domain Controller [Central Store](/troubleshoot/windows-client/group-policy/create-and-manage-central-store#the-central-store).


## Setting up the Pilot (UAT/Test/QA) environment

This section describes the process for setting up the pilot UAT / Test / QA environment, on about 10-500 Windows and/or Windows Server systems, depending on how many total systems that you all have.

> [!NOTE]
> If you have a Citrix enviroment, include at least 1 Citrix VM (non-persistent) and/or (persistent)

In [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265969(v=ws.11)) (GPMC, GPMC.msc), create or append to your Microsoft Defender Antivirus  policy.

1. Edit your Microsoft Defender Antivirus policy. For example, edit _MDAV\_Settings\_Pilot_. Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**. There are three related options:

   | Feature | Recommendation for the pilot systems |
   |:---|:---| 
   | Select the channel for Microsoft Defender daily **Security Intelligence updates** | Current Channel (Staged) |
   | Select the channel for Microsoft Defender monthly **Engine updates**  | Beta Channel |
   | Select the channel for Microsoft Defender monthly **Platform updates**  | Beta Channel |

   The three options are shown in the following figure.

   :::image type="content" source="images/mde-deploy-ring-gp-microsoft-defender-antivirus-channels.png" alt-text="Shows a screen capture of the Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus update channels." lightbox="images/mde-deploy-ring-gp-microsoft-defender-antivirus-channels.png"::: 

   For more information, see [Manage the gradual rollout process for Microsoft Defender updates](/manage-gradual-rollout.md)

1. For platform updates, double-click **Select the channel for Microsoft Defender monthly Platform updates**.

1. On the **Select the channel for Microsoft Defender monthly Platform updates** page, select **Enabled**, and in **Options**, select **Beta Channel**. These two settings are shown in the following figure:

   :::image type="content" source="images/mde-deploy-ring-gp-microsoft-defender-antivirus-channel-beta.png" alt-text="Shows a screen capture of the Select the channel for Microsoft Defender monthly Platform updates page with Enabled and Beta Channel selected." lightbox="images/mde-deploy-ring-gp-microsoft-defender-antivirus-channel-beta.png":::

1. Select **Apply**, and then select **OK**.

1. Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**. 

1. For engine updates, double-click **Select the channel for Microsoft Defender monthly engine updates**.

1. On the **Select the channel for Microsoft Defender monthly Platform updates** page, select **Enabled**, and in **Options**, select **Beta Channel**.

1. Select **Apply**, and then select **OK**.

1. Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**. 

1. For intelligence updates, double-click **Select the channel for Microsoft Defender monthly intelligence updates**.

1. On the **Select the channel for Microsoft Defender monthly imtelligence updates** page, select **Enabled**, and in **Options**, select **Current Channel (Staged)**.

1. Select **Apply**, and then select **OK**.

### Related articles

- [Antivirus profiles - Devices managed by Microsoft Intune](/mem/intune/protect/endpoint-security-antivirus-policy#antivirus-profiles)
- [Use Endpoint security Antivirus policy to manage Microsoft Defender update behavior (Preview)](/mem/intune/fundamentals/whats-new#use-endpoint-security-antivirus-policy-to-manage-microsoft-defender-update-behavior-preview)
- [Manage the gradual rollout process for Microsoft Defender updates](/manage-gradual-rollout.md)

