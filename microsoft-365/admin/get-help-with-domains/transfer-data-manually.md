---
title: "Transfer data manually between two Office 365 accounts"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
search.appverid:
- MET150
- MOE150
ms.assetid: 7dc5d983-84b2-4802-bef0-602ae1780a42
description: "Find how to transfer data manually between two Office 365 accounts when you changed the plan or company name, or combined multiple subscriptions into one."
---

# Transfer data manually between two Office 365 accounts

Prepare to roll up your sleeves and block out a chunk of time on your calendar: transferring data between two Office 365 accounts is a manual, complicated, and time-consuming process. This is not an automated or supported process. We'll get you started.
  
> [!CAUTION]
> There will be down time during the process where email, Skype for Business and a public website hosted on Office 365 won't work. Users will get new user names and passwords, and they'll need to reset up Outlook.

**Only transfer data manually using the instructions in this topic if one of the following applies:**
  
- You need to change to a plan in a different service family.

- Your company name changed, and you decided to create a new subscription and migrate your data because you want to use different initial domain names.

- You need to combine multiple subscriptions into one new one.

> [!IMPORTANT]
> If you need to [change your subscription plan](../../commerce/subscriptions/switch-to-a-different-plan.md) and can use the Switch plans wizard, or if you need to transfer to a new subscription plan in the same subscription family even when the Switch plans wizard doesn't work, you don't need to manually transfer your data, and there is no down time.

|**Tasks**|**Steps**|
|:-----|:-----|
|Purchase the plan you want to move to.  <br/> |When you sign up, you specify the company name to use in the initial domain names:  *yourcompany*  .onmicrosoft.com,  *yourcompany*  -public.sharepoint.com, and  *yourcompany*  .sharepoint.com. You need to use a different  *yourcompany*  name than you did for any existing subscriptions.  <br/> > [!NOTE]>  It typically takes a minimum of several months after cancelling a subscription to release the initial domain names that use  *yourcompany*  from our systems. Even if you plan to save all your data from your old Office 365 subscription, and cancel that subscription, the old  *yourcompany*  value is not immediately available for use in a new subscription.           |
|Remove your custom domain from your old Office 365 subscription.  <br/> | Follow the [required steps before you remove a domain](remove-a-domain.md) to remove the domain name from user email addresses and remove DNS records for email and Lync for the custom domain. If you host your public website on Office 365, you'll also need to remove the CNAME record that points to it.  <br/> > [!IMPORTANT]>  After you remove the MX record that routes email to this custom domain, email will stop working until you have added the domain to your new account, set up the new MX record, and set up your users. When you remove the DNS records for Lync, Lync will stop working. And after you remove the CNAME record that points to your public website, it will not be available.           [Remove the domain](remove-a-domain.md) .  <br/> |
|Set up your custom domain for your new subscription, and set up your users.  <br/> | Set up your new subscription, including creating the required DNS records for your custom domain.  <br/>  Create your users, with email addresses on your custom domain.  <br/> |
|Transfer data from your old subscription to your new subscription.  <br/> | Sign in to both accounts in separate browser windows:  <br/>  Right-click the Internet Explorer icon, and open two InPrivate browser windows. You can use different credentials in the two windows to sign in on both accounts.  <br/> [Transfer administrative settings between subscriptions](transfer-data-manually.md#__email) <br/> [Transfer team site structure and data](transfer-data-manually.md#__team_site) <br/> [Transfer a public website between subscriptions](transfer-data-manually.md#__public_web_site) <br/> [Transfer administrative settings between subscriptions](transfer-data-manually.md#__email) <br/> |
|Cancel the subscription for the plan you're done with by calling Microsoft Support for Office 365.  <br/> | Verify that your new subscription is working and all data has been transferred.  <br/>  [Contact customer support](../contact-support-for-business-products.md) to cancel your old subscription.  <br/> |

## Transfer administrative settings between subscriptions

Go to the following pages on each account, and set up the new account based on the old account's settings.
  
If you are transferring data from Office 365 to Office 365 Midsize Business or Office 365 Enterprise, the admin pages are structured differently. Watch a [Video: Introducing Office 365 Enterprise](https://support.office.com/article/11f7b4a0-1294-4e94-9238-beaae26efa9c.aspx), and go to the following places to look at admin settings.
  
For Office 365 Enterprise and Office 365 Midsize Business:
  
|**Location**|**Purpose**|
|:-----|:-----|
|**Admin** \> **Office 365** \> **Service settings** <br/> |Select each tab for settings for mail, sites, Lync, user software, passwords, community, rights management, and mobile.  <br/> |
|**Admin** \> **Exchange** <br/> | Exchange Online settings  <br/> |
|**Admin** \> **SharePoint** <br/> | SharePoint Online settings  <br/> |
|**Admin** \> **Skype for Business** <br/> |Additional Skype for Business settings  <br/> |

For Office 365 Small Business
  
|**Location**|**Purpose**|
|:-----|:-----|
|**Admin** \> **Manage organization-wide settings** <br/> |Administrative settings  <br/> |
   
## Transfer a public website between subscriptions

If you have a public website hosted on Office 365, you need to save it and re-create it on your new subscription.
  
> [!NOTE]
> If your public website is hosted at a DNS hosting provider, no changes are required. It will not be affected by your transition.
  
To save a document library or list content from a SharePoint Online environment to file shares or to a local computer, see [Manual migration of SharePoint Online content](https://go.microsoft.com/fwlink/p/?LinkId=402910).
  
> [!NOTE]
> The Public site migration app can't transfer data to a different subscription.
  
## Transfer team site structure and data

There are several ways to save or transfer team site data:
  
- You can save the old site as a template and import the template into the new site.

- To transfer documents, first manually recreate your hierarchy on the new site. Then you can open both SharePoint team sites at the same time, open both document libraries with Windows Explorer, and copy and paste the documents. See [Video: Copy or move library files by using Open with Explorer](https://support.office.com/article/c27bc6f3-7b38-4c29-b947-5d00c7153384.aspx).

- To transfer list data, save a [list template](https://support.office.com/article/c3884ad1-bc49-44b8-b3d6-3bc6a01eb393.aspx), and use the saved template to re-create the list on the new site.

- To save a document library or list content from a SharePoint Online environment (OneDrive for Business or team sites) to file shares or to a local computer, see [Information about manual migration of SharePoint Online content](https://support.microsoft.com/kb/2783484).

## Transfer users' data between subscriptions

### Email:

Ask users to [move their email, contacts, tasks, and calendar information](https://support.office.com/article/0996ece3-57c6-49bc-977b-0d1892e2aacc.aspx) after you set up your new subscription. They can get to their old email by using their initial user name, such as sue@contoso.onmicrosoft.com.
  
### OneDrive For Business data:

Ask users to Copy/Sync [OneDrive for Business content to their computer](https://support.office.com/article/59b1de2b-519e-4d3a-8f45-51647cf291cd.aspx), and then add it back to their new subscription.