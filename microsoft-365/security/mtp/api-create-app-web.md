---
title: Create an app to access Microsoft Threat Protection without a user
description: Learn how to create an app to access Microsoft Threat Protection without a user
keywords: app, access, api, create
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

# Create an app to access Microsoft Threat Protection without a user

**Applies to:**
- Microsoft Threat Protection

>[!IMPORTANT] 
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This page describes how to create an application to get programmatic access to Microsoft Threat Protection without a user. If you need programmatic access to Microsoft Threat Protection on behalf of a user, see [Get access with user context](api-create-app-user-context.md). If you are not sure which access you need, see [Get started](api-access.md).

Microsoft Threat Protection exposes much of its data and actions through a set of programmatic APIs. Those APIs will help you automate work flows and innovate based on Microsoft Threat Protection capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you'll need to take the following steps to use the APIs:
- Create an Azure Active Directory (Azure AD) application.
- Get an access token using this application.
- Use the token to access Microsoft Threat Protection API.

This article explains how to create an Azure AD application, get an access token to Microsoft Threat Protection, and validate the token.

## Create an app

1. Log on to [Azure](https://portal.azure.com) with a user that has the **Global Administrator** role.

2. Navigate to **Azure Active Directory** > **App registrations** > **New registration**. 

   ![Image of Microsoft Azure and navigation to application registration](../../media/atp-azure-new-app2.png)

3. In the registration form, choose a name for your application, and then select **Register**.

4. To enable your app to access Microsoft Threat Protection and assign it permissions, on your application page, select **API Permissions** > **Add permission** > **APIs my organization uses** >, type **Microsoft Threat Protection**, and then select **Microsoft Threat Protection**.

   > [!NOTE]
   > Microsoft Threat Protection does not appear in the original list. You need to start writing its name in the text box to see it appear.

   ![Image of API access and API selection](../../media/apis-in-my-org-tab.PNG)

   - Select **Application permissions** > Choose the relevant permissions for your scenario, e.g. **Incident.Read.All**, and then select **Add permissions**.

   ![Image of API access and API selection](../../media/request-api-permissions.PNG)

    >[!NOTE]
    >You need to select the relevant permissions for your scenario, **'Read all incidents'** is just an example. 
    >To determine which permission you need, please look at the **Permissions** section in the API you are interested to call.

5. Select **Grant consent**.

     > [!NOTE]
     > Every time you add a permission, you must select **Grant consent** for the new permission to take effect.

    ![Image of Grant permissions](../../media/grant-consent.PNG)

6. To add a secret to the application, select **Certificates & secrets**, add a description to the secret, and then select **Add**.

    > [!NOTE]
    > After you select **Add**, select **copy the generated secret value**. You won't be able to retrieve this value after you leave.

    ![Image of create app key](../../media/webapp-create-key2.png)

7. Write down your application ID and your tenant ID. On your application page, go to **Overview** and copy the following.

   ![Image of created app id](../../media/app-and-tenant-ids.png)

8. **For Microsoft Threat Protection Partners only**. [Follow the instructions here](https://docs.microsoft.com/microsoft-365/security/mtp/api-partner-access). Set your app to be multi-tenanted (available in all tenants after consent). This is **required** for third-party apps (for example, if you create an app that is intended to run in multiple customers' tenant). This is **not required** if you create a service that you want to run in your tenant only (for example, if you create an application for your own usage that will only interact with your own data). To set your app to be multi-tenanted:

    - Go to **Authentication**, and add https://portal.azure.com as the **Redirect URI**.

    - On the bottom of the page, under **Supported account types**, select the **Accounts in any organizational directory** application consent for your multi-tenant app.

    You need your application to be approved in each tenant where you intend to use it. This is because your application interacts Microsoft Threat Protection on behalf of your customer.

    You (or your customer if you are writing a third-party app) need to select the consent link and approve your app. The consent should be done with a user who has administrative privileges in Active Directory.

    The consent link is formed as follows: 

    ```
    https://login.microsoftonline.com/common/oauth2/authorize?prompt=consent&client_id=00000000-0000-0000-0000-000000000000&response_type=code&sso_reload=true
    ```

    Where 00000000-0000-0000-0000-000000000000 is replaced with your application ID.


**Done!** You have successfully registered an application! See examples below for token acquisition and validation.

## Get an access token

For more details on Azure AD tokens, see the [Azure AD tutorial](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-client-creds).

### Use PowerShell

```
# That code gets the App Context Token and save it to a file named "Latest-token.txt" under the current directory
# Paste below your Tenant ID, App ID and App Secret (App key).

$tenantId = '' ### Paste your tenant ID here
$appId = '' ### Paste your Application ID here
$appSecret = '' ### Paste your Application key here

$resourceAppIdUri = 'https://api.security.microsoft.com'
$oAuthUri = "https://login.windows.net/$TenantId/oauth2/token"
$authBody = [Ordered] @{
    resource = "$resourceAppIdUri"
    client_id = "$appId"
    client_secret = "$appSecret"
    grant_type = 'client_credentials'
}
$authResponse = Invoke-RestMethod -Method Post -Uri $oAuthUri -Body $authBody -ErrorAction Stop
$token = $authResponse.access_token
Out-File -FilePath "./Latest-token.txt" -InputObject $token
return $token
```

### Use C#:

The following code was tested with Nuget Microsoft.IdentityModel.Clients.ActiveDirectory 3.19.8.

1. Create a new console application.
1. Install Nuget [Microsoft.IdentityModel.Clients.ActiveDirectory](https://www.nuget.org/packages/Microsoft.IdentityModel.Clients.ActiveDirectory/).
1. Add the following:

    ```
    using Microsoft.IdentityModel.Clients.ActiveDirectory;
    ```

1. Copy and paste the following code in your app (don't forget to update the three variables: ```tenantId, appId, appSecret```):

    ```
    string tenantId = "00000000-0000-0000-0000-000000000000"; // Paste your own tenant ID here
    string appId = "11111111-1111-1111-1111-111111111111"; // Paste your own app ID here
    string appSecret = "22222222-2222-2222-2222-222222222222"; // Paste your own app secret here for a test, and then store it in a safe place! 

    const string authority = "https://login.windows.net";
    const string wdatpResourceId = "https://api.security.microsoft.com";

    AuthenticationContext auth = new AuthenticationContext($"{authority}/{tenantId}/");
    ClientCredential clientCredential = new ClientCredential(appId, appSecret);
    AuthenticationResult authenticationResult = auth.AcquireTokenAsync(wdatpResourceId, clientCredential).GetAwaiter().GetResult();
    string token = authenticationResult.AccessToken;
    ```


### Use Python 

```
import json
import urllib.request
import urllib.parse

tenantId = '00000000-0000-0000-0000-000000000000' # Paste your own tenant ID here
appId = '11111111-1111-1111-1111-111111111111' # Paste your own app ID here
appSecret = '22222222-2222-2222-2222-222222222222' # Paste your own app secret here

url = "https://login.windows.net/%s/oauth2/token" % (tenantId)

resourceAppIdUri = 'https://api.securitycenter.windows.com'

body = {
    'resource' : resourceAppIdUri,
    'client_id' : appId,
    'client_secret' : appSecret,
    'grant_type' : 'client_credentials'
}

data = urllib.parse.urlencode(body).encode("utf-8")

req = urllib.request.Request(url, data)
response = urllib.request.urlopen(req)
jsonResponse = json.loads(response.read())
aadToken = jsonResponse["access_token"]
```
### Use Curl

> [!NOTE]
> The following procedure assumes that Curl for Windows is already installed on your computer.

1. Open a command prompt, and set CLIENT_ID to your Azure application ID.
1. Set CLIENT_SECRET to your Azure application secret.
1. Set TENANT_ID to the Azure tenant ID of the customer that wants to use your app to access Microsoft Threat Protection.
1. Run the following command:

```
curl -i -X POST -H "Content-Type:application/x-www-form-urlencoded" -d "grant_type=client_credentials" -d "client_id=%CLIENT_ID%" -d "scope=https://securitycenter.onmicrosoft.com/windowsatpservice/.default" -d "client_secret=%CLIENT_SECRET%" "https://login.microsoftonline.com/%TENANT_ID%/oauth2/v2.0/token" -k
```

You will get an answer in the following form:

```
{"token_type":"Bearer","expires_in":3599,"ext_expires_in":0,"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIn <truncated> aWReH7P0s0tjTBX8wGWqJUdDA"}
```

## Validate the token

Ensure that you got the correct token:

1. Copy and paste the token you got in the previous step into [JWT](https://jwt.ms) in order to decode it.
1. Validate that you get a 'roles' claim with the desired permissions
1. In the following image, you can see a decoded token acquired from an app with ```Incidents.Read.All```, ```Incidents.ReadWrite.All``` and ```AdvancedHunting.Read.All``` permissions:

![Image of token validation](../../media/webapp-decoded-token.png)

## Use the token to access Microsoft Threat Protection API

1. Choose the API you want to use. For more information, see [Supported Microsoft Threat Protection APIs](api-supported.md).

2. Set the authorization header in the http request you send to "Bearer {token}" (Bearer is the authorization scheme).

3. The expiration time of the token is one hour. You can send more then one request with the same token.

The following is an example of sending a request to get a list of incidents **using C#**: 

```
    var httpClient = new HttpClient();

    var request = new HttpRequestMessage(HttpMethod.Get, "https://api.security.microsoft.com/api/incidents");

    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var response = httpClient.SendAsync(request).GetAwaiter().GetResult();

    // Do something useful with the response
```

## Related topics
- [Access the Microsoft Threat Protection APIs](api-access.md)
- [Access  Microsoft Threat Protection with application context](api-create-app-web.md)
- [Access  Microsoft Threat Protection with user context](api-create-app-user-context.md)
