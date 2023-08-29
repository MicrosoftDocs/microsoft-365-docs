---
title: Respond to and mitigate threats in Microsoft Defender for Business
description: As threats are detected in Defender for Business, you can take actions to respond to those threats. See how to use the device inventory view.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 09/14/2022
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# Respond to and mitigate threats in Microsoft Defender for Business

The Microsoft 365 Defender portal enables your security team to respond to and mitigate detected threats. This article walks you through an example of how you can use Defender for Business.


## View detected threats

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Notice cards on the Home page. Cards tell you at a glance how many threats were detected, along with how many user accounts, endpoints (devices), and other assets were affected. The following image is an example of cards you might see:

   :::image type="content" source="../../media/defender-business/mdb-examplecards.png" alt-text="Screenshot of cards in the Microsoft 365 Defender portal":::

3. Select a button or link on the card to view more information and take action. As an example, our **Devices at risk** card includes a **View details** button. Selecting that button takes us to the **Devices** list, as shown in the following image:

   :::image type="content" source="../../media/defender-business/mdb-device-inventory.png" alt-text="Screenshot of device inventory":::

   The **Devices** page lists company devices, along with their risk level and exposure level.

4. Select an item, such as a device. A flyout pane opens and displays more information about alerts and incidents generated for that item, as shown in the following image:  

   :::image type="content" source="../../media/defender-business/mdb-deviceinventory-selecteddeviceflyout.png" alt-text="Screenshot of the flyout pane for a selected device":::

5. On the flyout, view the information that is displayed. Select the ellipsis (...) to open a menu that lists available actions, as shown in the following image: 

   :::image type="content" source="../../media/defender-business/mdb-deviceinventory-selecteddeviceflyout-menu.png" alt-text="Screenshot of available actions for a selected device":::

6. Select an available action. For example, you might choose **Run antivirus scan**, which will cause Microsoft Defender Antivirus to start a quick scan on the device. Or, you could select **Initiate Automated Investigation** to trigger an automated investigation on the device.

## Next steps

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)
- [Manage devices in Defender for Business](mdb-manage-devices.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
