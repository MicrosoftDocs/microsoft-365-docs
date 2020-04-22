---
title: "Set the password expiration policy for your organization"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 0f54736f-eb22-414c-8273-498a0918678f
description: "Learn how to set a password expiration policy for your organization in Microsoft 365 admin center. "
---

# Set the password expiration policy for your organization

This article is for people who set password expiration policy for a business, school, or nonprofit.  

If you're a user, you don't have the permissions to set your password to never expire. Ask your work or school technical support to do the steps in this article for you.

As an admin, you can make user passwords expire after a certain number of days, or set passwords to never expire. 

> [!Tip]
> By default, passwords are set to expire in 90 days. Current research strongly indicates that mandated password changes do more harm than good. They drive users to choose weaker passwords, re-use passwords, or update old passwords in ways that are easily guessed by hackers. If setting password to never expire, we recommend enabling [multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md).

Follow the steps below if you want to set user passwords to expire after a specific amount of time.
> [!IMPORTANT]
> Only [global admins](../add-users/about-admin-roles.md) can perform these steps.
  
1. In the admin center, go to the **Settings** \> **Settings**.

2. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2072756" target="_blank">Security & privacy</a> page.
 If you aren't a global admin, you won't see the Security and privacy option.
  
3. Select **Password expiration policy**.
  
4. If you don't want users to have to change passwords, select the checkbox next to **Set user passwords to expire after a number of days**.
  
5. Type how often passwords should expire. Choose a number of days from 14 to 730.
  
6. In the second box type when users are notified that their password will expire, and then select **Save**. Choose a number of days from 1 to 30.
    
7. When the user's password expires, they'll get a notification that appears in the lower right corner of their screen.
  
## Important things you need to know about the password expiration feature

Here are some things to know about how this feature currently works as of January 2018:
  
- People who only use the Outlook app won't be forced to reset their Microsoft 365 password until it expires in the cache. This can be several days after the actual expiration date. There's no workaround for this at the admin level.
    
- Users do not get an email notification that their password is going to expire in X number of days. Do you want this feature? **[Vote here!](https://office365.uservoice.com/forums/273493-office-365-admin/suggestions/15028344-office-365-password-email-notification)**
    
## Prevent last password from being used again

If you want to prevent your users from recycling old passwords, you can do so in Azure AD. See [Set the password expiration policy for your organization](https://docs.microsoft.com/office365/admin/manage/set-password-expiration-policy?view=o365-worldwide).

In addition, if an employee used a mobile device to access Microsoft 365, you can wipe it to ensure the password is no longer stored and recycled from there. To learn more, see [Wipe and block a former employee's mobile device](https://docs.microsoft.com/office365/admin/add-users/remove-former-employee?view=o365-worldwide#wipe-and-block-a-former-employees-mobile-device).


## Synchronize user passwords hashes from an on-premises Active Directory to Azure AD (Microsoft 365)

This article is for setting the expiration policy for cloud-only users (Azure AD). It doesn't apply to hybrid identity users who use password hash sync, pass-through authentication or on-premises federation like ADFS.
  
To learn how to synchronize user password hashes from on premises AD to Azure AD, see [Implement password hash synchronization with Azure AD Connect sync](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-password-hash-synchronization).
