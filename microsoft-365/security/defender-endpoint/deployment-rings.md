---
title: Deploy Microsoft Defender for Endpoint in rings
description: Learn how to deploy Microsoft Defender for Endpoint in rings
keywords: deploy, rings, evaluate, pilot, insider fast, insider slow, setup, onboard, phase, deployment, deploying, adoption, configuring
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
  - highpri
  - tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 01/31/2023
---

# Deploy Microsoft Defender for Endpoint in rings

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

Deploying Microsoft Defender for Endpoint can be done using a ring-based deployment approach.

The deployment rings can be applied in the following scenarios:

- [New deployments](#new-deployments)
- [Existing deployments](#existing-deployments)

## New deployments

:::image type="content" source="images/deployment-rings.png" alt-text="The deployment rings." lightbox="images/deployment-rings.png":::

A ring-based approach is a method of identifying a set of endpoints to onboard and verifying that certain criteria are met before proceeding to deploy the service to a larger set of devices. You can define the exit criteria for each ring and ensure that they're satisfied before moving on to the next ring.

Adopting a ring-based deployment helps reduce potential issues that could arise while rolling out the service. By piloting some devices first, you can identify potential issues and mitigate potential risks that might arise.

Table 1 provides an example of the deployment rings you might use.

**Table 1**:

|Deployment ring|Description|
|---|---|
|Evaluate|Ring 1: Identify 50 systems for pilot testing|
|Pilot|Ring 2: Identify the next 50-100  endpoints in production environment|
|Full deployment|Ring 3: Roll out service to the rest of environment in larger increments|

### Exit criteria

An example set of exit criteria for these rings can include:

- Devices show up in the device inventory list
- Alerts appear in dashboard
- [Run a detection test](run-detection-test.md)
- [Run a simulated attack on a device](attack-simulations.md)

### Evaluate

Identify a few test machines in your environment to onboard to the service. Ideally, these machines would be fewer than 50 endpoints.

### Pilot

Microsoft Defender for Endpoint supports various endpoints that you can onboard to the service. In this ring, identify several devices to onboard and based on the exit criteria you define, decide to proceed to the next deployment ring.

The following table shows the supported endpoints and the corresponding tool you can use to onboard devices to the service.

|Endpoint|Deployment tool|
|---|---|
|**Windows**|[Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Intune/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)|
|**Windows servers<br><br>Linux servers** | [Integration with Microsoft Defender for Cloud](azure-server-integration.md)
|**macOS**|[Local script](mac-install-manually.md) <br> [Microsoft Intune](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md)|
|**Linux servers**|[Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md) <br> [Chef](linux-deploy-defender-for-endpoint-with-chef.md)<br> [Saltstack](linux-install-with-saltack.md)|
|**Android**|[Microsoft Intune](android-intune.md)|
|**iOS**|[Microsoft Intune](ios-install.md) <br> [Mobile Application Manager](ios-install-unmanaged.md) |


### Full deployment

At this stage, you can use the [Plan deployment](deployment-strategy.md) material to help you plan your deployment.

Use the following material to select the appropriate Microsoft Defender for Endpoint architecture that best suites your organization.

|Item|Description|
|---|---|
|[:::image type="content" source="images/mde-deployment-strategy.png" alt-text="The strategy for Microsoft Defender for Endpoint deployment." lightbox="images/mde-deployment-strategy.png":::](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)<br/> [PDF](https://download.microsoft.com/download/5/6/0/5609001f-b8ae-412f-89eb-643976f6b79c/mde-deployment-strategy.pdf) \| [Visio](https://download.microsoft.com/download/5/6/0/5609001f-b8ae-412f-89eb-643976f6b79c/mde-deployment-strategy.vsdx)|The architectural material helps you plan your deployment for the following architectures: <ul><li> Cloud-native </li><li> Co-management </li><li> On-premise</li><li>Evaluation and local onboarding</li></ul>|

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
