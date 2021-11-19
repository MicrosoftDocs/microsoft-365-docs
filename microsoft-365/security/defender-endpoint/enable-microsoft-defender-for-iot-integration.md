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

# Enable Microsoft Defender for IoT integration in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

One of our customers biggest challenges is gaining enough visibility to locate, identify, and secure enterprise IoT devices. Integrating with Microsoft Defender for IoT will help you extend you Microsoft Defender for Endpoint device discovery capabilities and increase your visibility and reduce an attackers attempt to compromise and take advantage of enterprise IoT devices in your organization.

Microsoft Defender for IoT provides a unified security solution for identifying IoT/OT devices, vulnerabilities, and threats, and provides agentless monitoring capabilities to secure enterprise IoT devices connected to IT networks, for example, Voice over Internet Protocol (VoIP) devices, printers, and cameras.

Enabling the Microsoft Defender for IoT integration means that IoT devices discovered by Microsoft Defender for IoT or Microsoft Defender for Endpoint will be synched to the device inventory in the Microsoft 365 Defender portal and the Defender for IoT device inventory in the Azure portal. This gives you a single unified view of your complete OT/IoT inventory alongside the rest of your IT devices (workstations, servers and mobile).  

Defender for IoT also includes a deployable network sensor that provides an additional data source to further enhance the integration with Microsoft Defender for IoT. This gives you the most complete view of your IoT and OT devices, specifically for network segments where Defender for Endpoint sensors are not present and in situations where employees are not in the secure office network (more than ever now). For more information, see Get started with Enterprise IoT.

## Prerequisites

To enable Microsoft Defender for IoT the user must have the following roles:

- Tenant global administrator in Azure Active Directory
- Security administration for the Azure subscription that will be used for the Defender for IoT integration

## Enabling Microsoft Defender for IoT integration

1. In the navigation pane, select **Settings** \> **Device discovery** \> **Microsoft Defender for IoT**.

   :::image type="content" source="../../media/enable-defender-for-iot.png" alt-text="Image of Defender for IoT integration from Settings menu1.":::

2. **Select subscription** displays a list of the available subscriptions under your Azure Active Directory (Azure AD) tenant.

3. Choose the Azure subscription and select **Save**.


## Setup a network sensor

You can configure a network sensor. For more information, see [Set up a network sensor](Add link).

## See also

- [Device discovery overview](configure-device-discover.md)
- [Device discovery FAQ](device-discovery-faq.md)
