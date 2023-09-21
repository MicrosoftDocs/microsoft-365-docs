---
title: "Assign licenses to users in the Microsoft 365 admin center"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: sinakassaw, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg 
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- commerce_licensing
- VSBFY23
- AdminSurgePortfolio
- TopSMBIssues
- SaRA
- business_assist
- okr_SMB
- manage_licenses
- AdminTemplateSet
search.appverid: MET150
description: "Assign licenses depending on whether you want to assign product licenses to specific users or assign users licenses to a specific product."
ms.date: 06/13/2023
---

# Assign Microsoft 365 licenses to users

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

You can assign licenses to users on either the **Active users** page, or on the **Licenses** page. The method you use depends on whether you want to assign product licenses to specific users or assign users licenses to a specific product.

> [!NOTE]
> 
> - As an admin, you can't assign or unassign licenses for a self-service purchase subscription bought by a user in your organization. You can [take over a purchase or trial subscription](../../commerce/subscriptions/manage-self-service-purchases-admins.md#take-over-a-purchase-or-trial-subscription), and then assign or unassign licenses.
> - For some subscriptions, you can only cancel during a limited window of time after you buy or renew your subscription. If the cancellation window has passed, turn off recurring billing to cancel the subscription at the end of its term.

[Learn how to add a user and assign a license at the same time](../add-users/add-users.md).

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

- You must be a Global, License, or User admin to assign licenses. For more information, see [About Microsoft 365 admin roles](../add-users/about-admin-roles.md).
- You can [assign Microsoft 365 licenses to user accounts with PowerShell](../../enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell.md).
- To use group-based licensing, see [Assign licenses to users by group membership in Azure Active Directory](/azure/active-directory/users-groups-roles/licensing-groups-assign)
- Some services, like Sway, are automatically assigned to users, and don't need to be assigned individually.
- If you're a Cloud Solution Provider (CSP) and you bought products on behalf of a customer, you can't use the **Your products** page to assign or unassign licenses for certain products, like perpetual software. To assign or unassign licenses for those products, [use the Licenses page](#use-the-licenses-page-to-assign-licenses-to-users).

## Use the Licenses page to assign licenses to users

The **Licenses** page lets you assign or unassign licenses for up to 20 users at a time. The page shows the products you own, the number of available licenses for each product, and the number of assigned licenses out of the total licenses available.

The **Licenses** page shows an aggregate total of licenses for all subscriptions for the same product name. For example, you might have one subscription for Microsoft 365 Business Premium that has five licenses, and another subscription that has eight licenses for the same product. The **Licenses** page shows that you have a total of 13 licenses for Microsoft 365 Business Premium across all your subscriptions. This number is different from what you see on the **Your products** page, which displays a row for each subscription you own, even if they are for the same product.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850625" target="_blank">Licenses</a> page.

::: moniker-end

2. Select a product.

3. On the product details page, select **Assign licenses**.

4. In the **Assign licenses to users** pane, begin typing a name, and then choose it from the results to add it to the list. You can add up to 20 users at a time.

5. Select **Turn apps and services on or off** to assign or remove access to specific items.

6. When you're finished, select **Assign**, then close the right pane.

If there's a conflict, you see a message that tells you what the problem is, and how to fix it. For example, if you selected licenses that contain conflicting services, the error message says to review the services included with each license and try again.

## Change the apps and services a user has access to

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850625" target="_blank">Licenses</a> page.

::: moniker-end

2. On the **Licenses** page, select the row for a specific user.

3. In the right pane, select or deselect the apps and services that you want to give access to or remove access from.

4. When you're finished, select **Save**, then select **Close**.

## Use the Active users page to assign licenses

When you use the **Active users** page to assign licenses, you assign users licenses to products.

### Assign licenses to multiple users

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the circles next to the names of the users that you want to assign licenses to.

3. At the top, select **Manage product licenses**.

4. In the **Manage product licenses** pane, select **Assign more: Keep the existing licenses and assign more** \> **Next**.

5. Under **Licenses**, select the box for the license(s) that you want the selected users to have.\
    By default, all services associated with those licenses are automatically assigned to the users. You can limit which services are available to the users. Deselect the boxes for the services that you don't want the users to have.

6. At the bottom of the pane, select **Save changes**.  
    You might have to buy more licenses if you don't have enough licenses for everyone.

> [!NOTE]
> If you want to assign licenses for a large number of users, use [Assign licenses to users by group membership in Azure Active Directory](/azure/active-directory/enterprise-users/licensing-groups-assign).

### Assign licenses to one user

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the row of the user that you want to assign a license to.

3. In the right pane, select **Licenses and Apps**.

4. Expand the **Licenses** section, select the boxes for the licenses that you want to assign, then select **Save changes**.

## Assign a license to a guest user

You can invite guest users to collaborate with your organization in the Azure Active Directory admin center. To learn about guest users, see [What is guest user access in Azure Active Directory B2B?](/azure/active-directory/external-identities/what-is-b2b). If you don't have any guest users, see [Quickstart: Add guest users to your directory in the Azure portal](/azure/active-directory/external-identities/b2b-quickstart-add-guest-users-portal).

> [!IMPORTANT]
> You must be a Global admin to do these steps.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2067268" target="_blank">Azure Active Directory admin center</a>.

2. In the navigation pane, select **Users**.

3. On the **Users | All Users (Preview)** page, select **Add filters**.

4. In the **Pick a field** menu, choose **User type**, then select **Apply**.

5. In the next menu, select **Guest**.

6. In the list of results, select the user who needs a license.

7. Under **Manage**, select **Licenses**.

8. Select **Assignments**.

9. On the **Update license assignments** page, select the product you want to assign a license for.

10. On the right, clear the check boxes for any services you don't want the guest user to have access to.

11. Select **Save**.

## Next steps

If your users don't yet have the Microsoft 365 apps installed, you can share the [Employee quick start guide](https://support.microsoft.com/office/7f34c318-e772-46a5-8c0a-ab86661542d1) with your users to set up things, like [Download and install or reinstall Microsoft 365 or Office 2021 on a PC or Mac](https://support.microsoft.com/office/4414eaaf-0478-48be-9c42-23adc4716658) and [Set up Microsoft 365 apps and email on a mobile device](https://support.microsoft.com/office/7dabb6cb-0046-40b6-81fe-767e0b1f014f).

## Related content

[Understand subscriptions and licenses](../../commerce/licenses/subscriptions-and-licenses.md) (article)\
[Unassign licenses from users](remove-licenses-from-users.md) (article)\
[Buy or remove licenses for your subscription](../../commerce/licenses/buy-licenses.md) (article)
