---
title: Access the Microsoft Threat Protection APIs
description: Learn how to access the Microsoft Threat Protection APIs
keywords: access, apis, application context, user context, aad application, access token
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
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
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Access the Microsoft Threat Protection APIs

**Applies to:**
- Microsoft Threat Protection


 Microsoft Threat Protection exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on  Microsoft Threat Protection capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).


In general, you'll need to take the following steps to use the APIs:
- Create an AAD application
- Get an access token using this application
- Use the token to access  Microsoft Threat Protection API


You can access  Microsoft Threat Protection API with **Application Context** or **User Context**.

- **Application Context: (Recommended)** <br>
    Used by apps that run without a signed-in user present. for example, apps that run as background services or daemons.

	Steps that need to be taken to access  Microsoft Threat Protection API with application context:

  1. Create an AAD Web-Application.
  2. Assign the desired permission to the applicationFor example, **Incident.Read.All**, **AdvancedHunting.Read.All**. 
  3. Create a key for this Application.
  4. Get token using the application with its key.
  5. Use the token to access  Microsoft Threat Protection API

     For more information, see [Get access with application context](api-create-app-web.md).


- **User Context:** <br>
    Used to perform actions in the API on behalf of a user.

	Steps that needs to be taken to access  Microsoft Threat Protection API with application context:
  1. Create AAD Native-Application.
  2. Assign the desired permission to the application. For example, **Incident.Read**, **AdvancedHunting.Read**.
  3. Get token using the application with user credentials.
  4. Use the token to access  Microsoft Threat Protection API

     For more information, see [Get access with user context](api-create-app-user-context.md).


## Related topics
- [Microsoft Threat Protection APIs](api-supported.md)
- [Access  Microsoft Threat Protection with application context](api-create-app-web.md)
- [Access  Microsoft Threat Protection with user context](api-create-app-user-context.md)
