---
title: Enable the evaluation environment for Microsoft Defender for Identity
description: Set up Microsoft Defender for Identity in Microsoft 365 Defender trial lab or pilot environment by installing & configuring the sensor, and discovering local admins on other computers.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
ms.date: 07/09/2021
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
---

# Enable the evaluation environment for Microsoft Defender for Identity

**Applies to:**
- Microsoft 365 Defender

This article is [Step 2 of 2](eval-defender-identity-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Identity. For more information about this process, see the [overview article](eval-defender-identity-overview.md).

Use the following steps to set up your Microsoft Defender for Identity environment.

:::image type="content" source="../../media/defender/m365-defender-identity-eval-enable-steps.png" alt-text="The steps to enable Microsoft Defender for Identity in the Microsoft Defender evaluation environment" lightbox="../../media/defender/m365-defender-identity-eval-enable-steps.png":::

- [Step 1. Set up the Defender for Identity Instance](#step-1-set-up-the-defender-for-identity-instance)
- [Step 2. Install and configure the sensor](#step-2-install-and-configure-the-sensor)
- [Step 3. Configure event log and proxy settings on machines with the sensor](#step-3-configure-event-log-and-proxy-settings-on-machines-with-the-sensor)
- [Step 4. Allow Defender for Identity to identify local admins on other computers](#step-4-allow-defender-for-identity-to-identify-local-admins-on-other-computers)

## Step 1. Set up the Defender for Identity Instance

Sign in to the Defender for Identity portal to create your instance and then connect this instance to your Active Directory environment.

|Step|Description|More information|
|---|---|---|
|1|Create the Defender for Identity instance|[Quickstart: Create your Microsoft Defender for Identity instance](/defender-for-identity/install-step1)|
|2|Connect the Defender for Identity instance to your Active Directory forest|[Quickstart: Connect to your Active Directory Forest](/defender-for-identity/install-step2)|

## Step 2. Install and configure the sensor

Next, download, install, and configure the Defender for Identity sensor on the domain controllers and AD FS servers in your on-premises environment.

|Step|Description|More information|
|---|---|---|
|1|Determine how many Microsoft Defender for Identity sensors you need.|[Plan capacity for Microsoft Defender for Identity](/defender-for-identity/capacity-planning)|
|2|Download the sensor setup package|[Quickstart: Download the Microsoft Defender for Identity sensor setup package](/defender-for-identity/install-step3)|
|3|Install the Defender for Identity sensor|[Quickstart: Install the Microsoft Defender for Identity sensor](/defender-for-identity/install-step4)|
|4|Configure the sensor|[Configure Microsoft Defender for Identity sensor settings](/defender-for-identity/install-step5)|

## Step 3. Configure event log and proxy settings on machines with the sensor

On the machines that you installed the sensor on, configure Windows event log collection and Internet proxy settings to enable and enhance detection capabilities.

|Step|Description|More information|
|---|---|---|
|1|Configure Windows event log collection|[Configure Windows Event collection](/defender-for-identity/configure-windows-event-collection)|
|2|Configure Internet proxy settings|[Configure endpoint proxy and Internet connectivity settings for your Microsoft Defender for Identity Sensor](/defender-for-identity/configure-proxy)|

## Step 4. Allow Defender for Identity to identify local admins on other computers

Microsoft Defender for Identity lateral movement path detection relies on queries that identify local admins on specific machines. These queries are performed with the SAM-R protocol, using the Defender for Identity Service account.

To ensure Windows clients and servers allow your Defender for Identity account to perform SAM-R, a modification to Group Policy must be made to add the Defender for Identity service account in addition to the configured accounts listed in the Network access policy. Make sure to apply group policies to all computers **except domain controllers**.

For instructions on how to do this, see [Configure Microsoft Defender for Identity to make remote calls to SAM](/defender-for-identity/install-step8-samr).

## Next steps

Step 3 of 3: [Pilot Microsoft Defender for Identity](eval-defender-identity-pilot.md)

Return to the overview for [Evaluate Microsoft Defender for Identity](eval-defender-identity-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
