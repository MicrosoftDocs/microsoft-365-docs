---
title: "Perform an internal admin takeover"
f1.keywords:
- CSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 11/27/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: b9707ec8-2247-4e25-9bad-f11ddbc686e4
description: "Learn how to verify your email and domain ownership to take over an unmanaged account created by a self-service user signup in Microsoft 365."
---

# Internal admin takeover

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If you're an admin and want to take over an unmanaged account created by a self-service user signup, you can perform an internal admin takeover by following the steps in this article.

> [!NOTE]
> A self-service sign up for any cloud service that uses Microsoft Entra ID adds the user to an unmanaged or "shadow" Microsoft Entra directory and creates an unmanaged account. An unmanaged account is a directory without a global administrator. To determine whether an account is managed or unmanaged, see [Determining Tenant Type](/power-platform/admin/powerapps-gdpr-dsr-guide-systemlogs#determining-tenant-type). 
  
## Before you begin

When a user signs up for Microsoft 365 services using an email address, an account is automatically created for them. If an admin wants to manage the users on the account or purchase additional Microsoft 365 services, they must become an admin on the account by following these steps to perform an admin takeover.

## Step 1: Verify your email address

> [!NOTE]
> If self-service is enabled in your account, users can subscribe to free services such as Power BI, on their own. These services are specifically for use in cases where a self-service user subscription has created the unmanaged account you want to take over as admin. In Step 1 you create a user account for the domain you want to remove by using Power BI to launch the admin takeover wizard so you can become the admin for the unmanaged domain account.

1. To sign up for Power BI, go to the [Power BI site](https://powerbi.com) and select **Start Free** > **Start free trial** (in Share with Power BI Pro box). 

2. Sign up with a user account that uses the domain name of your organization (like `powerbiadmin@contoso.com`). If your account is already in use, sign in using your current password.

3. Check your email for the **verification code** and enter the code to validate your email address.

## Step 2: Create a new account for admin access

1. When you enter the verification code, you'll be brought to a page where you can create a new account.

2. Fill in the user name and password fields with the account that you want to use, and then complete the steps to create the account.

## Step 3: Verify domain ownership and become the admin

1. After you complete Step 2, select the admin center icon in the left navigation pane (alternatively, go to a browser and type in `https://admin.cloud.microsoft`).

    You're redirected to the admin takeover wizard.

2. Select **Next** and verify that you own the domain you want to take over by adding a TXT record to your domain registrar.

    The wizard will give you the TXT record to add, as well as provide a link to your registrar's website, and a link to step-by-step instructions.

3. On the **You're now the admin** page, select **Go to the admin center**.

    You have the admin privileges required to manage the account in the admin center. For example, you can manage account users and groups, purchase new subscriptions and make user assignments, and manage the account domains.

    If you want to remove your domain from this account so you can add it to another account, see [Remove a domain from another account](remove-a-domain-from-another-account.md).
  
## Related content

YouTube: [Three steps to do an IT Admin Takeover for Power BI and Microsoft 365](https://www.youtube.com/watch?v=xt5EsrQBZZk) (video)\
[Admin takeover in Microsoft Entra ID](/azure/active-directory/users-groups-roles/domains-admin-takeover) (article)\
[Using self-service sign up in your organization](self-service-sign-up.md) (article)\
[Understanding the Power BI service administrator role](/power-bi/service-admin-role) (article)
