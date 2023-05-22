---
title: Onboard to Microsoft Defender for Endpoint
description: Learn how to onboard endpoints to Microsoft Defender for Endpoint 
keywords: microsoft defender for endpoint, onboard, deploy
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
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Learn about the various phases of deploying Microsoft Defender for Endpoint and how to configure the capabilities within the solution.

ith the availability of different deployment tools, you can onboard the Windows, Android, iOS, Linux and macOS devices in your organization and take advantage of the preventative protection, post-breach detection, automated investigation, and response capabilities Defender for Endpoint provides.


Deploying Microsoft Defender for Endpoint is a two-stage process.

- Onboard endpoints to the service
- Configure capabilities

The preparation you did at the [Plan your deployment](deployment-plan.md) stage should help guide your steps to onboard to Defender for Endpoint.

Watch this video for a quick overview of the onboarding process and learn about the available tools and methods.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

## Stage 1: Onboard endpoints using any of the supported management tools

The first stage involves onboarding devices to the service. You'll need to go the onboarding section of the Defender for Endpoint portal to onboard any of the supported devices. Depending on the device, you'll be guided with appropriate steps and provided management and deployment tool options suitable for the device.

To onboard devices to the service:

- Verify that the device fulfills the [minimum requirements](minimum-requirements.md)
- Depending on the device, follow the configuration steps provided in the onboarding section of the Defender for Endpoint portal
- Use the appropriate management tool and deployment method for your devices
- Run a detection test to verify that the devices are properly onboarded and reporting to the service

identifying your architecture,  next - you'll need to decide which deployment method to use. The deployment tool you choose influences how you onboard endpoints to the service.

Role-based access control

Choose onboarding tool The following table lists the available tools based on the endpoint that you need to onboard.

Configure capabilities: Onboarding devices effectively enables the endpoint detection and response capability of Microsoft Defender for Endpoint.

After onboarding the devices, you'll then need to configure the other capabilities of the service. The following table lists the capabilities you can configure to get the best protection for your environment.

After onboarding the endpoints, you'll then configure the capabilities. The following table lists the components that you can configure. Choose the components that you'd like to use and remove the ones that don't apply.

## Example deployments

In this deployment guide, we'll guide you through using two deployment tools to onboard endpoints and how to configure capabilities.

The tools in the example deployments are:

- [Onboarding using Microsoft Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Intune](onboarding-endpoint-manager.md)

Using the mentioned deployment tools above, you'll then be guided in configuring the following Defender for Endpoint capabilities:

- Endpoint detection and response configuration
- Next-generation protection configuration
- Attack surface reduction configuration

## Related topics

- [Onboarding using Microsoft Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Intune](onboarding-endpoint-manager.md)
- [Safe Documents in Microsoft 365 E5](../office-365-security/safe-documents-in-e5-plus-security-about.md)
