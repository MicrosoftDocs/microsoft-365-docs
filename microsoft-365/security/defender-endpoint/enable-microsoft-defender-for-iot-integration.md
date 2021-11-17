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

Enable the Microsoft Defender for IoT integration to extend Microsoft Defender for Endpoint device discovery capabilities. With Defender for IoT enabled, you're adding agentless monitoring capabilities to secure enterprise IoT devices connected to IT networks [like Voice over Internet Protocol (VoIP), printers, and smart TVs]. This allows you take advantage of a single integrated solution that can secure your IoT and OT infrastructure.

View your complete IT/IoT inventory along side the rest of your IT devices (workstations, servers and mobile) within a single unified view.

A unified security solution for IoT and OT

1. Network sensor details! V azure description?? 

The ability to connect the MDIOT network sensor (aka. CyberX sensor) as and additional data source 

The sensor can provide visibility to areas of the network 

Where MDE is not deployed 

When employees are not in the office (covid) 

The Sensor provides visibility to IoT-IoT communication or IoT-Internet communication (coming TBD) 

Any discovered device from MDE\MDIOT sensors will be synced across both portals 


## Prerequisites

To enable Microsoft Defender for IoT the user must have the following roles:

- Tenant global administrator in Azure Active Directory
- Security administration for the Azure subscription that will be used for the Defender for IoT integration

## Enabling Microsoft Defender for IoT integration

1. In the navigation pane, select **Settings** \> **Device discovery** \> **Microsoft Defender for IoT**.

   :::image type="content" source="../../media/enable-defender-for-iot.png" alt-text="Image of Defender for IoT integration from Settings menu1.":::

2. **Select subscription** displays a list of the available subscriptions under your Azure Active Directory (Azure AD) tenant.

3. Choose the Azure subscription and select **Save**

<!-->
   > [!NOTE]
   > If you select HP ArcSight, you'll need to save these two configuration files:
   >
   > - WDATP-connector.jsonparser.properties
   > - WDATP-connector.properties

   If you want to connect directly to the detections REST API through programmatic access, choose **Generic API**.

4. Copy the individual values or select **Save details to file** to download a file that contains all the values.

5. Select **Generate tokens** to get an access and refresh token.

   > [!NOTE]
   > You'll need to generate a new Refresh token every 90 days.

6. Follow the instructions for [creating an Azure AD app registration for Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/exposed-apis-create-app-webapp) and assign the correct permissions to it to read alerts.

You can now proceed with configuring your SIEM solution or connecting to the detections REST API through programmatic access. You'll need to use the tokens when configuring your SIEM solution to allow it to receive detections from Microsoft 365 Defender.

## Integrate Microsoft Defender for Endpoint with IBM QRadar

You can configure IBM QRadar to collect detections from Microsoft Defender for Endpoint. For more information, see [IBM Knowledge Center](https://www.ibm.com/docs/en/qsip/7.3.2?topic=quick-start-guide).

## See also

- [Configure HP ArcSight to pull Microsoft Defender for Endpoint detections](configure-arcsight.md)
- [Microsoft Defender for Endpoint Detection fields](api-portal-mapping.md)
- [Pull Microsoft Defender for Endpoint detections using REST API](pull-alerts-using-rest-api.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
