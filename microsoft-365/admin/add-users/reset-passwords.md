---
title: "Reset passwords"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 05/30/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
- must-keep
ms.custom:
  - VSBFY23
  - TopSMBIssues
  - MSStore_Link
  - TRN_M365B
  - OKR_SMB_Videos
  - AdminSurgePortfolio
  - AdminTemplateSet
  - business_assist
  - adminvideo
  - has-azure-ad-ps-ref
description: "Sign in with your Microsoft 365 admin account to reset passwords for users when you have a Microsoft 365 for business subscription."
---

# Reset passwords in Microsoft 365 for business

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

This article explains how to reset passwords for yourself and for your users when you have a **Microsoft 365 for business subscription**. If you don't have a Microsoft 365 for business subscription try this article: [I forgot the username or password for the account I use with Microsoft 365.](https://support.microsoft.com/office/eba0b4a2-c0ae-472c-99f6-bc63ee2425a8?wt.mc_id=SCL_reset-passwords_AdmHlp). You can also set up self-service password reset for your users so they can reset their own passwords. To learn more, see [Let users reset their own passwords](let-users-reset-passwords.md).

> [!IMPORTANT]
> To support increased security, as of August 30, 2024, Microsoft will remove the ability to send user account details and passwords in email from within the Microsoft 365 admin center. We recommend that you print the account information to a PDF file, then share it with your users in a secure manner.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

This article is for people who set password expiration policy for a business, school, or nonprofit. To complete these steps, you need to sign in with your Microsoft 365 admin account. [Overview in the Microsoft 365 admin center](../admin-overview/admin-center-overview.md).

You must be a [password administrator](about-admin-roles.md) to perform these steps.

## Watch: Reset a business password for a user

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198204).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=6abab91d-a375-496c-8a7e-f10bded3b389]
## Steps: Reset a business password for a user

When a user requests a new password, you receive a password reset request in email. Follow these steps to reset the password.

1. In the Microsoft 365 admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user and then select **Reset password**.

3. Follow the instructions on the **Reset password** page to autogenerate a new password for the user or create one for them, and then select **Reset password**.  

4. Print the account details to a PDF file, store it in a secure location, then share the information with your users in a secure manner.

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

## Let users reset their own passwords

We strongly recommend that you set up self-service password reset. This way you don't have to manually reset passwords for your users. Less work for you! To learn how, see [Let users reset their own passwords in Microsoft 365](let-users-reset-passwords.md).

## Resend user password
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user and then select **Reset password**.

3. Follow the instructions on the **Reset password** page to autogenerate a new password for the user or create one for them, and then select **Reset password**.  

4. Print the account details to a PDF file, store it in a secure location, then share the information with your users in a secure manner.

## Reset my admin password

Use these steps if you forgot your password but you're able to sign in to Microsoft 365 because, for example, your password is saved in your browser:

1. Select your name (icon) in upper right corner > **View Account**.

2. In your contact card, double-check that your **Alternate email** is accurate and that you've provided a mobile phone number. If not, change them now. Some details might be provided by your IT or human resources department. If you want to update those details, contact them or your admin.

3. Sign out: select your name in the upper right corner \> **Sign out**.

4. Now sign in again: type your user name \> **Next** \> and then select **Forgot password**.

5. Follow the steps in the wizard to reset your password. It uses your alternate contact info to verify you're the right person to reset your password.

If you forgot your password and can't sign in:

- Ask global admin in your business to reset your password for you.

- Make sure you've provided alternate contact information, including a mobile phone number.

- Or, [call Microsoft Support](../../business-video/get-help-support.md).

## Reset all business passwords for everyone in your organization at the same time

These steps work for a business with tens of users. If you have hundreds or thousands of users, see the next section on resetting passwords in bulk (maximum 40 users at a time).
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. Select the option next to **Display name** to select everyone in your business. Then unselect yourself. You can't reset your own password at the same time you reset everyone else's password.

3. Select **Reset password**.

4. Follow the instructions on the **Reset password** page, and select **Reset password**.  If you opted for autogenerating the passwords, the new temporary passwords are displayed.

5. Print the account details to a PDF file, store it in a secure location, then share the information with your users in a secure manner.
  
## Reset business passwords in bulk

Use PowerShell! Check out this post by Eyal Doron: [Managing passwords with PowerShell](https://go.microsoft.com/fwlink/?linkid=853696).
  
<!-- Here's a related article: [Set the passwords for multiple user accounts](/office365/enterprise/powershell/manage-office-365-with-office-365-powershell). -->

For overview information, see [Manage Microsoft 365 with PowerShell](../../enterprise/manage-microsoft-365-with-microsoft-365-powershell.md).
  
## Force a password change for all users in your business

Check out this great blog post by Vasil Michev, Microsoft MVP: [Force password change for all users in Office 365](https://go.microsoft.com/fwlink/?linkid=853693).

## Set strong passwords

1. Connect to Microsoft Entra ID using [Microsoft Graph PowerShell](/powershell/microsoftgraph/get-started). You can explore other [authentication methods](/powershell/microsoftgraph/authentication-commands) too.

    ```powershell
    Connect-MgGraph -Scopes "User.Read.All"
    ```

2. Using PowerShell, you can turn off strong password requirements for all users with the following command:

    ```powershell
    Get-MgUser | ForEach { Update-MgUser –UserId $_.Id -PasswordPolicies "DisableStrongPassword" }

3. You can turn **OFF** strong password requirements for specific users with this command:

    ```powershell
    Update-MgUser -UserId <UserPrincipalName> -PasswordPolicies "DisableStrongPassword"
    ```

> [!NOTE]
> The userPrincipalName must be in the Internet-style sign-in format where the user name is followed by the at sign (@) and a domain name. For example: user@contoso.com.

## Related content
  
[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)\
[Reset passwords](../add-users/reset-passwords.md) (article)\
[Set an individual user's password to never expire](set-password-to-never-expire.md) (article)\
[Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md) (article)\
[Microsoft 365 for business training videos](../../business-video/index.yml) (link page)
