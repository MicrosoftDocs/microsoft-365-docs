---
title: Partner access through Microsoft Defender for Endpoint APIs
ms.reviewer:
description: Learn how to design a web app to get programmatic access to  Microsoft Defender for Endpoint on behalf of your users.
keywords: apis, graph api, supported apis, actor, alerts, device, user, domain, ip, file, advanced hunting, query
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 01/25/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# Partner access through Microsoft Defender for Endpoint APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** 
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/index.yml)

> [!IMPORTANT]
> Advanced hunting capabilities are not included in Defender for Business. See [Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2](../defender-business/compare-mdb-m365-plans.md#compare-defender-for-business-to-defender-for-endpoint-plan-1-and-plan-2).


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

This page describes how to create an Azure Active Directory (Azure AD) application to get programmatic access to Microsoft Defender for Endpoint on behalf of your customers.

Microsoft Defender for Endpoint exposes much of its data and actions through a set of programmatic APIs. Those APIs will help you automate work flows and innovate based on Microsoft Defender for Endpoint capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you'll need to take the following steps to use the APIs:

- Create a **multi-tenant** Azure AD application.
- Get authorized(consent) by your customer administrator for your application to access Defender for Endpoint resources it needs.
- Get an access token using this application.
- Use the token to access Microsoft Defender for Endpoint API.

The following steps will guide you how to create an Azure AD application, get an access token to Microsoft Defender for Endpoint and validate the token.

## Create the multi-tenant app

1. Sign in to your [Azure tenant](https://portal.azure.com) with user that has **Global Administrator** role.

2. Navigate to **Azure Active Directory** \> **App registrations** \> **New registration**.

   :::image type="content" source="images/atp-azure-new-app2.png" alt-text="The navigation to application registration pane" lightbox="images/atp-azure-new-app2.png":::

3. In the registration form:

   - Choose a name for your application.

   - Supported account types - accounts in any organizational directory.

   - Redirect URI - type: Web, URI: https://portal.azure.com

     :::image type="content" source="images/atp-api-new-app-partner.png" alt-text="The Microsoft Azure partner application registration page" lightbox="images/atp-api-new-app-partner.png":::

4. Allow your Application to access Microsoft Defender for Endpoint and assign it with the minimal set of permissions required to complete the integration.

   - On your application page, select **API Permissions** \> **Add permission** \> **APIs my organization uses** > type **WindowsDefenderATP** and select on **WindowsDefenderATP**.

   - **Note**: *WindowsDefenderATP* does not appear in the original list. Start writing its name in the text box to see it appear.

     :::image type="content" source="images/add-permission.png" alt-text="The Add a permission option" lightbox="images/add-permission.png":::

### Request API permissions

To determine which permission you need, review the **Permissions** section in the API you are interested to call. For instance:

- To [run advanced queries](run-advanced-query-api.md), select 'Run advanced queries' permission
- To [isolate a device](isolate-machine.md), select 'Isolate machine' permission

In the following example we will use **'Read all alerts'** permission:

1. Choose **Application permissions** \> **Alert.Read.All** > select on **Add permissions**

   :::image type="content" source="images/application-permissions.png" alt-text="The option that allows to add a permission" lightbox="images/application-permissions.png":::

2. Select **Grant consent**

   - **Note**: Every time you add permission you must select on **Grant consent** for the new permission to take effect.

   :::image type="content" source="images/grant-consent.png" alt-text="The option that allows consent to be granted" lightbox="images/grant-consent.png":::

3. Add a secret to the application.

   - Select **Certificates & secrets**, add description to the secret and select **Add**.

    **Important**: After click Add, **copy the generated secret value**. You won't be able to retrieve after you leave!

     :::image type="content" source="images/webapp-create-key2.png" alt-text="The create app key" lightbox="images/webapp-create-key2.png":::

4. Write down your application ID:

   - On your application page, go to **Overview** and copy the following information:

     :::image type="content" source="images/app-id.png" alt-text="The create application's ID" lightbox="images/app-id.png":::

5. Add the application to your customer's tenant.

   You need your application to be approved in each customer tenant where you intend to use it. This is because your application interacts with Microsoft Defender for Endpoint application on behalf of your customer.

   A user with **Global Administrator** from your customer's tenant need to select the consent link and approve your application.

   Consent link is of the form:

   ```http
   https://login.microsoftonline.com/common/oauth2/authorize?prompt=consent&client_id=00000000-0000-0000-0000-000000000000&response_type=code&sso_reload=true
   ```

   Where 00000000-0000-0000-0000-000000000000 should be replaced with your Application ID

   After clicking on the consent link, sign in with the Global Administrator of the customer's tenant and consent the application.

   :::image type="content" source="images/app-consent-partner.png" alt-text="The Accept button" lightbox="images/app-consent-partner.png":::

   In addition, you will need to ask your customer for their tenant ID and save it for future use when acquiring the token.

6. **Done!** You have successfully registered an application! See examples below for token acquisition and validation.

## Get an access token example

**Note:** To get access token on behalf of your customer, use the customer's tenant ID on the following token acquisitions.

For more information on AAD token, see [AAD tutorial](/azure/active-directory/develop/active-directory-v2-protocols-oauth-client-creds)

### Using PowerShell

```powershell
# That code gets the App Context Token and save it to a file named "Latest-token.txt" under the current directory
# Paste below your Tenant ID, App ID and App Secret (App key).

$tenantId = '' ### Paste your tenant ID here
$appId = '' ### Paste your Application ID here
$appSecret = '' ### Paste your Application key here

$resourceAppIdUri = 'https://api.securitycenter.microsoft.com'
$oAuthUri = "https://login.microsoftonline.com/$TenantId/oauth2/token"
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

### Using C#

> The below code was tested with Nuget Microsoft.Identity.Client

> [!IMPORTANT]
> The [Microsoft.IdentityModel.Clients.ActiveDirectory](https://www.nuget.org/packages/Microsoft.IdentityModel.Clients.ActiveDirectory) NuGet package and Azure AD Authentication Library (ADAL) have been deprecated. No new features have been added since June 30, 2020. We strongly encourage you to upgrade, see the [migration guide](/azure/active-directory/develop/msal-migration) for more details.

- Create a new Console Application
- Install NuGet [Microsoft.Identity.Client](https://www.nuget.org/packages/Microsoft.Identity.Client/)
- Add the below using

    ```console
    using Microsoft.Identity.Client;
    ```

- Copy/Paste the below code in your application (do not forget to update the three variables: `tenantId`, `appId`, and `appSecret`)

    ```csharp
    string tenantId = "00000000-0000-0000-0000-000000000000"; // Paste your own tenant ID here
    string appId = "11111111-1111-1111-1111-111111111111"; // Paste your own app ID here
    string appSecret = "22222222-2222-2222-2222-222222222222"; // Paste your own app secret here for a test, and then store it in a safe place! 
    const string authority = https://login.microsoftonline.com;
    const string audience = https://api.securitycenter.microsoft.com;

    IConfidentialClientApplication myApp = ConfidentialClientApplicationBuilder.Create(appId).WithClientSecret(appSecret).WithAuthority($"{authority}/{tenantId}").Build();

    List<string> scopes = new List<string>() { $"{audience}/.default" };

    AuthenticationResult authResult = myApp.AcquireTokenForClient(scopes).ExecuteAsync().GetAwaiter().GetResult();

    string token = authResult.AccessToken;
    ```

### Using Python

Refer to [Get token using Python](run-advanced-query-sample-python.md#get-token)

### Using Curl

> [!NOTE]
> The below procedure supposed Curl for Windows is already installed on your computer

- Open a command window
- Set CLIENT_ID to your Azure application ID
- Set CLIENT_SECRET to your Azure application secret
- Set TENANT_ID to the Azure tenant ID of the customer that wants to use your application to access Microsoft Defender for Endpoint application
- Run the below command:

```curl
curl -i -X POST -H "Content-Type:application/x-www-form-urlencoded" -d "grant_type=client_credentials" -d "client_id=%CLIENT_ID%" -d "scope=https://securitycenter.onmicrosoft.com/windowsatpservice/.default" -d "client_secret=%CLIENT_SECRET%" "https://login.microsoftonline.com/%TENANT_ID%/oauth2/v2.0/token" -k
```

You will get an answer of the form:

```console
{"token_type":"Bearer","expires_in":3599,"ext_expires_in":0,"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIn <truncated> aWReH7P0s0tjTBX8wGWqJUdDA"}
```

## Validate the token

Sanity check to make sure you got a correct token:

- Copy/paste into [JWT](https://jwt.ms) the token you get in the previous step in order to decode it
- Validate you get a 'roles' claim with the desired permissions
- In the screenshot below, you can see a decoded token acquired from an Application with multiple permissions to  Microsoft Defender for Endpoint:
- The "tid" claim is the tenant ID the token belongs to.

:::image type="content" source="images/webapp-decoded-token.png" alt-text="The token validation page" lightbox="images/webapp-decoded-token.png":::

## Use the token to access Microsoft Defender for Endpoint API

- Choose the API you want to use, for more information, see [Supported Microsoft Defender for Endpoint APIs](exposed-apis-list.md)
- Set the Authorization header in the Http request you send to "Bearer {token}" (Bearer is the Authorization scheme)
- The Expiration time of the token is 1 hour (you can send more than one request with the same token)

- Example of sending a request to get a list of alerts **using C#**

    ```csharp
    var httpClient = new HttpClient();

    var request = new HttpRequestMessage(HttpMethod.Get, "https://api.securitycenter.microsoft.com/api/alerts");

    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var response = httpClient.SendAsync(request).GetAwaiter().GetResult();

    // Do something useful with the response
    ```

## See also

- [Supported Microsoft Defender for Endpoint APIs](exposed-apis-list.md)
- [Access Microsoft Defender for Endpoint on behalf of a user](exposed-apis-create-app-nativeapp.md)
