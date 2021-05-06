---
title: "Assign licenses to users"
f1.keywords:
- CSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
- TopSMBIssues
- SaRA
- okr_SMB
- manage_licenses
- commerce
search.appverid:
- MET150
description: "Learn how to assign licenses to users."
---

# Assign licenses to users

You can assign licenses to users on either the **Active users** page, or on the **Licenses** page. The method you use depends on whether you want to assign product licenses to specific users or assign users licenses to a specific product.

> [!NOTE]
> As an admin, you can't assign or unassign licenses for a self-service purchase subscription bought by a user in your organization. You can [take over a self-service purchase subscription](../../commerce/subscriptions/manage-self-service-purchases-admins.md#take-over-a-self-service-purchase-subscription), and then assign or unassign licenses.

[Learn how to add a user and assign a license at the same time](../add-users/add-users.md).

## Before you begin

- You must be a Global, License, or User admin to assign licenses. For more information, see [About Microsoft 365 admin roles](../add-users/about-admin-roles.md).
- You can [assign Microsoft 365 licenses to user accounts with PowerShell](../../enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell.md).
- To use group-based licensing, see [Assign licenses to users by group membership in Azure Active Directory](/azure/active-directory/users-groups-roles/licensing-groups-assign)
- Some services, like Sway, are automatically assigned to users, and don't need to be assigned individually.


## Use the Licenses page to assign licenses to users

When you use the **Licenses** page to assign licenses, you assign licenses for a specific product to up to 20 users. On the **Licenses** page, you see a list of all the products that you have subscriptions for. You also see the total number of licenses for each product, how many licenses are assigned, and how many are available.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Licenses** page.
::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Licenses** page.

::: moniker-end

2. Select a product.
3. On the product details page, select **Assign licenses**.
4. In the **Assign licenses to users** pane, begin typing a name, and then choose it from the results to add it to the list. You can add up to 20 users at a time.
4. Select **Turn apps and services on or off** to assign or remove access to specific items.
6. When you're finished, select **Assign**, then select **Close**.

If there's a conflict, a message displays, tells you what the problem is, and tells you how to fix it. For example, if you selected licenses that contain conflicting services, the error message says to review the services included with each license and try again.

## Change the apps and services a user has access to

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Licenses** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Licenses** page.

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

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Active users** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Active users** page.

::: moniker-end

2. Select the circles next to the names of the users that you want to assign licenses to.
3. At the top, select **More options (...)**, then select **Manage product licenses**.
4. In the **Manage product licenses** pane, select **Add to existing product license assignments** \> **Next**.
5. In the **Add to existing products** pane, switch the toggle to the **On** position for the license that you want the selected users to have.\
    By default, all services associated with those licenses are automatically assigned to the users. You can limit which services are available to the users. Switch the toggles to the **Off** position for the services that you don't want the users to have.
6. At the bottom of the pane, select **Add** \> **Close**.  


> [!NOTE]
> If you want to assign licenses for a large number of users, use [Assign licenses to users by group membership in Azure Active Directory](/azure/active-directory/enterprise-users/licensing-groups-assign)

### Assign licenses to one user

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Active users** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Active users** page.

::: moniker-end

2. Select the row of the user that you want to assign a license to.
3. In the right pane, select **Licenses and Apps**.
4. Expand the **Licenses** section, select the boxes for the licenses that you want to assign, then select **Save changes**.

## Assign a license to a guest user

You can invite guest users to collaborate with your organization in the Azure Active Directory admin center. To learn about guest users, see [What is guest user access in Azure Active Directory B2B?](/azure/active-directory/external-identities/what-is-b2b). If you don't have any guest users, see [Quickstart: Add guest users to your directory in the Azure portal](/azure/active-directory/external-identities/b2b-quickstart-add-guest-users-portal).

> [!IMPORTANT]
> You must be a Global admin to do these steps.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2067268" target="_blank">Azure Active Directory admin center</a>
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

If your users don't yet have the Office apps installed, you can share the [Employee quick start guide](../../business-video/employee-quick-setup.md) with your users to set up things, like [how to download and install Microsoft 365 or Office 2019 on a PC or Mac](https://support.microsoft.com/office/4414eaaf-0478-48be-9c42-23adc4716658) and [how to set up Office apps and email on a mobile device](https://support.microsoft.com/office/7dabb6cb-0046-40b6-81fe-767e0b1f014f).

## Related content

[Understand subscriptions and licenses](../../commerce/licenses/subscriptions-and-licenses.md) (article)\
[Unassign licenses from users](remove-licenses-from-users.md) (article)\
[Buy or remove licenses for your subscription](../../commerce/licenses/buy-licenses.md) (article)
