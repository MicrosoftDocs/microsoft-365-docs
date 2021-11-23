---
title: Enable Corelight integration at Microsoft Defender for Endpoint
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

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

Microsoft has partnered with Corelight to help you discover IoT/OT devices across your organization. Using data, sent from Corelight network appliances, Microsoft 365 Defender gains increased visibility into the network activities of unmanaged devices, including communication with other unmanaged devices or external networks.

With this data source enabled, all events from Corelight network appliances are sent to Microsoft 365 Defender. You can view these activities in the unmanaged devices timeline, available in the Microsoft Defender for Endpoint device inventory. For more information, see [Device discovery](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/device-discovery?view=o365-worldwide).


## Steps to enable the Corelight integration

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Data sources**.

    ![Image of data sources](images/enable-corelight.png)

2. Select **Send Corelight data to M365D** and select **Save**.

Step 2 – Provide corelight with permission to send events to M365D on behalf of your tenant - Waiting for details

Step 3 – configure your Corelight appliance to send data to M365D - Waiting for details

## See also

- [Device discovery FAQ](device-discovery-faq.md)