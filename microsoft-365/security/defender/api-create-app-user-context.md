---
title: Create an app to access Microsoft 365 Defender APIs on behalf of a user
description: Learn how to access Microsoft 365 Defender APIs on behalf of a user.
keywords: access, on behalf of user, api, application, user, access token, token,
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.date: 02/16/2021
---

# Create an app to access Microsoft 365 Defender APIs on behalf of a user

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This page describes how to create an application to get programmatic access to Microsoft 365 Defender on behalf of a single user.

If you need programmatic access to Microsoft 365 Defender without a defined user (for example, if you're writing a background app or daemon), see [Create an app to access Microsoft 365 Defender without a user](api-create-app-web.md). If you need to provide access for multiple tenants—for example, if you're serving a large organization or a group of customers—see [Create an app with partner access to Microsoft 365 Defender APIs](api-partner-access.md).If you're not sure which kind of access you need, see [Get started](api-access.md).

Microsoft 365 Defender exposes much of its data and actions through a set of programmatic APIs. Those APIs help you automate workflows and make use of Microsoft 365 Defender's capabilities. This API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you'll need to take the following steps to use these APIs:

- Create an Azure Active Directory (Azure AD) application.
- Get an access token using this application.
- Use the token to access Microsoft 365 Defender API.

This article explains how to:

- Create an Azure AD application
- Get an access token to Microsoft 365 Defender
- Validate the token

> [!NOTE]
> When accessing Microsoft 365 Defender API on behalf of a user, you will need the correct application permissions and user permissions.

> [!TIP]
> If you have the permission to perform an action in the portal, you have the permission to perform the action in the API.

## Create an app

1. Sign in to [Azure](https://portal.azure.com) as a user with the **Global Administrator** role.

2. Navigate to **Azure Active Directory** > **App registrations** > **New registration**.

   :::image type="content" source="../../media/atp-azure-new-app2.png" alt-text="The New registration option in the Manage pane in the Azure portal" lightbox="../../media/atp-azure-new-app2.png":::

3. In the form, choose a name for your application and enter the following information for the redirect URI, then select **Register**.

   :::image type="content" source="../../media/nativeapp-create2.PNG" alt-text="The application registration pane in the Azure portal" lightbox="../../media/nativeapp-create2.PNG":::
   

   - **Application type:** Public client
   - **Redirect URI:** https://portal.azure.com

4. On your application page, select **API Permissions** > **Add permission** > **APIs my organization uses** >, type **Microsoft Threat Protection**, and select **Microsoft Threat Protection**. Your app can now access Microsoft 365 Defender.

   > [!TIP]
   > *Microsoft Threat Protection* is a former name for Microsoft 365 Defender, and will not appear in the original list. You need to start writing its name in the text box to see it appear.

   :::image type="content" source="../../media/apis-in-my-org-tab.PNG" alt-text="Your organization's APIs pane in the Microsoft 365 Defender portal" lightbox="../../media/apis-in-my-org-tab.PNG":::

   - Choose **Delegated permissions**. Choose the relevant permissions for your scenario (for example **Incident.Read**), and then select **Add permissions**.

     :::image type="content" source="../../media/request-api-permissions-delegated.PNG" alt-text="The Delegated permissions pane in the Microsoft 365 Defender portal" lightbox="../../media/request-api-permissions-delegated.PNG":::

    > [!NOTE]
    > You need to select the relevant permissions for your scenario. *Read all incidents* is just an example. To determine which permission you need, please look at the **Permissions** section in the API you want to call.
    >
    > For instance, to [run advanced queries](api-advanced-hunting.md), select the 'Run advanced queries' permission; to [isolate a device](/windows/security/threat-protection/microsoft-defender-atp/isolate-machine), select the 'Isolate machine' permission.

5. Select **Grant admin consent**. Every time you add a permission, you must select **Grant admin consent** for it to take effect.

   :::image type="content" source="../../media/grant-consent-delegated.PNG" alt-text="The admin consent-granting pane in the Microsoft 365 Defender portal" lightbox="../../media/grant-consent-delegated.PNG":::

6. Record your application ID and your tenant ID somewhere safe. They're listed under **Overview** on your application page.

   :::image type="content" source="../../media/app-and-tenant-ids.png" alt-text="The Overview pane in the Microsoft 365 Defender portal" lightbox="../../media/app-and-tenant-ids.png":::

## Get an access token

For more information on Azure Active Directory tokens, see the [Azure AD tutorial](/azure/active-directory/develop/active-directory-v2-protocols-oauth-client-creds).

### Get an access token on behalf of a user using PowerShell

Use the MSAL.PS library to acquire access tokens with Delegated permissions. Run the following commands to get access token on behalf of a user:

```PowerShell
Install-Module -Name MSAL.PS # Install the MSAL.PS module from PowerShell Gallery

$TenantId = " " # Paste your directory (tenant) ID here.
$AppClientId="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" # Paste your application (client) ID here.

$MsalParams = @{
   ClientId = $AppClientId
   TenantId = $TenantId
   Scopes   = 'https://graph.microsoft.com/User.Read.All','https://graph.microsoft.com/Files.ReadWrite'
}

$MsalResponse = Get-MsalToken @MsalParams
$AccessToken  = $MsalResponse.AccessToken
 
$AccessToken # Display the token in PS console
```
## Validate the token

1. Copy and paste the token into [JWT](https://jwt.ms) to decode it.
2. Make sure that the *roles* claim within the decoded token contains the desired permissions.

In the following image, you can see a decoded token acquired from an app, with ```Incidents.Read.All```, ```Incidents.ReadWrite.All```, and ```AdvancedHunting.Read.All``` permissions:

:::image type="content" source="../../media/defender-endpoint/webapp-decoded-token.png" alt-text="The permissions section in the Decoded Token pane in the Microsoft 365 Defender portal" lightbox="../../media/defender-endpoint/webapp-decoded-token.png":::

## Use the token to access the Microsoft 365 Defender API

1. Choose the API you want to use (incidents, or advanced hunting). For more information, see [Supported Microsoft 365 Defender APIs](api-supported.md).
2. In the http request you're about to send, set the authorization header to `"Bearer" <token>`, *Bearer* being the authorization scheme, and *token* being your validated token.
3. The token will expire within one hour. You can send more than one request during this time  with the same token.

The following example shows how to send a request to get a list of incidents **using C#**.

```C#
    var httpClient = new HttpClient();
    var request = new HttpRequestMessage(HttpMethod.Get, "https://api.security.microsoft.com/api/incidents");

    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var response = httpClient.SendAsync(request).GetAwaiter().GetResult();
```

## Related articles

- [Microsoft 365 Defender APIs overview](api-overview.md)
- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Create a 'Hello world' app](api-hello-world.md)
- [Create an app to access Microsoft 365 Defender without a user](api-create-app-web.md)
- [Create an app with multi-tenant partner access to Microsoft 365 Defender APIs](api-partner-access.md)
- [Learn about API limits and licensing](api-terms.md)
- [Understand error codes](api-error-codes.md)
- [OAuth 2.0 authorization for user sign in and API access](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
