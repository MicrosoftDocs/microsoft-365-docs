---
title: Set up and configure the Moodle LMS plugins for Open LMS
author: DaniEASmith
ms.author: danismith
manager: jacktremper
ms.reviewer: amitman 
ms.date: 04/06/2022
audience: admin
ms.topic: install-set-up-deploy
ms.service: msteams
ms.subservice: teams-education
f1.keywords:
- CSH
ms.collection: 
- M365-modern-desktop
- tier2
ms.localizationpriority: medium
description: Get ready to integrate Open LMS and Microsoft Teams by setting up and configuring the Moodle LMS plugins.
---

# Set up and configure the Moodle LMS plugins for Open LMS

In this article, you'll learn how to install and configure the Moodle LMS plugins to integrate Microsoft Teams with your Open LMS experience.

## Prerequisites

To set up and configure an installed Open LMS to work with Microsoft Teams:

- Verify the [Moodle OpenID Connect](https://moodle.org/plugins/auth_oidc) and the [Microsoft 365 integration](https://moodle.org/plugins/local_o365) plugins are active.

## Configure the connection between the Microsoft 365 plugins and Microsoft services

You must configure the connection between the Microsoft 365 plugins and Microsoft services before they can work together.

> [!NOTE]
> While configuring the integration, keep your Microsoft 365 integration configuration page open in a separate browser tab because you'll need to return to these pages throughout the process.

### Enable the OpenID Connect authentication plugin

In order for the Moodle plugins to communicate with Microsoft services, the OpenID Connect authentication plugin needs to be turned on and configured.

1. Navigate to **Site Administration** > **Plugins** > **Authentication** then select **Manage Authentication**.
1. Find the **OpenID Connect** authentication plugin and select the *eye icon* to turn it on.
1. Select **Settings** for the plugin to verify the **Authorization** and **Token** endpoints.
    1. The default values should be:
        1. Authorization endpoint: ``https://login.microsoftonline.com/common/oauth2/authorize``.
        1. Token endpoint: ``https://login.microsoftonline.com/common/oauth2/token``.
1. Record the **Redirect URI** for later use.

> [!NOTE]
> It isn't required for all Open LMS users to use the OpenID Connect authentication plugin as their authentication method; however, if they use other authentication methods, their Open LMS accounts needs to be *connected* to their corresponding Microsoft accounts before they can use certain features in the Teams integration, like syncing Teams ownership and membership.

### Requisites

Register Open LMS as an application in your Microsoft Entra ID using the PowerShell script. The script provisions the following items:

- A new Microsoft Entra application for your Microsoft 365 tenant, which is used by the Microsoft 365 Moodle plugins.
- The app for your Microsoft 365 tenant sets up the required reply URLs and permissions for the provisioned app and returns the `AppID` and `Key`.
- On operating systems that aren't Windows, you should only follow the manual process to register your Open LMS instance in Azure. Check the *Important* alert section below for details.

> [!IMPORTANT]
> For more information on registering your Open LMS instance manually, see [Register your Open LMS instance as an application](https://docs.moodle.org/403/en/Microsoft_365#Azure_App_Creation_and_Configuration).
>
> Once you register your app, verify that all the Azure app permissions are applied. For more information, see [Azure app permissions](https://docs.moodle.org/403/en/Microsoft_365#Azure_app_permissions).

### Register application in Azure using PowerShell

#### Step 1: Create Azure app

1. Navigate to **Site Administration** > **Plugins** > **Local plugins** then select **Microsoft 365 Integration**. This will open the Microsoft 365 Integration configuration page.

1. From the Microsoft 365 Integration configuration page, select the **Setup** tab.

1. Select the **Download PowerShell Script** button and save it as a ZIP folder to your local computer.

    > [!NOTE]
    > Running the script creates a new Microsoft Entra application in Microsoft 365 tenant, which sets up the required reply URLs and permissions, gives the required permissions, and returns the `AppID` and `Key`.
    >
    > The script doesn't work in PowerShell on operating systems that aren't Windows.

1. Prepare the PowerShell script from the ZIP file as follows:
    1. Download and extract the `Moodle-AzureAD-Powershell.zip` file.
    1. Open the extracted folder.
    1. Right-click on the `Moodle-AzureAD-Script.ps1` file and select **Properties**.
    1. Under the **General** tab of the Properties window, select the `Unblock` checkbox next to the **Security** attribute located at the bottom of the window.
    1. Select **OK**.
    1. Copy the directory path to the extracted folder.

1. Run PowerShell as an administrator:
    1. In Windows, open the start menu.
    1. Type `PowerShell`.
    1. Right-click on **Windows PowerShell**.
    1. Select **Run as Administrator**.

1. Navigate to the unzipped directory by typing `cd .../.../Moodle-AzureAD-Powershell` where `.../...` is the path to the directory.

1. Execute the PowerShell script:
    1. Enter `./Moodle-AzureAD-Script.ps1`.
    1. When asked, sign in to your Microsoft 365 administrator account in the pop-up window.
    1. When asked, enter the name of the Microsoft Entra Application. For example, Open LMS, Moodle, or Moodle plugins.
    1. When asked, enter the URL for your Open LMS server.
    1. When asked, enter the reply URL copied from the OpenID Connect authentication plugin configuration page. This is the URL of your Open LMS site followed by `\auth\oidc\`.
    1. You may be asked to sign in to your Microsoft 365 account again in a pop-up window in the process. This is to provide admin consent to the permissions added to the app for your organization.
    1. When the script finishes execution, copy the **Application ID (`AppID`)** and **Application Key(`Key`)** generated by the script and save them.

#### Step 2: Set Azure app details in OpenID Connect

1. Return to the OpenID Connect authentication plugin configuration page.
1. Paste the `AppID` value into the **Application ID** box and the `Key` value into the **Key** box, and then select **Save changes**.

#### Step 3: Configure connection between Microsoft plugins and Microsoft services

1. From the Microsoft 365 Integration configuration page, select the **Setup** tab.
1. In **Choose connection method**, select **Application access**, and then select **Save changes** again.
1. After the page refreshes, you can see another new section **Admin consent & additional information**.
    1. Select **Provide Admin Consent** link, enter your Microsoft 365 Global Administrator credentials, then **Accept** to grant the permissions.
    1. Next to the **Microsoft Entra tenant** field, select the **Detect** button.
    1. Next to the **OneDrive for Business URL**, select the **Detect** button.
    1. After the fields populate, select the **Save changes** button again.
1. Select the **Update** button to verify the installation. If no error is reported at this stage, it means the Microsoft plugins can communicate with Microsoft server via Microsoft Graph APIs.

#### Step 4: Configure user and course synchronization

1. Synchronize users between your Open LMS server and Microsoft Entra ID. Depending on your environment, you can select different options during this stage. To get started:

    1. From the Microsoft 365 Integration configuration page, select the **Sync Settings** tab.

    1. In the **Sync users with Microsoft Entra ID** setting, select the checkboxes that apply to your environment. You must select the following options:  
        ✔ Create accounts in Open LMS for users in Microsoft Entra ID.
        ✔ Update all accounts in Open LMS for users in Microsoft Entra ID.

    1. In the **User Creation Restriction** section, you can set up a filter to limit the Microsoft Entra users that are synced to Open LMS.

        > [!NOTE]
        > It isn't absolutely required to enable user sync; however, it'll make connecting Open LMS users with Microsoft 365 accounts much easier.
        >
        > User sync is performed by running the **Sync users with Microsoft Entra ID** scheduled task.

1. In the **Course Sync** section, you can select **Course sync customization** option to enable the automatic creation of Teams for some or all of your existing Open LMS courses.

    > [!NOTE]
    > Course sync is performed by running the **Sync Moodle courses to Microsoft Teams** scheduled task.

1. Save changes.

1. To validate sync configuration, you'll need to run the scheduled tasks manually for the first time. Navigate to **Site administration** > **Server** > **Tasks** > **Scheduled tasks**.

    1. Scroll down and find the task **Sync users with Microsoft Entra ID** and select **Run now**.
        1. This will sync Microsoft Entra users to your Open LMS site according to the user sync options.
    1. Next, find the **Sync Moodle courses to Microsoft Teams** task and select **Run now**.
        1. This task will create groups for all Open LMS courses with sync option turn on, and also Teams if a **Team owner** can be found in the course.
        1. This task will also sync Open LMS users enrolled in the course to Teams as owners or members.
            1. A Team **owner** is an Open LMS user who meets all of the following criteria:
                1. is connected to a Microsoft 365 account.
                2. is enrolled in the course.
                3. has the `local/o365:teamowner` capability in the course context.
            1. Similarly, a Team **member** is an Open LMS user who meets all of the following criteria:
                1. is connected to a Microsoft 365 account.
                2. is enrolled in the course.
                3. has the `local/o365:teamember` capability in the course context.
            1. The default *Teacher* role has the `local/o365:teamowner` capability, and the default *Student* role has the `local/o365:teammember` capability.

> [!NOTE]
> The scheduled tasks are triggered by [Moodle Cron](https://docs.moodle.org/403/en/Cron), which needs to be configured to run frequently. Each scheduled task can have a default schedule and can be customized.
>
> - The default schedule of the **Sync users with Microsoft Entra ID** task is every minute.
> - The default schedule of the **Sync Moodle courses to Microsoft Teams** task is daily at 1 am in the Open LMS server default time zone.

After the plugins are installed and configured, you can:

- [Add Teams classes and meetings to Open LMS](open-lms-teams-classes-and-meetings.md).
- [Deploy Moodle Assistant Bot to Azure](/microsoftteams/install-moodle-integration#step-3-deploy-the-moodle-assistant-bot-to-azure).
- [Add Moodle tabs to Teams classes](/microsoftteams/install-moodle-integration#step-4-deploy-your-microsoft-teams-app).

## Extra Moodle plugin documentation

If you would like to review Open LMS's Microsoft 365 integration guides and release notes, see these resources:

- [Microsoft 365 integration documentation on Moodle Docs](https://docs.moodle.org/403/en/Microsoft_365).
