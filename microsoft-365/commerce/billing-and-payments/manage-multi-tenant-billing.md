---
title: "Manage billing across multiple tenants in the Microsoft 365 admin center"
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: jkinma, ramagane
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-management
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- commerce_billing
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150
description: "Learn how to use multi-tenant billing relationships to share billing accounts across tenants in the Microsoft 365 admin center."
ms.date: 09/12/2024
---

# Manage billing across multiple tenants in the Microsoft 365 admin center

> [!IMPORTANT]
> This article only applies to enterprise customers with a Microsoft Customer Agreement.

If you’re an enterprise customer and you have more than one tenant, you can simplify billing management for your organization by creating multi-tenant billing relationships with other tenants that you work with. A multi-tenant billing relationship lets you securely share your organization's billing account with other tenants, while maintaining control over your billing data. You can create subscriptions in different tenants and provide users in those tenants with access to your organization's billing account. This relationship lets users on those tenants do billing activities like viewing and downloading invoices or managing licenses. You can create multi-tenant billing relationships in the Microsoft 365 admin center.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- You must have a Microsoft Customer Agreement (MCA) billing account type, and you must be a Billing account owner to do the tasks in this article. For information about billing account roles, see [Understand your Microsoft business billing account](../manage-billing-accounts.md).
- You  must be a Global Administrator to do the steps described in [Accept or decline an invitation for Provisioning access to your associated billing tenant](#accept-or-decline-an-invitation-for-provisioning-access-to-your-associated-billing-tenant).

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Billing account owner.

## Decide which billing tenant solution is right for your organization

Choosing to set up multiple billing tenants might be the right approach, depending on the needs of your organization. The following table compares using a single tenant or multi-tenant approach to help you decide which approach is right for your organization.

| For this billing area | Consider using single-tenant billing accounts if: | Consider using multiple tenants that share a single billing account if: |
|-----------------------------|--------------------------------------------------------|------------------------------------------------------------------------------|
| **Invoicing**               | You want purchases made by different billing accounts to always be in different invoices.    | You want purchases made by users in different tenants to be on either the same or different invoices, depending on your choice.  |
| **Managing your purchases** | You want subscriptions used only in the tenant in which they're bought.   | You want subscriptions bought in one tenant to be created in a different tenant that shares the same billing account.  |
| **Agreements**              | You want each billing account in its own tenant to sign its own agreement with Microsoft. Customer Affiliate Purchase Terms (CAPT) can define affiliate agreements between different billing accounts on unique tenants.  | You want agreements signed by a single billing account, and you want the same agreements to apply to all tenants that share the billing account. |
| **Pricing and discounts**   | You don't want discounts shared between multiple billing accounts unless those accounts share CAPT terms.  | You want discounts applied across a billing account regardless of which tenant a user makes a purchase on, or where subscriptions are created due to sharing an agreement. |
| **Visibility**              | You only want users on a billing account to have visibility into what's in that billing account, and not what's on a different tenant. For example, you only want users to see cost and invoices, buy products, and track payments for their own tenant. | You want users with shared billing accounts to have the same view of the billing account regardless of the tenant they are in. |
| **Security**                | You want all users with access to your billing account to follow your tenant's security policies.  | You want the users you invited to share your billing account to follow their own tenant's security policies. |

## Types of tenants in a multi-tenant billing relationship

There are two types of tenants in a multi-tenant billing scenario:

1. **Primary billing tenant**—The primary billing tenant is the tenant used when the billing account is set up. By default, all subscriptions are created in this tenant and only users from this tenant can get access to the billing account.
2. **Associated billing tenant**—An associated billing tenant is a tenant that is linked to your primary billing tenant's billing account. You can move Microsoft 365 subscriptions to these tenants. You can also assign billing account roles to users in an associated billing tenant.

## Access settings available for associated billing tenants

When you add an associated billing tenant to your billing account, you can enable one or both of the following access settings.

- **Provisioning** allows the creation of subscriptions in the associated billing tenants.
- **Billing management** lets billing account owners assign roles to users in an associated billing tenant, giving them permission to access billing information and make purchasing decisions.

## Add an associated billing tenant

Before you begin, make sure that you have either the tenant ID, or the primary domain name for the tenant you want to invite. For more information, see [Find a tenant ID or domain name](https://aka.ms/findtenantiddomain).

1. In the Microsoft 365 admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page.
2. Select the name of the billing account that you want to use as the primary billing tenant.
3. On the billing account details page, select the **Associated billing tenants** tab, then select **Add an associated billing tenant**.
4. In the **Add an associated billing tenant** panel, enter the tenant ID or domain name, then enter a friendly name for the tenant. The tenant ID must be in lower case.
5. In the **Access settings** section, select one or both options for **Provisioning** and **Billing management**.
6. Read the user visibility statement, then select the check box next to it.
7. Select **Add tenant**.

If the **Provisioning** access setting is turned on, a unique link is created for you to send to the Global Administrator on the associated billing tenant. They must accept the request before you can move subscriptions to their tenant.

## Assign roles to users from the associated billing tenant (optional)

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page.
2. Select the name of the billing account to assign roles.
3. On the billing account details page, select the **Billing account roles** tab, then select **Assign roles.**
4. In the **Assign role** pane, search for the associated billing tenant, select a role, then enter the email address of the users to whom you want to assign a role.
5. Select **Assign.**

The user receives an email with a link to review the role assignment request. After they accept the role, they have access to your billing account. For information about billing account roles, see [Understand your Microsoft billing accounts](../manage-billing-accounts.md).

> [!IMPORTANT]
> Any user with a role in the billing account can see all users from all tenants who have access to that billing account. For example, if Contoso.com is the primary billing tenant, and a billing account owner adds Fabrikam.com as an associated billing tenant, and then adds Katarina as a billing account owner, Katarina can see all users who have access to the billing account on both Contoso.com and Fabrikam.com.

## Move subscriptions to an associated billing tenant (optional)

The Global Administrator of the associated billing tenant must [accept the provisioning request](#accept-or-decline-an-invitation-for-provisioning-access-to-your-associated-billing-tenant) from the primary billing tenant before you can move subscriptions to their associated billing tenant.

> [!IMPORTANT]
> You can only move a subscription to an associated billing tenant if all licenses in the subscription are available. If any licenses are assigned, you can't move the subscription.

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the name of the product that you want to move to the associated billing tenant.
3. On the product details page, in the **Licenses assigned from all subscriptions** section, select **Move to another tenant**.
4. In the **Move subscription to a different tenant** pane, search for a tenant name or select a tenant from the list, then select **Move** **subscription**.

## Remove an associated billing tenant

Removing an associated billing tenant is a permanent action and can't be undone. Access is removed for all tenant users who are assigned roles on your billing account, and you can no longer move subscriptions to the tenant. Subscriptions that have already been moved remain with the tenant and are still billed to your billing account.

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page.
2. Select the name of the billing account that is the primary billing tenant.
3. On the billing account details page, select the **Associated billing tenants** tab.
4. Select the associated billing tenant that you want to remove.
5. In the associated billing tenant pane, select **Remove access.**
6. In the **Remove provisioning and billing management** **access** pane, select **Remove access.**
7. In the confirmation dialog box, select **Yes**.

## Accept or decline an invitation for Provisioning access to your associated billing tenant

As a Global Administrator of an associated billing tenant, you can accept or decline a request from the billing account owner to create subscriptions in your tenant. When a billing account owner adds your tenant as an associated billing tenant and enables the **Provisioning** access setting, you receive a link from the billing account owner to accept or decline the invitation.

1. Select the link shared by the billing account owner.
2. On the **Invitation to be an associated billing tenant** page, select **Accept** or **Decline**.

> [!NOTE]
> If you later decide to revoke the **Provisioning** access, you can use the same link.

## Related articles

[Understand your Microsoft business billing account](../manage-billing-accounts.md) (article)\
[Manage your Microsoft business billing profiles](manage-billing-profiles.md)(article)
