---
title: "Manage self-service sign-up subscriptions"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: mijeffer, nicholak
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
search.appverid: MET150
description: "Learn how to manage free self-service sign-up subscriptions for your organization."
ms.date: 03/17/2021
---
# Manage self-service sign-up subscriptions

## What are self-service sign-up subscriptions?

There are a limited number of free self-service sign-up subscriptions available for users in your organization to sign up for. A user can only sign up for and use a self-service sign-up subscription for themselves. You manage self-service sign-up subscriptions by blocking users from signing up, and by deleting free subscriptions that users have signed up for. For more information about self-service sign up and the available subscriptions, see [Using self-service sign up in your organization](../../admin/misc/self-service-sign-up.md).

## View a list of self-service sign-up subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select the filter icon, then select **Free**. A list of all self-service sign-up subscriptions is displayed.

## How are these subscriptions different from self-service purchase subscriptions?

Self-service sign-up subscriptions are free and are available for a larger list of products than self-service purchase subscriptions. When a user signs up for a self-service purchase subscription, they're responsible for paying for it. Self-service purchase subscriptions are only available for Power Platform products (Power BI, Power Apps, and Power Automate), Project, and Visio. For more information, see [Self-service purchase FAQ](self-service-purchase-faq.yml).

## Block users from signing up

You use the [**Set-MsolCompanySettings**](/powershell/module/msonline/set-msolcompanysettings?preserve-view=true&view=azureadps-1.0) cmdlet with the **AllowAdHocSubscriptions** parameter to control whether users can sign up for self-service sign-up subscriptions. For more information, see [How do I control self-service settings?](/azure/active-directory/users-groups-roles/directory-self-service-signup#how-do-i-control-self-service-settings)

## Delete a self-service sign-up subscription

> [!IMPORTANT]
> When you delete a self-service sign-up subscription, you block all users from accessing their data and email and delete all data and email.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select the filter icon, then select **Free**.
3. Select the self-service sign-up subscription that you want to delete. 
4. On the subscription details page, in the **Subscriptions and payment settings** section, select **Delete subscription**.
5. In the **Delete subscription** pane, select the check box, then select **Delete subscription**.

## I have a self-service sign-up subscription that blocks directory deletion

The self-service sign-up products that individual users can sign up for also create a guest user for authentication in your Azure AD directory. To avoid data loss, these self-service products block directory deletions until they're fully deleted from the directory. They can only be deleted by the Azure AD admin. For more information, see [Delete a directory in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-delete-howto).
