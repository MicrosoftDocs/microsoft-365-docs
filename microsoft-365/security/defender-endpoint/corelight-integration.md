---
title: Enable Corelight integration in Microsoft Defender for Endpoint
description: Enable Corelight integration to gain visibility focused on IoT/OT devices in areas of the network where MDE is not deployed
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

# Enable Corelight data integration

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

Microsoft has partnered with [Corelight](https://corelight.com/integrations/iot-security), provider of the industry's leading open network detection and response (NDR) platform, to help you discover IoT/OT devices across your organization. Using data, sent from Corelight network appliances, Microsoft 365 Defender gains increased visibility into the network activities of unmanaged devices, including communication with other unmanaged devices or external networks.

With this data source enabled, all events from Corelight network appliances are sent to Microsoft 365 Defender. You can view these activities in the unmanaged devices timeline, available in the Microsoft Defender for Endpoint device inventory. For more information, see [Device discovery](device-discovery.md).

## Enabling the Corelight integration

To enable the Corelight integration, you'll need to take the following steps:

[Step 1: Turn on Corelight as a data source](#step-1-turn-on-corelight-as-a-data-source)<br>
[Step 2: Provide permission for Corelight to send events to Microsoft 365 Defender](#step-2-provide-permission-for-corelight-to-send-events-to-microsoft-365-defender)<br>
[Step 3: Configure your Corelight appliance to send data to Microsoft 365 Defender](#step-3-configure-your-corelight-appliance-to-send-data-to-microsoft-365-defender)

### Step 1: Turn on Corelight as a data source

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Data sources**.

   :::image type="content" source="images/enable-corelight.png" alt-text="The data sources page in the Microsoft 365 Defender portal" lightbox="images/enable-corelight.png":::

2. Select **Send Corelight data to M365D** and select **Save**.

### Step 2: Provide permission for Corelight to send events to Microsoft 365 Defender

> [!NOTE]
> You must be a global admin to grant Corelight permission to access resources in your organization.

1. As a Tenant Global Administrator, go to this [link](<https://login.microsoftonline.com/common/oauth2/authorize?prompt=consent&client_id=d8be544e-9d1a-4825-a5cb-fb447457f692&response_type=code&sso_reload=true>) to grant permission.
2. Go to [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Microsoft 365 Defender**, and take note of the **Tenant ID**. You'll need this information when configuring your Corelight appliance.

### Step 3: Configure your Corelight appliance to send data to Microsoft 365 Defender

> [!NOTE]
>  The integration will be public in Corelight Sensor software v24 and later. 

To preview in v23 or v22.1 you must execute `corelight-client configuration update --enable.adfiot 1` to enable the configuration section in the GUI.

In addition to this, the GUI validation requires that a broker is configured in the configuration section on all v23 releases.  The broker you provide is required but won't actually be used. Enter `127.0.0.1:1234` in the _kafka broker_ field to ensure successful validation before following the steps below to enable sending data to Microsoft 365 Defender.

> [!NOTE]
> You will need internet connectivity for your sensor to reach both the Defender and Corelight cloud services for the solution to work.

#### Enabling in the Corelight Sensor GUI

1. In the Corelight Sensor GUI configuration section, select **Sensor** \> **Export**.
2. From the list, go to **EXPORT TO KAFKA** and select the switch to turn it on.

   :::image type="content" source="images/exporttokafka.png" alt-text="The kafka export" lightbox="images/exporttokafka.png":::

3. Next, turn on **EXPORT TO AZURE DEFENDER FOR IOT** and enter your tenant ID, noted in Step 1, in the TENANT ID field.

   :::image type="content" source="images/exporttodiot.png" alt-text="The iot export" lightbox="images/exporttodiot.png":::

4. Select **Apply Changes**.

   :::image type="content" source="images/corelightapply.png" alt-text="The Apply changes icon" lightbox="images/corelightapply.png":::

> [!NOTE]
> Configuration options in Kafka (excluding Log Exclusion and Filters) should not be changed. Any changes made will be ignored.

#### Enabling in the corelight-client

You can turn on **EXPORT TO KAFKA** and **EXPORT TO AZURE DEFENDER FOR IOT** using the following command in the corelight-client:

`corelight-client configuration update --bro.export.kafka.defender.enable true --bro.export.kafka.defender.tenant\_id <your tenant>`.

> [!IMPORTANT]
> If you're already using Kafka export, contact Corelight Support for an alternate configuration.

To configure only sending the minimal set of logs:

1. In the Corelight Sensor GUI, go to the Kafka section
2. Go to **Zeek logs to exclude**
3. Select **All**
4. Then select **x** beside the following logs to ensure they continue to flow to Microsoft:  
    `dns  conn  files  http  ssl  ssh  x509  snmp  smtp  ftp  sip  dhcp  notice`
5. Select **Apply Changes**

The list of logs that flow to Microsoft may expand over time.

## See also

- [Device discovery FAQ](device-discovery-faq.md)
