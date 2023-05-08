---
title: "Zoom data connector setup for Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/12/2023
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
description: "Configure settings in your Zoom accounts in order to activate data connectors for Microsoft Purview Compliance Manager."
---

# Zoom data connector setup for Compliance Manager

Compliance Manager has

Client secret requires a new one every hour. You can copy and pset it in. if yo

tokens refresh. Once you've set up the connector, it takes care of the token refresh automatically (we set it up on our part as part of the connector iteself). But if you create a new connector, you'll need to come back into Zoom to get a new token.

Go to marketplace.zoom.com/develop/create 


Zoom must authenticate each HTTP request made to the Zoom API. Zoom supports different authentication methods. Compliance Manager connectors use the **Server-to-Server OAuth app**, which enables you to securely integrate with Zoom APIs and get your account owner access token without user interaction. This is different from the OAuth app type, which requires user authentication. This app type is added and managed across an account-by-account admins. This app type also enables you to utilize event subscriptions using Webhooks.

## Understanding Zoom accout credentials

**Zoom Account client credentials grant type**

The Zoom account **client credentials** grant type facilitates OAuth-authenticated requests between servers without end-user involvement, also known as server-to-server or two-legged OAuth. Use this grant type to enable your private server application to get your account owner access token without user interaction. The features of the account credentials grant type are:
- The token is the owner’s access token.
- The token’s time to live is 1 hour.
- There is no refresh token.
- Tokens stop working when the app is deactivated.
- Server-to-Server OAuth apps can be deleted.
- Account administrators authorize the scopes available to Developers building these app types.

Account administrators must grant developers role-based access permissions to create, edit, or view Server-to-Server OAuth apps. See Enable permissions below for details.

**Difference from app credentials**

- **Zoom account client credentials** is a new grant type developers can use with the Zoom OAuth Service to facilitate OAuth-authenticated requests without end user involvement. This document describes this grant type and how to use it.

- **App credentials** are the app client credentials, including the client ID and secret, which Zoom provides to app developers to access the Zoom platform.

## Configure Zoom for Compliance Manager connector setup

These instructions are to enable Server-to-server OAuth permissions for the role being used to connect with Compliance Manager. The Zoom administrator must enable the integration account role with view and edit permissions for Server-to-Server OAuth apps.

To do this, the administrator must enable the Server-to-Server OAuth app role. Go to User Management > Roles > Role Settings > Advanced features and select the View and Edit check boxes for Server-to-Server OAuth app. See Zoom's [Using role management](https://support.zoom.com/hc/articles/115001078646) for details.

**Create a Server-to-Server OAuth app**

Follow the steps below to create a Server-to-Server OAuth app to use with account credentials.

1. Navigate to the App Marketplace https://marketplace.zoom.com/develop/create.
1. Choose the **Server-to-Server OAuth** app type.
1. Add a name for your app.
1. App credentials: View your Account ID, Client ID and Client secret. This is information you'll need when you set up the connector in Compliance Manager.
1. Information: Add information about your app, such as a short description and developer contact information (name and email address is required for activation).
1. Toggle whether you’d like to enable event subscriptions. If enabled, choose the event subscriptions you'd like to use.
1. If you have the role permission to add scopes, add any scopes that you’d like to enable. Choose **Add Scopes** to search for and add scopes. Select the required scopes given below which are required for Microsoft's APIs:
    - user:read:admin
    - account:read:admin
1. Your app should be activated. If you see errors that prevent activation, please address them. You will not be able to generate an access token to make API calls unless your app is activated. If your app is deactivated, existing tokens will no longer work. You can also choose to Deactivate your app in this section.