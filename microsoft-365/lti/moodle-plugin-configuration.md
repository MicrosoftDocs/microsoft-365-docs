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

In this article, you'll learn how to install and configure the Moodle LMS plugin to incorporate Microsoft Teams with your Moodle experience.

## Prerequisites

Here are the prerequisites to install Moodle:

* Moodle administrator credentials.
* Azure AD administrator credentials.
* An Azure subscription where you can create new resources.

## 1. Install the Microsoft 365 Moodle Plugins

Moodle integration in Microsoft Teams is powered by the open source [Microsoft 365 Moodle plugins set](https://github.com/Microsoft/o365-moodle).

### Requisite applications and plugins

Install and download the following items before proceeding with the Microsoft 365 Moodle plugins installation:

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

Register Moodle as an application in your Azure AD, using the PowerShell script. The script provisions the following items:

* A new Azure AD application for your Microsoft 365 tenant, which is used by the Microsoft 365 Moodle Plugins.
* The app for your Microsoft 365 tenant sets up the required reply URLs and permissions for the provisioned app and returns the `AppID` and `Key`.

Use the generated `AppID` and `Key` in your Microsoft 365 Moodle Plugins setup page to configure your Moodle server site with Azure AD.

> [!IMPORTANT]
>
> * The PowerShell script is not updated with the latest configuration items, therefore, you must complete the configuration manually following the steps outlined on the Moodle [3.10.6 and 3.11.3](https://docs.moodle.org/311/en/Microsoft_365) release page.
>
> * For more information on registering your Moodle instance manually, see [Register your Moodle instance as an application](https://docs.moodle.org/311/en/Microsoft_365#Register_Application_in_Azure_manually).

### The Teams for Moodle set up process

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

        ✔ Create accounts in Moodle for users in Azure AD.
        
        ✔ Update all accounts in Moodle for users in Azure AD.
        

    1. In the **User Creation Restriction** section, you can set up a filter to limit the Azure AD users that are synced to Moodle.
    1. In the **Course Sync** section, you can select **Course sync customization** option to enable the automatic creation of Groups and Teams for some, or all, of your existing Moodle courses.

1. To validate [cron](https://docs.moodle.org/310/en/Cron) tasks and to run them manually for the first time, navigate to **Site administration** > **Server** > **Tasks** > **Scheduled tasks**.

    1. Scroll down and find the task **Sync users with Azure AD** and select **Run now**.
        1. This will sync the AAD user to your Moodle site.
    1. Next, find the **Sync Moodle courses to Microsoft Teams** task and select **Run now**.
        1. This task will create groups and Teams if an owner is found.
        1. If the user has `local/o365:teamowner` capability in the course context, the user is a team owner. If the user has `local/o365:teammember` capability in the course context, the user is a team member.  
        1. The default *Teacher* role has the `local/o365:teamowner" capability`, and the default *Student* role has the `local/o365:teammember` capability.

    > [!NOTE]
    >
    > The Moodle [Cron](https://docs.moodle.org/311/en/Scheduled_tasks) runs according to the task schedule. The default schedule is once a day at 1:00 AM in your server's local time zone. However, the cron should run more frequently to keep everything in sync.

1. Return to the site administration page.

1. Configure the required settings to enable the Teams app integration.

    1. To enable **OpenID Connect**, go to **Site administration** > **Plugins** > **Manage authentication**.
        1. Find **OpenID Connect**, and select the eye icon if it's greyed out. Save changes.
    1. To enable frame embedding, go to **Site administration** and select **HTTP Security** in the **Security** section.
        1. Select the checkbox next to **Allow frame embedding**. Save changes.
    1. To enable web services, which enable the Moodle API features, go to **Site administration** > **Advanced features**.
        1. Ensure the checkbox next to **Enable web services** is selected. Save changes.
    1. To enable the external services for Microsoft 365, go to **Site administration** > **Plugins**, and select **External services** in the **Web services** section.

        ✔ In the **Built-in services** section, find **Moodle Microsoft 365 Webservices**.
        
        ✔ Select **Edit** on the **Moodle Microsoft 365 Webservices** row.
        
        ✔ Select the eye icon if it's greyed out. Save changes.
        

    1. Edit your authenticated user permissions to allow them to create web service tokens.

        ✔ Go to **Site administration**, **Users** tab, and find **Define roles** in the **Permissions** section.
        
        ✔ On the **Manage users** tab, find **Authenticated user** role, and select the edit icon.
        
        ✔ Scroll down and find the **Create a web service token** capability and select the **Allow** checkbox. Save changes.
        

After the plugins are installed and configured, you can:

* [Add Moodle tabs to Teams classes](/microsoftteams/install-moodle-integration#step-4-deploy-your-microsoft-teams-app).
* [Add Teams classes and meetings to the Moodle LMS](teams-classes-meetings-with-moodle.md).

## Extra Moodle plugin documentation

If you would like to review Moodle's Microsoft 365 integration guides and release notes, see these resources:

* [Moodle and Microsoft 365 3.10.6](https://docs.moodle.org/310/en/Microsoft_365).
* [Moodle and Microsoft 365 3.11.3](https://docs.moodle.org/310/en/Microsoft_365).
