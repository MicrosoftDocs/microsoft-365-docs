---
title: Access Microsoft 365 Defender APIs using on behalf of user
description: Learn how to access Microsoft 365 Defender APIs using on behalf of user
keywords: access, on behalf of user, api, application, user, access token, token, 
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

# Access Microsoft 365 Defender APIs on behalf of user

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

>[!IMPORTANT] 
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


This page describes how to create an application to get programmatic access to Microsoft 365 Defender on behalf of a user.

If you need programmatic access Microsoft 365 Defender without a user, refer to [Create an app to access Microsoft 365 Defender without a user](api-create-app-web.md).

If you are not sure which access you need, read the [Access the Microsoft 365 Defender APIs](api-access.md).

Microsoft 365 Defender exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate work flows and innovate based on Microsoft 365 Defender capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
- Create an AAD application
- Get an access token using this application
- Use the token to access Microsoft 365 Defender API

This page explains how to create an AAD application, get an access token to Microsoft 365 Defender and validate the token.

>[!NOTE]
> When accessing Microsoft 365 Defender API on behalf of a user, you will need the correct Application permission and user permission.


>[!TIP]
> If you have the permission to perform an action in the portal, you have the permission to perform the action in the API.

## Create an app

1. Log on to [Azure](https://portal.azure.com) with user that has **Global Administrator** role.

2. Navigate to **Azure Active Directory** > **App registrations** > **New registration**. 

   ![Image of Microsoft Azure and navigation to application registration](../../media/atp-azure-new-app2.png)

3. In the registration from, enter the following information then click **Register**.

   ![Image of Create application window](../../media/nativeapp-create2.PNG)

   - **Name:** Your application name
   - **Application type:** Public client
   - **Redirect URI:** https://portal.azure.com

4. To enable your app to access Microsoft 365 Defender and assign it permissions, on your application page, select **API Permissions** > **Add permission** > **APIs my organization uses** >, type **Microsoft 365 Defender**, and then select **Microsoft 365 Defender**.

    >[!NOTE]
    > Microsoft 365 Defender does not appear in the original list. You need to start writing its name in the text box to see it appear.

      ![Image of API access and API selection](../../media/apis-in-my-org-tab.PNG)

    - Choose **Delegated permissions** > Choose the relevant permissions for your scenario, e.g. **Incident.Read**, and then select **Add permissions**.

      ![Image of API access and API selection](../../media/request-api-permissions-delegated.PNG)

     >[!IMPORTANT]
     >You need to select the relevant permissions. 

    -  To determine which permission you need, please look at the **Permissions** section in the API you are interested to call.

    - Click **Grant consent**

      >[!NOTE]
      >Every time you add permission you must click on **Grant consent** for the new permission to take effect.

      ![Image of Grant permissions](../../media/grant-consent-delegated.PNG)

6. Write down your application ID and your tenant ID:

   - On your application page, go to **Overview** and copy the following:

   ![Image of created app id](../../media/app-and-tenant-ids.png)


## Get an access token using PowerShell

```
#Install the ADAL.PS package if it's not installed.
if(!(Get-Package adal.ps)) { Install-Package -Name adal.ps }

$authority = "https://login.windows.net/{tenant-id}" # replace {tenant-id} with your tenant ID.

$clientId = "{application-id}" #replace {application-id} with your application ID.

$redirectUri = "{redirect-uri}" # replace {redirect-uri} with your application redirect URI.

$resourceUrl = "https://api.security.microsoft.com"

$response = Get-ADALToken -Resource $resourceUrl -ClientId $clientId -RedirectUri $redirectUri -Authority $authority -PromptBehavior:Always
$response.AccessToken | clip
$response.AccessToken
```

## Related topics
- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Access  Microsoft 365 Defender with application context](api-create-app-web.md)
