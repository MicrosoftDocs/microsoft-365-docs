---
title: Onboard to Microsoft Defender for Endpoint
description: Learn how to onboard endpoints to Microsoft Defender for Endpoint service
keywords: microsoft defender for endpoint, onboard, deploy
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
  - m365solution-endpointprotect
  - m365solution-scenario
  - m365-initiative-defender-endpoint
  - highpri
  - tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Onboard to Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/?linkid=2229011)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Onboard devices using any of the supported management tools

The deployment tool you use influences how you onboard endpoints to the service.

To start onboarding your devices:

1. Go to [Select deployment method](../defender-endpoint/deployment-strategy.md#step-2-select-deployment-method).
2. Choose the Operating System for the devices you wish to Onboard.
3. Select the tool you plan to use.
4. Follow the instructions to Onboard your devices.

This video provides a quick overview of the onboarding process and the different tools and methods.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

## Deploy using a ring-based approach

### New deployments

A ring-based approach is a method of identifying a set of endpoints to onboard and verifying that certain criteria are met before proceeding to deploy the service to a larger set of devices. You can define the exit criteria for each ring and ensure that they're satisfied before moving on to the next ring. Adopting a ring-based deployment helps reduce potential issues that could arise while rolling out the service.

This table provides an example of the deployment rings you might use:

|Deployment ring|Description|
|---|---|
|Evaluate|Ring 1: Identify 50 devices to onboard to the service for testing.|
|Pilot|Ring 2: Identify and onboard the next 50-100 endpoints in a production environment. Microsoft Defender for Endpoint supports various endpoints that you can onboard to the service, for more information, see [Select deployment method](deployment-strategy.md#step-2-select-deployment-method).|
|Full deployment|Ring 3: Roll out service to the rest of environment in larger increments. For more information, see [Get started with your Microsoft Defender for Endpoint deployment](mde-planning-guide.md).

### Exit criteria

An example set of exit criteria for each ring can include:

- Devices show up in the device inventory list
- Alerts appear in dashboard
- [Run a detection test](run-detection-test.md)
- [Run a simulated attack on a device](attack-simulations.md)

## Existing deployments

### Windows endpoints

For Windows and/or Windows Servers, you select several machines to test ahead of time (before patch Tuesday) by using the **Security Update Validation program (SUVP)**.

For more information, see:

- [What is the Security Update Validation Program](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/what-is-the-security-update-validation-program/ba-p/275767)
- [Software Update Validation Program and Microsoft Malware Protection Center Establishment - TwC Interactive Timeline Part 4](https://www.microsoft.com/security/blog/2012/03/28/software-update-validation-program-and-microsoft-malware-protection-center-establishment-twc-interactive-timeline-part-4/)

### Non-Windows endpoints

With macOS and Linux, you could take a couple of systems and run in the Beta channel.

> [!NOTE]
> Ideally at least one security admin and one developer so that you are able to find compatibility, performance and reliability issues before the build makes it into the Current channel.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in Beta are the first ones to receive updates and new features, followed later by Preview and lastly by Current.

:::image type="content" source="images/insider-rings.png" alt-text="The insider rings." lightbox="images/insider-rings.png":::

In order to preview new features and provide early feedback, it's recommended that you configure some devices in your enterprise to use either Beta or Preview.

> [!WARNING]
> Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.


## Example deployments

To provide some guidance on your deployments, in this section we'll guide you through using two deployment tools to onboard endpoints.

The tools in the example deployments are:

- [Onboarding using Microsoft Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Intune](onboarding-endpoint-manager.md)

For some additional information and guidance, check out the [PDF](https://download.microsoft.com/download/5/6/0/5609001f-b8ae-412f-89eb-643976f6b79c/mde-deployment-strategy.pdf)  or  [Visio](https://download.microsoft.com/download/5/6/0/5609001f-b8ae-412f-89eb-643976f6b79c/mde-deployment-strategy.vsdx) to see the various paths for deploying Defender for Endpoint.

The example deployments will guide you on configuring some of the Defender for Endpoint capabilities, but you'll find more detailed information on configuring Defender for Endpoint capabilities in the [next step](#next-step).

## Next step

After onboarding the endpoints move on to the next step where you'll configure the various capabilities such as endpoint detection and response, next-generation protection, and attack surface reduction.

- [Step 5 - Configure capabilities](onboard-configure.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
