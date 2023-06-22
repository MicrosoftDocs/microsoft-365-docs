---
title: "Zoom connector setup for Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/24/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid:
- MOE150
- MET150
description: "Configure settings in your Zoom accounts in order to activate connectors for Microsoft Purview Compliance Manager."
---

# Zoom setup for Compliance Manager connector

Follow the instructions on this page to enable the connection between your Zoom account and the Compliance Manager connector for Zoom.

Zoom must authenticate each HTTP request made to the Zoom API. Zoom supports different authentication methods. Compliance Manager connectors use the **Server-to-Server OAuth app**, which enables you to securely integrate with Zoom APIs and get your account owner access token without user interaction. This is different from the OAuth app type, which requires user authentication. This app type is added and managed across an account by account admins. This app type also enables you to utilize event subscriptions using Webhooks.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Setup steps

#### 1. Enable permissions

The user who handles the connector activation process for Zoom needs view and edit permissions so that they can set up a Server-to-Server OAuth app in Zoom. The administrator must enable the Server-to-Server OAuth app role by going to **User Management** > **Roles** > **Role Settings** > **Advanced features** and selecting the **View** and **Edit** checkboxes for **Server-to-Server OAuth** app. See Zoom's [Using role management](https://support.zoom.com/hc/articles/115001078646) for details.

#### 2. Create a Server-to-Server OAuth app

Follow the steps below to create a Server-to-Server OAuth app to use with account credentials.

1. Sign in to your Zoom account and go to the Zoom App Marketplace: https://marketplace.zoom.com/develop/create.
1. From the **Develop** drop-down menu, select **Build application**.
1. Find the **Server-to-Server OAuth** app type card, then select **Create**.
1. Enter a name for your app, then select **Create**.
1. On the **App credentials** page: View and copy your Account ID, Client ID and Client secret.
    > [!TIP]
    > You'll enter these credendials when activating the Zoom connector in Compliance Manager. The client secret expires one hour after you generate it, so you may want to activate the Zoom connector in Compliance Manager soon after creating the Server-to-Server OAuth app.
1. On the **Information** page: Add information about your app, such as a short description and developer contact information (name and email address is required for activation).
1. On the **Feature** page: Set the toggle to your preferred setting for event subscriptions. If enabled, choose the event subscriptions you'd like to use.
1. On the **Scopes** page: If you have the role permission to add scopes, add any scopes that you’d like to enable. Choose **Add Scopes** to search for and add scopes. Select the required scopes listed below, which are required for Microsoft APIs:
    - user:read:admin
    - account:read:admin
1. On the **Activation** page: Select **Activate your app**. Your app should be activated. If you see errors preventing activation, address them and retry the activation. You won't be able to generate an access token to make API calls unless your app is activated.

If your app is deactivated, existing tokens will no longer work. You can also choose to deactivate your app in this section.

#### 3. Activate connector in Compliance Manager

When you activate a Zoom connector in Compliance Manager, you'll provide your Account ID, Client ID, and Client secret. Once you validate the connection during the connector activation process, you're all set up and ready to begin using the connector. Get details at [Working with connectors in Compliance Manager](compliance-manager-connectors.md).

You can always retrieve your app credentials by following these steps:

1.  From the Zoom App Marketplace, select **Manage** in the upper right corner.
1. Select the app you created in step 2 above.
1. On the **App credentials** page, select **Copy** next to the credentials you need to copy.