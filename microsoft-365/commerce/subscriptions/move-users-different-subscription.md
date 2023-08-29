---
title: "Move users to a different subscription"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: shegu, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- commerce_subscriptions
- AdminSurgePortfolio
- manage_licenses
search.appverid: MET150 
description: "Learn how to move users between subscriptions."
ms.date: 05/12/2022
---

# Move users to a different subscription

If you have more than one product, have users with a license for one product, but want to move them to another product, you can replace their existing license with a different one.

## Before you begin

You must be a Global, License, or User admin to assign licenses. For more information, see [About Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md).

## Move users to a different subscription

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

 1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the checkboxes next to the names of the users that you want to replace existing licenses for.

3. At the top, select **Manage product licenses**.

4. In the **Manage product licenses** pane, select **Replace**  and select the licenses that you would like to assign to the users.

5. At the bottom, select **Save Changes** \> **Close**.

## Back up data before changing Microsoft 365 for business plans

If you plant to move a user to another subscription that has fewer data-related services, or a user leaves the organization, you can download a copy of their data stored in Microsoft 365 before they are switched to the new subscription.

If you're moving a user to a subscription that has the same or more services, you don't need to back up user data.
  
### Save a copy of Outlook information

If users have Outlook, they can [export or backup email, contacts, and calendar to an Outlook .pst file](https://support.microsoft.com/office/14252b52-3075-4e9b-be4e-ff9ef1068f91) before their plan is switched.
  
After the switch to the new plan is finished, users can [Import email, contacts, and calendar from an Outlook .pst file](https://support.microsoft.com/office/431a8e9a-f99f-4d5f-ae48-ded54b3440ac).
  
### Save files stored in OneDrive for Business

Before being switched to a different subscription, users can [download files and folders from OneDrive or SharePoint](https://support.microsoft.com/office/5c7397b7-19c7-4893-84fe-d02e8fa5df05) to a different location, such as a folder on their computer's hard drive, or a file share on the organization's network.
  
### Save Viva Engage information

Admins can export all messages, notes, files, topics, users, and groups to a .zip file. For more information, see [Manage data in the Viva Engage admin center](/viva/engage/eac-as-manage-data).
  
### How to save SharePoint information

If a user is switched from a subscription that has SharePoint Online to one that doesn't have it, the **SharePoint** tile no longer appears in their Microsoft 365 menu.
  
However, as long as the new subscription is within the same organization as the one they are switched from, users can still access the SharePoint team site. They can view and update notebooks, documents, tasks, and calendars by using the direct URL to the team site.
  
> [!TIP]
> We recommend that users go to the team site before their subscription is switched and save the URL as a favorite or bookmark in their browser.
  
By default, the URL of the team website is in this form:
  
```html
https://<orgDomain>/_layouts/15/start.aspx#/SitePages/Home.aspx
```

where  _\<orgDomain\>_ is the organization's URL.
  
For example, if the domain of the organization is contoso.onmicrosoft.com, then the direct URL to the team site would be `https://contoso.onmicrosoft.com/_layouts/15/start.aspx#/SitePages/Home.aspx`.
  
Of course, users can also download SharePoint Online documents from the SharePoint team site to their local computer or to another location at any time.

## Next steps

If you're not going to [reassign the unused licenses to other users](../../managed-desktop/get-started/assign-licenses.md), consider [removing the licenses from your subscription](../../commerce/licenses/buy-licenses.md) so that you're not paying for more licenses than you need.

## Related content

[Assign licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)\
[Remove licenses from your subscription](../licenses/buy-licenses.md) (article)\
[Change plans manually](upgrade-to-different-plan.md#change-plans-manually) (article)\
[Understand subscriptions and licenses in Microsoft 365 for business](../licenses/subscriptions-and-licenses.md) (article)\
[Buy another Microsoft 365 for business subscription](../try-or-buy-microsoft-365.md) (article)
