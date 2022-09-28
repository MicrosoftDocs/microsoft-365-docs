---
title: Onboard Microsoft Defender for IoT with Microsoft Defender for Endpoint
description: Onboard with Microsoft Defender for IoT to gain visibility and security assessments focused on IoT devices.
keywords: enable siem connector, siem, connector, security information and events
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: article
ms.subservice: mde
---

# Onboard with Microsoft Defender for IoT

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint P2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

Microsoft Defender for Endpoint now seamlessly integrates with Microsoft Defender for IoT. This integration extends your device discovery capabilities with the agentless monitoring capabilities provided by Defender for IoT. The Defender for IoT integration provides increased visibility to help locate, identify, and secure the enterprise IoT devices in your network, such as Voice over Internet Protocol (VoIP) devices, printers, and cameras.

This allows organizations to take advantage of a single integrated solution that secures all of their IoT, and Operational Technology (OT) infrastructure. For more information, see [Enterprise IoT network protection](/azure/defender-for-iot/organizations/overview-eiot).

The Defender for IoT integration gives you a single unified view of your complete OT/IoT inventory alongside the rest of your IT devices (workstations, servers, and mobile). Customers who've onboarded to Defender for IoT will also get information on alerts, vulnerabilities and security recommendations for their IoT devices.

## Prerequisites

To modify settings for your Defender for Endpoint integration, the user must have the following roles:

- Tenant Global Administrator in Azure Active Directory
- Security Administrator for the Azure subscription that will be used for the Microsoft Defender for IoT integration

## Onboard a Defender for IoT plan

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Enterprise IoT**.

2. Select the following options for your plan:

   - Select the Azure subscription from the list of available subscriptions in your Azure Active Directory tenant where you'd like to add a plan.

   - Select a pricing plan, either a monthly or annual commitment, or a trial. Microsoft Defender for IoT provides a 30-day free trial for the first 1,000 committed devices for evaluation purposes.

      For more information, see the [Microsoft Defender for IoT pricing page](https://azure.microsoft.com/pricing/details/iot-defender/).

   - Select the number of committed devices you'll want to monitor. If you selected a trial, this section doesn't appear as you have a default of 1000 devices.

3. Accept the **terms and conditions** and select **Save**.

> [!NOTE]
> Setting up an Enterprise IoT network sensor is currently in public preview. For more information, see [Shared device inventory](#shared-device-inventory).

## Managing your IoT devices

To view and manage your IoT devices in the [Microsoft 365 Defender portal](https://security.microsoft.com/) go to the **Device inventory** from the **Endpoints** navigation menu and select the **IoT devices** tab.

For information on how to view the devices in Defender for IoT, see [Manage your IoT devices with the device inventory for organizations](/azure/defender-for-iot/organizations/how-to-manage-device-inventory-for-organizations).

## View devices, alerts, recommendations, and vulnerabilities

After onboarding to a Defender for IoT plan, view detected data and security assessments in the following locations:

- View device data in Defender for Endpoint or Defender for IoT
- View [alerts](alerts-queue-endpoint-detection-response.md), [recommendations](../defender-vulnerability-management/tvm-security-recommendation.md), and [vulnerabilities](../defender-vulnerability-management/tvm-weaknesses.md) in the [Microsoft 365 Defender portal](https://security.microsoft.com).

### Shared device inventory

Defender for Endpoint customers can also set up the Enterprise IoT network sensor (currently in **Public Preview**) to gain more visibility into additional IoT segments of the corporate network that were not previously covered by Defender for Endpoint. Customers that have set up an Enterprise IoT network sensor will be able to see all discovered devices in the **Device inventory** in either Defender for Endpoint or Defender for IoT.

To add a network sensor, in the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal:

1. Select **Settings** \> **Device discovery** \> **Enterprise IoT**
2. Under **Set up network sensors** choose the **Microsoft Defender for IoT** link

This brings you to the sensor setup process in the Azure portal. For more information, see [Get started with Enterprise IoT](/azure/defender-for-iot/organizations/tutorial-getting-started-eiot-sensor).

> [!IMPORTANT]
> Setting up an Enterprise IoT Network sensor is currently in PREVIEW. See the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for additional legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.

## Cancel your Defender for IoT plan

Cancel your Defender for IoT plan from the Defender for Endpoint settings page in the [https://security.microsoft.com](https://security.microsoft.com/) portal. Once you cancel your plan, the integration stops and you'll no longer get security assessment value in Defender for Endpoint, or detect new devices in Defender for IoT.

For more details about plan cancellation and data considerations, please see [Cancel a Defender for IoT plan](/azure/defender-for-iot/organizations/how-to-manage-subscriptions#cancel-a-defender-for-iot-plan-from-a-subscription) in the Defender for IoT documentation.

## See also

- [Device discovery overview](configure-device-discovery.md)
- [Device discovery FAQ](device-discovery-faq.md)
