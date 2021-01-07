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

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1SOFC?autoplay=false]

You can use an admin-ran migration to Exchange Online from Google Workspace. You can migrate the mail either all at once, or in stages. The following steps show how to migrate the email data at once. For more information, see [Perform a G Suite migration](https://docs.microsoft.com/exchange/mailbox-migration/perform-g-suite-migration).

The migration process takes several steps and can take from several hours to a couple of days depending on the amount of data you are migrating.

## Try it!

Using a Chrome browser, sign into your Google Workspace admin console at [admin.google.com](https://admin.google.com). 

In a new tab or window, navigate to the [Service Accounts](https://console.developers.google.com/iam-admin/serviceaccounts) page. 

Select **Create project**, name the project and choose **Create**. 
Select Create service account, enter a name… 

 

… Choose Create… 

… Then Done. 

Open the Actions menu… 

 

… Select Edit… 

… And take note of the Unique ID. You’ll need this ID later in the process. 

Open the Show domain-wide delegation section… 

… Select Enable G Suite Domain-wide Delegation… 

… Enter a Product name for the consent screen… 

… and choose Save. 

Open the Actions menu again… 

 

… And select Create key. 

Choose JSON… 

 

… Then Create. 

The private key is saved to the download folder on your device. 

 

Select Close. 

Navigate to the APIs page. 

In the search bar, enter Gmail API… 

 

… Select it… 

… Then, Enable. 

Repeat this process for Google Calendar API and Contacts API. 

 

 


Return to the Google Workspace admin console… 

 

… Select Security… 

… Scroll down… 

 

… And open API controls. 

Scroll down… 

 

… Select Manage Domain-wide Delegation… 

… Then, Add new. 

Enter the Client ID you made note of earlier… 

 

...Then enter the OAuth scopes for Google APIs. These are available at aka.ms/GoogleWorkspaceMigration. 

 

… Then, Authorize. 

 

NOTE: OAuth is pronounced “oh-auth” (“auth” as in “AUTHorization”). 

 

Next, you need to create a subdomain for mail going to Microsoft 365. 

 

Select Domains… 

… Manage domains… 

… Then, Add a domain alias. 

Enter a domain alias… 

 

… Then select Continue and verify domain ownership. 

 

Domain verification usually takes just a few minutes, but it can take up to 48 hours. 

 

In the Microsoft 365 admin center, select Show all… 

… Settings… 

 

… Domains… 

 

… Then, Add domain. 

Enter the subdomain you previously created… 

 

… Then select Use this domain. 

To connect the domain, select Continue. 

Scroll down and take note of the MX records… 

 

… CNAME records… 

 

… And TXT records. 

 

MX = “em-ex” 

 

CNAME = “Sea-name” 

 

TXT = “Tea-ex-tea” 

 

Back in the Domain section of the Google Workspace admin console, select Manage domains… 

… Verify Details… 

 

… Then, Manage domain. 

Choose DNS… 

 

… And scroll down to Custom resource records. 

Open the record type dropdown… 

 

 

… Select MX… 

… Enter or copy and paste the MX record information you previously noted… 

 

… Then choose Add. 

Repeat the process for the CNAME record… 

 

… And the TXT record. 

 

It may take some time for these changes to take effect. 

 

Return to where you left off in Microsoft 365, and select Continue. 

Your domain is now set up.  

 

To start the next step, select Go to Active users. 

Before migration can begin, you need to create email aliases for your users with the new subdomain. 

 

Select a user… 

 

… Then, Manage username and email. 

From the Domains dropdown, select the subdomain you previously created. 

Enter a username… 

 

… Select Add… 

… Save changes… 

 

 

… And close the window. 

Repeat this process for each user. 

Once you’ve finished, you’re ready to migrate. Scroll down to Admin centers… 

 

… And select Exchange. 

Under recipients… 

 

… Choose migration. 

Select New… 

 

… Migrate to Exchange Online. 

Choose G Suite migration… 

 

… Then, Next. 

Create a CSV file with a list of the mailboxes you want to migrate. Make sure the file follows this format. For details see aka.ms/GoogleWorkspaceMigration. 

Select Choose File… 

… Navigate to the file… 

 

… Choose it… 

 

… Select Open… 

… Then, Next. 

Verify the admin email address you want to use for testing. 

 

Select Choose File… 

… Navigate to the JSON file you created earlier… 

 

… Choose it… 

 

… Select Open… 

… Then, Next. 

Select a name… 

 

… Enter the subdomain you created in the Target delivery domain field… 

 

… Select Next… 

… and New. 

Once the information is saved, select OK. 

You can now view the status of your migration. 

After some time has passed, depending on how many users you are migrating, select Refresh. 

Once the status has changed to Synced… 

 

… Select Complete this migration batch… 

… Then Yes. 

Once the process is complete, your status will change to Completed. 

If you want, you can select View details for more information about the migration. 

 

Select Close. 

Open Outlook to verify that all the emails from Google Workspace were successfully migrated… 

You can repeat this for calendar items and contacts as well. 



