---
title: Set up and configure the Moodle LMS plugins
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
ms.date: 04/06/2022
audience: admin
ms.topic: article
ms.service: microsoft-365-business
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
description: Get ready to integrate Moodle and Microsoft Teams by setting up and configuring the Moodle LMS plugins.
---

# Set up the Moodle LMS plugins

In this article, you'll learn how to install and configure the Moodle LMS plugins to incorporate Microsoft Teams with your Moodle experience.

## Prerequisites

Here are the prerequisites to set up an installed Moodle to work with Microsoft Teams:

- Moodle administrator credentials.
- Azure AD administrator credentials.
- An Azure subscription where you can create new resources.

## 1. Install the Microsoft 365 Moodle Plugins

Moodle integration with Microsoft Teams is powered by the open source [Microsoft 365 Moodle plugins set](https://moodle.org/plugins/browse.php?list=set&id=72).

### Requisite applications and plugins

Download and install the following items:

1. A [current stable version of Moodle](https://download.moodle.org/releases/latest/).

    > [!IMPORTANT]
    > If you don't have an existing Moodle site, go to the [Moodle on Azure](https://github.com/azure/moodle) repo, and quickly deploy a Moodle instance and customize it to your needs.

1. Download and save the Moodle [OpenID Connect](https://moodle.org/plugins/auth_oidc) and the [Microsoft 365 Integration](https://moodle.org/plugins/local_o365) plugins to your local computer.

    > [!NOTE]
    > Installing the OpenID Connect and Microsoft 365 Integration plugins is required for the Teams integration.
    >
    > Also, we recommend installing the [Microsoft 365 Teams Theme](https://moodle.org/plugins/theme_boost_o365teams) plugin.

### Install plugins

1. Download the plugins, extract them, and upload to their corresponding folders.
    - Extract the OpenID Connect plugin (auth_oidc) to a folder called **oidc**, and upload to the **auth** folder of your Moodle document root.
    - Extract the Microsoft 365 Integration plugin (local_o365) to a folder called **o365**, and upload to the **local** folder of your Moodle document root.
1. Sign in to your Moodle site as an administrator and select **Site administration**.
1. Upon detection of new plugins to be installed, Moodle should redirect you to the install new plugins page. If this doesn't happen, in the **Site administration** page, select **Notifications** in the **General** tab, this action should trigger the installation of the plugins.
1. After the new plugins are installed, Moodle will show you a page with all new configurations from the installed plugins. You can safely skip this page by applying the default settings. The plugins will be configured in the following steps.

## 2. Enable the OpenID Connect authentication plugin

In order for the Moodle plugins to communicate with Microsoft services, the OpenID Connect authentication plugin needs to be turned on and configured.

1. Navigate to **Site Administration** > **Plugins** > **Authentication** then select **Manage Authentication**.
1. Find the **OpenID Connect** authentication plugin and select the *eye icon* to turn it on.
1. Select **Settings** for the plugin to verify the **Authorization** and **Token** endpoints.
    1. The default values should be:
        1. Authorization endpoint: ``https://login.microsoftonline.com/common/oauth2/authorize``.
        1. Token endpoint: ``https://login.microsoftonline.com/common/oauth2/token``.
1. Record the **Redirect URI** for later use.

    > [!NOTE]
    > It's not required for all Moodle users to the OpenID Connect authentication plugin as their authentication method; however, if they use other authentication methods, their Moodle accounts needs to be *connected* to their corresponding Microsoft accounts before they can use certain features in the Teams integration, such as syncing Teams ownership and membership.

## 3. Configure the connection between the Microsoft 365 plugins and Microsoft services

You must configure the connection between the Microsoft 365 plugins and Microsoft services before they can work together.

> [!NOTE]
> While configuring the integration, keep your Microsoft 365 Moodle Integration configuration page open in a separate browser tab as you need to return to this set of pages throughout the process.

### Create Azure app

1. Navigate to **Site Administration** > **Plugins** > **Local plugins** then select **Microsoft 365 Integration**. This will open the Microsoft 365 Integration configuration page.

1. From the Microsoft 365 Integration configuration page, select the **Setup** tab.

1. Select the **Download PowerShell Script** button and save it as a ZIP folder to your local computer.

    > [!NOTE]
    > Running the script creates a new Azure AD application in Microsoft 365 tenant, which sets up the required reply URLs and permissions, gives the required permissions, and returns the `AppID` and `Key`.
    >
    > The PowerShell script only works on Windows operation systems.

1. Prepare the PowerShell script from the ZIP file as follows:
    1. Download and extract the `Moodle-AzureAD-Powershell.zip` file.
    1. Open the extracted folder.
    1. Right-click on the `Moodle-AzureAD-Script.ps1` file and select **Properties**.
    1. Under the **General** tab of the Properties window, select the `Unblock` checkbox next to the **Security** attribute located at the bottom of the window.
    1. Select **OK**.
    1. Copy the directory path to the extracted folder.

1. Run PowerShell as an administrator:
    1. In Windows, select **Start**.
    1. Type `PowerShell`.
    1. Right-click on **Windows PowerShell**.
    1. Select **Run as Administrator**.

1. Navigate to the unzipped directory by typing `cd .../.../Moodle-AzureAD-Powershell` where `.../...` is the path to the directory.

1. Execute the PowerShell script:
    1. Enter `./Moodle-AzureAD-Script.ps1`.
    1. When asked, sign in to your Microsoft 365 administrator account in the pop-up window.
    1. When asked, enter the name of the Azure AD Application, for example, Moodle or Moodle plugins.
    1. When asked, enter the URL for your Moodle server.
    1. When asked, enter the reply URL copied from the OpenID Connect authentication plugin configuration page. This is essentially the URL of your Moodle site, followed by `\auth\oidc\`.
    1. You may be asked to sign in to your Microsoft 365 account again in a pop-up window in the process. This is to provide admin consent to the permissions added to the app for your organization.
    1. When the script finishes execution, copy the **Application ID (`AppID`)** and **Application Key(`Key`)** generated by the script and save them.

### Set Azure app details in Moodle

1. Return to the OpenID Connect authentication plugin configuration page.
1. Paste the `AppID` value into the **Application ID** box and the `Key` value into the **Key** box, and then select **Save changes**.

### Configure connection between Microsoft plugins and Microsoft services

1. From the Microsoft 365 Integration configuration page, select the **Setup** tab.
1. In **Choose connection method**, select **Application access**, and then select **Save changes** again.
1. After the page refreshes, you can see another new section **Admin consent & additional information**.
    1. Select **Provide Admin Consent** link, enter your Microsoft 365 Global Administrator credentials, then **Accept** to grant the permissions.
    1. Next to the **Azure AD Tenant** field, select the **Detect** button.
    1. Next to the **OneDrive for Business URL**, select the **Detect** button.
    1. After the fields populate, select the **Save changes** button again.
1. Select the **Update** button to verify the installation. If no error is reported at this stage, it means the Microsoft plugins can communicate with Microsoft server via Microsoft Graph APIs.

### Configure user and course synchronization

1. Synchronize users between your Moodle server and Azure AD. Depending on your environment, you can select different options during this stage. To get started:
    1. From the Microsoft 365 Integration configuration page, select the **Sync Settings** tab.

    1. In the **Sync users with Azure AD** setting, select the checkboxes that apply to your environment. You must select the following options:  
        ✔ Create accounts in Moodle for users in Azure AD.
        ✔ Update all accounts in Moodle for users in Azure AD.

    1. In the **User Creation Restriction** section, you can set up a filter to limit the Azure AD users that are synced to Moodle.

    > [!NOTE]
    > It's not required to turn on user sync; however, it will make connecting Moodle users with Microsoft 365 accounts much easier.
    >
    > User sync is performed by running the **Sync users with Azure AD** scheduled task.

1. In the **Course Sync** section, you can select **Course sync customization** option to turn on the automatic creation of Teams for some or all of your existing Moodle courses.

    > [!NOTE]
    > Course sync is performed by running the **Sync Moodle courses to Microsoft Teams** scheduled task.

1. Save changes.

1. To validate sync configuration, you'll need to run the scheduled tasks manually for the first time, navigate to **Site administration** > **Server** > **Tasks** > **Scheduled tasks**.

    1. Scroll down and find the task **Sync users with Azure AD** and select **Run now**.
        1. This will sync Azure AD users to your Moodle site according to the user sync options.
    1. Next, find the **Sync Moodle courses to Microsoft Teams** task and select **Run now**.
        1. This task will create Groups for all Moodle courses with sync option turn on, and also Teams if a **Team owner** can be found in the course.
        1. The task will also sync Moodle users enrolled in the course to Teams as owners or members.
            1. A Team **owner** is a Moodle user who
                1. is connected to a Microsoft 365 account, AND
                2. is enrolled in the course, AND
                3. has the `local/o365:teamowner` capability in the course context.
            1. Similarly, a Team **member** is a Moodle user who
                1. is connected to a Microsoft 365 account, AND
                2. is enrolled in the course, AND
                3. has the `local/o365:teamember` capability in the course context.
            1. The default *Teacher* role has the `local/o365:teamowner` capability, and the default *Student* role has the `local/o365:teammember` capability.

> [!NOTE]
> The scheduled tasks are triggered by [Moodle Cron](https://docs.moodle.org/400/en/Cron), which needs to be configured to run frequently. Each scheduled task can have a default schedule, which can be customized.
>
> - The default schedule of the **Sync users with Azure AD** task is every minute.
> - The default schedule of the **Sync Moodle courses to Microsoft Teams** task is daily at 1am in the Moodle server default time zone.

After the plugins are installed and configured, you can:

- [Deploy Moodle Assistant Bot to Azure](/microsoftteams/install-moodle-integration#step-3-deploy-the-moodle-assistant-bot-to-azure).
- [Add Moodle tabs to Teams classes](/microsoftteams/install-moodle-integration#step-4-deploy-your-microsoft-teams-app).
- [Add Teams classes and meetings to the Moodle LMS](teams-classes-meetings-with-moodle.md).

## Extra Moodle plugin documentation

If you would like to review Moodle's Microsoft 365 integration guides and release notes, see these resources:

- [Microsoft 365 integration documentation on Moodle Docs](https://docs.moodle.org/400/en/Microsoft_365).
