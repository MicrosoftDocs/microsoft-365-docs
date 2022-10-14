---
title: Investigate a user account in Microsoft Defender for Endpoint
description: Investigate a user account for potential compromised credentials or pivot on the associated user account during an investigation.
keywords: investigate, account, user, user entity, alert, Microsoft Defender for Endpoint
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: article
ms.date: 04/24/2018
ms.subservice: mde
search.appverid: met150
---

# Investigate a user account in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigatgeuser-abovefoldlink)

## Investigate user account entities

Identify user accounts with the most active alerts (displayed on dashboard as "Users at risk") and investigate cases of potential compromised credentials, or pivot on the associated user account when investigating an alert or device to identify possible lateral movement between devices with that user account.

You can find user account information in the following views:

- Dashboard
- Alert queue
- Device details page

A clickable user account link is available in these views, that will take you to the user account details page where more details about the user account are shown.

When you investigate a user account entity, you'll see:

- User account details, Microsoft Defender for Identity alerts, and logged on devices, role, logon type, and other details
- Overview of the incidents and user's devices
- Alerts related to this user
- Observed in organization (devices logged on to)

:::image type="content" source="images/atp-user-details-view.png" alt-text="The user account entity details page" lightbox="images/atp-user-details-view.png":::

### User details

The **User details** pane on left provides information about the user, such as related open incidents, active alerts, SAM name, SID, Microsoft Defender for Identity alerts, number of devices the user is logged on to, when the user was first and last seen, role, and logon types. Depending on the integration features you've enabled, you'll see other details. For example, if you enable the Skype for business integration, you'll be able to contact the user from the portal. The **Azure ATP alerts** section contains a link that will take you to the Microsoft Defender for Identity page, if you have enabled the Microsoft Defender for Identity feature, and there are alerts related to the user. The Microsoft Defender for Identity page will provide more information about the alerts.

> [!NOTE]
> You'll need to enable the integration on both Microsoft Defender for Identity and Defender for Endpoint to use this feature. In Defender for Endpoint, you can enable this feature in advanced features. For more information on how to enable advanced features, see [Turn on advanced features](advanced-features.md).

The Overview, Alerts, and Observed in organization are different tabs that display various attributes about the user account.


>[!NOTE]
>For Linux devices, information about logged in users is not displayed.


### Overview

The **Overview** tab shows the incidents details and a list of the devices that the user has logged on to. You can expand these to see details of the log-on events for each device.

### Alerts

The **Alerts** tab provides a list of alerts that are associated with the user account. This list is a filtered view of the [Alert queue](alerts-queue.md), and shows alerts where the user context is the selected user account, the date when the last activity was detected, a short description of the alert, the device associated with the alert, the alert's severity, the alert's status in the queue, and who is assigned the alert.

### Observed in organization

The **Observed in organization** tab allows you to specify a date range to see a list of devices where this user was observed logged on to, the most frequent and least frequent logged on user account for each of these devices, and total observed users on each device.

Selecting an item on the Observed in organization table will expand the item, revealing more details about the device. Directly selecting a link within an item will send you to the corresponding page.

## Search for specific user accounts

1. Select **User** from the **Search bar** drop-down menu.
2. Enter the user account in the **Search** field.
3. Click the search icon or press **Enter**.

A list of users matching the query text is displayed. You'll see the user account's domain and name, when the user account was last seen, and the total number of devices it was observed logged on to in the last 30 days.

You can filter the results by the following time periods:

- 1 day
- 3 days
- 7 days
- 30 days
- 6 months

## Related topics

- [View and organize the Microsoft Defender for Endpoint Alerts queue](alerts-queue.md)
- [Manage Microsoft Defender for Endpoint alerts](manage-alerts.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate a file associated with a Defender for Endpoint alert](investigate-files.md)
- [Investigate devices in the Defender for Endpoint Devices list](investigate-machines.md)
- [Investigate an IP address associated with a Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Defender for Endpoint alert](investigate-domain.md)
