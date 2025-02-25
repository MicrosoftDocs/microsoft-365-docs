---
title: "Migrate business email and calendar from Google Workspace"
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
ms.date: 10/31/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- highpri
- M365-subscription-management 
- Adm_O365
ms.custom: 
- VSBFY23
- AdminSurgePortfolio
- adminvideo
- admindeeplinkMAC
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to migrate email, contacts, and calendar from Google Workspace to Microsoft 365 for business."
---

# Migrate business email and calendar from Google Workspace

> [!NOTE]
> The videos and content in this article are meant to give customers a high-level overview of the process of how to use an automated batch migration in the Exchange admin center to migrate your users email, contacts, and calendars from Google Workspace.
>
> Please refer to the resource links provided in this article for additional detailed information needed to use the batch migration tool successfully.

## Overview of the using an automated batch migration to migrate from Google Workspace

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198034).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=8db7f36d-9c5d-4512-a9a4-631ddad580cd]

You can use the batch migration tool in the Exchange admin center to migrate email, contacts, and calendars from Google Workspace to Microsoft 365. With it, you can:

1. Keep both environments active.
1. Migrate groups of email users to Microsoft 365 over time.
1. And then close your Google Workspace environment when you have completed moving your business.

An *automated* batch migration does some of the migration tasks for you, so it is recommended over the *manual* batch migration.

For more detailed information, see [Perform a Google Workspace migration to Microsoft 365](/exchange/mailbox-migration/perform-g-suite-migration).

> [!NOTE]
> You can also migrate your email from Google Workspace to Microsoft 365 through an [IMAP migration](/exchange/mailbox-migration/migrating-imap-mailboxes/migrate-g-suite-mailboxes). You should compare methods to determine which is more suitable for migrating your email.

It is recommended that you [get help from Microsoft](/microsoft-365/admin/get-help-support) or from a [partner](https://appsource.microsoft.com/en-us/marketplace/partner-dir) when planning to migrate with either of the above methods.

If you are a VSB (very small business) where you have a small number of users, you should migrate your email using a different method, such as [importing to Outlook through a PST file](https://support.microsoft.com/office/import-gmail-to-outlook-20fdb8f2-fed8-4b14-baf0-bf04b9c44bf7).

## Prerequisites for automated batch migration from Google Workspace

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/p/?linkid=2198034).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=76322de7-b15d-4ca4-824d-e6c5d7c59c2c]

To successfully use the automated batch migration tool, it is important to correctly complete all of the prerequisite tasks. For more detailed information, see [Google Workspace migration prerequisites](/exchange/mailbox-migration/google-workspace-migration-prerequisites).

These tasks include:

- Creating a subdomain to correctly route email to users who have been migrated to Microsoft 365.
- Creating a subdomain to correctly route email from users you have migrated to Microsoft 365 back to users in your Google Workspace environment.
- Adding all mail user accounts to Microsoft 365 for users you are migrating.
- Verifying that the Google migration admin account has the correct permissions.

> [!NOTE]
> Completing the prerequisite tasks may require you to log into your domain hosts to create subdomains and update your DNS records. If you are not comfortable doing this, you should look for assistance with this.

### Create a subdomain for email going to Microsoft 365

1. Return to the **Google Workspace admin** console.
2. Select **Add a domain**.
3. Enter a domain name for your subdomain, such as *m365.contoso.com*.
4. Select **User alias domain**, select **Add domain and start verification**, and then select **Continue**. Follow the instructions to verify domain ownership.

    Domain verification usually takes just a few minutes, but it can take up to 48 hours.

5. Go to the **Microsoft 365 admin center**.
6. In the Microsoft 365 admin center, in the left nav, select **Show all**, select **Settings**, select **Domains**, and then **Add domain**.
7. Enter the subdomain you previously created, then select **Use this domain**.
8. To connect the domain, select **Continue**.
9. Select **Add DNS records**. Depending on your domain host provider, Microsoft 365 will try to update your DNS records for the domain.
10. When complete, select **Done**.

### Create a subdomain for mail routing to Google Workspace

1. Return to the **Google Workspace admin** console.
1. Select **Add a domain**.
1. Enter a domain name for your subdomain, such as *gsuite.contoso.com*.
1. Select **User alias domain**, select **Add domain and start verification**, and then select **Continue**. Follow the instructions to verify domain ownership.

### Provision mail user accounts for users you are migrating

1. In the Exchange admin center, select **Contacts**, then **Add a mail user**.
1. On the **Set up basic information** page, enter the information about the user you want to migrate, such as Name, display name, etc..  
    1. For **External email address** use the domain domain you created for mail routing to Google Workspace (for example, *gsuite.contoso.com*).
    1. For **Domain**, select the primary domain you are using.
1. Select **Next**, and repeat this process for each user you are migrating.

Next, you need to add a proxy email address for each user for routing email to their Microsoft 365 routing domain.

1. In the Exchange admin center, select **Mailboxes**, then select a user.
1. In the user properties, select **Manage email address types**.
1. For **Email address type**, select **SMTP**.
1. Enter the user's alias, and from the drop-down menu select the Microsoft 365 routing domain (for example, *m365.contoso.com*).
1. Select **OK**, then **Save**.
1. Repeat the process for each user.

### Verify that your Google migration admin has the required permissions

In the Google admin console, verify that your Google migration admin has the following roles assigned to them:
- Project creator
- Servicer account creator

## Migrate your email, contacts, and calendars from Google Workspace

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198034).
>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=86b7d49a-83dc-43fe-8416-0fc5d1ad6804]

After successfully completing all the prerequisites, you can now use the batch migration tool to migrate your users from Google Workspace to Microsoft 365. Here is a summary of the required steps. For more detailed information, see [Perform an automated Google Workspace migration to Microsoft 365](/exchange/mailbox-migration/automated-migration-neweac). 

1. In the Exchange admin center, select **Migration**.
1. On the **Migration batches** page, select **Add migration batch**.
1. Give the migration batch a unique name, and from the **Select the mailbox migration path** menu, select **Migration to Exchange Online**.  Then select **Next**.
1. For the **Migration type**, select **Google Workspace (Gmail) migration**.  Then select **Next**.
1. On the **Prerequisites for Google Workspace migration** page, select **Start**. 
1. Sign in with your Google admin account and password.
1. On the **EAC Migration wants access to your Google Account** page, select **Continue**. 
1. EAC Migration will then do four required tasks in Google Workspace that are needed for migration. 
1. When all four tasks have been complete, take note of the **ClientID** and **Scope** values. Then select **Link**.
1. On the **API Clients** page, select **Add new**.
1. Copy the **ClientID** and **Scope** values from the migration page, and paste then into the corresponding fields (**Client ID** and **OAuth scopes**) in the **Add a new client** page. Then select **Authorize**.
1. On the **Prerequisites for Google Workspace migration** page, select **Next**.
1. On the **Set a migration endpoint** page, select **Create a new migration endpoint**, then **Next**.
1. Enter a unique **Migration endpoint name**, and use the default values for **Maximum concurrent migrations** and **Maximum concurrent incremental syncs**, then select **Next**.
1. On the **Gmail migration configuration** page, enter the email address of the Google admin account you are using to perform the migration.
1. Select **Import JSON** and then browse to the location where the JSON key file was created and downloaded to your local computer. This was done during the automated tasks configuration part of the migration (step 8) and should be found in your local **Downloads** folder. Select the file, select **Open**, and then **Next**.
1. Create a CSV file with a list of the mailboxes you want to migrate. Make sure the file follows this format: 

    ```CSV
    EmailAddress
    adeyoung@contoso.com
    awilber@contoso.com
    ``` 
1. On the **Add user mailboxes** page, select **Import CSV file** and then choose the CSV file you created containing the users emails you want to migrate. Select **Next**.
1. On the **Move configuration** page, enter the name of your target delivery domain. This was the subdomain you created in the prerequisite steps that was for email routing to Microsoft 365 (for example, *m365.contoso.com*). Then select **Next**.
1. On the **Schedule batch migration page**, you can:
    1. Enter the email address of people you want a report to be sent.
    1. Select how you want the batch to be started (manually, automatically, or at a specific time and date).
    1. Select how you want the batch to be ended (manually, automatically, or at a specific time and date).
1. Select **Save**.  When the migration batch runs successfully, select **Done**.
1. In the Exchange admin center, select **Migration**. On the **Migration batches** page, you can see the status of your batch migration.
1. When the batch shows a status of **Synced**, select **Complete migration batch**, then select **Confirm**.
1. Next, assign Exchange licenses to your migrated users, and have them check to see if their email, contacts, and calendars had migrated successfully.
