---
title: Add users and assign licenses in Microsoft 365
description: Learn how to add users and assign licenses in Microsoft 365. Create user accounts, manage access to apps and mailboxes for your organization.
#customer intent: As an admin, I want to add users and assign licenses in Microsoft 365 so that they can access the necessary tools and services.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365_Setup
- Adm_TOC
- trust-pod
ms.custom:
- VSBFY23
- okr_smb
- AdminSurgePortfolio
- AdminTemplateSet
- adminvideo
- business_assist
search.appverid:
- MET150
ms.date: 09/17/2025
---


# Add users and assign licenses in Microsoft 365

Each person in your organization needs a user account before they can sign in and access [Microsoft 365 for business](https://www.microsoft.com/microsoft-365/business). The easiest way to add user accounts is to add them one at a time in the [Microsoft 365 admin center](https://admin.microsoft.com). After you complete this step, your users have Microsoft 365 licenses, sign-in credentials, and Microsoft 365 mailboxes.

> [!TIP]
> Check out all of our small business content on [Small business help & learning](https://support.microsoft.com/smallbusiness?ocid=SMCNavtoSMBHub).
>
> Check out [Microsoft 365 small business help](https://www.youtube.com/channel/UCBcPPMQmVe5O3on4v5VKrYA) on YouTube.

## Before you begin

You must be a license or user admin to add users and assign licenses. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Add a user in Microsoft 365

The following video shows how to add a user in Microsoft 365. It's one minute and 57 seconds long.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=5cbb17c5-30f3-42cd-a10e-d07c3013c609]

> [!NOTE]
> The steps used in the video show the *simplified view* starting point for adding users, but the remaining steps are the same as the *dashboard view*.

::: moniker range="o365-worldwide"

Sign in to the [Microsoft 365 admin center](https://admin.cloud.microsoft).

::: moniker-end

::: moniker range="o365-21vianet"

Sign in to the [Microsoft 365 admin center](https://portal.partner.microsoftonline.cn).

::: moniker-end

1. Determine which admin center view you're currently using.

    - If the top of the Microsoft 365 admin center shows **Dashboard view**:

        :::image type="content" source="../../media/classic-admin-center.png" alt-text="A screenshot of the Dashboard view in the Microsoft 365 admin center.":::

        Go to **Users** > **Active users**, and select **Add a user**.

    - If the top of the Microsoft 365 admin center shows **Simplified view**:

        :::image type="content" source="../../media/vsb-add-user-view.png" alt-text="A screenshot of the Simplified view in the Microsoft 365 admin center.":::

        Select **Add user**. You can select either the **Add user** button at the top of the page or in the **Users** tab under **Your organization**.

1. **Set up the basics**: fill in the basic user information, and then select **Next**.

    - **Name**: Fill in the first name, family name, display name, and username.

    - **Domains**: Choose the domain for the user's account. For example, if their username is `Jakob`, and the domain is `contoso.com`, then they sign in with `jakob@contoso.com`.

    - **Password settings**:

        - By default, the option to **Automatically create a password** is selected. If you deselect this option, create a strong password for the user.

        - By default, the option to **Require this user to change their password when they first sign in** is selected. The user must change their password after 90 days.

1. **Assign product licenses**: select the location and the appropriate license for the user.

    - If you don't have any licenses available, you can still add a user and buy more licenses.

    - To limit the apps the user has a license for, expand **Apps** and select or deselect apps.

1. **Optional settings**:

    - If you want to make this user an admin, expand **Roles**.

    - To add more information about the user, expand **Profile info**.

1. **Review and finish**: review your new user's settings, make further changes, and then select **Finish adding**.

1. On the completion page:

    - To give the user their password, select **Print** to create a hard copy or a PDF of their credentials that you can securely share with them.

    - To help them get started with Microsoft 365, send them an email that contains useful information.

    - Decide whether you want to save these user settings as a template.

    - Choose whether you want to add another user or **Close** the **Add a user** pane.

## Add multiple users in Microsoft 365

The following video shows how to add multiple users in Microsoft 365. It's one minute and 31 seconds long.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=1c0d7aa1-ac30-4e7c-b889-27162883945b]

### Add multiple users in the dashboard view

1. Go to **Users** > **Active users**, and select **Add multiple users**.

1. **Add list of users**: choose whether to add users via rows on this page or upload a CSV with user information.

    :::image type="content" source="../../media/upload-csv-file.png" alt-text="A screenshot from the Microsoft 365 admin center to add a list of users.":::

    If you select **I'd like to upload a CSV with user information**:
    - Download the example CSV file. Make sure your spreadsheet includes the exact same column headings as the sample CSV file.
    - If you use the sample CSV file, open it in an editing tool like Microsoft Excel. Don't change the headings in the first row.
    - Make sure your spreadsheet includes values for the user name and display name for each user. For example, `bob@contoso.com, Bob Kelly`.
    - When you're done entering the users' information in your spreadsheet, save it in CSV format.
    - Select **Browse**, go to the location of your CSV file, and select **Open**.

1. **Licenses**: select the location, licenses, and apps you want to assign to all new users.

1. **Review and finish adding multiple users**: Review your selections and select **Add users**.

### Other methods to add multiple users

You can also use any of the following methods to add multiple users at the same time:

- **Automate adding accounts and assigning licenses.** Choose this method if you're already familiar with using Windows PowerShell cmdlets. For more information, see [Create user accounts with Microsoft 365 PowerShell](../../enterprise/create-user-accounts-with-microsoft-365-powershell.md).

- **Synchronize with Active Directory.** Use the Microsoft Entra Connect tool to replicate Active Directory user accounts in Microsoft 365. The sync only adds the user accounts. You must assign licenses to the synced users before they can use email and other apps for Microsoft 365. For more information, see [Set up directory synchronization for Microsoft 365](../../enterprise/set-up-directory-synchronization.md).

- **Migrate email accounts from Exchange.** When you migrate multiple mailboxes to Microsoft 365 by using either cutover, staged, or a hybrid Exchange method, you automatically add users as part of the migration. The migration only adds the user accounts. You must assign licenses to the users before they can use email and other apps for Microsoft 365. If you don't assign a license to a user, their mailbox is disabled after a grace period of 30 days. Learn how to [assign licenses to users](../manage/assign-licenses-to-users.md) in the Microsoft 365 admin center. For more information, see [Ways to migrate multiple email accounts to Microsoft 365](/Exchange/mailbox-migration/mailbox-migration).

## Create, edit, or delete custom user views

If you're a user management admin of a Microsoft 365 for business subscription, you can create up to 50 custom user views to view subsets of users. These views are in addition to the standard set of views. You can create, edit, or delete custom user views, and all admins can access the custom views you create.

When you create, edit, or delete a custom user view, all admins in your company see the changes in the **Filter set** list when they go to the **Active users** page.

### Standard filters

The **Filter set** list displays standard user views by default. You can't edit or delete standard views. The standard filters include:

- Billing admins
- Global admins
- Guest users
- Helpdesk admins
- Licensed users
- Service support admins
- Unlicensed users
- User admins
- Users with errors

A few things to note about standard views:

- If there are more than 2,000 users in the list, some standard views display an unsorted list. To locate specific users in this list, use the search field.

- If you didn't purchase Microsoft 365 from Microsoft, **Billing admins** don't appear in the standard views list. For more information, see [Assigning admin roles](assign-admin-roles.md).
  
### Custom filters

To create a custom filter, select **New filter** from the **Filter set** list. This action opens the **Custom filter** pane.

Create and edit your custom views in the **Custom filter** pane. If you select multiple filter options, you get results that contain users who match all the selected criteria. Many conditions are available for custom filters, such as:

- **Domain**: If you have multiple domains for your organization, you can choose from the list of available domains.

- **Sign-in status**: Choose users that are allowed or blocked.

- **Location**: Choose a location from the list of countries/regions.

- **Assigned product license**: Choose from the list of licenses that are available to your organization. Use this filter to show users who have the assigned license. Users might also have other licenses.

You can also filter by other user profile details used in your organization, such as department, city, state or province, country/region, or job title.

You can select these **Other conditions**:

- **Synchronized users only**: Select this option to show all users who are synced with the local Active Directory. This filter works whether you activate the users or not.

- **Users with errors**: Select this option to show users who might have provisioning errors.

- **Unlicensed users**: Select this option to find all the users who aren't assigned a license. The results for this view can also include users who have an Exchange mailbox but don't have a license. To track those users specifically, use the filter **Unlicensed users with Exchange mailboxes or archives**. The results for this view can also include users who have an Exchange archive, but don't have a license.

- **Unlicensed users with Exchange mailboxes or archives**: Select this option to show user accounts that you created in Exchange Online and assigned an Exchange mailbox, but didn't assign a Microsoft 365 license. The results of this filter include users who have or who were assigned an Exchange archive.

  > [!NOTE]
  > The **Unlicensed users with Exchange mailboxes** filter works when:
  >
  > - The mailbox was recently converted from **shared** to **user** and it has no license.
  > - The mailbox was recently migrated to Microsoft 365 but a license wasn't assigned.
  > - The mailbox was created using PowerShell, and a license wasn't assigned.
  > - A new mailbox is provisioned for the user, and that mailbox was created on-premises with the **New-RemoteMailbox** cmdlet.

### Create a custom user view

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** \> **[Active users](https://admin.cloud.microsoft/?#/users)**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to **Users** \> **[Active users](https://portal.partner.microsoftonline.cn/AdminPortal/Home?ref=users)**.

::: moniker-end

1. On **Active users**, select **Filter set** and select **New filter**.
  
1. On the **Custom filter** pane, enter the name for your filter, choose the conditions for your custom filter, and then select **Add**.

Your custom view is now included in the custom filters set.

### Edit or delete a custom user view

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** \> **[Active users](https://admin.cloud.microsoft/?#/users)**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to **Users** \> **[Active users](https://portal.partner.microsoftonline.cn/AdminPortal/Home?ref=users)**.

::: moniker-end

1. On **Active users**, select **Filter set**, select **Custom filters set**, and switch to the filter you want to change.

    > [!TIP]
    > You can only edit custom filters.

1. Select **Filter set** again, then select **Edit filter**.

1. On the **Custom filter** pane:

    - To change the filter: edit the conditions, then select **Save**.

    - To delete the filter: select the ellipsis (`...`), then select **Delete**.

## Next steps

When you add a user, Microsoft sends an email notification. The email contains the person's user ID and password so they can sign in to Microsoft 365. Use your normal process for communicating new passwords. Share the [quickstart guide](https://support.microsoft.com/office/7f34c318-e772-46a5-8c0a-ab86661542d1) with your new users to get started. For example, how to [Download and install or reinstall Microsoft 365 or Office 2021 on a PC or Mac](https://support.microsoft.com/office/4414eaaf-0478-48be-9c42-23adc4716658) and how to [Set up Microsoft 365 apps and email on a mobile device](https://support.microsoft.com/office/7dabb6cb-0046-40b6-81fe-767e0b1f014f).

## Related content

- [Add several users at the same time to Microsoft 365](../../enterprise/add-several-users-at-the-same-time.md)
- [Restore a user in Microsoft 365](restore-user.md)
- [Assign licenses to users](../manage/assign-licenses-to-users.md)
- [Delete a user from your organization](delete-a-user.md)
