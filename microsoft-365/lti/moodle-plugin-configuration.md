---
title: Set up and configure the Moodle plugin
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
ms.localizationpriority: medium
description: Get ready to integrate Moodle and Microsoft Teams by setting up and configuring the Moodle plugin.
---

# Set up and configure the Moodle plugin

In this article you'll learn how to install and configure the Moodle LMS plugin.

## Prerequisites

Following are the prerequisites to install Moodle:

* Moodle administrator credentials.
* Azure AD administrator credentials.
* An Azure subscription where you can create new resources.

## 1. Install the Microsoft 365 Moodle Plugins

Moodle integration in Microsoft Teams is powered by the open source [Microsoft 365 Moodle plugins set](https://github.com/Microsoft/o365-moodle).

### Requisite applications and plugins

Install and download the following before proceeding with the Microsoft 365 Moodle plugins installation:

1. A [current stable version of Moodle](https://download.moodle.org/releases/latest/).

1. Download and save the Moodle [OpenID Connect](https://moodle.org/plugins/auth_oidc) and the [Microsoft 365 Integration](https://moodle.org/plugins/local_o365) plugins to your local computer.

    > [!NOTE]
    > Installing the OpenID Connect and Microsoft 365 Integration plugins is required for the Teams integration.
    >
    > The [Microsoft 365 Teams Theme](https://moodle.org/plugins/theme_boost_o365teams) plugin is recommended.

### Microsoft 365 Moodle plugins

#### Install plugins

1. Sign in to your Moodle server and navigate to **Site administration**.
1. Select the **Plugins** tab then select **Install plugins**.
1. From the **Install plugins from ZIP file** section, select **Choose a file**.
1. Select **Upload a file** from the left navigation panel, browse for the file that you downloaded, and select **Upload this file**.
1. Select **Site administration** from the left navigation panel to return to your admin dashboard.
1. Scroll down to the **Local plugins** and select the **Microsoft 365 Integration** link.

    > [!IMPORTANT]
    >
    > * Keep your Microsoft 365 Moodle Plugins configuration page open in a separate browser tab as you need to return to this set of pages throughout the process.  
    >
    > * If you do not have an existing Moodle site, go to the [Moodle on Azure](https://github.com/azure/moodle) repo, and quickly deploy a Moodle instance and customize it to your needs.

#### Enable the OpenID Connect authentication plugin

1. Navigate to **Site Administration** > **Plugins** > **Authentication** then select **Manage Authentication**.
1. Find the **OpenID Connect** authentication plugin and select the *eye icon* to enable it.
1. Select **Settings** for the plugin to verify the **Authorization** and **Token** endpoints.
    1. The default values should be:
        1. Authorization endpoint: ``https://login.microsoftonline.com/common/oauth2/authorize``.
        1. Token endpoint: ``https://login.microsoftonline.com/common/oauth2/token``.
1. Record the **Redirect URI** for later use.

## 2. Configure the connection between the Microsoft 365 plugins and Azure AD

You must configure the connection between the Microsoft 365 plugins and Azure AD.

### Requisites

Register Moodle as an application in your Azure AD, using the PowerShell script. The script provisions the following:

* A new Azure AD application for your Microsoft 365 tenant, which is used by the Microsoft 365 Moodle Plugins.
* The app for your Microsoft 365 tenant, set up the required reply URLs and permissions for the provisioned app, and returns the `AppID` and `Key`.

Use the generated `AppID` and `Key` in your Microsoft 365 Moodle Plugins setup page to configure your Moodle server site with Azure AD.

> [!IMPORTANT]
>
> * The PowerShell script is not updated with the latest configuration items, therefore, you must complete the configuration manually following the steps outlined on the Moodle [3.10.6 and 3.11.3](https://docs.moodle.org/311/en/Microsoft_365) release page.
>
> * For more information on registering your Moodle instance manually, see [Register your Moodle instance as an application](https://docs.moodle.org/34/en/Office365#Register_your_Moodle_instance_as_an_Application).

### The Moodle tab for Microsoft Teams information flow

<img width="530px" src="../assets/images/MoodleTabInformationFlow.png" alt="Moodle tab for Microsoft Teams information flow" />

1. From the Microsoft 365 Integration plugins page, select the **Setup** tab.

1. Select the **Download PowerShell Script** button and save it as a ZIP folder to your local computer.

1. Prepare the PowerShell script from the ZIP file as follows:

    1. Download and extract the `Moodle-AzureAD-Powershell.zip` file.
    1. Open the extracted folder.
    1. Right-click on the `Moodle-AzureAD-Script.ps1` file and select **Properties**.
    1. Under the **General** tab of the Properties window, select the `Unblock` checkbox next to the **Security** attribute located at the bottom of the window.
    1. Select **OK**.
    1. Copy the directory path to the extracted folder.

1. Run PowerShell as an administrator:

    1. Select Start.
    1. Type PowerShell.
    1. Right-click on **Windows PowerShell**.
    1. Select **Run as Administrator**.

1. Navigate to the unzipped directory by typing `cd .../.../Moodle-AzureAD-Powershell` where `.../...` is the path to the directory.

1. Execute the PowerShell script:

    1. Enter `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`.
    1. Enter `./Moodle-AzureAD-Script.ps1`.
    1. Sign in to your Microsoft 365 administrator account in the pop-up window.
    1. Enter the name of the Azure AD Application, for example, Moodle or Moodle plugins.
    1. Enter the URL for your Moodle server.
    1. Copy the **Application ID (`AppID`)** and **Application Key(`Key`)** generated by the script and save them.

1. Next you must add the `AppID` and `Key` to the Microsoft 365 Moodle Plugins. Return to the plugins administration page, Site administration > Plugins > Microsoft 365 Integration.

1. On the **Setup** tab add the `AppID` and `Key` you copied previously, and then select **Save changes**. After the page refreshes, you can see a new section **Choose connection method**.

1. In the **Choose connection method**, select the checkbox labeled **Default**, and then select **Save changes** again.

1. After the page refreshes you can see another new section **Admin consent & additional information**.
    1. Select **Provide Admin Consent** link, enter your Microsoft 365 Global Administrator credentials, then **Accept** to grant the permissions.
    1. Next to the **Azure AD Tenant** field, select the **Detect** button.
    1. Next to the **OneDrive for Business URL**, select the **Detect** button.
    1. After the fields populate, select the **Save changes** button again.

1. Select the **Update** button to verify the installation, and then select **Save changes**.

1. Synchronize users between your Moodle server and Azure AD. To get started:

    > [!NOTE]
    > Depending on your environment, you can select different options during this stage.

1. Synchronize users between your Moodle server and Azure AD. Depending on your environment, you can select different options during this stage. To get started:
    1. Switch to the **Sync Settings tab**.

    1. In the **Sync users with Azure AD** section, select the checkboxes that apply to your environment. You must select the following:  

        ✔ Create accounts in Moodle for users in Azure AD.

        ✔ Update all accounts in Moodle for users in Azure AD.

    1. In the **User Creation Restriction** section, you can setup a filter to limit the Azure AD users that is synced to Moodle.
    1. The **User Field Mapping** section allows you to customize the Azure AD to Moodle User Profile field mapping.
    1. In the **Teams Sync** section, you can select to automatically create Groups, such as teams for some, or all, of your existing Moodle courses.

13. To validate [cron](https://docs.moodle.org/310/en/Cron) jobs and run them manually for the first run, select the **Scheduled tasks management page** link in the **Sync users with Azure AD** section. This takes you to the **Scheduled Tasks** page.

    1. Scroll down and find the **Sync users with Azure AD** job and select **Run now**.
    1. If you select to create Groups based on existing courses, you can also run the **Create user groups in Microsoft 365** job.

    > [!NOTE]
    >
    > The Moodle [Cron](https://docs.moodle.org/310/en/Cron) runs according to the task schedule. The default schedule is once a day. However, the cron must run more frequently to keep everything in sync.

1. Return to the plugins administration page, **Site administration > Plugins > Microsoft 365 Integration**, and select the **Teams Settings** page.

1. On the **Teams Settings** page, configure the required settings to enable the Teams app integration.

    1. To enable **OpenID Connect**, select the **Manage Authentication** link, and select the eye icon on the **OpenId Connect** line if it is greyed out.
    1. To enable frame embedding, select the **HTTP Security** link, and then select the checkbox next to **Allow frame embedding**.
    1. To enable web services, which enables the Moodle API features, select the **Advanced Features** link, and then ensure the checkbox next to **Enable web services** is selected.
    1. To enable the external services for Microsoft 365, select the **External services** link, and then:  

        ✔ Select **Edit** on the **Moodle Microsoft 365 Webservices** row.

        ✔ Select the checkbox next to **Enabled**, then select **Save Changes**

    1. Edit your authenticated user permissions to allow them to create web service tokens.

        ✔ Select the **Editing role Authenticated user** link.

        ✔ Scroll down and find the **Create a web service token** capability and select the **Allow** checkbox.

## 3. Deploy the Moodle Assistant Bot to Azure

The free Moodle assistant bot for Microsoft Teams helps teachers and students answer questions about their courses, assignments, grades, and other information in Moodle. The bot also sends Moodle notifications to students and teachers within Teams. The bot is an open-source project maintained by Microsoft, and is available on [GitHub](https://github.com/microsoft/Moodle-Teams-Bot).

> [!NOTE]
>
> * Deploy resources to your Azure subscription. All resources were configured using the **free** tier. Depending on the usage of your bot, you may have to scale these resources.
>
> * To use the Moodle tab without the bot, skip to [4](#4-deploy-your-microsoft-teams-app).

### Moodle bot information flow

<img width="530px" src="../assets/images/MoodleBotInformationFlow.png" alt="Moodle bot for Microsoft Teams information flow" />

To install the bot, you must register it on the [Microsoft Identity Platform](https://identity.microsoft.com/Landing). This allows your bot to authenticate against your Microsoft endpoints.

To register your bot:

1. Go to the plugins administration page, and then select **Plugins**. Under **Microsoft 365 Integration**, select the **Teams Settings** tab.

1. Select the **Microsoft Application Registration Portal** link and sign in with your Microsoft ID.

1. Enter a name for your app, such as MoodleBot and select the **Create** button.

1. Copy the **Application ID** and paste it into the **Bot Application ID** field on the **Team Settings** page.

1. Select the **Generate New Password** button. Copy the generated password and and paste it into the **Bot Application Password** field on the **Team Settings** page.

1. Scroll to the bottom of the form and select **Save Changes**.

After generating your application ID and password, deploy your bot to Azure:

> [!div class="checklist"]
>
> * Select **Deploy to Azure** and complete the form with the necessary information, such as the Bot Application ID, Bot Application Password, and the Moodle Secret on the **Teams Settings** page. The Azure information is on the **Setup** page.
> * After completing the form, select the checkbox to agree to the terms and conditions.
> * Select **Purchase**. All Azure resources are deployed to the free tier.

After the resources have completed deploying to Azure, you must configure the Microsoft 365 Moodle plugins with a messaging endpoint. You must get the endpoint from your bot in Azure:

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com).

1. In the left pane, select **Resource groups** and select the resource group you used or created, while deploying your bot.

1. Select the **WebApp Bot** resource from the list of resources in the group.

1. Copy the **Messaging Endpoint** from the **Overview** section.

1. In Moodle, open the **Team Settings** page of your Microsoft 365 Moodle Plugins.

1. In the **Bot Endpoint** field paste the URL you just copied and change the word *messages* to *webhook*. The URL must appear as follows: `https://botname.azurewebsites.net/api/webhook`

1. Select **Save Changes**.

1. After saving the changes, go back to the **Team Settings** tab, select the **Download manifest file** button, and save the app manifest package to your computer for further use.

## 4. Deploy your Microsoft Teams app

After your bot deployed to Azure and configured to talk to your Moodle server, you must deploy your Microsoft Teams app. To do this you must load the app manifest file that you downloaded from the Microsoft 365 Moodle Plugins Team Settings page in the previous step.

Before you install the app you must ensure to enable external apps and uploading of apps. For more information, see [Prepare your Microsoft 365 tenant](../concepts/build-and-test/prepare-your-o365-tenant.md).

To deploy your app:

1. Open **Microsoft Teams**.

1. Select the **App** icon on the lower-left area of the navigation bar.

1. Select the **Upload a custom app** link from the list of options.

   > [!NOTE]
   > If you are logged in as a global administrator, you must have the option of uploading the app to your organization's app catalog, otherwise you can only load the app for a team in which you are a member.

4. Select the `manifest.zip` package you downloaded previously and select **Save**. If you have not downloaded the app manifest package, you can download from the **Team Settings** tab of the plugins configuration page in Moodle.

Now that you have the app installed, you can add the tab to any channel that you have access to. To do so, navigate to the channel, select the **plus** (➕) symbol and select your app from the list. Follow the prompts to finish adding your Moodle course tab to a channel.

## 5. Allow automatic creation of Moodle tabs in Microsoft Teams

Although the Moodle tabs are created manually in Microsoft Teams, you can decide to create them automatically when teams are created from course synchronization. To do this, you must configure the ID of the uploaded Microsoft Teams app in Moodle.

To allow automatic creation of Moodle tabs:

1. Open Microsoft Teams.

1. Select the Apps icon from the lower-left area of the navigation bar.

1. Locate the uploaded **Moodle app** > select the **options** icon > select **copy link**.

1. In a text editor, paste the copied content. It must contain a URL such as `https://teams.microsoft.com/l/app/00112233-4455-6677-8899-aabbccddeeff`. Copy the last part of the URL, such as  `00112233-4455-6677-8899-aabbccddeeff`, which is the ID of the Microsoft Teams app.

1. In Moodle, open the **Teams Moodle app** tab from your Microsoft 365 Moodle Plugins configuration page.

1. Paste the ID of the Microsoft Teams app into the Moodle app ID field, and save changes.

When a Moodle course is synced, Microsoft Teams automatically installs the Moodle app in the team, creates a Moodle tab in the General channel of Teams, and configures it to contain the course page for the Moodle course from which it is synced. You can now start working with your Moodle courses directly from Microsoft Teams.
