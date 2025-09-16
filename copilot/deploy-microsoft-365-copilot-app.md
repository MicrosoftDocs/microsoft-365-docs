---
# Required metadata
# For more information, see https://learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata
# For valid values of ms.service, ms.prod, and ms.topic, see https://learn.microsoft.com/en-us/help/platform/metadata-taxonomies

title: Deployment overview for the Microsoft 365 Copilot app
description: Enterprise and company IT Admins can use this guide to manage the deployment of the Microsoft 365 Copilot app to devices in their organization.
author:      jeffercMSFT # GitHub alias
ms.author:   jefferc # Microsoft alias
ms.service: microsoft-365-copilot
ms.topic: how-to
ms.date:     09/05/2025
manager: ameshm
---

# Deployment overview for the Microsoft 365 Copilot app

The Microsoft 365 Copilot app helps Microsoft 365 users be more productive by providing a single place to access [Microsoft 365 Copilot](microsoft-365-copilot-overview.md) features and capabilities, including search, chat, agents, and more.

## Download and install the app on a single device

The app is available as a [web app](https://m365.cloud.microsoft/), as a desktop app that can be installed on [Windows and Mac Devices](https://www.microsoft.com/microsoft-365/copilot/download-copilot-app), and a mobile app for [Android](https://support.microsoft.com/office/microsoft-365-copilot-app-for-android-0383d031-a1c6-46c9-b734-53cd1d22765b) and [iOS](https://support.microsoft.com/office/microsoft-365-copilot-app-for-ios-c8880c05-883a-46b6-ad32-9bffa31228d0) devices.

## Deploy the app with Microsoft 365 Apps

Windows devices with the Microsoft 365 desktop client apps will automatically install the Microsoft 365 Copilot app. This app installation takes place in the background and would not disrupt the user. This app installation will start in Fall 2025.

> [!NOTE]
> The installation of the Microsoft 365 Copilot app to devices with Microsoft 365 Apps is not enabled for customers in the European Economic Area (EEA).

To prevent the app from installing to a device with existing installations of Microsoft 365 Apps:
1. Sign in to the [Microsoft 365 Apps admin center](https://config.office.com/deploymentsettings) with an admin account.
2. Go to **Customization** > **Device Configuration** > **Modern App Settings**.
3. Select **Microsoft 365 Copilot app**, then clear the **Enable automatic installation of Microsoft 365 Copilot app** check box.
