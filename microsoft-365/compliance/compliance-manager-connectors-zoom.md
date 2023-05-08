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