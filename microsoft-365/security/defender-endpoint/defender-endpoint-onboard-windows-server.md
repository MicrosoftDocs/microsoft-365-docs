---
title: Defender for Endpoint onboarding Windows Server
description: Onboard Windows Server to Microsoft Defender for Endpoint.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365-initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Defender for Endpoint onboarding Windows Server

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- Windows Server 2012 R2
- Windows Server 2016
- Windows Server Semi-Annual Enterprise Channel
- Windows Server 2019 and later
- Windows Server 2019 core edition
- Windows Server 2022
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https:%2F%2Faka.ms%2FMDEp2OpenTrial)

Defender for Endpoint extends support to also include the Windows Server operating system. This support provides advanced attack detection and investigation capabilities seamlessly through the Microsoft 365 Defender console. Support for Windows Server provides deeper insight into server activities, coverage for kernel and memory attack detection, and enables response actions.

This topic describes how to onboard specific Windows servers to Microsoft Defender for Endpoint.

For guidance on how to download and use Windows Security Baselines for Windows servers, see [Windows Security Baselines.](/windows/security/threat-protection/windows-security-configuration-framework/windows-security-baselines)

# Windows Server onboarding overview

You'll need to complete the following general steps to successfully onboard servers 2008 R2, 2012 R2, 2016, 2019, 202.

:::image type="content" source="images/server-onboarding.png" alt-text="Onboard devices" lightbox="images/onboard-devices.png":::

> [!NOTE]
> Servers are on-boarded using GPs only.

## Windows Server 2012 R2 and Windows Server 2016
- Download installation and onboarding packages.
- Apply the installation package.
- Follow the onboarding steps for the corresponding tool.

## Windows Server Semi-Annual Enterprise Channel and Windows Server 2019
- Download the onboarding package.
- Follow the onboarding steps for the corresponding tool.

> [!IMPORTANT]
> In order to be eligible to purchase Microsoft Defender for Endpoint Server SKU, you must have already purchased a combined minimum of any of the following, Windows E5/A5, Microsoft 365 E5/A5 or Microsoft 365 E5 Security subscription licenses. For more information on licensing, see the [Product Terms.](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftDefenderforEndpointServer/all)

# Offboard Windows servers

You can offboard Windows Server 2012 R2, Windows Server 2016, Windows Server (SAC), Windows Server 2019, and Windows Server 2019 Core edition with the same method available for Windows 10 client devices.

[Offboard devices using Configuration Manager](/microsoft-365/security/defender-endpoint/configure-endpoints-sccm)
[Offboard and monitor devices using Mobile Device Management tools](/microsoft-365/security/defender-endpoint/configure-endpoints-mdm)
[Offboard devices using Group Policy](/microsoft-365/security/defender-endpoint/configure-endpoints-gp)
[Offboard devices using a local script](/microsoft-365/security/defender-endpoint/configure-endpoints-script)

After offboarding, you can proceed to uninstall the unified solution package on Windows Server 2012 R2 and Windows Server 2016.

For other Windows server versions, you have two options to offboard Windows servers from the service:
- Uninstall the MMA agent
- Remove the Defender for Endpoint workspace configuration

> [!NOTE]
> These offboarding instructions for other Windows server versions also apply if you are running the previous Microsoft Defender for Endpoint for Windows Server 2016 and Windows Server 2012 R2 that requires the MMA. Instructions to migrate to the new unified solution are at [Server migration scenarios in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/server-migration.md).

