---
title: "Configure Microsoft 365 support integration with AAD OAuth Token"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Scoped Certified application installation and configuration guide for ServiceNow."
---

# Configure Microsoft 365 support integration with AAD OAuth Token

## Prerequisites (AAD OAuth Token)

These prerequisites are necessary to set up the Microsoft 365 support integration.

1. \[AAD Admin\] Create AAD Application for Outbound under your Microsoft 365 tenant.

    1. Log on to the Azure Portal with your Microsoft 365 tenant credentials and go to the [App registrations page](https://portal.azure.com/?Microsoft_AAD_RegisteredApps=true#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) to create a new application.

    2. Select **Accounts in this organizational directory only ({Microsoft-365-tenant-name} only – Single tenant)** and select **Register**.

        :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image3.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Go to **Authentication** and select **Add a platform**. Select the **Web** option and enter the redirect URL: `https://{your-servicenow-instance``}.service-now.com/auth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image4.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Get the Application Client ID and create a Client secret and get that value.

1. \[AAD Admin\] Create an AAD application for Rest API under your Microsoft 365 tenant.

    1. Log on to the [Azure Portal](https://portal.azure.com/) with your Microsoft 365 tenant credentials and go to the App registrations page to create a new application.

    1. Select **Accounts in this organizational directory only {(Microsoft-365-tenant-name} only – Single tenant)**.

        :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image22.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image22.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Get the Application Client ID and create a Client secret and get that value.

1. \[AAD Admin\] Create an AAD Application for Rest User under your Microsoft 365 tenant.

    1. Log on to the [Azure Portal](https://portal.azure.com/) with your Microsoft 365 tenant credentials and go to the App registrations page to create a new application.

    1. Select **Accounts in this organizational directory only {(Microsoft-365-tenant-name} only – Single tenant)**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image23.png" lightbox="../../media/ServiceNow-guide/ServiceNow-guide-image23.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Get the Application Client ID and create a Client secret and get that value.

1. \[ServiceNow Admin\] Set up the Outbound OAuth Provider in ServiceNow.

    If the scope is not set to **Global**, do so by navigating to **Settings &gt; Developer &gt; Applications** and switching to **Global**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image5.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

1. Go to **System OAuth &gt; Application Registry**.

1. Create a new application using the **Connect to a third party OAuth Provider** option and entering these values:

    - Client ID: This is the Client ID of the application created in Prerequisites (AAD OAuth Token) step \#1.

    - Client Secret: This is the Client Secret value of the application created in Prerequisites (AAD OAuth Token) step \#1.

    - Default Grant type: Client Credentials

    - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

    - Redirect URL: `https://{service-now-instance-name``}.service-now.com/auth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image6.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image6.png" alt-text="Graphical user interface, application Description automatically generated":::

1. \[ServiceNow Admin\] To configure the OIDC provider in ServiceNow, see the [online documentation](https://docs.servicenow.com/bundle/quebec-platform-administration/page/administer/security/task/add-OIDC-entity.html).

    If the scope is not set to **Global**, go to **Settings &gt; Developer &gt; Applications** and switch to **Global**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image5.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

1. Go to **System OAuth &gt; Application Registry**.

1. Select **New**, and then select **Create new Open ID Connect Provider**.

1. In **OAuth OIDC Provider Configuration**, select **Search** and create a new OIDC provider configuration under **oidc\_provider\_configuration.list** with these values:

    - OIDC Provider: **{Tenant\_Name} Azure** (example: Contoso Azure)

    - OIDC Metadata URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/.well-known/openid-configuration`

    - UserClaim: **appId**

    - UserField: **User ID**

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image24.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image24.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. Create a new application by selecting **Configure an OIDC provider to verify ID tokens** with these values:

    - Name: **{Tenant\_Name}\_application\_inbound\_api** (example: contoso\_applicaiton\_inbound\_api)

    - Client ID: The Client ID of the application created in Prerequisites (AAD OAuth Token) step \#2.

    - Client Secret: The App Secret of the application created in Prerequisites (AAD OAuth Token) step \#2.

    - OAuth OIDC Provider Configuration: The OIDC provider created in the previous step

    - Redirect URL: `https://{service-now-instance-name}.service-now.com/oauth\_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image25.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image25.png" alt-text="Graphical user interface, application Description automatically generated":::

1. \[ServiceNow Admin\] Create Integration Users.

    You must specify an integration user. If you don’t have an existing integration user or if you want to create one specifically for this integration, go to **Organization &gt; Users** to create a new user. The value of the **User ID** is the application Client ID created in [Prerequisites (AAD OAuth Token) step \#3](#prerequisites-aad-oauth-token).

    If you are creating a new integration user, check the **Web service access only** option. You must also grant this user with the **incident\_manager** role.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image26.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image26.png" alt-text="Graphical user interface, application Description automatically generated":::

## \[OPTIONAL\] Allow the service’s IP addresses to Microsoft 365 support integration

If your company is limiting internet access with your own policies, enable network access for the service of Microsoft 365 support integration by allowing the IP addresses below for both inbound and outbound API access.

- 52.149.152.32

- 40.83.232.243

- 40.83.114.39

- 13.76.138.31

- 13.79.229.170

- 20.105.151.142

> [!NOTE]
> This terminal command lists all active IPs of the service for Microsoft 365 support integration: `nslookup`` connector.rave.microsoft.com`

## Configure the Microsoft 365 support integration Application

The Microsoft 365 support integration application can be set up under Microsoft 365 support.

These steps are required to set up the integration between your ServiceNow instance and Microsoft 365 support.

1. \[ServiceNow Admin\] Switch the scope to **Microsoft 365 support integration**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image9.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

1. \[ServiceNow Admin\] Go to **Microsoft 365 Support &gt; Setup** to open the integration workflow.

    > [!NOTE]
    > If you see the error "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table’s cross-scope access policy," it was caused by your table access policy. You must make sure **All application scopes &gt; Can read** is checked for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image27.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image27.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Select **Agree** to the consent prompt to continue.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image11.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image11.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Outbound OAuth Provider.

    Select the OAuth profile for Outbound OAuth Provider created in [Prerequisites (AAD OAuth Token) step \#4](#prerequisites-aad-oauth-token), and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image12.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image12.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Inbound OAuth Provider.

    1. Uncheck **Skip current step**.

    1. Check **External OIDC Auth Token**.

    1. Select the OAuth Client created in [Prerequisites (AAD OAuth Token) step \#5](#prerequisites-aad-oauth-token), and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image28.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image28.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Inbound Call Integration User.

    1. Uncheck **Skip current step**.

    1. Enter the **Client ID** of the application that was created in [Prerequisites (AAD OAuth Token) step \#3](#prerequisites-aad-oauth-token), and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image39.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image39.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Repository ID.

    Specify the repository ID, and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image15.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image15.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. \[ServiceNow Admin\] Set up Application Settings.

    Select the following settings, and then select **Next**.

    - SSO with Microsoft 365: Check whether the ServiceNow instance is set up as SSO with Microsoft 365 tenants, otherwise uncheck it.

    - Microsoft 365 admin email: The email of Microsoft 365 admin user who is contacted when Microsoft 365 support cases are created.

    - Test Environment: Check the box to indicate a test phase to avoid Microsoft support agents contacting you to address the issue. If you’re ready to move forward officially with Microsoft 365 support integration, uncheck the box.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image16.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image16.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. \[Microsoft 365 Tenant Admin\] Complete the integration.

    Verify the information below is correct. DO NOT select **Next** at this time.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image40.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image40.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Go to **Microsoft 365 Admin Portal &gt; Settings &gt; Org settings &gt; Organization profiles**.

1. Configure the support integration settings:

    Select the **Basic information** tab > **Internal support tool** > **ServiceNow**, and enter the **Outbound App ID** value in the **Application ID to issue OAuth token** field. This Outbound App ID is on Step 6 – Complete the Integration, which was created in [Prerequisite (AAD OAuth Token) step \#1](#prerequisites-aad-oauth-token).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image18.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. On the **Repositories** tab, select **New repository** and update it with the following settings:

    - Repository: The **Repository ID** value from "Step 6 – Complete the Integration".

    - Endpoint: The **Endpoint** value from "Step 6 – Complete the Integration".

    - Authentication type: Select **AAD Auth**.

    - Client ID: The **Client ID** value from Step 6 – Complete the Integration.

    - Client secret: The secret of the inbound OAuth provider that was created in Prerequisites (AAD OAuth Token) step \#2.

    - Rest username: The **User Name** value from Step 6 – Complete the Integration, which is the **Client ID** of the application created in Prerequisites (AAD OAuth Token) step \#3.

    - Rest user password: The App Secret of the application that was created in Prerequisites (AAD OAuth Token) step \#3.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image31.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image31.png" alt-text="Graphical user interface, application Description automatically generated":::

1. Go back to ServiceNow.

1. Select **Next** to complete the integration.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image32.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image32.png" alt-text="Graphical user interface, application Description automatically generated":::

1. \[ServiceNow Admin\] Enable Microsoft support integration for an existing user.

    Microsoft 365 support integration is enabled for the user with one of these roles:

    - x\_mioms\_m365\_assis.insights\_user

    - x\_mioms\_m365\_assis.administrator

1. \[OPTIONAL\] \[The user with role x\_mioms\_m365\_assis.administrator link\] Link Microsoft 365 admin account.

    If any user has the role x\_mioms\_m365\_assis.administrator and is using different Microsoft 365 accounts to manage a Microsoft 365 support case, they must go to Microsoft 365 support &gt; Link Account to set up their Microsoft 365 admin email.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image21.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image21.png" alt-text="Graphical user interface, text, application Description automatically generated":::
