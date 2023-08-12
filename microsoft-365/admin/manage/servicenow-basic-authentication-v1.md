---
title: "Configure support integration with ServiceNow - Basic Authentication"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 10/28/2021
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Scoped Certified application installation and configuration guide for ServiceNow."
---

# Configure support integration with ServiceNow - Basic Authentication

## Prerequisites (Basic Authentication)

These prerequisites are necessary to set up the **Microsoft 365 support integration**.

1. \[AAD Admin\] Create Azure AD Application under your Microsoft 365 tenant.

    1. Log on to the Azure Portal with your Microsoft 365 tenant credentials and go to the [App registrations page](https://portal.azure.com/?Microsoft_AAD_RegisteredApps=true#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) to create a new application.

    1. Select **Accounts in this organizational directory only ({Microsoft-365-tenant-name} only – Single tenant)** and select **Register**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image3.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Go to **Authentication** and select **Add a platform**. Select the **Web** option and enter the redirect URL: `https://{your-servicenow-instance``}.service-now.com/oauth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image4.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Get the Application Client ID and create a Client secret and get that value.

1. \[ServiceNow Admin\] Set up the Outbound OAuth Provider in ServiceNow.

    If the scope is not set to **Global**, go to **Settings &gt; Developer &gt; Applications** and switch to **Global**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image5.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

1. Go to **System OAuth &gt; Application Registry**.

1. Create a new application by using the **Connect to a third party OAuth Provider** option and entering these values:

    - Client ID: This is the Client ID of the application created in step \#1.

    - Client Secret: This is the Client Secret value of the application created in step \#1.

    - Default Grant type: Client Credentials

    - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

    - Redirect URL: `https://{service-now-instance-name``}.service-now.com/auth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image6.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image6.png" alt-text="Graphical user interface, application Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Inbound OAuth Provider.

    If the scope is not set to **Global**, do so by going to **Settings &gt; Developer &gt; Applications** and switching to **Global**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image5.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

1. Go to **System OAuth &gt; Application Registry**.

1. Create a new application by using the **Create an OAuth API endpoint for external clients** option. Name the inbound OAuth provider and leave all other fields with their default values.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image7.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image7.png" alt-text="Graphical user interface, application Description automatically generated":::

1. \[ServiceNow Admin\] Create an integration user.

    You must specify an integration user. If you don’t have an existing integration user or if you want to create one specifically for this integration, go to **Organization &gt; Users** to create a new user.

    If you're creating a new integration user, check the **Web service access only** option. You must also grant this user with the **incident\_manager** role.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image8.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image8.png" alt-text="Graphical user interface, application Description automatically generated":::

## \[OPTIONAL\] Allow the service’s IP addresses to Microsoft 365 support integration

If your company is limiting internet access with your own policies, enable network access for the service of Microsoft 365 support integration by allowing the IP addresses below for both inbound and outbound API access:

- 52.149.152.32

- 40.83.232.243

- 40.83.114.39

- 13.76.138.31

- 13.79.229.170

- 20.105.151.142

> [!NOTE]
> This terminal command lists all active IPs of the service for Microsoft 365 support integration: `nslookup`` connector.rave.microsoft.com`

## Configure the Microsoft 365 support Integration Application

The Microsoft 365 support integration application can be set up under Microsoft 365 support.

These steps are required to set up the integration between your ServiceNow instance and Microsoft 365 support.

1. \[ServiceNow Admin\] Switch the scope to **Microsoft 365 support integration**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image9.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

1. \[ServiceNow Admin\] Go to **Microsoft 365 Support &gt; Setup** to open the integration workflow.

    > [!NOTE]
    > If you see the error "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table’s cross-scope access policy," it was caused by your table access policy. You must make sure **All application scopes &gt; Can read** is checked for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image10.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image10.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Select **Agree** to continue.

    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-1.png" lightbox="../../media/ServiceNow-guide/snowbasic-1.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Configure the environment and setup type.

    If this installation is on a test environment, select the option This is a test environment. You will be able to quickly disable this option after the setup and all of your tests are completed later.
    If your instance allows Basic Authentication for inbound connections, select Yes, otherwise please refer to the [Advanced Setup with AAD](servicenow-aad-oauth-token.md). :::image type="content" source="../../media/ServiceNow-guide/snowbasic-2.png" lightbox="../../media/ServiceNow-guide/snowbasic-2.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Enter your Microsoft 365 tenant domain.

    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-3.png" lightbox="../../media/ServiceNow-guide/snowbasic-3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Configure Outbound settings.
    1. Register the Azure Active Directory (AAD) App.
    1. After completing the instructions in the prerequisites section, click **Done**. Otherwise, follow the instructions in the wizard to create the necessary application registration in AAD.
    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-4.png" lightbox="../../media/ServiceNow-guide/snowbasic-4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Register the ServiceNow OAuth App.
    1. After completing the instructions in the prerequisites section, select the newly created OAuth application registration and click Next. Otherwise, follow the instructions to create the entity in ServiceNow and then select the new application registration.
    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-5.png" lightbox="../../media/ServiceNow-guide/snowbasic-5.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Configure Inbound settings.
    1. Configure the Inbound OAuth API endpoint.
    1. After completing the instructions in the prerequisites section, select the newly created OAuth application registration and click Done. Otherwise, follow the instructions to create the entity in then select the new REST endpoint registration.
     
    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-6.png" lightbox="../../media/ServiceNow-guide/snowbasic-6.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Configure the Integration User.
    1. After completing the instructions in the prerequisites section, select the newly created integration user and click Next. Otherwise, follow the instructions to create the entity in ServiceNow and then select the new integration user.
    
    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-7.png" lightbox="../../media/ServiceNow-guide/snowbasic-7.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::


1. \[Microsoft 365 Tenant Admin\] Complete the integration in the Microsoft 365 Admin Portal.

    Verify the information below is correct. DO NOT select **Next** at this time.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image17.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image17.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. Go to **Microsoft 365 Admin Portal &gt; Settings &gt; Org settings &gt; Organization profiles**.

1. Configure the support integration settings:

    Select the **Basic information** tab > **Internal support tool** > **ServiceNow**, and enter the **Outbound App ID** value in the **Application ID to issue Auth Token** field. This Outbound App ID is on Step 6 – Complete the Integration, which was created in [Prerequisite (Basic Authentication) step \#1](#prerequisites-basic-authentication).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image18.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. On the **Repositories** tab, select **New repository** and update it with the following settings:

    - Repository: The **Repository ID** value from Step 6 – Complete the Integration.

    - Endpoint: The **Endpoint** value from Step 6 – Complete the Integration.

    - Authentication type: Select **Basic Auth**.

    - Client ID: The **Client ID** value from Step 6 – Complete the Integration.

    - Client secret: The secret of the inbound OAuth provider that was created in Prerequisites (Basic Authentication) step \#3.

    - Refresh token expiry: 864000

    - Rest username: The **User Name** value from Step 6 – Complete the Integration.

    - Rest user password: The password of the integration user that was created in [Prerequisites (Basic Authentication) step \#4](#prerequisites-basic-authentication).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image19.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image19.png" alt-text="Graphical user interface, application Description automatically generate":::

1. Go back to ServiceNow.

1. Select **Next** to complete the integration.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image20.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image20.png" alt-text="Graphical user interface, application, website Description automatically generated":::

1. \[ServiceNow Admin\] Test the connection
    After completing the previous step, click **Test connection**.
    :::image type="content" source="../../media/ServiceNow-guide/snowbasic-8.png" lightbox="../../media/ServiceNow-guide/snowbasic-8.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::
    The Microsoft 365 support integration app will execute tests to ensure the integration is working. If there is a problem with the configuration, an error message will explain what needs to be fixed. Otherwise, the application is ready.
     :::image type="content" source="../../media/ServiceNow-guide/snowbasic-9.png" lightbox="../../media/ServiceNow-guide/snowbasic-9.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Enable Microsoft support integration for an existing user.

    Microsoft 365 support integration is enabled for the user with one of these roles:

    - x\_mioms\_m365\_assis.insights\_user

    - x\_mioms\_m365\_assis.administrator

1. \[OPTIONAL\] [The user with role x_mioms_m365_assis.administrator link] Link Microsoft 365 Admin account.

    If any user has the role x_mioms_m365_assis.administrator and is using different Microsoft 365 accounts to manage a Microsoft 365 support case, they must go to Microsoft 365 support > Link Account to set up their Microsoft 365 admin email.
    
    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image21.png" alt-text="Graphical user interface, text, application Description automatically generated":::
