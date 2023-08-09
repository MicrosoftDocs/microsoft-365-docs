---
title: Enable Corelight as data source in Microsoft Defender for Endpoint
description: Enable Corelight integration to gain visibility focused on IoT/OT devices in areas of the network where MDE is not deployed
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
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.date: 11/22/2021
---

# Enable Corelight as data source in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

Microsoft has partnered with [Corelight](https://corelight.com/integrations/iot-security), provider of the industry's leading open network detection and response (NDR) platform, to help you discover IoT/OT devices across your organization. Using data, sent from Corelight network appliances, Microsoft 365 Defender gains increased visibility into the network activities of unmanaged devices, including communication with other unmanaged devices or external networks.

With this data source enabled, all events from Corelight network appliances are sent to Microsoft 365 Defender. You can view these activities in the unmanaged devices timeline, available in the Microsoft Defender for Endpoint device inventory. For more information, see [Device discovery](device-discovery.md).

## Prerequisites

1. To setup the Corelight data integration, the user must have the following roles:
   - Tenant Global Administrator in Azure Active Directory
   - Security Administrator for the Azure subscription that will be used for the Microsoft Defender for IoT integration
2. An onboarded Defender for IoT plan. For more information, see [Enable Enterprise IoT security with Defender for Endpoint](/azure/defender-for-iot/organizations/eiot-defender-for-endpoint/).

## Enabling the Corelight integration

To enable the Corelight integration, you'll need to take the following steps:

[Step 1: Turn on Corelight as a data source](#step-1-turn-on-corelight-as-a-data-source)<br>
[Step 2: Provide permission for Corelight to send events to Microsoft 365 Defender](#step-2-provide-permission-for-corelight-to-send-events-to-microsoft-365-defender)<br>
[Step 3: Configure your Corelight appliance to send data to Microsoft 365 Defender](#step-3-configure-your-corelight-appliance-to-send-data-to-microsoft-365-defender)

### Step 1: Turn on Corelight as a data source

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Data sources**.

   :::image type="content" source="../../media/defender-endpoint/enable-corelight.png" alt-text="The data sources page in the Microsoft 365 Defender portal" lightbox="../../media/defender-endpoint/enable-corelight.png":::

2. Select **Send Corelight data to M365D** and select **Save**.

### Step 2: Provide permission for Corelight to send events to Microsoft 365 Defender

> [!NOTE]
> You must be a global admin to grant Corelight permission to access resources in your organization.

1. As a Tenant Global Administrator, go to this [link](<https://login.microsoftonline.com/common/oauth2/authorize?prompt=consent&client_id=d8be544e-9d1a-4825-a5cb-fb447457f692&response_type=code&sso_reload=true>) to grant permission.
2. Go to [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Microsoft 365 Defender**, and take note of the **Tenant ID**. You'll need this information when configuring your Corelight appliance.

### Step 3: Configure your Corelight appliance to send data to Microsoft 365 Defender

> [!NOTE]
> The integration is available in Corelight Sensor software v25 and later.
> 
> You will need internet connectivity for your sensor to reach both the Defender and Corelight cloud services for the solution to work.

#### Enable the integration in the Corelight web interface

1. In the Corelight web interface, navigate to **Sensor** \> **Export**.

   :::image type="content" source="images/exporttodefender.png" alt-text="The kafka export" lightbox="images/exporttodefender.png":::

2. Enable **Export To Microsoft Defender**.
3. Enter your Microsoft 356 Defender Tenant ID.
4. Optionally, you can:
    - set the **Zeek Logs to Exclude**. The minimal set of logs you must include are: dns, conn, files, http, ssl, ssh, x509, snmp, smtp, ftp, sip, dhcp, and notice.
    - choose to create a **Microsoft Defender Log Filter**.
5. Select **Apply Changes**.

#### Enable the integration in the corelight-client

1. Enable **Export To Microsoft Defender** using the following command in the corelight-client:

    ``` command
    corelight-client configuration update \
    --bro.export.defender.enable True
    ```

2. Set your tenant ID

3. Optionally, you can use the following command to exclude certain logs or to create a Microsoft Defender log filter. The minimal set of logs you must include are: dns, conn, files, http, ssl, ssh, x509, snmp, smtp, ftp, sip, dhcp, and notice.

   ``` command
     corelight-client configuration update \
    --bro.export.defender.exclude=<logs_to_exclude> \
    --bro.export.defender.filter=<logs_to_filter>
   ```

## See also

- [Device discovery FAQ](device-discovery-faq.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
