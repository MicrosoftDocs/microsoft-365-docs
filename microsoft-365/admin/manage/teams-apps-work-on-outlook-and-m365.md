---
title: "Apps for Microsoft 365 that work across application hosts"
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 08/26/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_TOC
- operations-pod
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "How to manage Apps for Microsoft 365 that work across application hosts through the Integrated Apps portal."
---

# Apps for Microsoft 365 that work across application hosts

> [!TIP]
> See [Apps for Microsoft 365](apps-for-microsoft-365-overview.md) for a quick overview.

An app for Microsoft 365 that uses a sufficiently recent manifest version can work across the Microsoft 365 Copilot application, Outlook, and Teams. Developers can submit a single app package that works across Teams, Outlook, and the Microsoft 365 Copilot application. In some cases, these apps contain closely related sub-apps that are surfaced in in the different host applications. For more information, see [Extend apps across Microsoft 365](/microsoftteams/platform/m365-apps/overview).

Previously, for an app to work in Teams, Outlook, and the Microsoft 365 Copilot application, admins needed to manage each app independently across the Teams admin center, Exchange admin center, and Microsoft 365 admin center. Now admins can manage a single app for Microsoft 365 from the integrated apps portal. 

## What are apps that work across application hosts?

There are some apps for Microsoft 365 that are truely the same app surfaced in one or more of those application hosts. Some examples are in the following list.

- [Custom personal tabs](/microsoftteams/platform/tabs/what-are-tabs) can be surfaced in the Microsoft 365 Copilot application, Outlook, and Teams.
- [Message extensions](/microsoftteams/platform/messaging-extensions/what-are-messaging-extensions) can be surface in Teams chat and Outlook emails.

In this article, we call these "*cross application apps*". These apps may be subject to different terms than other apps for Microsoft 365. Read your license agreement for more details.

> [!NOTE]
>
> - To be surfaced across the host applications, a app for Microsoft 365 must use a version of the [unified manifest for Microsoft 365](/microsoft-365/extensibility/schema) (formerly "Teams manifest") greater than or equal to v1.13.
> - An cross application app for Microsoft 365 that is surfaced in Outlook is not an Office add-in. But it is possible to include an add-in along with the cross application app in a single app package. For more information, see [General guidance for combining an Office add-in and a Teams app](/microsoftteams/platform/m365-apps/overview-combining-add-in-and-teams-app).

> [!IMPORTANT]
> Any changes made on the integrated apps portal on the Microsoft 365 admin center only impact whether and how a cross application app is surfaced on Outlook and the Microsoft 365 Copilot application. To manage how these apps show up on Teams, use the Teams admin center.

The following sections tell you more about the management tools available for cross application apps for Microsoft 365.

> [!NOTE]
> For guidance about managing Teams only apps, see [Teams apps that only work on Teams](teams-apps-work-only-on-teams.md).

## Before you begin

The following controls on the integrated apps portal in the Microsoft 365 Admin Center are only available to Global Admins. Check your credentials before you proceed.

[!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

## Controls for managing cross application apps

As an admin, you can manage cross application apps as follows:

1. Deploy/Pre-install an app for users in your organization on Outlook and the Microsoft 365 Copilot application (but not on Teams).
2. Manage how users can install and use these apps on Outlook and the Microsoft 365 Copilot application (but not on Teams).
3. Upload custom cross application apps for your organization.

## Deploy a cross application app for Microsoft 365 via the integrated apps portal

As an admin, you can now deploy these apps to a specific set of users, the entire organization, or just to yourself from the integrated apps portal on Microsoft 365 admin center. Deploying an app means that it is preinstalled for the selected users on the applicable hosts of the app.

1. Sign into Microsoft 365 admin center as a Global Administrator.
2. Select **Settings** and then select **Integrated Apps**.
3. Select **Get apps** in the **Deployed Apps** list. This action opens up Microsoft Marketplace in embedded form from where you can select the app that you want to deploy.
4. Next, you see the deployment screen where general information about the app is given and the applicable products on which the app is deployed.
5. Click **Next** to select the set of users to whom you want to deploy the app. Read more about [user groups and assignments](/microsoft-365/admin/manage/test-and-deploy-microsoft-365-apps#user-and-group-assignments).
6. Next, accept permissions if there are any. Then select **Next**.
7. Review and finish the deployment of the app. This app is now preinstalled for all selected users in the applicable hosts.

As a Global Administrator, you can also initiate deployment of an app from its overview pane in the Available Apps list on the integrated apps portal.  
1. Select the app you wish to deploy from the **Available Apps** list on **Integrated Apps**. 
2. Next, select **Deploy app** in the overview pane.  
3. Complete the deployment steps as described earlier in this section.  

> [!IMPORTANT]
> Any changes made to these apps from the integrated apps portal on the Microsoft 365 admin center only impact these apps on Outlook and the Microsoft 365 Copilot application. To manage how these apps show up on Teams, use the Teams admin center.

As an admin, you can also take management actions on these apps such as removing the deployment or editing user access.

> [!NOTE]
> On the Integrated Apps page, the **CoPilot** app settings apply to both **Microsoft 365 Copilot** and the **Copilot Chat** apps. Any changes made to this app from the integrated apps portal apply to both.

### To remove the deployment of this app

1. Select **Remove app** in the overview tab of an app from the **Deployed Apps** list.
2. Consent to the removal terms.
3. Select **Remove**, then select **Done**.

### To edit the user assignment of an app

1. Select **Edit users** in the overview tab of an app from the **Deployed Apps** list.
2. Change the user assignment to deploy this app for a new set of users.
3. Select **Update**, then select **Done**.

## Manage how users can install cross application apps for Microsoft 365

As an admin, you can manage availability or how users can install such apps in your organization. You have complete control over who can or can't install and use apps in your organization. Unlike deploying an app that you pre-install for selected users, managing availability of an app allows you to decide which users can self-install these apps from the stores on the Microsoft applications.

The following sections tell you more about the tools available for managing availability of these apps on Outlook and the Microsoft 365 Copilot application.

### How to see the available and blocked apps in your organization

1. Sign into Microsoft 365 admin center as a Global Administrator.
2. Select **Settings**, then select **Integrated Apps**.
3. Select the **Available Apps** or **Blocked Apps** list. Here you can view the status of all apps in the public catalog, and any custom line-of-business apps uploaded from the Teams or Microsoft 365 admin centers.
4. Select an app to view more details about the app, applicable host products, and availability status within your organization.

### How to block an app

You can block an app for all users in your organization to restrict them from downloading and using the app on the Microsoft 365 Copilot application and Outlook.

1. Sign into Microsoft 365 admin center as a Global Administrator.
2. Select **Settings**, and then select **Integrated Apps**.
3. Select the **Available Apps** list.
4. Select an app from the **Available Apps** list to open the overview pane.
5. Select **Block app**.
6. Consent to blocking the app by selecting **Yes, I'm sure I want to block this app**.
7. Select **Block**. You can now see this app in the **Blocked Apps** list.

When you choose to block an app, it is blocked for all users in your organization. Blocking an app overrides any previous admin deployment or user installation in Microsoft 365 and Outlook so that no one in your organization can use the app.

> [!NOTE]
> The app is only be blocked in the Microsoft 365 Copilot application and Outlook. Teams continues to honor the current setting for Teams Apps made in the Teams admin center and for Outlook apps made in the Exchange admin center. For more details, read [What happens to your existing settings for Teams and Outlook](#what-happens-to-your-settings-on-teams-and-outlook).  

### How to unblock an app

You can unblock an app so that it can start showing up in the Microsoft 365 Copilot application and Outlook.

1. Sign in to Microsoft 365 admin center as a Global Administrator.
2. Select **Settings**, and then select **Integrated Apps**.
3. Select the **Blocked Apps** list.
4. Select an app from the **Blocked Apps** list to launch the overview pane.
5. Select **Unblock app**.
6. Read the availability and deployment status that the app reverts to after unblocking. These statuses are the last saved ones of the app before it was blocked.
7. Select **Unblock**. You can now see this app in the **Available Apps** list and/or the **Deployed Apps** list.

When you choose to unblock an app, the app reverts to the last saved state of availability and deployment. If the app doesn't have any availability status set, the app reverts to the default tenant setting. Learn more about these controls in the following section.

### How to manage the availability of an app in your organization

As an admin, you can control which apps can be installed and used by which users in your organization. By changing the availability, you're deciding how end users in your organization can install these apps from the store and use them on Outlook and the Microsoft 365 Copilot application. Admins can edit the availability of all Microsoft Marketplace apps and line-of-business (LOB) apps uploaded by them.

1. Sign into the Microsoft 365 admin center as a Global Administrator.
2. Select **Settings**, then select **Integrated Apps**.
3. Select the **Available Apps** list.
4. Next, select the app you want to edit. This launches the app’s overview pane.
5. Scroll down and select **Edit Users** or select the **Users** tab in the overview pane. Read more about user groups and assignments earlier in this article.
6. Select the availability status of the app you want to set:
     - **No users in the organization can install** means that no one in the organization can install this app on their own from the store and use it in the client.
     - **All users in the organization can install** means that everyone in the organization can install this app on their own from the store and use it in the client.
    - **Specific users/group in the organization can install** means that only the users selected by you are able to install the app on their own from the store and use it in the client. Unselected users are not able to do so.
7. Select **Save**.

> [!NOTE]
> The availability setting of an app doesn't impact any admin deployed apps. The availability setting only allows you to control which end users can install and use these apps on their own. Any previous admin deployments made are still be honored.

> [!NOTE]
> Availability setting of an app overrides the state set in default tenant setting. Learn more about default state settings in the following section.

### Customize default settings for cross application apps for Microsoft 365

As an admin, you can control the default state of any new and incoming app in your organization. You can do this individually for Microsoft apps, third party apps, and custom apps. The default setting for any organization is set to **Allow all users in the organization to access apps**. You can change this default setting on the integrated apps portal in the Microsoft 365 admin center.

1. Sign into the Microsoft 365 admin center as a Global Administrator.
2. Select **Settings**, then select **Integrated Apps**.
3. Select the **Available Apps** list.
4. Next, select the Settings icon at the top of the apps list to open the **Customize default settings** pane.
5. For each app type category, set up the toggle to allow or disallow user's installation of all apps.
    - When you switch the toggle to **Yes**, users can install the apps of that app type.
    - When you switch the toggle to **No**, users aren't allowed to install apps of that app type.  Additionally, apps previously installed by users under that app type are no longer be accessible to the users.  This action does not impact an admin's ability to install the apps. When the toggle is switched to **No**, admins can still install the apps, and all admin-installed apps continue to be accessible to the users.

The default tenant state applies to the following apps:

- All new and incoming cross application apps for Microsoft 365.
- All cross application apps published in the past that the weren't blocked by the admin.
    - If an app was previously blocked for Outlook and the Microsoft 365 Copilot application, it continues to remain blocked even after the default state for the tenant is changed. When admins unblock the app, it reverts to the default state set for the tenant on Outlook and the Microsoft 365 Copilot application.
- All cross application apps published in the past that were deployed by the admin.
    - The default tenant state also applies to admin-deployed apps. If an app was previously deployed by the admin to a set of users for Outlook and the Microsoft 365 Copilot application, it continues to remain deployed to the selected set of users, even after the default state for the tenant is changed.

The default tenant state won't apply to the following apps:

- Apps that have any user selections made by the admin.
    - The changes made by the admin as part of **How to manage the availability of an app in your organization** are honored over the default state in the tenant. Once an admin specifies users for an app, this setting supersedes the tenant-wide default setting for that app.

## What happens to your settings on Teams and Outlook

Any existing settings made on the Teams admin center continues to be honored on the Teams client.

As an example, the Foo Teams-only app recently upgraded to a cross application app.

|&nbsp;|Impact on Teams client|Impact on Microsoft 365|Impact on Outlook client|
|---|---|---|---|
|**If you had previously blocked the Foo app on the Teams admin center**|Users in your organization can't download and use Foo on Teams.|Users in your organization can download and use Foo in the Microsoft 365 Copilot application. This can be controlled by admins on the Microsoft 365 admin center.|Users in your organization can download and use Foo in Outlook. This can be controlled by admins on the Microsoft 365 admin center.|
|**If you had previously allowed the Foo app on the Teams admin center**|Users in your organization can download and use the Foo in Teams.|Users in your organization can download and use Foo in the Microsoft 365 Copilot application. This can be controlled by admins on the Microsoft 365 admin center.|Users in your organization can download and use Foo in Outlook. This can be controlled by admins on the Microsoft 365 admin center.|

Now that _Foo_ is a cross application app, you can make changes to its availability from the Microsoft 365 admin center.

|&nbsp;|Impact on Teams client|Impact on Microsoft 365|Impact on Outlook client|
|---|---|---|---|
|**If you block Foo App in the Microsoft 365 admin center**|No impact. Users in your organization continue to experience Teams behavior for Foo based on the admin settings in Teams admin center.|Users in your organization can't download the Foo on the Microsoft 365 Copilot application, and can't use any previously installed (by user/admin) Foo app.|Users in your organization can't download the Foo App on Outlook, and can't use any previously installed (by user/admin) Foo app.|
|**If you unblock Foo in the Microsoft 365 admin center.**|No impact. Users in your organization continue to experience Teams behavior for Foo based on the admin settings in Teams admin center.|Users in your organization can download and use Foo on the Microsoft 365 Copilot application. Users can use any previously installed (by user/admin) Foo app.|Users in your organization can download and use Foo in Outlook. Users can use any previously installed (by user/admin) Foo app.|

## Upload custom cross application apps

You can also upload custom line of business apps and deploy/pre-install them for users in your organization:

1. In the Microsoft 365 admin center, in the left nav, choose **Settings** and then **Integrated apps**.
1. Select **Upload custom apps**.
1. Select **Teams App** on the **App type** dropdown.
1. Upload the app package zip file from your device.
1. Select **Next**.
1. Select **Add users**, and then select either **Entire organization**, **Specific users/groups**, or **Just me**. Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group. Read more about [user groups and assignments](/microsoft-365/admin/manage/test-and-deploy-microsoft-365-apps#user-and-group-assignments).
1. Select **Next** to view the **Accept permission request** page. The app capabilities and permissions of the apps are listed. If the app needs consent, select **Accept permissions**. Only a global administrator can give consent.
1. Select **Next** to review the deployment and choose **Finish deployment**. You can view the deployment from the **Overview** tab by choosing **View this deployment**.

Whenever a custom line of business app is uploaded, it is made available to all users in the organization for installation and use by default. You can edit the availability of this custom line of business app from the Available apps list. For more information, see the section about [how to manage availability of an app in your organization](#how-to-manage-the-availability-of-an-app-in-your-organization).  

As a Global Administrator, you can also initiate deployment of a custom app (uploaded from Teams Admin Center) from its overview pane in the Available Apps list on the integrated apps portal. 

1. Once the app is uploaded from Teams Admin Center, it shows up in the **Available Apps** list on **Integrated Apps** with the availability status of **All users in the organization can install**.
2. Select the app from the **Available Apps** list on **Integrated Apps**.
3. Next, select **Deploy app** in the overview pane.  
4. Complete the deployment steps as listed above.

Once finished, the app is deployed to Outlook and the Microsoft 365 Copilot application. To manage this app on Teams, visit Teams Admin Center.  

> [!NOTE]
> Before uploading a custom app from the integrated apps portal on Microsoft 365 admin center, please verify whether this app is already visible in the Available Apps list. If it is visible, please deploy the app using the steps outlined above. Do not upload it again.

### Removal of a custom app

1. Select **Remove app** in the overview tab of an app from the **Deployed Apps** list.
2. Consent to the removal terms.
3. Select **Remove**, then select **Done**.

> [!NOTE]
> Removing a custom app from the Deployed Apps list on the integrated apps portal deletes the deployment and the app is no longer available for installation to end users in your organization on Outlook and/or the Microsoft 365 Copilot application. If the custom app is also supported on Teams, it is removed from the Teams admin center.
>
> Please verify whether the app was successfully removed from both the Microsoft 365 admin center and Teams admin center.
