---
title: "Manage self-service sign-up subscriptions"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- commerce
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
description: "Learn how to manage free self-service sign-up subscriptions for your organization."
---
# Manage self-service sign-up subscriptions

## What are self-service sign-up subscriptions?

There are a limited number of free self-service sign-up subscriptions that users in your organization can sign up for. A user can only sign up for and use a self-service sign-up subscription for themselves. These subscriptions appear on the **Your products** page, are marked as **Free**, and have a note that says, "This is a free subscription activated by users in your company." You can manage self-service sign-up subscriptions by blocking users from signing up, and by deleting free subscriptions that users have signed up for. For more information about self-service sign up and the available subscriptions, see [Using self-service sign up in your organization](../../admin/misc/self-service-sign-up.md).

## How are these subscriptions different from self-service purchase subscriptions?

Self-service sign-up subscriptions are free, and are available for a larger list of products than self-service purchase subscriptions. When a user signs up for a self-service purchase subscription, they are responsible for paying for it. Also, self-service purchase subscriptions are only available for Power Platform products (Power BI, Power Apps, and Power Automate). For more information, see [Self-service purchase FAQ](self-service-purchase-faq.md).

## Block users from signing up

You use the [**Set-MsolCompanySettings**](https://docs.microsoft.com/powershell/module/msonline/set-msolcompanysettings?view=azureadps-1.0) cmdlet with the **AllowAdHocSubscriptions** parameter to control whether users can sign up for self-service sign-up subscriptions. For more information, see [How do I control self-service settings?](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-self-service-signup#how-do-i-control-self-service-settings)

## Delete a self-service sign-up subscription

> [!IMPORTANT]
> When you delete a self-service sign-up subscription, you block all users from accessing their data and email and delete all data and email.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Find the self-service sign-up subscription that you want to delete. In the **Settings & Actions** section, select **Delete subscription**.
3. In the **Delete subscription** pane, select the check box, then select **Delete subscription**.

## I have a self-service sign-up subscription that blocks directory deletion

The self-service sign-up products that individual users can sign up for also create a guest user for authentication in your Azure AD directory. To avoid data loss, these self-service products block directory deletions until they're fully deleted from the directory. They can be deleted only by the Azure AD admin. For more information, see [Delete a directory in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-delete-howto).