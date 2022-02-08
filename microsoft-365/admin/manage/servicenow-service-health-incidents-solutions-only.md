---
title: "Microsoft 365 support integration for service health incidents and recommended solutions only"
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

# Microsoft 365 support integration for service health incidents and recommended solutions only

This configuration doesn't allow you to create a case with Microsoft support through your ServiceNow instance. This option provides you only with the Service Health Incident information and Recommend Solutions available through your ServiceNow instance.

## Prerequisites (Service Health Incidents and Recommended Solutions ONLY)

These prerequisites are necessary to set up the **Microsoft 365 support integration**.

1. \[AAD Admin\] Create Azure AD Application for Outbound under your Microsoft 365 tenant.

    1. Log on to the Azure Portal with your Microsoft 365 tenant credentials and create a new application on the [App registrations page](https://portal.azure.com/?Microsoft_AAD_RegisteredApps=true#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).

    2. Select **Accounts in this organizational directory only ({Microsoft-365-tenant-name} only – Single tenant)**, and then select **Register**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image3.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image3.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Go to **Authentication** and select **Add a platform**. Select the **Web** option and enter the redirect URL: `https://{your-servicenow-instance``}.service-now.com/auth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image4.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image4.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Get the Application Client ID and create a Client secret and get that value.

1. \[ServiceNow Admin\] Set up the Outbound OAuth Provider in ServiceNow.

    If the scope is not set to **Global**, go to **Settings &gt; Developer &gt; Applications** and switch to **Global**.

    :::image type="content" source="../../media/ServiceNow-guide/Servicenow-guide-image5.png" lightbox="../../media/ServiceNow-guide/Servicenow-guide-image5.png" alt-text="Graphical user interface, text, application, chat or text message Description automatically generated":::

1. Go to **System OAuth &gt; Application Registry**.

1. Create a new application by using the **Connect to a third party OAuth Provider** option and entering these values:

    - Client ID: This is the Client ID of the application created in Prerequisites (Insights ONLY) step \#1.

    - Client Secret: This is the Client Secret value of the application created in Prerequisites (Insights ONLY) step \#1.

    - Default Grant type: Client Credentials

    - Token URL: `https://login.microsoftonline.com/{microsoft-365-tenant-name}/oauth2/token`

    - Redirect URL: `https://{service-now-instance-name``}.service-now.com/auth_redirect.do`

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image6.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image6.png" alt-text="Graphical user interface, application Description automatically generated":::

## Configure the Microsoft 365 support integration Application

The Microsoft 365 support integration application can be set up under Microsoft 365 support.

These steps are required to set up the integration between your ServiceNow instance and Microsoft 365 support.

1. \[ServiceNow Admin\] Switch the scope to **Microsoft 365 support integration**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image9.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image9.png" alt-text="Graphical user interface, table Description automatically generated":::

1. \[ServiceNow Admin\] Go to **Microsoft 365 Support &gt; Setup** to open the integration workflow.

    > [!NOTE]
    > If you see the error "Read operation against 'oauth\_entity' from scope 'x\_mioms\_m365\_assis' has been refused due to the table’s cross-scope access policy," it was caused by your table access policy. You must make sure **All application scopes &gt; Can read** is checked for the table oauth\_entity.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image27.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image27.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Select **Agree** to continue.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image11.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image11.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Outbound OAuth Provider.

    Select the OAuth profile for Outbound OAuth Provider, and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image12.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image12.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. \[ServiceNow Admin\] Skip the Inbound OAuth Provider.

    Check **Skip current step**, and then select **Next**.

1. \[ServiceNow Admin\] Skip the Inbound Call Integration User.

    Check **Skip current step**, and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image34.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image34.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. \[ServiceNow Admin\] Set up the Repository ID.

    Specify the repository ID, and then select **Next**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image15.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image15.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. \[ServiceNow Admin\] Set up Application Settings.

    Select these settings, and then select **Next**:

    - SSO with Microsoft 365: Check whether the ServiceNow instance is set up as SSO with Microsoft 365 tenants, otherwise uncheck it.

    - Microsoft 365 admin email: The email of Microsoft 365 admin user who is contacted when Microsoft 365 support cases are created.

    - Test Environment: Check the box to indicate a test phase to avoid Microsoft support agents contacting you to address the issue. If you’re ready to move forward officially with Microsoft 365 support integration, uncheck the box.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image16.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image16.png" alt-text="Graphical user interface, text, application Description automatically generated":::

1. \[Microsoft 365 Tenant Admin\] Complete the integration.

    Verify the information below is correct. DO NOT select **Next** at this time.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image35.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image35.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. Go to **Microsoft 365 Admin Portal &gt; Settings &gt; Org settings &gt; Organization profiles**.

1. Configure the support integration settings:

    Select the **Basic information** tab > **Internal support tool** > **ServiceNow**, and enter the **Outbound App ID** value in the **Application ID to issue Auth Token** field. This Outbound App ID is on Step 6 – Complete the Integration, which was created in [Prerequisite (Insights ONLY) step \#1](#prerequisites-service-health-incidents-and-recommended-solutions-only).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image18.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image18.png" alt-text="Graphical user interface, text, application, email Description automatically generated":::

1. On the **Repositories** tab, select **New repository** and update it with the following settings:

    - Repository: The **Repository ID** value from Step 6 – Complete the Integration.

    - Endpoint: The **Endpoint** value from Step 6 – Complete the Integration.

    - Authentication type: Select **AAD Auth**.

    - Client ID: A random value (example: ignored).

    - Rest username: A random value (example: ignored).

    - Rest user password: A random value (example: ignored).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image36.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image36.png" alt-text="Graphical user interface, application Description automatically generated":::

1. Go back to ServiceNow.

1. Select **Next** to complete the integration.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-guide-image37.png" lightbox="../../media/ServiceNow-guide/servicenow-guide-image37.png" alt-text="Graphical user interface, application Description automatically generated":::

1. \[ServiceNow Admin\] Enable Microsoft support integration for an existing user.

    Microsoft 365 support integration is enabled for the user with one of these roles:

    - x\_mioms\_m365\_assis.insights\_user

    - x\_mioms\_m365\_assis.administrator

    > [!NOTE]
    > The user with the role x\_mioms\_m365\_assis.insights\_user can see Service Health Incidents, Recommended Solutions. The user with the role x\_mioms\_m365\_assis.administrator also can open a case with Microsoft 365 support. With Insights ONLY, no one should be assigned the role x\_mioms\_m365\_assis.administrator.
