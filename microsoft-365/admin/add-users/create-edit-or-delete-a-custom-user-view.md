---
title: "Create, edit, or delete a custom user view"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
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
- BCS160
- MET150
- MOE150
ms.assetid: 4fe7f6ac-be8e-4b57-9e13-24ff889a4b28
description: "Learn to use filters to create, edit, or delete custom user view in Microsoft 365."
---

# Create, edit, or delete a custom user view

If you're a global or user management admin of a Microsoft 365 for business subscription,  you can create custom user views to view a specific subset of users. These views are in addition to the standard set of views. You can create, edit, or delete custom user views, and the custom views you create are available to all admins.
  
## Custom user views in the admin center

When you create, edit, or delete a custom user view, the changes will be shown in the **Filter** list that all admins in your company see when they go to the **Users** page. You can create up to 50 custom views. 

> [!TIP]
>  Standard user views are displayed by default in the **Filters** drop-down list. The standard filters include **All users**, **Licensed users**, **Guest users**,  **Sign-in allowed**, **Sign-in blocked**, **Unlicensed users**, **Users with errors**, **Billing admins**, **Global admins**, **Helpdesk admins**, **Service admins**, and **User management admins**. You can't edit or delete standard views. 

A few things to note about standard views: 

- Some standard views display an unsorted list if there are more than 2,000 users in the list. To locate specific users in this list, use the search box. 
- If you didn't purchase Microsoft 365 from Microsoft, **Billing admins** don't appear in the standard views list. For more information, see [Assigning admin roles](assign-admin-roles.md). 
  
## Choose the filters for your custom user view

You can create and edit your custom views in the **Custom filter** pane. If you select multiple filter options, you get results that contain users who match all the selected criteria. The following example shows you how to create a custom view named "Canadian users" that shows all users on a specific domain who are in Canada. 

  
 **A - Domain** If you have multiple domains for your organization, you can choose from a drop-down list of domains that are available. 
  
 **B - Sign-in status** Choose users that are allowed or blocked. 
  
 **C - Location** Choose a location from a drop-down list of countries. 
  
 **D - Assigned product license** Choose from a drop-down list of licenses that are available at your organization. Use this filter to show users who have the license you selected assigned to them. Users may also have additional licenses. 
  
You can also filter by additional user profile details used in your organization such as department, city, state or province, country or region, or job title.
  
 **Other conditions:**
  
- **Synchronized users only** Select this box to show all users who have been synced with the local Active Directory, regardless of whether the users have been activated or not. 
    
- **Users with errors** Select this box to show users who may have provisioning errors. 
    
- **Unlicensed users** Select this box to find all the users who haven't been assigned a license. The results for this view can also include users who have an Exchange mailbox but don't have a license. To track those users specifically, use the filter **Unlicensed users with Exchange mailboxes or archives**. The results for this view can also include users who have an Exchange archive, but don't have a license.
    
- **Unlicensed users with Exchange mailboxes or archives** Select this box to show user accounts that were created in Exchange Online and have an Exchange mailbox, but weren't assigned an Microsoft 365 license. The results of this filter include users who have or who were assigned an Exchange archive. 

> [!NOTE]
> The **Unlicensed users with Exchange mailboxes** filter works when:
1. The mailbox has been recently converted from **shared** to **user** and it has no license.
2. The mailbox has been recently migrated to Microsoft 365 but a license has not been assigned.
3. The mailbox has been created using PowerShell, and a license has not been assigned.
4. A new mailbox that has been created on-premise with a New-RemoteMailbox cmdlet is provisioned for the user.
    
> [!TIP]
> If you create a custom view that returns more than 2,000 users, the resulting user list isn't sorted. In this case, use the search box to find users or edit your custom view to refine your search. 
  
## Create a custom user view

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a>.
  
::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a>. 

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a>.  

::: moniker-end
    
2. On the **Active users** page, select **Filters** and select **New filter**.
  
3. On the **Custom filter** page, enter the name for your filter, choose the conditions for your custom filter, and then select **Add**. Your custom view is now included in the drop-down list of filters.

## Edit or delete a custom user view

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a>.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a>. 

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a>. 

::: moniker-end 
    
2. On the **Active users** page, select **Filter**, select the filter you want to change, and then select **Edit filter**. 
    
    > [!TIP]
    > You can edit only custom views. 
  
3. On the **Custom filter** page, edit the information as needed, and then select **Save**. Or, to delete the filter, at the bottom of the page select **Delete**. 

## Related content

[Overview of the Microsoft 365 admin center](../../business-video/admin-center-overview.md) (video)\
[About admin roles](../add-users/about-admin-roles.md) (video)\
[Customize the Microsoft 365 theme for your organization](../setup/customize-your-organization-theme.md) (article)


     