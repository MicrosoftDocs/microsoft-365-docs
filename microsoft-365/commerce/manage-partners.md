---
title: Manage partner relationships
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
ms.custom: 
- AdminSurgePortfolio
- commerce_subscriptions
- PPM_jmueller
ms.reviewer: tugu
search.appverid:
- MET150
description: "Learn how to work with Microsoft-certified solution providers (partners) to purchase and manage products and services for your organization or school."
ms.date: 04/13/2021
---

# Manage partner relationships

You can work with Microsoft-certified solution providers (partners) to purchase and manage products and services for your organization or school. There are a few steps involved in getting things set up.

1. Admins find and contact a partner using the form at <a href="https://www.microsoft.com/solution-providers/home" target="_blank">https://www.microsoft.com/solution-providers/home</a>.
2. Partners send an email request to customers to establish a partner relationship.
3. Customers accept the invitation in Microsoft 365 admin center and start working with the partner.

## Before you begin

You must be either a Global or Billing admin to do these steps. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).

## What can a partner do for my organization or school?

There are several ways that a partner can work with you. Based on your stated business needs, they choose one of these types when they send their request to work with you.

| Partner type | Description |
| ------ | ------------------- |
| Reseller | Partners that sell Microsoft products to your organization or school. |
| Delegated administrator | Partners that manage products and services for your organization or school. In Azure Active Directory (AD), the partner is a Global Administrator for your tenant. This role lets them manage services like creating user accounts, assigning and managing licenses, and password resets. |
| Reseller & delegated administrator | Partners that sell and manage Microsoft products and services to your organization or school. |
| Partner | You give your partner a user account in your tenant, and they work with other Microsoft services on your behalf. |
| Advisor | Partners can reset passwords and handle support incidents for you. |
| Microsoft Products & Services Agreement (MPSA) partner | If you've worked with multiple partners through the MPSA program, you can allow them to see purchases made by each other. |
| Line-of-business (LOB) partner | Partners can develop, submit, and manage LOB apps specific for your organization or school. |

## Find a partner

1. Go to <a href="https://www.microsoft.com/en-us/solution-providers/home" target="_blank">https://www.microsoft.com/en-us/solution-providers/home</a>.
2. Enter your location, choose your organization size, add keywords for the type of services you need, then select **Go**.
3. Choose one or more partners, then select **Contact selected providers**.
4. Complete the form to describe your business needs, then select **Send**.

The partner contacts you and gives you a chance to learn more about them. If you decide to work with them, they send you an email invitation to establish a partner relationship.

## Review and accept a partner relationship and Microsoft Customer Agreement

After you find a partner and decide to work with them, they send you an email invitation.

1. In the email, select the link to go to the Microsoft 365 admin center.
2. On the **Accept agreement & authorize partner** page, select the link for the **Microsoft Customer Agreement**, and read the document.
3. Check the box to acknowledge that you read the agreement.
4. Select **Accept & Authorize**.
5. The list of partners that you’re working with is displayed. Select any partner to see details.

## Review and accept a Microsoft Customer Agreement

If you already have a partner but haven’t yet signed a Microsoft Customer Agreement, you must accept the agreement before they can make purchases or manage your subscriptions on your behalf.

1. If you receive an email from your partner, select the link to go to the Microsoft 365 admin center, or go to the <a href="https://go.microsoft.com/fwlink/?linkid=2116573" target="_blank">Accept agreement</a> page.
2. Select the link for the **Microsoft Customer Agreement** and read the document.
3. Check the box to acknowledge that you read the agreement.
4. Select **Accept**.
5. The list of partners that you’re working with is displayed. Select any partner to see details.

## Remove partner admin roles

Depending on the request made by the partner, when you accept the invitation, you agree to give them Global and Helpdesk admin roles. When you give these admin roles to a partner, you automatically grant them delegated admin privileges in Azure AD. To learn more, see [Delegated admin privileges in Azure AD](/partner-center/customers_revoke_admin_privileges#delegated-admin-privileges-in-azure-ad).

If you don't want to give the admin roles to the partner, cancel the invitation instead of accepting it.

You can remove admin roles from a partner at any time. Removing the admin roles doesn’t remove the partner relationship. They can still work with you in a different capacity, such as a Reseller. If you decide that you don’t want to work with a partner anymore, contact your partner to end the relationship.

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074649" target="_blank">Partner relationships</a> page.
2. On the **Partner relationships** page, select the row that contains the name of the partner that you want to remove.
3. Select the row that contains the name of the partner.
4. On the partner page, select **Remove roles**.
5. In the **Remove roles?** dialog box, select **Yes**.
