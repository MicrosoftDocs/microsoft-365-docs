---
title: "Move a domain verified in an unmanaged account"
f1.keywords:
- CSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
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
description: "Learn how to join an unmanaged account to remove the domain from the account and add the domain to your account."
---

# Move a domain verified in an unmanaged account

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

If you're an admin and you've tried to add a domain to your Microsoft 365 account, but you're blocked because the domain is verified for an unmanaged account, you can become the admin on the unmanaged account to remove the domain and add it to your account.

> [!NOTE]
> A self-service sign up for any cloud service that uses Azure AD adds the user to an unmanaged or "shadow" Azure AD directory and creates an unmanaged account. An unmanaged account is a directory without a global administrator. To determine whether an account is managed or unmanaged, see [Determining Tenant Type](/power-platform/admin/powerapps-gdpr-dsr-guide-systemlogs#determining-tenant-type).
  
## Before you begin

Sometimes you can't add a domain to your organization account because someone else has already signed up for Microsoft 365 using an email address associated with that domain name. But you can remove the domain from the other, unmanaged account and add it to your organization account.

First, you'll need to join the unmanaged account and become an admin for that account (Steps 1 - 3). Then you can remove the domain from the account (Step 4), sign back into your organization account, and add the domain to your account (Step 5).

## Step 1: Get an invitation to join the unmanaged account

After you try to add a domain to your account, you might receive a message that someone has already signed up for Microsoft 365 using the email address. Step 1 is to request an invitation to join the other account and begin the process of performing an admin takeover.

1. Go to the Microsoft 365 admin center > **Settings** > **Domains** > **+ Add domain**, and add the domain name.

1. If you see a message that you can't add the domain because other people have already signed up using an email address for the domain, enter your account username, and then select **Send me the invitation**.

1. Sign out of your current account, so you can sign into the unmanaged account.

    Check your email for an invitation to help you join the unmanaged account, and select the link provided in the email.

    Enter the **verification code** from the email to validate your email address.

## Step 2: Complete signup with email instructions

1. When you enter the verification code, you'll be brought to a page where you can create a new account.

2. Fill in the username and password fields with the account that you want to use, and then complete the steps to create the account.

## Step 3: Verify domain ownership and become the admin

1. After you complete Step 2, select the admin center icon in the left navigation pane (alternatively, go to a browser and type in `https://admin.microsoft.com`).

    You're redirected to the admin takeover wizard.

1. Select **Next** and verify that you own the domain you want to take over by adding a TXT record to your domain registrar.

    The wizard will give you the TXT record to add, as well as provide a link to your registrar's website, and a link to step-by-step instructions.

1. On the **You're now the admin** page, select **Go to the admin center**.

    You now have the admin privileges required to remove the domain from the formerly unmanaged account.

## Step 4: Remove a domain from the unmanaged account

1. Go to **Users** > **Active users** for the account you joined in Step 2, and then select the Display name for the username you're logged in with.

1. Under **Username**, select **Manage username**, and move the user to the onmicrosoft domain by choosing the onmicrosoft.com domain from the dropdown list.

1. Sign out of the account and sign back in using the new `username@account.onmicrosoft.com`.

1. Select **Settings** > **Domains**, locate the domain you want to add to the other account and select **Remove domain**.

    If you're asked to select another domain as the default, choose the onmicrosoft.com domain.

    If other users are using the domain, you must remove them. Choose from the options to **Automatically remove**, manually move the users to your domain, or remove the users completely.

   > [!NOTE]
   > Check back as it can take some time for the domain to be removed from the account. Removal is complete when the domain disappears from the account.

1. Sign out of the account.

## Step 5: Add the domain to your account

1. Log in to the account where you want to add the domain.

1. Select **Settings** > **Domains** > **+ Add domain**, and then enter the domain name to continue with wizard steps to verify domain ownership in this account and complete adding the domain to your account.
  
## Related content

[Perform an internal admin takeover](become-the-admin.md) (article)
