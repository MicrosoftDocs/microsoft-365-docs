---
title: "Reset passwords"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- TopSMBIssues
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 7a5d073b-7fae-4aa5-8f96-9ecd041aba9c
description: "Sign in with your Microsoft 365 admin account to reset passwords for users in Microsoft 365 for business subscription."
---

# Reset passwords

This article explains how to reset passwords for yourself and for your users when you have an Microsoft 365 for business subscription.

## Before you begin

This article is for people who set password expiration policy for a business, school, or nonprofit. To complete these steps, you need to sign in with your Microsoft 365 admin account. [What's an admin account?](https://docs.microsoft.com/microsoft-365/business-video/admin-center-overview).

You must be an [global admin or password administrator](about-admin-roles.md) to perform these steps.

## Watch: Reset a business password for a user

Watch a short video about resetting user passwords.<br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FVVP]

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).
  
## Steps: Reset a business password for a user

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user and then select **Reset password**.

3. Follow the instructions on the **Reset password** page to auto-generate a new password for the user or create one for them, and then select **Reset**.  

4. Enter an email address the user can get to so they receive the new password, and follow up with them to make sure they got it.

## Let users reset their own passwords

We strongly recommend that you set up self-service password reset. This way you don't have to manually reset passwords for your users. To learn how, see [Let users reset their own passwords in Office 365](let-users-reset-passwords.md).

## Reset my admin password

Use these steps if you forgot your password but you're able to sign in to Microsoft 365 because, for example, your password is saved in your browser:

1. Select your name (icon) in upper right corner > **My Account** > **Personal Info**.

2. Under **Contact details**, double-check that your **Alternate email** is accurate and that you've provided a mobile phone number. If not, change them now.

3. Sign out: select your name in the upper right corner \> **Sign out**.

4. Now sign in again: type your user name \> **Next** \> and then select **Forgot password**.

5. Follow the steps in the wizard to reset your password. It uses your alternate contact info to verify you're the right person to reset your password.

If you forgot your password and can't sign in:

- Ask another global admin in your business to reset your password for you.

- Make sure you've provided alternate contact information, including a mobile phone number.

- Or, [call Microsoft Support](../../business-video/get-help-support.md).

## Reset all business passwords for everyone in your organization at the same time
<a name="bkmk_forgot"> </a>

These steps work for a business with tens of users. If you have hundreds or thousands of users, see the next section on resetting passwords in bulk (maximum 40 users at a time).
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. Select the option next to **Display name** to select everyone in your business. Then unselect yourself. You can't reset your own password at the same time you reset everyone else's password.

3. Select **Reset password**. 

4. Follow the instructions on the **Reset password** page, and select **Reset**.  If you opted for auto-generating the passwords, the new temporary passwords will be displayed.

5. Enter an email address where you can receive the temporary passwords. You'll need to notify your users what their temporary passwords are.
  
## Reset business passwords in bulk
<a name="bkmk_forgot"> </a>

Use PowerShell! Check out this post by Eyal Doron: [Managing passwords with PowerShell](https://go.microsoft.com/fwlink/?linkid=853696).
  
<!-- Here's a related article: [Set the passwords for multiple user accounts](/office365/enterprise/powershell/manage-office-365-with-office-365-powershell). -->
  
For overview information, see [Manage Microsoft 365 with PowerShell](../../enterprise/manage-microsoft-365-with-microsoft-365-powershell.md).
  
## Force a password change for all users in your business

Check out this great blog post by Vasil Michev, Microsoft MVP: [Force password change for all users in Office 365](https://go.microsoft.com/fwlink/?linkid=853693).
  
## I don't have a Microsoft 365 for business subscription

Try this article: [I forgot the username or password for the account I use with Office.](https://support.microsoft.com/office/eba0b4a2-c0ae-472c-99f6-bc63ee2425a8?wt.mc_id=SCL_reset-passwords_AdmHlp)
  
## Related content
  
[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)

[Reset passwords](../add-users/reset-passwords.md) (article)

[Set an individual user's password to never expire](set-password-to-never-expire.md) (article)

[Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md) (article)

[Microsoft 365 for business training videos](../../business-video/index.yml) (link page)