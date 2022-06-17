---
title: Deploy Microsoft Whiteboard on Windows 10 devices
ms.author: chucked
author: chuckedmonson
manager: alexfaulkner
ms.reviewer: 
audience: admin
ms.topic: article
ms.custom: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn how to deploy Microsoft Whiteboard on Windows 10 or later devices.
ROBOTS: NOINDEX, NOFOLLOW

---

# Deploy Microsoft Whiteboard on Windows 10 devices

Whiteboard can be deployed on devices that run Windows 10 or later using Microsoft Intune or Microsoft Configuration Manager (formerly System Center Configuration Manager). Whiteboard is not supported on Windows Server.

- **Microsoft Intune using an online license mode** – This allows you to specify groups of users who will receive access to the Whiteboard app.

- **Microsoft Configuration Manager using manual offline installation and updates** – This allows you to install Whiteboard and then manually update it every 2–4 weeks.

>[!NOTE]
> We recommend using Microsoft Intune. Using Microsoft Configuration Manager requires IT to continuously repackage and install updates to ensure users are running an up-to-date version.

## Install Whiteboard using Microsoft Intune

1. Add Whiteboard as an available app using the steps in this article: [Add Microsoft Store apps to Microsoft Intune](https://docs.microsoft.com/en-us/mem/intune/apps/store-apps-windows).

2. Assign the app to a group using the steps in this article: [Assign apps to groups with Microsoft Intune](https://docs.microsoft.com/en-us/mem/intune/apps/apps-deploy).

## Install Whiteboard using Microsoft Configuration Manager

1. Using a global administrator account, sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com).

2. In the header, select **Manage**.

3. In the right-hand navigation pane, select **Settings**, and then turn on **Show offline apps**.

4. Wait 10–15 minutes for propagation.

5. Next, go to the [Whiteboard app](https://businessstore.microsoft.com/store/details/microsoft-whiteboard/9mspc6mp8fm4).

6. Select **Get the app**, and then accept the license terms.

7. Go back to the application page.

8. In the **License type** drop-down menu, select **Offline**.

9. Select **Manage**.

10. This takes you to the inventory management page, which will now offer the option to **Download package for offline use**.

11. Choose the architecture version, and then download it.

12. As soon as you have downloaded the app, you can deploy it through Configuration Manager. To create an update package, follow steps 7–10 to download a newer version and package it for Configuration Manager.

13. For more information, see [Install applications for a device](https://docs.microsoft.com/en-us/mem/configmgr/apps/deploy-use/install-app-for-device).


