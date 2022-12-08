---
title: "Reset passwords"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: other
ms.date: 09/15/2022
ms.collection:
- m365-security
- tier1
ms.localizationpriority: medium
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
description: "Reset passwords for users in Microsoft 365 Business Premium."
---

# Reset passwords in Microsoft 365 Business Premium

Learn how to reset passwords for yourself and your users when needed. As an admin, you can reset a user's password if they forget it.

## User-initiated password reset

When a user requests a new password, a password reset request is sent through email.

1. To reset the password, open the app launcher and select **Admin** and log in with your credentials.

2. In the Microsoft 365 admin center, select **Users**,  <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>, and then select the key icon next to the user who requested the reset.

3. Select **Auto-generate password** to have a random password automatically created.

4. Select **Reset**.

## Admin-initiated password reset

There are times when an admin may want to force password resets on accounts.

1. In the Admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active users** page, select the specific user to reset, and then select **Reset password**.

3. Follow the instructions on the **Reset password** page to auto-generate a new password for the user or create one for them, and then select **Reset**.  

4. Enter an email address the user can get to so they receive the new password, and follow up with them to make sure they got it.

## Let users reset their own passwords

We strongly recommend that you set up the self-service password reset. This way you don't have to manually reset passwords for your users. To learn how, see [Let users reset their own passwords in Office 365](/admin/add-users/let-users-reset-passwords.md).

## Reset my admin password

Use these steps if you forgot your password but you're able to sign in to Microsoft 365 because, for example, your password is saved in your browser:

1. Select your name (icon) in the upper-right corner > **My Account** > **Personal Info**.

2. Under **Contact details**, double-check that your **Alternate email** is accurate and that you've provided a mobile phone number. If not, change them now.

3. Sign out: select your name in the upper-right corner \> **Sign out**.

4. Now sign in again: type your user name \> **Next** \> and then select **Forgot password**.

5. Follow the steps in the wizard to reset your password. It uses your alternate contact info to verify you're the right person to reset your password.

If you forgot your password and can't sign in:

- Ask another global admin in your business to reset your password for you.

- Make sure you've provided alternate contact information, including a mobile phone number.

## Reset all business passwords for everyone at the same time

<a name="bkmk_forgot"> </a>

These steps work for a business with tens of users. If you have hundreds or thousands of users, see the next section on resetting passwords in bulk (maximum 40 users at a time).
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. Select the option next to **Display name** to select everyone in your business. Then, unselect yourself. You can't reset your own password at the same time you reset everyone else's password.

3. Select **Reset password**.

4. Follow the instructions on the **Reset password** page, and select **Reset**.  If you opted for auto-generating the passwords, the new temporary passwords will be displayed.

5. Enter an email address where you can receive the temporary passwords. You'll need to notify your users what their temporary passwords are.
  
## Reset business passwords in bulk

<a name="bkmk_forgot"> </a>

To reset passwords for multiple accounts, use PowerShell. Check out this post by Eyal Doron: [Managing passwords with PowerShell](https://go.microsoft.com/fwlink/?linkid=853696).

For overview information, see [Manage Microsoft 365 with PowerShell](../enterprise/manage-microsoft-365-with-microsoft-365-powershell.md).
  
## Related content
  
[Let users reset their own passwords](../admin/add-users/let-users-reset-passwords.md)
[Reset passwords in Microsoft 365 for business](../admin/add-users/reset-passwords.md)
[Set an individual user's password to never expire](../admin/add-users/set-password-to-never-expire.md) 
[Set the password expiration policy for your organization](../admin/manage/set-password-expiration-policy.md)