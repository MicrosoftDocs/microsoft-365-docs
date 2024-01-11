---
title: Access the Microsoft Defender XDR APIs
description: Learn how to access the Microsoft Defender XDR APIs
keywords: access, apis, application context, user context, aad application, access token
search.product: eADQiWindows 10XVcnh
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
 - m365-security
 - tier3
 - must-keep
ms.topic: reference
search.appverid: 
  - MOE150
  - MET150
ms.custom: api
ms.date: 02/08/2023
---

# Access the Microsoft Defender XDR APIs

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft Defender XDR exposes much of its data and actions through a set of programmatic APIs. These APIs help you automate workflows and make full use of Microsoft Defender XDR's capabilities.

In general, you'll need to take the following steps to use the APIs:

- Create a Microsoft Entra application
- Get an access token using this application
- Use the token to access the Microsoft Defender XDR API

> [!NOTE]
> API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

Once you've accomplished these steps, you're ready to access the Microsoft Defender XDR API using a particular context.

## Application context (Recommended)

Use this context for apps that run without a signed-in user present, such as background services or daemons.

1. Create a Microsoft Entra web application.
2. Assign the desired permissions to the application.
3. Create a key for the application.
4. Get a security token using the application and its key.
5. Use the token to access the Microsoft Defender XDR API.

For more information, see **[Create an app to access Microsoft Defender XDR without a user](api-create-app-web.md)**.

## User context

Use this context to perform actions on behalf of a single user.

1. Create a Microsoft Entra native application.
2. Assign the desired permission to the application.
3. Get a security token using the user credentials for the application.
4. Use the token to access the Microsoft Defender XDR API.

For more information, see **[Create an app to access Microsoft Defender XDR APIs on behalf of a user](api-create-app-user-context.md)**.

## Partner context

Use this context when you need to provide an app to many users across [multiple tenants](/azure/active-directory/develop/single-and-multi-tenant-apps).

1. Create a Microsoft Entra multi-tenant application.
2. Assign the desired permission to the application.
3. Get [admin consent](/azure/active-directory/develop/v2-permissions-and-consent#requesting-consent-for-an-entire-tenant) for the app from each tenant.
4. Get a security token using user credentials based on a customer's tenant ID.
5. Use the token to access the Microsoft Defender XDR API.

For more information, see **[Create an app with partner access to Microsoft Defender XDR APIs](api-partner-access.md)**.

## Related articles

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Microsoft Defender XDR APIs overview](api-overview.md)
- [OAuth 2.0 authorization for user sign in and API access](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code)
- [Manage secrets in your server apps with Azure Key Vault](/training/modules/manage-secrets-with-azure-key-vault/)
- [Create a 'Hello world' application that accesses the Microsoft 365 APIs](api-hello-world.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
