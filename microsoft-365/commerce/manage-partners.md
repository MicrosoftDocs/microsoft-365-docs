---
title: "Manage Microsoft-certified solution provider partner relationships"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: souchak, jobailey
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-marketplace
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management 
- Adm_O365
ms.custom: 
- commerce_purchase
- AdminSurgePortfolio
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150
description: "Learn how to work with Microsoft-certified solution providers (partners) to buy and manage products and services for your organization or school."
ms.date: 01/08/2025
---

# Manage Microsoft-certified solution provider partner relationships

You can work with Microsoft-certified solution providers (partners) to buy and manage products and services for your organization or school. There are a few steps involved in getting things set up.

1. Admins find and contact a partner at <a href="https://appsource.microsoft.com/marketplace/partner-dir" target="_blank">https://appsource.microsoft.com/marketplace/partner-dir</a>.
2. Partners send an email request to customers to establish a partner relationship.
3. Customers accept the invitation in Microsoft 365 admin center and start working with the partner.

## Before you begin

You must be at least a Billing Administrator to do these steps. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).

## What can a partner do for my organization or school?

There are several ways that a partner can work with you. Based on your stated business needs, they choose one of these types when they send their request to work with you.

| Partner type | Description | Roles |
| ------------ | ----------- | ----- |
| Advisor | Partners can reset passwords and handle support incidents for you. | Global admin, Helpdesk admin. |
| Independent Software Vendors | Partners who develop and sell custom software products that run on one or more computer hardware or operating system platforms. Some ISVs focus on developing software or custom applications that focus on a particular operating system, and other ISVs specialize in a particular application area. | No roles assigned. |
| Indirect reseller | Partners who manage products and services for your organization or school. | No roles assigned. |
| Line-of-business (LOB) partner | Partners can develop, submit, and manage LOB apps specific for your organization or school. | Not available to assign. |
| Microsoft Products & Services Agreement (MPSA) partner | If you've worked with multiple partners through the MPSA program, you can allow them to see purchases made by each other. | No roles assigned. |
| Original Equipment Manufacturer (OEM) | Windows Autopilot is managed and maintained by Microsoft. This service provides the backend database that associates hardware hashes with customer tenants. When an OEM registers devices for a customer, they write that data to this database and not directly to the customer's tenant. No permissions to the customer's tenant are granted or required for OEMs to register devices on the customer's behalf. | No roles assigned. |
| Partner | You give your partner a user account in your tenant, and they work with other Microsoft services on your behalf. | Any Microsoft Entra role.<br><br>For more information, see [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference). |
| Partner with GDAP access | Partners who manage products and services for your organization or school, but who have limited access to what they can do in the Microsoft 365 admin center. [Granular delegated administrator privileges (GDAP)](/partner-center/gdap-introduction) let partners complete tasks in the admin center without having global admin permission. By giving GDAP to partners, you ensure they have the least-permissive roles and limit the risk to your organization. | Any Microsoft Entra role.<br><br>For more information, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference). |
| Reseller | Partners who sell Microsoft products to your organization or school. | No roles assigned. |

## Find a partner

1. Go to <a href="https://appsource.microsoft.com/marketplace/partner-dir" target="_blank">https://appsource.microsoft.com/marketplace/partner-dir</a>.
2. Use the filters to narrow your search. When you find a partner that you want to work with, select **Contact me**.
3. Enter your location and contact information. Select your organization size, include your organization name, select your industry focus, and then describe your business needs.
4. When you're finished, select **Contact me**.

The partner contacts you and gives you a chance to learn more about them. If you decide to work with them, they send you an email invitation to establish a partner relationship.

## Review and accept a partner relationship and Microsoft Customer Agreement

After you find a partner and decide to work with them, they send you an email invitation.

1. In the email, select the link to go to the Microsoft 365 admin center.
2. On the **Accept agreement & authorize partner** page, select the link for the **Microsoft Customer Agreement**, and read the document.
3. Check the box to acknowledge that you read the agreement.
4. Select **Accept & Authorize**.
5. The list of partners that you're working with is displayed. Select any partner to see details.

## Review and accept a Microsoft Customer Agreement

If you already have a partner but haven't yet signed a Microsoft Customer Agreement, you must accept the agreement before they can make purchases or manage your subscriptions on your behalf.

1. If you receive an email from your partner, select the link to go to the Microsoft 365 admin center, or go to the <a href="https://go.microsoft.com/fwlink/?linkid=2116573" target="_blank">Accept agreement</a> page.
2. Select the link for the **Microsoft Customer Agreement** and read the document.
3. Check the box to acknowledge that you read the agreement.
4. Select **Accept**.
5. The list of partners that you're working with is displayed. Select any partner to see details.

## Remove partner admin roles

The GDAP feature gives partners more granular and time-bound access to their customers' workloads. This means that partners are better able to address their customers' security concerns. Partners can also provide more services to customers who are uncomfortable with the current levels of partner access and who have regulatory requirements to provide only least-privileged access to partners. With GDAP, you agree to give partners roles specified in their request. These roles are customizable, so you can discuss with your partner if you don't approve certain permissions.

If you don't want to give admin roles to the partner, cancel the invitation instead of accepting it.

You can remove admin roles from a partner at any time. Removing the admin roles doesn't remove the partner relationship. They can still work with you in a different capacity, such as a Reseller. If you decide that you don't want to work with a partner anymore, contact your partner to end the relationship.

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074649" target="_blank">Partner relationships</a> page.
2. On the **Partner relationships** page, select the row that contains the name of the partner that you want to remove.
3. On the partner page, select **Remove roles**.
4. In the **Remove roles?** dialog box, select **Yes**.

If you don't see the **Remove roles** option, contact the [Partner Center](https://partner.microsoft.com/support).
## Admin On Behalf Of (AOBO) access to pages in Microsoft 365 admin center

If you're a partner who's an Admin On Behalf Of (AOBO) a customer, the **Purchase services**, **Your products**, and **Bills & payments** pages are no longer available in the **Billing** menu in the Microsoft 365 admin center. To buy and manage subscriptions for your customer, visit the [Partner Center](https://partner.microsoft.com). You can still view the **Licenses** and **Billing notifications** pages in the **Billing** menu. To manage domain subscriptions for your customers, ask them to sign in with an account that has both the Domain Name Administrator and Billing Administrator role. 

