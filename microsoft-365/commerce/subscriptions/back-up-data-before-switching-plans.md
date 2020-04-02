---
title: "Back up data before switching Office 365 for business plans"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- commerce
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
ms.assetid: a1da52c9-2167-4973-9e6d-492314a79b87
description: "Backup Outlook, OneDrive, Yammer, and SharePoint content before switching Microsoft 365 subscriptions or if a user leaves the organization."
---

# Back up data before switching Office 365 for business plans

If a user will be switched to another subscription that has fewer data-related services or a user leaves the organization, a copy of their data that's stored in Office 365 can be downloaded before they are switched to the new subscription.
  
## Save a copy of Outlook information

If users have Outlook, they can [export or backup email, contacts, and calendar to an Outlook .pst file](https://support.office.com/article/14252b52-3075-4e9b-be4e-ff9ef1068f91) before their plan is switched.
  
After the switch to the new plan is finished, users can [Import email, contacts, and calendar from an Outlook .pst file](https://support.office.com/article/431a8e9a-f99f-4d5f-ae48-ded54b3440ac).
  
## Save files stored in OneDrive for Business

Before being switched to a different subscription, users can [download files and folders from OneDrive or SharePoint](https://support.office.com/article/5c7397b7-19c7-4893-84fe-d02e8fa5df05) to a different location, such as a folder on their computer's hard drive, or a file share on the organization's network.
  
## Save Yammer information

Admins can export all messages, notes, files, topics, users, and groups to a .zip file. For more information, see [Export data from Yammer Enterprise](https://docs.microsoft.com/yammer/manage-security-and-compliance/export-yammer-enterprise-data). Developers can use the [Yammer API](https://go.microsoft.com/fwlink/p/?linkid=842495) to do this, as well.
  
## How to save SharePoint information

If a user is switched from a subscription that has SharePoint Online to one that doesn't have it, the **SharePoint** tile will no longer appear in their Office 365 menu.
  
However, as long as the new subscription is within the same organization as the one they are switched from, users will still be able to access the SharePoint team site. They can view and update notebooks, documents, tasks, and calendars by using the direct URL to the team site.
  
> [!TIP]
> We recommend that users go to the team site before their subscription is switched and save the URL as a favorite or bookmark in their browser.
  
By default, the URL of the team website is in this form:
  
```html
https://<orgDomain>/_layouts/15/start.aspx#/SitePages/Home.aspx
```

where  _\<orgDomain\>_ is the organization's URL.
  
For example, if the domain of the organization is contoso.onmicrosoft.com, then the direct URL to the team site would be https://contoso.onmicrosoft.com/_layouts/15/start.aspx#/SitePages/Home.aspx.
  
Of course, users can also download SharePoint Online documents from the SharePoint team site to their local computer or to another location at any time.