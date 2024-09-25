---
title: Deploy Microsoft Whiteboard on Windows 10 devices
ms.author: alexfaulkner
author: johnddeweese
manager: alexfaulkner
ms.reviewer: 
ms.date: 11/03/2021
audience: admin
ms.topic: install-set-up-deploy
ms.custom: 
ms.service: whiteboard
search.appverid: MET150
ms.collection: essentials-get-started
ms.localizationpriority: medium
description: Learn how to deploy Microsoft Whiteboard on devices running Windows 10 or later versions.
---

# Deploy Microsoft Whiteboard on Windows 10 devices

Whiteboard can be deployed on devices that run Windows 10 or later using Microsoft Intune or Microsoft Configuration Manager (formerly System Center Configuration Manager). Whiteboard isn't supported on Windows Server.

In order to deploy Whiteboard, you must first ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard](manage-whiteboard-access-organizations.md).

- **Microsoft Intune using an online license mode** – This process allows you to specify groups of users who will receive access to the Whiteboard app.

- **Microsoft Configuration Manager using manual offline installation and updates** – This process allows you to install Whiteboard and then manually update it every 2–4 weeks.

>[!NOTE]
> We recommend using Microsoft Intune. Using Microsoft Configuration Manager requires IT to continuously repackage and install updates to ensure users are running an up-to-date version.

## Install Whiteboard using Microsoft Intune

1. Add Whiteboard as an available app using the steps in this article: [Add Microsoft Store apps to Microsoft Intune](/mem/intune/apps/store-apps-windows).

2. Assign the app to a group using the steps in this article: [Assign apps to groups with Microsoft Intune](/mem/intune/apps/apps-deploy).

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

10. This action takes you to the inventory management page, which will now offer the option to **Download package for offline use**.

11. Choose the architecture version, and then download it.

12. As soon as you've downloaded the app, you can deploy it through Configuration Manager. To create an update package, follow steps 7–10 to download a newer version and package it for Configuration Manager.

13. For more information, see [Install applications for a device](/mem/configmgr/apps/deploy-use/install-app-for-device).

## See also

[Manage access to Whiteboard](manage-whiteboard-access-organizations.md)

[Manage data for Whiteboard](manage-data-organizations.md)

[Manage sharing for Whiteboard](manage-sharing-organizations.md)
