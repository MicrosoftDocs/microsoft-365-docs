---
title: Onboard Microsoft Defender for IoT with Microsoft Defender for Endpoint
description: Onboard with Microsoft Defender for IoT to gain visibility and security assessments focused on IoT devices.
keywords: enable siem connector, siem, connector, security information and events
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Onboard with Microsoft Defender for IoT

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

Microsoft Defender for Endpoint now seamlessly integrates with Microsoft Defender for IoT. This integration extends your device discovery capabilities with the agentless monitoring capabilities provided by Defender for IoT. This will help secure enterprise IoT devices connected to IT networks, such as Voice over Internet Protocol (VoIP) devices, printers, and cameras. It allows organizations to take advantage of a single integrated solution that secures all of their IoT, and Operational Technology (OT) infrastructure. For more information, see [Enterprise IoT network protection](/azure/defender-for-iot/organizations/overview-eiot).

Once you've defined a Defender for IoT plan and set up an Enterprise IoT network sensor, device data automatically starts streaming into both the Defender for Endpoint and Defender for IoT portals. 

The Defender for IoT integration provides increased visibility to help locate, identify, and secure the IoT devices in your network. This will give you a single unified view of your complete OT/IoT inventory alongside the rest of your IT devices (workstations, servers, and mobile).

Customers who've onboarded to Defender for IoT also have security reccommendations for vulnerability assessments and misconfigurations for IoT devices.

## Prerequisites

To modify settings for your Defender for Endpoint integration, the user must have the following roles:

- Tenant Global Administrator in Azure Active Directory
- Security Administrator for the Azure subscription that will be used for the Microsoft Defender for IoT integration

## Onboard a Defender for IoT plan

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Enterprise IoT**.

1. Select the following options for your plan:

   - Select the Azure subscription from the list of available subscriptions in your Azure Active Directory tenant where you'd like to add a plan.

   - Select a pricing plan, either a monthly or annual commitment, or a trial. Microsoft Defender for IoT provides a 30-day free trial for the first 1,000 committed devices for evaluation purposes.

      For more information, see the [Microsoft Defender for IoT pricing page](https://azure.microsoft.com/pricing/details/iot-defender/).
   
   - Select the number of committed devices you'll want to monitor. If you selected a trial, this section doesn't appear as you have a default of 1000 devices.

## Set up a network sensor

With an Azure subscription selected, you can add a network sensor.

To add a network sensor, under **Set up network sensors** choose the **Microsoft Defender for IoT** link. This brings you to the Onboard sensor setup process in the Azure portal. For more information, see [Manage sensors with Defender for IoT in the Azure portal](/azure/defender-for-iot/organizations/how-to-manage-sensors-on-the-cloud).

## View devices, alerts, recommendations, and vulnerabities

After defining your plan and setting up a network sensor, view detected data and security assessements in the following locations:

- View device data in Defender for Endpoint or Defender for IoT
- View alerts, recommendations, and vulnerabilities in Defender for Endpoint

For more information, see the [Defender for IoT pricing page](https://azure.microsoft.com/en-gb/pricing/details/iot-defender/). 

## Cancel your Defender for IoT plan

You can cancel your Defender for IoT plan from the Defender for Endpoint settings page in the [https://security.microsoft.com](https://security.microsoft.com/) portal. Once you cancel your plan, the integration stops and you'll no longer get security assessment value in Defender for Endpoint, or detect new devices in Defender for IoT.

## See also

- [Device discovery overview](configure-device-discovery.md)
- [Device discovery FAQ](device-discovery-faq.md)
