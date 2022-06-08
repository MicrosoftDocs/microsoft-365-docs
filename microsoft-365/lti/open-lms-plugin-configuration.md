---
title: Set up and configure the Open LMS plugin
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
description: Get ready to integrate Open LMS and Microsoft Teams by setting up and configuring the Open LMS plugin.
---

# Set up and configure the Open LMS plugin

In this article, you'll learn how to install and configure the Open LMS LMS plugin to incorporate Microsoft Teams with your Open LMS experience.

> [!NOTE]
> Currently, Open LMS and Microsoft Teams LTI integrations are only available in private preview.
>
>If you'd like to participate in the private preview program, [sign up here](https://m365crmedu.powerappsportals.com/LMSSignup)

## Prerequisites

Here are the prerequisites to install Open LMS:

* Open LMS administrator credentials.
* Azure AD administrator credentials.
* An Azure subscription where you can create new resources.

## 1. Install the Microsoft 365 Open LMS Plugins

Open LMS integration in Microsoft Teams is powered by the open source [Microsoft 365 Open LMS plugins set](https://open lms.org/plugins/browse.php?list=set&id=72).

### Requisite applications and plugins

Install and download the following items before proceeding with the Microsoft 365 Open LMS plugins installation:

1. A [current stable version of Open LMS](https://download.open lms.org/releases/latest/).
1. Download and save the Open LMS [OpenID Connect](https://open lms.org/plugins/auth_oidc) and the [Microsoft 365 Integration](https://open lms.org/plugins/local_o365) plugins to your local computer.

    > [!NOTE]
    > Installing the OpenID Connect and Microsoft 365 Integration plugins is required for the Teams integration.
    >
    > The [Microsoft 365 Teams Theme](https://open lms.org/plugins/theme_boost_o365teams) plugin is recommended.

### Microsoft 365 Open LMS plugins

#### Install plugins

1. Download the plugins, extract them, and upload to their corresponding folders. e.g. extract the OpenID Connect plugin (auth_oidc) to a folder called **oidc**, and upload to the **auth** folder of your Open LMS document root.
2. Sign in to your Open LMS site as an administrator and select **Site administration**.
3. Upon detection of new plugins to be installed, Open LMS should redirect you to the install new plugins page. If this does not happen, in the **Site administration** page, select **Notifications** in the **General** tab, this should trigger the installation of the plugins.

    > [!IMPORTANT]
    >
    > * Keep your Microsoft 365 Open LMS Plugins configuration page open in a separate browser tab as you need to return to this set of pages throughout the process.  
    >
    > * If you do not have an existing Open LMS site, go to the [Open LMS on Azure](https://github.com/azure/open lms) repo, and quickly deploy a Open LMS instance and customize it to your needs.

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

Register Open LMS as an application in your Azure AD, using the PowerShell script. The script provisions the following items:

* A new Azure AD application for your Microsoft 365 tenant, which is used by the Microsoft 365 Open LMS Plugins.
* The app for your Microsoft 365 tenant sets up the required reply URLs and permissions for the provisioned app and returns the `AppID` and `Key`.

Use the generated `AppID` and `Key` in your Microsoft 365 Open LMS Plugins setup page to configure your Open LMS server site with Azure AD.

> [!IMPORTANT]
> For more information on registering your Open LMS instance manually, see [Register your Open LMS instance as an application](https://docs.open lms.org/400/en/Microsoft_365#Azure_App_Creation_and_Configuration).

### The Teams for Open LMS set up process

1. From the Microsoft 365 Integration plugins page, select the **Setup** tab.

1. Select the **Download PowerShell Script** button and save it as a ZIP folder to your local computer.

1. Prepare the PowerShell script from the ZIP file as follows:

    1. Download and extract the `Open LMS-AzureAD-Powershell.zip` file.
    1. Open the extracted folder.
    1. Right-click on the `Open LMS-AzureAD-Script.ps1` file and select **Properties**.
    1. Under the **General** tab of the Properties window, select the `Unblock` checkbox next to the **Security** attribute located at the bottom of the window.
    1. Select **OK**.
    1. Copy the directory path to the extracted folder.

1. Run PowerShell as an administrator:

    1. Select Start.
    1. Type PowerShell.
    1. Right-click on **Windows PowerShell**.
    1. Select **Run as Administrator**.

1. Navigate to the unzipped directory by typing `cd .../.../Open LMS-AzureAD-Powershell` where `.../...` is the path to the directory.

1. Execute the PowerShell script:

    1. Enter `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`.
    1. Enter `./Open LMS-AzureAD-Script.ps1`.
    1. Sign in to your Microsoft 365 administrator account in the pop-up window.
    1. Enter the name of the Azure AD Application, for example, Open LMS or Open LMS plugins.
    1. Enter the URL for your Open LMS server.
    1. Copy the **Application ID (`AppID`)** and **Application Key(`Key`)** generated by the script and save them.

1. Return to the plugins administration page, **Site administration** > **Plugins** > **Authentication** > **OpenID Connect**.

1. Paste the `AppID` value into the **Application ID** box and the `Key` value into the **Key** box, and then select **Save changes**.

1. Navigate to **Site administration** > **Plugins** > **Local plugins** and select **Microsoft 365 Integration**.

1. In **Choose connection method**, select **Application access**, and then select **Save changes** again.

1. After the page refreshes, you can see another new section **Admin consent & additional information**.
    1. Select **Provide Admin Consent** link, enter your Microsoft 365 Global Administrator credentials, then **Accept** to grant the permissions.
    1. Next to the **Azure AD Tenant** field, select the **Detect** button.
    1. Next to the **OneDrive for Business URL**, select the **Detect** button.
    1. After the fields populate, select the **Save changes** button again.

1. Select the **Update** button to verify the installation, and then select **Save changes**.

1. Synchronize users between your Open LMS server and Azure AD. Depending on your environment, you can select different options during this stage. To get started:
    1. Switch to the **Sync Settings tab**.

    1. In the **Sync users with Azure AD** section, select the checkboxes that apply to your environment. You must select the following options:  

        ✔ Create accounts in Open LMS for users in Azure AD.

        ✔ Update all accounts in Open LMS for users in Azure AD.

    1. In the **User Creation Restriction** section, you can set up a filter to limit the Azure AD users that are synced to Open LMS.
    1. In the **Course Sync** section, you can select **Course sync customization** option to enable the automatic creation of Groups and Teams for some, or all, of your existing Open LMS courses.

1. To validate [cron](https://docs.open lms.org/400/en/Cron) tasks and to run them manually for the first time, navigate to **Site administration** > **Server** > **Tasks** > **Scheduled tasks**.

    1. Scroll down and find the task **Sync users with Azure AD** and select **Run now**.
        1. This will sync the AAD user to your Open LMS site.
    1. Next, find the **Sync Open LMS courses to Microsoft Teams** task and select **Run now**.
        1. This task will create groups and Teams if an owner is found.
        1. If the user has `local/o365:teamowner` capability in the course context, the user is a team owner. If the user has `local/o365:teammember` capability in the course context, the user is a team member.  
        1. The default *Teacher* role has the `local/o365:teamowner` capability, and the default *Student* role has the `local/o365:teammember` capability.

    > [!NOTE]
    > The Open LMS [Cron](https://docs.open lms.org/400/en/Scheduled_tasks) runs according to the task schedule. The default schedule is once a day at 1:00 AM in your server's local time zone. However, the cron should run more frequently to keep everything in sync.

1. Navigate to **Site administration** > **Plugins** > **Local plugins** > **Microsoft 365 Integration** > **Teams Settings** tab.

1. Click the **Check Open LMS settings** button will update all required configurations for the Teams integration to work.

After the plugins are installed and configured, you can:

* [Deploy Open LMS Assistant Bot to Azure](/microsoftteams/install-open lms-integration#step-3-deploy-the-open lms-assistant-bot-to-azure).
* [Add Open LMS tabs to Teams classes](/microsoftteams/install-open lms-integration#step-4-deploy-your-microsoft-teams-app).
* [Add Teams classes and meetings to the Open LMS LMS](teams-classes-meetings-with-open lms.md).

## Extra Open LMS plugin documentation

If you would like to review Open LMS's Microsoft 365 integration guides and release notes, see these resources:

* [Microsoft 365 integration documentation on Open LMS Docs](https://docs.open lms.org/400/en/Microsoft_365).
