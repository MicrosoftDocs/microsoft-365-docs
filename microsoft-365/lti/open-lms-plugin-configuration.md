---
title: Set up and configure the Moodle plugin for Open LMS
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
description: Get ready to integrate One LMS and Microsoft Teams by setting up and configuring the Moodle plugin.
---

# Set up and configure the Moodle plugin

In this article, you'll learn how to install and configure the Moodle plugin to incorporate Microsoft Teams with your Open LMS experience.

## Prerequisites

Here are the prerequisites to install the Moodle plugin:

* Moodle administrator credentials.
* Microsoft Azure Active Directory (Azure AD) administrator credentials.
* An Azure subscription where you can create new resources.

## 1. Install the Microsoft 365 Moodle Plugin

Open LMS integration in Microsoft Teams is powered by the open source [Microsoft 365 Moodle plugin set](https://moodle.org/plugins/browse.php?list=set&id=72).

### Requisite applications and plugins

Install and download the following items before proceeding with the Microsoft 365 Moodle plugin installation:

1. A [current stable version of Moodle](https://download.moodle.org/releases/latest/).
1. Download and save the Moodle [OpenID Connect](https://moodle.org/plugins/auth_oidc) and the [Microsoft 365 Integration](https://moodle.org/plugins/local_o365) plugins to your local computer.

    > [!NOTE]
    > Installing the OpenID Connect and Microsoft 365 Integration plugins is required for the Teams integration.
    >
    > The [Microsoft 365 Teams Theme](https://moodle.org/plugins/theme_boost_o365teams) plugin is recommended.

### Microsoft 365 Moodle plugins

#### Install plugins

1. Download the plugins, extract them, and upload to their corresponding folders. For example, extract the OpenID Connect plugin (auth_oidc) to a folder called **oidc**, and upload to the **auth** folder of your Moodle document root.
2. Sign in to your Moodle site as an administrator and select **Site administration**.
3. Upon detection of new plugins to be installed, Moodle should redirect you to the install new plugins page. If this doesn't happen, in the **Site administration** page, select **Notifications** in the **General** tab as this should trigger the installation of the plugins.

    > [!IMPORTANT]
    >
    > * Keep your Microsoft 365 Moodle Plugins configuration page open in a separate browser tab as you need to return to this set of pages throughout the process.  
    >
    > * If you don't have an existing Moodle site, go to the [Moodle on Azure](https://github.com/azure/moodle) repo, and quickly deploy a Moodle instance and customize it to your needs.

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

Register Moodle as an application in your Azure AD, using the PowerShell script. The script provisions the following items:

* A new Azure AD application for your Microsoft 365 tenant, which is used by the Microsoft 365 Moodle Plugins.
* The app for your Microsoft 365 tenant sets up the required reply URLs and permissions for the provisioned app and returns the `AppID` and `Key`.

Use the generated `AppID` and `Key` in your Microsoft 365 Moodle Plugins setup page to configure your Moodle server site with Azure AD.

> [!IMPORTANT]
> For more information on registering your Moodle instance manually, see [Register your Moodle instance as an application](https://docs.moodle.org/400/en/Microsoft_365#Azure_App_Creation_and_Configuration).

### Teams for Open LMS setup process

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

1. Synchronize users between your Moodle server and Azure AD. Depending on your environment, you can select different options during this stage. To get started:
    1. Switch to the **Sync Settings tab**.

    1. In the **Sync users with Azure AD** section, select the checkboxes that apply to your environment. You must select the following options:  

        ✔ Create accounts in Open LMS for users in Azure AD.

        ✔ Update all accounts in Open LMS for users in Azure AD.

    1. In the **User Creation Restriction** section, you can set up a filter to limit the Azure AD users that are synced to Open LMS.
    1. In the **Course Sync** section, you can select **Course sync customization** option to enable the automatic creation of Groups and Teams for some, or all, of your existing Open LMS courses.

1. To validate [cron](https://docs.moodle.org/400/en/Cron) tasks and to run them manually for the first time, navigate to **Site administration** > **Server** > **Tasks** > **Scheduled tasks**.

    1. Scroll down and find the task **Sync users with Azure AD** and select **Run now**.
        1. This process will sync the Azure AD user to your Open LMS site.
    1. Next, find the **Sync Moodle courses to Microsoft Teams** task and select **Run now**.
        1. This task will create groups and Teams if an owner is found.
        1. If the user has `local/o365:teamowner` capability in the course context, the user is a team owner. If the user has `local/o365:teammember` capability in the course context, the user is a team member.  
        1. The default *Teacher* role has the `local/o365:teamowner` capability, and the default *Student* role has the `local/o365:teammember` capability.

    > [!NOTE]
    > The Moodle [Cron](https://docs.moodle.org/400/en/Scheduled_tasks) runs according to the task schedule. The default schedule is once a day at 1:00 AM in your server's local time zone. However, the cron should run more frequently to keep everything in sync.

1. Navigate to **Site administration** > **Plugins** > **Local plugins** > **Microsoft 365 Integration** > **Teams Settings** tab.

1. Select the **Check Moodle settings** button will update all required configurations for the Teams integration to work.

After the plugins are installed and configured, you can:

* [Deploy Moodle Assistant Bot to Azure](/microsoftteams/install-moodle-integration#step-3-deploy-the-moodle-assistant-bot-to-azure).
* [Add Moodle tabs to Teams classes](/microsoftteams/install-moodle-integration#step-4-deploy-your-microsoft-teams-app).
* [Add Teams classes and meetings to Open LMS](open-lms-teams-classes-and-meetings.md).

## Extra Moodle plugin documentation

If you would like to review Open LMS's Microsoft 365 integration guides and release notes, see these resources:

* [Microsoft 365 integration documentation on Moodle Docs](https://docs.moodle.org/400/en/Microsoft_365).
