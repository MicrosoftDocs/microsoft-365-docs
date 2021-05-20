---
title: "Perform an internal admin takeover"
f1.keywords:
- CSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: b9707ec8-2247-4e25-9bad-f11ddbc686e4
description: "Learn how to verify your email and domain ownership to take over an unmanaged tenant created by a self-service user signup in Microsoft 365."
---

# Perform an internal admin takeover

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 

If you are an admin and want to take over an unmanaged tenant created by a self-service user signup, you can do this with an internal admin takeover.

> [!NOTE]
> A self-service sign up for any cloud service that uses Azure AD will add the user to an unmanaged or "shadow" Azure AD directory and create an unmanaged tenant. An unmanaged tenant is a directory without a global administrator. To determine whether a tenant is managed or unmanaged, please see [Determining Tenant Type](/power-platform/admin/powerapps-gdpr-dsr-guide-systemlogs#determining-tenant-type). 
  
## Step 1: Verify your email address

> [!NOTE]
> If self-service is enabled in your tenant, users can subscribe to free services, such as Power BI, on their own. These steps assume that a self-service user subscription has created the unmanaged tenant you want to take over as admin. In the first step you create a user context in the unmanaged tenant, using Power BI to illustrate the admin takeover path.

1. To sign up for Power BI, go to the [Power BI site](https://powerbi.com) and select **Start Free** > **Start free trial** (in Share with Power BI Pro box). 

2. Sign up with a user account that uses the domain name of your organization (like `powerbiadmin@contoso.com`). If your account is already in use, sign in using your current password.

3. Check your email for the **verification code** and enter the code to validate your email address.
    
## Step 2: Create a new account

1. When you enter the verification code, you'll be brought to a page where you can create a new account. 
    
2. Fill in the user name and password fields with the account that you want to use, then select **Start**. 
    
## Step 3: Verify domain ownership and become the admin

1. The **Become the admin** wizard will open. If the wizard doesn't start, look for the **Admin** tile and select it. 

2. Select **Yes, I want to be the admin**.

3. Verify that you own the domain you want to take over by adding a TXT record to your domain registrar. The wizard will give you the TXT record to add, as well as provide a link to your registrar's website, and a link to step-by-step instructions.
    
4. Once you've added the TXT record to your registrar site, return to the wizard and select **Okay, I've added the record**.
    
> [!NOTE]
> Taking over the shadow tenant will not impact any existing information or services. However, if any users in the domain have signed up for services that require a license, you'll be asked to buy licenses for them as part of taking over the admin role. You can buy or remove licenses once the admin setup process is finished.
  
## Related content

YouTube: [3 steps to do an IT Admin Takeover for Power BI and Microsoft 365](https://www.youtube.com/watch?v=xt5EsrQBZZk) (video)

[Admin takeover in Azure AD](/azure/active-directory/users-groups-roles/domains-admin-takeover) (article)

[Using self-service sign up in your organization](self-service-sign-up.md) (article)
  
[Understanding the Power BI service administrator role](/power-bi/service-admin-role) (article)