---
title: Manage partner relationships
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
- commerce
ms.custom:
search.appverid:
- MET150
description: "Learn how to work with Microsoft-certified solution providers (partners) to purchase and manage products and services for your organization or school."
keywords: partner, solution provider
---

# Manage partner relationships

You can work with Microsoft-certified solution providers (partners) to purchase and manage products and services for your organization or school. There are a few steps involved in getting things set up.

- Admins find and contact a partner using the form at <a href="https://www.microsoft.com/en-us/solution-providers/home" target="_blank">https://www.microsoft.com/en-us/solution-providers/home</a>.
- Partners send an email request to customers to establish a partner relationship.
- Customers accept the invitation in Microsoft 365 admin center and start working with the partner.

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
| OEM PC partner | Partners can upload device IDs for PCs that you're [managing with Autopilot](https://docs.microsoft.com/microsoft-store/add-profile-to-devices). |
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

## Remove partner admin privileges

Depending on the request made by the partner, part of accepting the invitation includes agreeing to give delegated admin privileges to the them. For more information, see [Delegated admin privileges in Azure AD](https://docs.microsoft.com/partner-center/customers_revoke_admin_privileges#delegated-admin-privileges-in-azure-ad).

If you don't want to delegate admin privileges to the partner, cancel the invitation instead of accepting it.

If you delegate admin privileges to a partner, you can remove those privileges at any time. Removing admin privileges doesn’t remove the partner relationship. They can still work with you, for example, as a Reseller.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2103629" target="_blank">Billing accounts</a> page.
2. On the **Billing accounts** page, select the **Partner relationships** tab.
3. Select the row that contains the name of the partner.
4. On the partner page, select **Remove admin roles**.

## Delete a partner relationship

If you decide that you don’t want to work with a partner anymore, you can end the relationship. However, you can only delete relationships where the partner is either a Delegated Administrator or an Advisor. For all other partner types, contact your partner to end the relationship.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2103629" target="_blank">Billing accounts</a> page.
2. On the **Billing accounts** page, select the **Partner relationships** tab.
3. Select the row that contains the name of the partner.
4. On the partner detail page, select **Delete partner**.
