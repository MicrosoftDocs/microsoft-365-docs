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

# Enable Microsoft Defender for IoT integration

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)


Microsoft have partnered with Corelight to enable sending of events from the Corelight network appliances to Microsoft 365 Defender.  
This will allow Microsoft 365 Defender to extend its security value with visibility to network activities of unmanaged devices in cases they communicate with other unmanaged devices or external networks. These activities are added to the device timeline of unmanaged devices which exist in M365D using the device discovery capability (see [here](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/device-discovery?view=o365-worldwide)).

To enable the Corelight to M365D integration a customer should follow the following

<u>Step 1 – enable the integration in Microsoft 365 Defender</u>  
Go to MDE-&gt;Settings-&gt;Device discovery-&gt;check the Corelight consent enablement checkbox and click on “Save”

> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint\media\image1.png" style="width:6.5in;height:2.97153in" alt="Graphical user interface, text, application Description automatically generated" />

<u>Step 2 – Provide corelight with permission to send events to M365D on behalf of your tenant</u>

<u>Step 3 – configure your Corelight appliance to send data to M365D</u>


## Prerequisites

To enable Microsoft Defender for IoT the user must have the following roles:

- Tenant Global Administrator in Azure Active Directory
- Security Administrator for the Azure subscription that will be used for the Microsoft Defender for IoT integration

## Enabling the Microsoft Defender for IoT integration

1. In the navigation pane of the [https://security.microsoft.com](https://security.microsoft.com/) portal, select **Settings** \> **Device discovery** \> **Microsoft Defender for IoT**.

    ![Image of IoT integration setup.](images/enable-defender-for-iot.png)

2. **Select an Azure subscription** from the dropdown list of available subscriptions in your Azure Active Directory (Azure AD) tenant.
3. Choose the Azure subscription and select **Save**.

## Setup a network sensor

After you have selected your Azure subscription, you'll have the option to add a network sensor.

In the Settings page for Microsoft Defender for IoT, under **Set up network sensors** choose the **Microsoft Defender for IoT** link. This brings you to the Onboard sensor setup process in the Azure portal.

For more information, see [Manage sensors with Defender for IoT in the Azure portal](https://docs.microsoft.com/azure/defender-for-iot/organizations/how-to-manage-sensors-on-the-cloud).

You’ll be able to turn off the Azure subscription integration from the Settings page for Microsoft Defender for IoT. Once you turn off the subscription, you'll no longer see IoT devices discovered by Microsoft Defender for IoT in the Microsoft Defender for Endpoint device inventory.

## See also

- [Device discovery overview](configure-device-discover.md)
- [Device discovery FAQ](device-discovery-faq.md)
