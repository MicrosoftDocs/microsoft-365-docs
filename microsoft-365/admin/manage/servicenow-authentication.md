---
title: "Configure authentication for Microsoft 365 support integration with ServiceNow"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
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
description: "Configure authentication for ServiceNow."
---

# Configure authentication for Microsoft 365 support integration with ServiceNow

## Prerequisite steps

These prerequisite steps are necessary to set up the Microsoft 365 support integration.

1. **Azure Active Directory Administrator** \[AAD Admin\]: Create Azure AD Application for Outbound under your Microsoft 365 tenant.

    1. Log on to the Azure Portal with your Microsoft 365 tenant credentials and go to the [App registrations page](https://portal.azure.com/?Microsoft_AAD_RegisteredApps=true#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade) to create a new application.

    2. Select **Accounts in this organizational directory only ({Microsoft-365-tenant-name} only – Single tenant)** and select **Register**.

        :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image3.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Go to **Authentication** and select **Add a platform**. Select the **Web** option and enter the redirect URL: `https://{your-servicenow-instance``}.service-now.com/oauth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image4.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Get the Application Client ID and create a Client secret and save that value.

1. **ServiceNow Administrator** \[ServiceNow Admin\]: Set up the Authentication OAuth Provider in ServiceNow.

    If the scope is not set to **Global**, go to **Settings** &gt; **Developer** &gt; **Applications**, and switch to **Global**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image5.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

1. Go to **System OAuth** &gt; **Application Registry**.

1. Create a new application by using the **Connect to a third party OAuth Provider** option and entering these values.

    - Client ID: This is the Client ID of the application created in Prerequisites (Azure AD Auth Token) step \#1.

    - Client Secret: This is the Client Secret value of the application created in Prerequisites (Azure AD Auth Token) step \#1.

    - Default Grant type: Client Credentials

    - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

    - Redirect URL: `https://{your-servicenow-instance}.service-now.com/oauth_redirect.do`

\[OPTIONAL\] Allow the service’s IP addresses to Microsoft 365 support integration

If your company is limiting internet access with your own policies, enable network access for the service of Microsoft 365 support integration by allowing the IP addresses below for both inbound and outbound API access.

- 52.149.152.32
- 40.83.232.243
- 40.83.114.39
- 13.76.138.31
- 13.79.229.170
- 20.105.151.142

> [!NOTE]
> This terminal command lists all active IPs of the service for Microsoft 365 support integration: `nslookup`` connector.rave.microsoft.com`

## Configure the Microsoft 365 support integration application

The following steps are required to set up the integration between your ServiceNow instance and Microsoft 365 Support.

To open the Microsoft 365 support integration setup wizard, type **Microsoft 365** in the ServiceNow navigator, and then select **Setup**.

### Steps performed by a ServiceNow Administrator

1. \[ServiceNow Admin\] Switch the scope to **Microsoft 365 support integration**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image9.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

1. \[ServiceNow Admin\] Go to **Microsoft 365 Support** &gt; **Setup** to open the integration workflow.

    > [!NOTE]
    > If you see the error: "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table’s cross-scope access policy", it was caused by your table access policy. You must make sure to check **All application scopes** &gt; **Can read** for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image27.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image27.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Select **Agree** to continue.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-agree.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-agree.png" alt-text="Select agree.":::

1. Configure the environment and start the setup.

    If this installation is on a test environment, select the option **This is a test environment.** You can disable this option after the setup and all of your tests are completed later.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-configure-environment.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-configure-environment.png" alt-text="Configure the environment and start setup.":::

1. Enter your Microsoft 365 tenant domain.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-tenant-domain.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-tenant-domain.png" alt-text="Enter tenant domain name.":::

1. Configure authentication settings.

    1. Register the Azure Active Directory (AAD) App.
    1. After completing the instructions in the prerequisites section, select **Done**. Otherwise, follow the instructions in the wizard to create the necessary application registration in AAD.

        :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-setup-wizard.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-setup-wizard.png" alt-text="Follow the instructions in the setup wizard.":::

    1. Register the ServiceNow OAuth App.
    1. After completing the instructions in the prerequisites section, select the newly created OAuth application registration, and then select **Next**. Otherwise, follow the instructions to create the entity in ServiceNow, and then select the new application registration.

        :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-registration.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-registration.png" alt-text="Select new application registration.":::

1. Verify that the following information is correct.

    > [!NOTE] 
    >Do not select **Test setup** before the Microsoft 365 Administrator finishes performing the next steps.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-setup-verify.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-setup-verify.png" alt-text="Verify the information is correct.":::

### Steps performed by a Microsoft 365 Administrator

> [!NOTE]
> You must install Microsoft 365 support integration for ServiceNow application version 2.0.0 or later to perform the following steps.

1. In the Microsoft 365 admin portal, configure the support integration settings:

    Select the **Basic information** tab > **Internal support tool** > **ServiceNow**, and enter the **Outbound App ID** value in the **Application ID to issue Auth Token** field. This Outbound App ID is on Step 6 – Complete the Integration, which was created in [Prerequisite steps](#prerequisite-steps).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image18.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. On the **Repositories** tab, select **New repository** and update it with the following settings:

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-edit-repository.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-edit-repository.png" alt-text="Edit repository.":::

    - Repository: The **Repository ID** value from Step 6 – Complete the Integration.

    - Endpoint: The **Endpoint** value from Step 6 – Complete the Integration.

        :::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-complete-integration.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-complete-integration.png" alt-text="Complete the integration.":::

1. Select **Save**.

The next steps must be performed in ServiceNow by a ServiceNow Administrator.

## ServiceNow Administrator: Test connection and complete setup

To complete setup, go back to your ServiceNow instance, and then select **Test setup**.

**Test setup**

The Microsoft 365 support integration app executes tests to make sure the integration is working. If there's a problem with the configuration, an error message explains what needs to be fixed. Otherwise, the application is ready.  

:::image type="content" source="../../media/ServiceNow-guide/servicenow-updates-test-successful.png" lightbox="../../media/ServiceNow-guide/servicenow-updates-test-successful.png" alt-text="Test successful.":::

**Enable Microsoft support integration for an existing user**

Microsoft 365 support integration is enabled for the user with one of these roles:

- x\_mioms\_m365\_assis.insights\_user
- x\_mioms\_m365\_assis.administrator

\[OPTIONAL\] \[The user with role x\_mioms\_m365\_assis.administrator link\] Link Microsoft 365 admin account.

If any user has the role x\_mioms\_m365\_assis.administrator and is using different Microsoft 365 accounts to manage a Microsoft 365 support case, they must go to Microsoft 365 support &gt; Link Account to set up their Microsoft 365 admin email.

:::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image21.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image21.png" alt-text="Graphical user interface, text, application Description automatically generated":::