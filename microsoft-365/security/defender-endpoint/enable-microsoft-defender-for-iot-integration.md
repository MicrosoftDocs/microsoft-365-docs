---
title: Enable Microsoft Defender for IoT integration in Microsoft Defender for Endpoint
description: Enable Microsoft Defender for IoT integration to gain visibility focused on IoT/OT devices in areas of the network where MDE is not deployed
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

# Enable Microsoft Defender for IoT integration

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

Microsoft Defender for Endpoint can now integrate with Microsoft Defender for IoT. This integration extends your device discovery capabilities with the agentless monitoring capabilities provided by Microsoft Defender for IoT. This will help secure enterprise IoT devices connected to IT networks, such as, Voice over Internet Protocol (VoIP) devices, printers, and cameras. It allows organizations to take advantage of a single integrated solution that secures all of their IoT, and Operational Technology (OT) infrastructure. For more information, see [Enterprise IoT network protection](/azure/defender-for-iot/organizations/overview-eiot).

With this integration enabled, Microsoft Defender for Endpoint gains increased visibility to help locate, identify, and secure the IoT devices in your network. IoT devices discovered by Microsoft Defender for IoT, or Microsoft Defender for Endpoint will synch automatically across both portals. This will give you a single unified view of your complete OT/IoT inventory alongside the rest of your IT devices (workstations, servers, and mobile).

Microsoft Defender for IoT also includes a deployable network sensor that provides an extra data source. Setting up a network sensor as part of your integration gives you the most complete view of your IoT and OT devices, specifically for network segments where Microsoft Defender for Endpoint sensors are not present, and when employees are accessing information remotely.

## Prerequisites

To enable Microsoft Defender for IoT, the user must have the following roles:

- Tenant Global Administrator in Azure Active Directory
- Security Administrator for the Azure subscription that will be used for the Microsoft Defender for IoT integration

## Enabling the Microsoft Defender for IoT integration

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Microsoft Defender for IoT**.

    ![Image of IoT integration setup.](images/enable-defender-for-iot.png)

2. **Select an Azure subscription** from the dropdown list of available subscriptions in your Azure Active Directory tenant and select **Save**.

## Set up a network sensor

With an Azure subscription selected, you can add a network sensor.

To add a network sensor, under **Set up network sensors** choose the **Microsoft Defender for IoT** link. This brings you to the Onboard sensor setup process in the Azure portal. For more information, see [Manage sensors with Defender for IoT in the Azure portal](/azure/defender-for-iot/organizations/how-to-manage-sensors-on-the-cloud).

## Turn off subscription integration

You can turn off the Azure subscription integration from the Microsoft Defender for IoT settings page in the [https://security.microsoft.com](https://security.microsoft.com/) portal. Once you turn off the subscription, you'll no longer see IoT devices discovered by Microsoft Defender for IoT in the Microsoft Defender for Endpoint device inventory.

## See also

- [Device discovery overview](configure-device-discovery.md)
- [Device discovery FAQ](device-discovery-faq.md)
