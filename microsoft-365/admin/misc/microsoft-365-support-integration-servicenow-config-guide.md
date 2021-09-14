---
title: "Microsoft 365 support integration with ServiceNow configuration guide"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Scoped Certified application installation and configuration guide for ServiceNow."
---

# Microsoft 365 support integration with ServiceNow configuration guide

[Overview](#overview) 

[Application dependencies in ServiceNow environments](#application-dependencies-in-servicenow-environments)

[Configuration instructions](#configuration-instructions)

[Who can set up the Microsoft 365 support integration?](#who-can-set-up-microsoft-365-support-integration)

[What features are available in Microsoft 365 support integration?](#what-features-are-available-in-microsoft-365-support-integration) 

[Set up Microsoft 365 support integration with ServiceNow Basic Authentication](#set-up-microsoft-365-support-integration-with-servicenow-basic-authentication)

[Set up Microsoft 365 support integration with AAD OAuth Token](#set-up-microsoft-365-support-integration-with-aad-oauth-token)

[Set up Microsoft 365 support integration for Insights ONLY](#set-up-microsoft-365-support-integration-for-insights-only) 

[Testing the configuration](#testing-the-configuration) 

[Troubleshooting](#troubleshooting) 

## Overview

Microsoft 365 support integration enables you to integrate Microsoft 365 help, support, and service health with ServiceNow. You can research Microsoft known and reported issues, resolve incidents, and complete tasks by using Microsoft recommended solutions and, if necessary, escalate to Microsoft human- assisted support.

## Application dependencies in ServiceNow environments

Permissions required:

- oauth\_entity

- oauth\_entity\_profile

After Microsoft 365 support integration was installed, two Application Cross-Scope accesses were created. If they're not created successfully for any reason, create them manually.

:::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image1.png" alt-text="Graphical user interface, application Description automatically generated":::

## Configuration instructions

:::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image2.png" alt-text="Diagram Description automatically generated":::

To set up Microsoft 365 support integration:

- Register applications in Microsoft Azure Active Directory (AAD) for authentication of both outbound and inbound API calls.

- Create ServiceNow entities with Microsoft AAD applications for both outbound and inbound data flow.

- Integrate ServiceNow instance with Microsoft support through Microsoft 365 Admin Portal.

## Who can set up Microsoft 365 support integration?

- Anyone with permissions to create AAD applications.

- A ServiceNow admin.

- A Helpdesk admin or Service Request admin in Microsoft 365 tenants.

## What features are available in Microsoft 365 support integration?

Before setting up any configuration for Microsoft 365 support integration, review your answers to these questions:

**Question #1** Does your ServiceNow environment allow Basic Authentication (access with ServiceNow user credential) for inbound webservice calls?

**Question #2** If you have multiple tenants, do you plan to use a single tenant integrated with your ServiceNow environment for Microsoft 365 support integration?

Depending on your answers to the questions above, this table tells you what features are available and how to set up Microsoft 365 support integration. For a description of each feature, see [Microsoft 365 support integration](https://store.servicenow.com/sn_appstore_store.do#!/store/application/6d05c93f1b7784507ddd4227cc4bcb9f).

|Question #1 Answer|Question #2 Answer|What features are available?|Configuration Steps|
|--- |--- |--- |--- |
|Yes|Yes|Service Health Incidents <br/>Recommended Solutions </br>Microsoft service request|[Set up Microsoft 365 support integration with ServiceNow Basic Authentication](#set-up-microsoft-365-support-integration-with-servicenow-basic-authentication)|
|Yes|No|Service Health Incidents <br/>Recommended Solutions </br>Microsoft service request||
|No|Yes|Service Health Incidents <br/>Recommended Solutions </br>Microsoft service request|[Set up Microsoft 365 support integration with AAD OAuth Token](#set-up-microsoft-365-support-integration-with-aad-oauth-token)|
|No|No|Service Health Incidents <br/>Recommended Solutions|[Set up Microsoft 365 support integration for Insights ONLY](#set-up-microsoft-365-support-integration-for-insights-only) |

## Set up Microsoft 365 support integration with ServiceNow Basic Authentication

### Prerequisites (Basic Authentication)

Some prerequisites are necessary to set up the Microsoft 365 support integration.

1. \[The person who can create AAD applications\] Create AAD Application under your Microsoft 365 tenant.

    1. Log on to the [Azure Portal](https://portal.azure.com/) with your Microsoft 365 tenant credentials.

    1. Go to the App registrations page and create a new application.

        Select **Accounts in this organizational directory only ({microsoft-365-tenant-name} only – Single tenant**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Add redirect URL: `https://{your-servicenow-instance}.service-now.com/oauth_redirect.do`.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Get the application Client ID and create an App Secret.

2. \[The person who is a ServiceNow admin\] Set up Outbound OAuth Provider in ServiceNow.

    1. If the scope is not set to **Global**, open **Settings** > **Developer** > **Applications** to switch to **Global**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

    1. Go to **System OAuth** > **Application Registry**.

    1. Create a new application with the values following values by selecting **Connect to a third party OAuth Provider**.

    - Client ID: The Client ID of the application created in step \#1

    - Client Secret: The App Secret of the application created in step \#1

    - Default Grant type: Client Credentials

    - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

    - Redirect URL: `https://{service-now-instance-name}.service-now.com/auth_redirect.do`

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image6.png" alt-text="Graphical user interface, application Description automatically generated":::

3. \[The person who is a ServiceNow admin\] Set up Inbound OAuth Provider.

    1. If the scope is not set to **Global**, open **Settings** > **Developer** > **Applications** to switch to **Global**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image5.png" alt-text="Graphical user interface, application Description automatically generated":::

    1. Go to **System OAuth** > **Application Registry**.

    1. Create a new application by selecting **Create an OAuth API endpoint for external clients**. Name the inbound OAuth provider and leave other fields at their defaults.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image7.png" alt-text="Graphical user interface, application Description automatically generated":::

4. \[The person who is a ServiceNow admin\] Create integration users.

    You must specify an integration user. If you don’t have an existing integration user or if you want to create one specific for this integration, go to **Organization** > **Users** to create a new user.

    If you're creating a new integration user, check the box **Web service access only**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image8.png" alt-text="Graphical user interface, application Description automatically generated":::

### \[Optional\] Allow the service’s IPs of Microsoft 365 support integration

If your company is limiting internet access with your own policies, enable network access for the service of Microsoft 365 support integration by allowing the IP addresses below for both inbound and outbound API access.

- 52.149.152.32

- 40.83.232.243

- 40.83.114.39

- 13.76.138.31

- 13.79.229.170

- 20.105.151.142

> [!NOTE]
> This terminal command lists all active IPs of the service for Microsoft 365 support integration:
> `nslookup connector.rave.microsoft.com`

### Set up Microsoft 365 support integration application

The Microsoft 365 support integration application can be set up under Microsoft 365 support.

These steps are required to set up the integration between your ServiceNow instance and Microsoft 365 support.

1. \[The person who is a ServiceNow admin\] Switch the scope to Microsoft 365 support integration.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

2. \[The person who is a ServiceNow admin\] Go to Microsoft 365 support > **Setup** to open the integration flow.

    > [!NOTE]
    > If you see the error "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table's cross-scope access policy," it was caused by your table access policy. You must make sure **All application scopes** > **Can read** is checked for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image10.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

3. \[The person who is a ServiceNow admin\] Select **Agree** to agree to the consent

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image11.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

4. \[The person who is a ServiceNow admin\] Set up Outbound OAuth Provider.

    Select the OAuth profile for Outbound OAuth Provider created in [Prerequisites (Basic Authentication)](#prerequisites-basic-authentication) step \#2 and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image12.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

5. \[The person who is a ServiceNow admin\] Set up Inbound OAuth Provider.

    - Uncheck **Skip current step**.

    - Uncheck **External OIDC Auth Token**.

    - Select OAuth Client created in [Prerequisites (Basic Authentication)](#prerequisites-basic-authentication) step \#3 and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image13.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

6. \[The person who is a ServiceNow admin\] Set up inbound call integration user.

    - Uncheck **Skip current step**.

    - Select the integration user created in [Prerequisites (Basic Authentication)](#prerequisites-basic-authentication) step \#4 and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image14.png" alt-text="Graphical user interface, text, application Description automatically generated":::

7. \[The person who is a ServiceNow admin\] Set up Repository ID.

    Specify the repository ID, and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image15.png" alt-text="Graphical user interface, text, application Description automatically generated":::

8. \[The person who is a ServiceNow admin\] Set up Application settings.

    Select the following settings, and then select **Next**.

    - SSO with Microsoft 365: Check whether the ServiceNow instance is set up as SSO with Microsoft 365 tenants, otherwise uncheck it.

    - Microsoft 365 admin email: The email of Microsoft 365 admin user who is contacted when Microsoft 365 support cases are created.

    - Test Environment: Check the box to indicate a test phase to avoid Microsoft support agents contacting you to address the issue. If you're ready to move forward officially with Microsoft 365 support integration, uncheck the box.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image16.png" alt-text="Graphical user interface, text, application Description automatically generated":::

9. \[The person who is Helpdesk Admin or Service Request Admin in Microsoft 365 tenants\] Complete Integration.

    1. Check the information below to make sure it's correct.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image17.png" alt-text="Graphical user interface, text, application Description automatically generated":::

    1. Go to Microsoft 365 [Admin Portal](https://admin.microsoft.com/) > **Settings** > **Org settings** > **Organization profiles**.

    1. Set up support integration settings:

        1. In the **Basic information** tab, select internal support tool **Service Now** and type **Outbound App ID** as the value of Application ID on the page Step - 6 Complete, which was created in [Prerequisites (Basic Authentication)](#prerequisites-basic-authentication) step \#1.

            :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

        1. In the tab **Repositories**, select **Add a repository** to create a new repository with the following settings:

            - Repository: The **Repository ID** value from page Step - 6 Complete the integration.

            - Endpoint: The **Endpoint** value from page Step - 6 Complete the integration.

            - Authentication type: Select **Basic Auth**.

            - Client ID: The **Client ID** value from page Step - 6 Complete the integration.

            - Client secret: The secret of the inbound OAuth provider that was created in [Prerequisites (Basic Authentication)](#prerequisites-basic-authentication) step \#3.

            - Refresh token expiry: 864000

            - Rest username: The **User Name** value from page Step - 6 Complete the integration.

            - Rest user password: The password of the integration user that was created in [Prerequisites (Basic Authentication)](#prerequisites-basic-authentication) step \#4.

            :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image19.png" alt-text="Graphical user interface, application Description automatically generate":::

        1. Go back and select the button to save the integration.

    1. Select **Next** to complete the integration.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image20.png" alt-text="Graphical user interface, application, website Description automatically generated":::

10. \[The person who is a ServiceNow admin\] Enable Microsoft 365 support integration for an existing user.

    Microsoft 365 support integration is enabled only for the user with one of these roles:

    - x\_mioms\_m365\_assis.insights\_user

    - x\_mioms\_m365\_assis.administrator

    > [!NOTE]
    > The user with the role x\_mioms\_m365\_assis.insights\_user role can see Service Health Incidents, Recommended Solutions. The user with the role x\_mioms\_m365\_assis.administrator can also open a case with Microsoft 365 support.

11. \[Optional\] \[The user with role x_mioms_m365_assis.administrator\] Link Microsoft 365 Admin account.

    If any user has the role x\_mioms\_m365\_assis.administrator and is using different Microsoft 365 accounts to manage a Microsoft 365 support case, they must go to Microsoft 365 support > Link Account to set up their Microsoft 365 admin email.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image21.png" alt-text="Graphical user interface, text, application Description automatically generated":::

## Set up Microsoft 365 support integration with AAD OAuth Token

### Prerequisites (AAD OAuth Token)

These prerequisite steps are necessary to set up the Microsoft 365 support integration:

1. \[The person who can create AAD applications\] Create an AAD Application for Outbound under your Microsoft 365 tenant.

    1. Log on [Azure Portal](https://portal.azure.com/) with Microsoft 365 tenant credentials.

    1. Go to the **App registrations** page and create a new application.

        Select **Accounts in this organizational directory only ({microsoft-365-tenant-name} only – Single tenant**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Add redirect URL: `https://{your-servicenow-instance}.service-now.com/auth_redirect.do`.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Get Client ID of the application and create App Secret.

2. \[The person who can create AAD applications\] Create AAD Application for Rest API under your Microsoft 365 tenant.

    1. Log on to the [Azure Portal](https://portal.azure.com/) with your Microsoft 365 tenant credentials.

    1. Go to **App registrations** and create a new application.

        Select **Accounts in this organizational directory only ({microsoft-365-tenant-name} only – Single tenant**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image22.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Get the application Client ID and create App Secret.

3. \[The person who can create AAD applications\] Create AAD Application for Rest User under your Microsoft 365 tenant.

    1. Log on to the [Azure Portal](https://portal.azure.com/) with your Microsoft 365 tenant credentials.

    1. Go to the **App registrations** page and create a new application.
        
        Select **Accounts in this organizational directory only ({microsoft-365-tenant-name} only – Single tenant**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image23.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Get the application Client ID and create an App Secret.

4. \[The person who is a ServiceNow admin\] Set up Outbound OAuth Provider in ServiceNow.

    1. If the scope is not set to **Global**, open **Settings** > **Developer** > **Applications** to switch to **Global**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

    1. Go to **System OAuth** > **Application Registry**.

    1. Create a new application with the values below by selecting **Connect to a third party OAuth Provider**.

        - Client ID: The Client ID of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#1.

        - Client Secret: The App Secret of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#1.

        - Default Grant type: Client Credentials.

        - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

        - Redirect URL: `https://{service-now-instance-name}.service-now.com/auth_redirect.do`

            :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image6.png" alt-text="Graphical user interface, application Description automatically generated":::

5. \[The person who is a ServiceNow admin\] Configure OIDC provider in ServiceNow, refer to the [online documentation](https://docs.servicenow.com/bundle/quebec-platform-administration/page/administer/security/task/add-OIDC-entity.html).

    1. If the scope is not set to **Global**, open **Settings** > **Developer** > **Applications** to switch to **Global**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

    1. Go to **System OAuth** > **Application Registry**.

    1. Select **New** > **Create new Open ID Connect Provider**.

    1. In **OAuth OIDC Provider Configuration**, select **Search** and create a new OIDC provider configuration under “oidc\_provider\_configuration.list” with these values:

        - OIDC Provider: Contoso Azure

        - OIDC Metadata URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/.well-known/openid-configuration`

        - UserClaim: **appId**

        - User Field: **User ID**

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image24.png" alt-text="Graphical user interface, text, application Description automatically generated":::

    1. Create a new application by selecting **Configure an OIDC provider to verify ID tokens** with these values:

        - Name: contoso\_application\_inbound\_api

        - Client ID: The Client ID of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#2.

        - Client Secret: The App Secret of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#2.

        - OAuth OIDC Provider Configuration: The OIDC provider created in the last step.

        - Redirect URL:  
            `https://{service-now-instance-name}.service-now.com/oauth_redirect.do`

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image25.png" alt-text="Graphical user interface, application Description automatically generated":::

6. \[The person who is a ServiceNow admin\] Create Integration Users.

    Navigate to **Organization** > **Users** to create a new user if there is no integration user. The value of **User ID** is the application Client ID created in step [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) \#3

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image26.png" alt-text="Graphical user interface, application Description automatically generated":::

### \[Optional\] Allow the service’s IPs of Microsoft 365 support integration

If your company is limiting internet access with your own policies, enable network access for the service of Microsoft 365 support integration by allowing these IP addresses for both inbound and outbound API access:

- 52.149.152.32

- 40.83.232.243

- 40.83.114.39

- 13.76.138.31

- 13.79.229.170

- 20.105.151.142

> [!NOTE]
> This terminal command lists all active IPs of the service for Microsoft 365 support integration:
> *nslookup connector.rave.microsoft.com*

### Set up Microsoft 365 support integration

The Microsoft 365 support integration application can be set up through the **Setup** under the Microsoft 365 support.

These steps are necessary to set up the integration between your ServiceNow instance and Microsoft 365 support.

1. \[The person who is a ServiceNow admin\] Switch the scope to Microsoft 365 support integration.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

2. \[The person who is a ServiceNow admin\] Go to Microsoft 365 support > **Setup** to open the integration flow.

    > [!NOTE]
    > If you see the error "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table's cross-scope access policy," it was caused by your table access policy. You must make sure **All application scopes** > **Can read** is checked for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image27.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

3. \[The person who is a ServiceNow admin\] Select **Agree** to agree to the consent.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image11.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

4. \[The person who is a ServiceNow admin\] Set up Outbound OAuth Provider.

    Select OAuth profile for Outbound OAuth Provider created at [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#4 and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image12.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

5. \[The person who is a ServiceNow admin\] Set up Inbound OAuth Provider.

    1. Uncheck **Skip current step**.

    1. Check **External OIDC Auth Token**.

    1. Select the OAuth Client created at [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step 5, and then select **Next**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image28.png" alt-text="Graphical user interface, text, application Description automatically generated":::

6. \[The person who is a ServiceNow admin\] Set up Inbound Call Integration User.

    1. Uncheck **Skip current step**.

    1. Input the Client ID of the application that was created at [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#3 and select **Next**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image39.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

7. \[The person who is a ServiceNow admin\] Set up the Repository ID.

    Specify the repository ID and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image15.png" alt-text="Graphical user interface, text, application Description automatically generated":::

8. \[The person who is a ServiceNow admin\] Set up Application Settings.

    Select the following settings, and then select **Next**.

    - SSO with Microsoft 365: Check whether the ServiceNow instance is set up as SSO with Microsoft 365 tenants, otherwise uncheck it.

    - Microsoft 365 admin email: The email of Microsoft 365 admin user who is contacted when Microsoft 365 support cases are created.

    - Test Environment: Check the box to indicate a test phase to avoid Microsoft support agents contacting you to address the issue. If you're ready to move forward officially with Microsoft 365 support integration, uncheck the box.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image16.png" alt-text="Graphical user interface, text, application Description automatically generated":::

    1. Select **Next**.

9. \[The person who is Helpdesk Admin or Service Request Admin in Microsoft 365 tenants\] Complete integration.

    1. Check the following information to make sure it's correct.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image40.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Go to Microsoft 365 [Admin Portal](https://admin.microsoft.com) > **Settings** > **Org settings** > **Organization profiles**.

    1. Set up support integration settings.

        1. On the **basic information** tab, select **Service Now** as the internal support tool, and type **Outbound App ID** as the value of Application ID on the Step - 6 Complete the integration page, which was created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#1.

            :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

        1. On the **Repositories** tab, select **Add a repository** to create a new repository with the following information:

            - Repository: Use the **Repository ID** value from the Step - 6 Complete the integration page.

            - Endpoint: The **Endpoint** value from the Step - 6 Complete the integration page.

            - Authentication type: Select **AAD Auth**.

            - Client Id: The **Client ID** value on the Step - 6 Complete the integration page, which is the Client ID of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#2.

            - Rest username: The **User Name** value on the Step - 6 Complete the integration page, which is the **Client ID** of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#3.

            - Rest user password: The App Secret of the application created in [Prerequisites (AAD OAuth Token)](#prerequisites-aad-oauth-token) step \#3.

                :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image31.png" alt-text="Graphical user interface, application Description automatically generated":::

        1. Go back and select the button to save the integration.

    1. Select **Next** to complete the integration.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image32.png" alt-text="Graphical user interface, application Description automatically generated":::

10. \[The person who is a ServiceNow admin\] Enable Microsoft 365 support integration for an existing user.

    Microsoft 365 support integration is enabled only for users with the following roles:

    - x\_mioms\_m365\_assis.insights\_user

    - x\_mioms\_m365\_assis.administrator

    > [!NOTE]
    > The user with the role x\_mioms\_m365\_assis.insights\_user can see Service Health Incidents, Recommended Solutions. The user with the role x\_mioms\_m365\_assis.administrator also can open a case with Microsoft 365 support.

11. **\[Optional\] \[The user with role x_mioms_m365_assis.administrator\] Link Microsoft 365 Admin account**

    If any user has the role “x\_mioms\_m365\_assis.administrator” and they're using different Microsoft 365 accounts to manage Microsoft support cases, they must go to Microsoft 365 support > Link Account to set up their Microsoft 365 admin email.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image21.png" alt-text="Graphical user interface, text, application Description automatically generated":::

## Set up Microsoft 365 support integration for Insights ONLY

### Prerequisites (Insights ONLY)

These prerequisite steps are necessary to set up Microsoft 365 support integration:

1. \[The person who can create AAD applications\] Create AAD Application under your Microsoft 365 tenant.

    1. Log on to the [Azure Portal](https://portal.azure.com/) with your Microsoft 365 tenant credentials.

    1. Go to the **App registrations** page and create a new application.

        Select **Accounts in this organizational directory only ({microsoft-365-tenant-name} only – Single tenant**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Add redirect URL: `https://{your-servicenow-instance}.service-now.com/auth_redirect.do`

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Get Client ID of the application and create an App Secret.

1. \[The person who is a ServiceNow admin\] Set up Outbound OAuth Provider in ServiceNow.

    1. If the scope is not set to **Global**, open **Settings** > **Developer** > **Applications** to switch to **Global**.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

    1. Go to **System OAuth** > **Application Registry**.

    1. Create a new application with the values below by selecting **Connect to a third party OAuth Provider**.

        - Client ID: The **Client ID** of the application created in [Prerequisites (Insights ONLY)](#prerequisites-insights-only) step \#1

        - Client Secret: The App Secret of the application created in [Prerequisites (Insights ONLY)](#prerequisites-insights-only) step \#1

        - Default Grant type: Client Credentials

        - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

        - Redirect URL: `https://{servicenow-instance-name}.service-now.com/oauth_redirect.do`

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image6.png" alt-text="Graphical user interface, application Description automatically generated":::

### Set up Microsoft 365 support integration

The Microsoft 365 support integration application can be set up through **Setup** under Microsoft 365 support.

The following steps are needed to set up the integration between your ServiceNow instance and Microsoft support.

1. \[The person who is a ServiceNow admin\] Switch the scope to Microsoft 365 support integration.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

2. \[The person who is a ServiceNow admin\] Go to Microsoft 365 support > **Setup** to open the integration flow.

    > [!NOTE]
    > If you see the error "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table's cross-scope access policy," it was caused by your table access policy. You must make sure **All application scopes** > **Can read** is checked for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image27.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

3. \[The person who is a ServiceNow admin\] Select **Agree** to agree to the consent.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image11.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

4. \[The person who is a ServiceNow admin\] Set up Outbound OAuth Provider.

    Select OAuth profile for Outbound OAuth Provider and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image12.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

5. \[The person who is a ServiceNow admin\] Skip Inbound OAuth Provider.

    Check **Skip current step**, and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image33.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

6. \[The person who is a ServiceNow admin\] Skip Integration User.

    Check **Skip current step** and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image34.png" alt-text="Graphical user interface, text, application Description automatically generated":::

7. \[The person who is a ServiceNow admin\] Set up Repository ID.

    Specify the repository ID and select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image15.png" alt-text="Graphical user interface, text, application Description automatically generated":::

8. \[The person who is a ServiceNow admin\] Set up Application Settings.

    Select the right settings and select **Next**.

    - SSO with Microsoft 365: Check whether the ServiceNow instance is set up as SSO with Microsoft 365 tenants; otherwise uncheck it.

    - Microsoft 365 Admin Email: The email of Microsoft 365 admin user to be contacted when Microsoft 365 support cases are created.

    - Test Environment: Check the box to indicate a test phase to avoid Microsoft support agents contacting you to address the issue. If you're ready to move forward officially with Microsoft 365 support integration, uncheck the box.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image16.png" alt-text="Graphical user interface, text, application Description automatically generated":::

9. \[The person who is Helpdesk Admin or Service Request Admin in Microsoft 365 tenants\] Complete Integration.

    1. Check the information here to make sure it's correct.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image35.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

    1. Go to Microsoft 365 [Admin Portal](https://admin.microsoft.com) > **Settings** > **Org settings** > **Organization profiles**.

        1. Set up support integration settings with the information shown in setup flow.

        1. On the **basic information** tab, select **Service Now** as the internal support tool, and type **Outbound App ID** as the Application ID to issue an OAuth token.

            :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

        1. On the **Repositories** tab, select **Add a repository** to create a new repository with the following information:

            - Repository: The **Repository ID** value from the Step - 6 Complete the integration page.

            - Endpoint: The **Endpoint** value from the Step - 6 Complete the integration page.

            - Authentication type: Select **AAD Auth**.

            - Client ID: A random value, such as **ignored**.

            - Rest username: A random value, such as **ignored**.

            - Rest user password: A random value, such as **ignored**.

                :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image36.png" alt-text="Graphical user interface, application Description automatically generated":::

        1. Go back and select the button to save the integration.

    1. Select **Next** to complete the integration.

        :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image37.png" alt-text="Graphical user interface, application Description automatically generated":::

10. \[The person who is a ServiceNow admin\] Enable Microsoft 365 support integration for an existing user.

    Microsoft 365 support integration is enabled only for these user roles:

    - x\_mioms\_m365\_assis.insights\_user

    - x\_mioms\_m365\_assis.administrator

    > [!NOTE] 
    > The user with the role x_mioms_m365_assis.insights_user can see Service Health Incidents, Recommended Solutions. The user with the role x_mioms_m365_assis.administrator also can open a case with Microsoft 365 support. With Insights ONLY, no one should be assigned the role x_mioms_m365_assis.administrator.

## Testing the configuration

If your application requires successful communication with external systems, outline how to test the connection to ensure a successful configuration.

Here are the steps to test the configuration of Microsoft 365 support integration:

1. Log on to ServiceNow portal as admin.

2. Open any incident.

3. Focus on **Microsoft 365 support** tab, and select **Microsoft 365 Insights** to determine if the recommended solutions were retrieved successfully.

    :::image type="content" source="../../media/ServiceNow-guide/ServiceNow-guide-image38.png" alt-text="Graphical user interface, application, website Description automatically generated":::

##  Troubleshooting

|#|Problem|Diagnostics action|
|--- |--- |--- |
|1|Can't see **Microsoft 365 support** tab|Verify the current view and **System Logs** > **All** with filter x_mioms_m365_assit|
|2|Select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the setup steps for the app."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|3|Select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the final set up step for the app."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|4|Type the problem in search box and select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the setup steps for the app."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|5|Type problem in search box and select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the final set up step for the app."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|6|Select **Contact Microsoft support**, but get the error "Please contact your ServiceNow admin and ask them to complete the setup steps for the app."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|7|Select **Contact Microsoft support**, but get the error "Please contact your ServiceNow admin and ask them to complete the final set up step for the app."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|8|Select **Contact Microsoft support** but get the error "{EmailAddress} is not a valid Microsoft 365 admin account. You need Microsoft 365 admin privileges to open a service request. In the app, link the admin account."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|9|Select **Microsoft recommended solutions** but nothing shows up|Check **System Logs – Outbound HTTP logs** with filter login.microsoftonline.com and connector.rave.microsoft.com|
|10|Select **Microsoft recommended solutions** but get error "Please contact app support."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|11|Type problem in search box and select **Microsoft recommended solutions** but nothing shows up|Check **System Logs – Outbound HTTP logs** with filter login.microsoftonline.com and connector.rave.microsoft.com|
|12|Type problem in search box and select **Microsoft recommended solutions** but get error "Please contact app support."|Check the error message on top of the form and **System Logs** > **All** with filter x_mioms_m365_assit|
|13|User selects **Contact Microsoft support**, but nothing happens|Check **System Logs – Outbound HTTP logs** with filter login.microsoftonline.com and connector.rave.microsoft.com|
|14|Can’t see Microsoft recommended solution after reopening the incident|Check **System Logs** > **All** with filter x_mioms_m365_assit|
|15|Can’t see Microsoft cases when reopening the incident that was transferred to Microsoft support|Check **System Logs** > **All** with filter x_mioms_m365_assit|
|16|Can't save ticket details, get error "Unable to save ticket details. Please contact App support."|Check the error message on top of form|
