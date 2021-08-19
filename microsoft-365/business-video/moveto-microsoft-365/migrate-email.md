---
title: "Migrate business email and calendar from Google Workspace"
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- adminvideo
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to migrate email, contacts and calendar from Google Workspace to Microsoft 365 for business."
---

# Migrate business email and calendar from Google Workspace

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4LPt6?autoplay=false]

You can use an admin-ran migration to Exchange Online from Google Workspace. You can migrate the mail either all at once, or in stages. The following steps show how to migrate the email data at once. For more information, see [Perform a G Suite migration](/exchange/mailbox-migration/perform-g-suite-migration).

The migration process takes several steps and can take from several hours to a couple of days depending on the amount of data you are migrating.

## Try it!

### Create a Google Service Account

1. Using a Chrome browser, sign into your Google Workspace admin console at [admin.google.com](https://admin.google.com). 
1. In a new tab or window, navigate to the [Service Accounts](https://console.developers.google.com/iam-admin/serviceaccounts) page. 
1. Select **Create project**, name the project and choose **Create**. 
1. Select **Create service account**, enter a name, choose **Create** and then **Done**. 
1. Open the **Actions** menu, select **Edit**, and take note of the Unique ID. You’ll need this ID later in the process. 
1. Open the **Show domain-wide delegation** section. 
1. Select **Enable G Suite Domain-wide Delegation**, enter a product name for the consent screen, and choose **Save**. 

    > [!NOTE]
> The product name is not used by the migration process, but is needed to save in the dialog.     

1. Open the **Actions** menu again and select **Create key**. 
1. Choose **JSON**, then **Create**. 

     The private key is saved to the download folder on your device.
 
1. Select **Close**. 

### Enable API usage for the project

1. Navigate to the [APIs page](https://console.developers.google.com/apis/library). 
1. In the search bar, enter **Gmail API**.
1. Select it and then choose **Enable**.
1. Repeat this process for Google Calendar API and Contacts API. 

### Grant access to the service account

1. Return to the Google Workspace admin console. 
1. Select **Security**, scroll down and open **API controls**. 
1. Scroll down and select **Manage Domain-wide Delegation**.
1. Select **Add new** and enter the Client ID you made note of earlier.
1. Then enter the OAuth scopes for Google APIs. These are available at [aka.ms/GoogleWorkspaceMigration](/exchange/mailbox-migration/perform-g-suite-migration#grant-access-to-the-service-account-for-your-google-tenant) in step 5 and are:

    `https://mail.google.com/,https://www.googleapis.com/auth/calendar,https://www.google.com/m8/feeds/,https://www.googleapis.com/auth/gmail.settings.sharing`
 
1. Choose **Authorize**. 

### Create a sub-domain for mail going to Microsoft 365

1. Return to the **Google Workspace admin** console.
1. Select **Domains**, **Manage domains**, then, **Add a domain alias**. 
1. Enter a domain alias like `m365.contoso.com`.
1. Then select **Continue and verify domain ownership**. 

    Domain verification usually takes just a few minutes, but it can take up to 48 hours.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com).
1. In the **Microsoft 365 admin center**, in the left nav, select **Show all**, **Settings**, **Domains**, and then **Add domain**. 
1. Enter the subdomain you previously created, then select **Use this domain**. 
1. To connect the domain, select **Continue**. 
1. Scroll down and take note of the MX records, CNAME records, and TXT records. 
1. Return to the **Google admin console**.
1. Select **Domains**, select **Manage domains**, **Verify Details** and then, **Manage domain**. 
1. In the left nav, choose **DNS** and scroll down to **Custom resource records**. 
1. Open the record type dropdown and select **MX**, enter or copy and paste the MX record information you previously noted,then choose **Add**. 
1. Repeat the process for the CNAME record and the TXT record. 

    It may take some time for these changes to take effect.  

1. Return to where you left off in **Microsoft 365 admin center**, and select **Continue**. 

Your domain is now set up.  

### Create email aliases in Microsoft 365

Before migration can begin, you need to create email aliases for your users with the new subdomain. 

1. To start the next step, in the **Add Domains** wizard in the Microsoft 365 admin center, select **Go to Active users**. 
1. Select a user, then, **Manage username and email**. 
1. From the **Domains** dropdown, select the subdomain you previously created. 
1. Enter a username, select **Add**, **Save changes**, and close the window. 

    Repeat this process for each user. 

### Start the migration process

Once you’ve finished, you’re ready to migrate. 

1. In the left nav of the **Microsoft 365 admin center**, scroll down to **Admin centers**,and select **Exchange**. 
1. Under **recipients**, choose **migration**, select **New**, **Migrate to Exchange Online**, choose **G Suite migration**, and then **Next**. 
1. Create a CSV file with a list of the mailboxes you want to migrate. Make sure the file follows this format: 

    ```CSV
    EmailAddress
    will@fabrikaminc.net
    user123@fabrikaminc.net
    ```

      For details see [aka.ms/GoogleWorkspaceMigration](/exchange/mailbox-migration/perform-g-suite-migration#start-a-g-suite-migration-batch-with-the-exchange-admin-center-eac). 

1. Select **Choose File**, navigate to the CSV file, choose it, select **Open**, then **Next**. 
1. Verify the admin email address you want to use for testing. 
1. Select **Choose File**, navigate to the JSON file you created earlier (usually in the Downloads folder on your computer), choose it, select **Open**, then **Next**. 
1. Enter a name in the **New migration batch name field**.
1. Enter the subdomain you created in the **Target delivery domain** field, select **Next**, and then **New**. 
1. Once the information is saved, select **OK**. 

    You can now view the status of your migration. 

1. After some time has passed, depending on how many users you are migrating, select **Refresh**. 
1. Once the status has changed to **Synced**, select **Complete this migration batch**,then **Yes**. 
1. Once the process is complete, your status will change to **Completed**. 
1. If you want, you can select **View details** for more information about the migration. 
1. Select **Close**. 
1. Open Outlook to verify that all the emails from Google Workspace were successfully migrated.
You can repeat this for calendar items and contacts as well.