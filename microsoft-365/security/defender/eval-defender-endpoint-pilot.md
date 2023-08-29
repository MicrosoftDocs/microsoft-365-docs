---
title: Pilot Microsoft Defender for Endpoint
description: Learn how to run a pilot for Microsoft Defender for Endpoint(MDE), including verifying the pilot group and trying out capabilities.
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

# Pilot Microsoft Defender for Endpoint

This article will guide you in the process of running a pilot for Microsoft Defender for Endpoint. 

Use the following steps to setup and configure the pilot for Microsoft Defender for Endpoint. 

:::image type="content" source="../../media/defender/m365-defender-endpoint-pilot-steps.png" alt-text="The steps for adding Microsoft Defender for Identity to the Microsoft Defender evaluation environment" lightbox="../../media/defender/m365-defender-endpoint-pilot-steps.png":::

- Step 1. Verify pilot group
- Step 2. Try out capabilities

When you pilot Microsoft Defender for Endpoint, you may choose to onboard a few devices to the service before onboarding your entire organization.  

You can then try out capabilities that are available such as running attack simulations and seeing how Defender for Endpoint surfaces malicious activities and enables you to conduct an efficient response. 

## Step 1. Verify pilot group
After completing the onboarding steps outlined in the [Enable evaluation](eval-defender-endpoint-enable-eval.md) section, you should see the devices in the Device inventory list approximately after an hour. 

When you see your onboarded devices you can then proceed with trying out capabilities. 

## Step 2. Try out capabilities
Now that you've completed onboarding some devices and verified that they are reporting to the service, familiarize yourself with the product by trying out the powerful capabilities that are available right out of the box.

During the pilot, you can easily get started with trying out some of the features to see the product in action without going through complex configuration steps.

Let's start by checking out the dashboards.

### View the device inventory
The device inventory is where you'll see the list of endpoints, network devices, and IoT devices in your network. Not only does it provide you with a view of the devices in your network, but it also gives your in-depth information about them such as  domain, risk level, OS platform, and other details for easy identification of devices most at risk.

### View the Microsoft Defender Vulnerability Management dashboard 
Defender Vulnerability Management management helps you focus on the weaknesses that pose the most urgent and the highest risk to the organization. From the dashboard, get a high-level view of the organization exposure score, Microsoft Secure Score for Devices, device exposure distribution, top security recommendations, top vulnerable software, top remediation activities, and top exposed device data. 

### Run a simulation
Microsoft Defender for Endpoint comes with ["Do It Yourself" attack scenarios](https://securitycenter.windows.com/tutorials) that you can run on your pilot devices.  Each document includes OS and application requirements as well as detailed instructions that are specific to an attack scenario. These scripts are safe, documented, and easy to use. These scenarios will reflect Defender for Endpoint capabilities and walk you through investigation experience.

To run any of the provided simulations, you need at least [one onboarded device](../defender-endpoint/onboard-configure.md).

1. In **Help** > **Simulations & tutorials**, select which of the available attack scenarios you would like to simulate:

   - **Scenario 1: Document drops backdoor** - simulates delivery of a socially engineered lure document. The document launches a specially crafted backdoor that gives attackers control.

   - **Scenario 2: PowerShell script in fileless attack** - simulates a fileless attack that relies on PowerShell, showcasing attack surface reduction and device learning detection of malicious memory activity.

   - **Scenario 3: Automated incident response** - triggers automated investigation, which automatically hunts for and remediates breach artifacts to scale your incident response capacity.

2. Download and read the corresponding walkthrough document provided with your selected scenario.

3. Download the simulation file or copy the simulation script by navigating to **Help** > **Simulations & tutorials**. You can choose to download the file or script on the test device but it's not mandatory.

4. Run the simulation file or script on the test device as instructed in the walkthrough document.

> [!NOTE]
> Simulation files or scripts mimic attack activity but are actually benign and will not harm or compromise the test device.

## Next steps
[Evaluate Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)

Return to the overview for [Evaluate Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
