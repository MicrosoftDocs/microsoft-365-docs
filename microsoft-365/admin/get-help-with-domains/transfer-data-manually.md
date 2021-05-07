---
title: "Transfer data manually between two accounts"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
ms.assetid: 7dc5d983-84b2-4802-bef0-602ae1780a42
description: "Find how to transfer data manually between two Microsoft 365 accounts when you changed the plan or company name, or combined multiple subscriptions into one."
---

# Transfer data manually between two accounts

Prepare to roll up your sleeves and block out a chunk of time on your calendar: transferring data between two Microsoft 365 accounts is a manual, complicated, and time-consuming process. This is not an automated or supported process. We'll get you started.
  
> [!CAUTION]
> There will be down time during the process where email, Skype for Business and a public website hosted on Microsoft 365 won't work. Users will get new user names and passwords, and they'll need to reset up Outlook.

**Only transfer data manually using the instructions in this topic if one of the following applies:**
  
- You need to change to a plan in a different service family.

- Your company name changed, and you decided to create a new subscription and migrate your data because you want to use different initial domain names.

- You need to combine multiple subscriptions into one new one.

> [!IMPORTANT]
> If you need to [change your subscription plan](../../commerce/subscriptions/switch-to-a-different-plan.md) and can use the Switch plans wizard, or if you need to transfer to a new subscription plan in the same subscription family even when the Switch plans wizard doesn't work, you don't need to manually transfer your data, and there is no down time.

|**Tasks**|**Steps**|
|:-----|:-----|
|Purchase the plan you want to move to.  <br/> |When you sign up, you specify the company name to use in the initial domain names:  *yourcompany*  .onmicrosoft.com,  *yourcompany*  -public.sharepoint.com, and  *yourcompany*  .sharepoint.com. You need to use a different  *yourcompany*  name than you did for any existing subscriptions.  <br/> > [!NOTE]>  It typically takes a minimum of several months after cancelling a subscription to release the initial domain names that use  *yourcompany*  from our systems. Even if you plan to save all your data from your old Microsoft 365 subscription, and cancel that subscription, the old  *yourcompany*  value is not immediately available for use in a new subscription.           |
|Remove your custom domain from your old Microsoft 365 subscription.  <br/> | Follow the [required steps before you remove a domain](remove-a-domain.md) to remove the domain name from user email addresses and remove DNS records for email and Lync for the custom domain. If you host your public website on Microsoft 365, you'll also need to remove the CNAME record that points to it.  <br/> > [!IMPORTANT]>  After you remove the MX record that routes email to this custom domain, email will stop working until you have added the domain to your new account, set up the new MX record, and set up your users. When you remove the DNS records for Lync, Lync will stop working. And after you remove the CNAME record that points to your public website, it will not be available.           [Remove the domain](remove-a-domain.md) .  <br/> |
|Set up your custom domain for your new subscription, and set up your users.  <br/> | Set up your new subscription, including creating the required DNS records for your custom domain.  <br/>  Create your users, with email addresses on your custom domain.  <br/> |
|Transfer data from your old subscription to your new subscription.  <br/> | Sign in to both accounts in separate browser windows:  <br/>  Right-click your browser icon, and open two private browser windows. You can use different credentials in the two windows to sign in on both accounts.  <br/> [Transfer administrative settings between subscriptions](#email) <br/> [Transfer team site structure and data](#transfer-team-site-structure-and-data) <br/> [Transfer a public website between subscriptions](#transfer-a-public-website-between-subscriptions) <br/> [Transfer administrative settings between subscriptions](#email) <br/> |
|Cancel the subscription for the plan you're done with by calling Microsoft Support for Microsoft 365.  <br/> | Verify that your new subscription is working and all data has been transferred.  <br/>  [Contact customer support](../contact-support-for-business-products.md) to cancel your old subscription.  <br/> |

## Transfer administrative settings between subscriptions

Go to the following pages on each account, and set up the new account based on the old account's settings.
  
If you are transferring data from Microsoft 365 to Microsoft 365 Midsize Business or Microsoft 365 Enterprise, the admin pages are structured differently. Watch a [Video: Introducing Microsoft 365 Enterprise](../index.yml), and go to the following places to look at admin settings.
  
For Microsoft 365 Enterprise and Microsoft 365 Midsize Business:
  
|**Location**|**Purpose**|
|:-----|:-----|
|**Admin** \> **Microsoft 365** \> **Service settings** <br/> |Select each tab for settings for mail, sites, Lync, user software, passwords, community, rights management, and mobile.  <br/> |
|**Admin** \> **Exchange** <br/> | Exchange Online settings  <br/> |
|**Admin** \> **SharePoint** <br/> | SharePoint Online settings  <br/> |
|**Admin** \> **Skype for Business** <br/> |Additional Skype for Business settings  <br/> |

For Microsoft 365 Small Business
  
|**Location**|**Purpose**|
|:-----|:-----|
|**Admin** \> **Manage organization-wide settings** <br/> |Administrative settings  <br/> |

## Transfer a public website between subscriptions

If you have a public website hosted on Microsoft 365, you need to save it and re-create it on your new subscription.
  
> [!NOTE]
> If your public website is hosted at a DNS hosting provider, no changes are required. It will not be affected by your transition.
  
To save a document library or list content from a SharePoint Online environment to file shares or to a local computer, see [Manual migration of SharePoint Online content](/sharepoint/troubleshoot/migration-tool/content-manual-migration).
  
> [!NOTE]
> The Public site migration app can't transfer data to a different subscription.
  
## Transfer team site structure and data

There are several ways to save or transfer team site data:
  
- You can save the old site as a template and import the template into the new site.

- To transfer documents, first manually recreate your hierarchy on the new site. Then you can open both SharePoint team sites at the same time, open both document libraries with Windows Explorer, and copy and paste the documents. See [Video: Copy or move library files by using Open with Explorer](../../business-video/store-files.md).

- To transfer list data, save a [list template](https://support.microsoft.com/office/c3884ad1-bc49-44b8-b3d6-3bc6a01eb393), and use the saved template to re-create the list on the new site.

- To save a document library or list content from a SharePoint Online environment (OneDrive for Business or team sites) to file shares or to a local computer, see [Information about manual migration of SharePoint Online content](/sharepoint/troubleshoot/migration-tool/content-manual-migration).

## Transfer users' data between subscriptions

### Email:

Ask users to [move their email, contacts, tasks, and calendar information](https://support.microsoft.com/office/0996ece3-57c6-49bc-977b-0d1892e2aacc) after you set up your new subscription. They can get to their old email by using their initial user name, such as sue@contoso.onmicrosoft.com.
  
### OneDrive For Business data:

Ask users to Copy/Sync [OneDrive for Business content to their computer](https://support.microsoft.com/office/59b1de2b-519e-4d3a-8f45-51647cf291cd), and then add it back to their new subscription.

### OneNote 

Ask users to [Back up OneNote](https://support.microsoft.com/office/back-up-notes-f58b34b0-611d-435e-87fa-7942a1767af4?ui=en-us&rs=en-us&ad=us) and to [Restore notes from a backup](https://support.microsoft.com/en-us/office/restore-notes-from-a-backup-5daf9cb0-6769-4998-a5de-f044fdd0d831?ui=en-us&rs=en-us&ad=us) to their new subscriptions.