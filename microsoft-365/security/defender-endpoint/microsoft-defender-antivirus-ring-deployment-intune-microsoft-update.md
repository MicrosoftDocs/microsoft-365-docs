---
title: Ring deployment using Intune and Microsoft Update (MU)
description: Microsoft Defender Antivirus is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article provides information about how to use a ring deployment method to update your Microsoft Defender Antivirus clients using Intune and Microsoft Update (MU).
keywords: deploy Microsoft Defender Antivirus updates, ring deployment Microsoft Defender Antivirus, Microsoft Defender Antivirus Intune Microsoft Defender Antivirus Microsoft Update, Microsoft Defender Antivirus Intune MU, threat intelligence, cybersecurity, cloud security,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
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
ms.date: 07/21/2023
---

# Microsoft Defender Antivirus ring deployment using Intune and direct internet access for Microsoft Update

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

## Setting up the pilot environment 

This section describes the process for setting up the pilot UAT / Test / QA environment.

:::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-intune-schedule.png" alt-text="Shows an example deployment schedule." lightbox="images/microsoft-defender-antivirus-deploy-ring-intune-schedule.png":::

On about 10-500* Windows and/or Windows Server systems, depending on how many total systems that you all have:

In the Intune portal [https://endpoint.microsoft.com](https://endpoint.microsoft.com), create or append to your Microsoft Defender Antivirus policy the following setting:
For example, your pilot policy named _MDAV_Settings_Pilot_. If you have a Citrix environment, include at least one Citrix VM (non-persistent and/or  persistent).

:::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-intune-microsoft-defender-antivirus-pilot-policy-settings.png" alt-text="Shows recommended Intune Microsoft Defender Antivirus pilot policy settings." lightbox="images/microsoft-defender-antivirus-deploy-ring-intune-microsoft-defender-antivirus-pilot-policy-settings.png":::

> [!NOTE]
> Security intelligence update (SIU) is equivelant to signature updates, which is the same as definition updates.

Recommended settings are as follows:

|Feature  | Recommendation |
|:--- |:--- |
| Engine Updates Channel | Beta Channel |
| Platform Updates Channel | Beta Channel |
| Security Intelligence Updates Channel | Current Channel (Staged) |

### References

- [Antivirus profiles - Devices managed by Microsoft Intune](/mem/intune/protect/endpoint-security-antivirus-policy#antivirus-profiles)
- [Use Endpoint security Antivirus policy to manage Microsoft Defender update behavior](/mem/intune/fundamentals/whats-new#use-endpoint-security-antivirus-policy-to-manage-microsoft-defender-update-behavior-preview)
- - [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md#manage-the-gradual-rollout-process-for-microsoft-defender-updates)

## Setting up the Production environment 

In the Intune portal [https://endpoint.microsoft.com](https://endpoint.microsoft.com), create or append to your Microsoft Defender Antivirus policy using the following setting:
For example, your production policy named _MDAV_Settings_Production_.

:::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-intune-microsoft-defender-antivirus-production-policy-settings.png" alt-text="Shows recommended Intune Microsoft Defender Antivirus production policy settings." lightbox="images/microsoft-defender-antivirus-deploy-ring-intune-microsoft-defender-antivirus-production-policy-settings.png":::

|Feature  | Recommendation | Comments |
|:--- |:--- |:--- |
| Engine Updates Channel | Critical – Time delay | It's delayed by two days.|
| Platform Updates Channel | Critical – Time delay | It's delayed by two days.|
| Security Intelligence Updates Channel | Current Channel (Broad) | This configuration provides you with 3 hours of time to find an FP and prevent the production systems from getting an incompatible signature update. |

### If you encounter problems

If you encounter problems with your deployment, change the source of the Microsoft Defender Antivirus updates:

1. In the Intune portal [https://endpoint.microsoft.com](https://endpoint.microsoft.com), go to **Endpoint Security**, select **Antivirus**, and then find your Intune production policy (for example, MDAV_Settings_Production), and then, in **Configuration settings**, select **Edit**.

1. Change the entry to **FileShares**. This change is shown in the following figure.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-intune-microsoft-defender-antivirus-production-policy-fallback.png" alt-text="Shows Intune Microsoft Defender Antivirus production policy fallback setting." lightbox="images/microsoft-defender-antivirus-deploy-ring-intune-microsoft-defender-antivirus-production-policy-fallback.png":::

#### What this change does

It forces Microsoft Defender Antivirus to look for the **Security Intelligence Update**, **Engine Update** or **Platform Update** from a file share that doesn’t exist.

#### How long does it take for the Intune policy to refresh?

If you update a policy, it’s within a few minutes (3-5 minutes) via WNS, as long the WNS URLs' are open.

Reference:   [Intune actions that immediately send a notification to a device](/mem/intune/configuration/device-profile-troubleshoot#intune-actions-that-immediately-send-a-notification-to-a-device)

After the issue is resolved, set the “Signature Update Fallback Order” back to the original setting"

`InternalDefinitionUpdateServder|MicrosoftUpdateServer|MMPC|FileShare`

## See also 

[Microsoft Defender Antivirus ring deployment](microsoft-defender-antivirus-ring-deployment.md)
