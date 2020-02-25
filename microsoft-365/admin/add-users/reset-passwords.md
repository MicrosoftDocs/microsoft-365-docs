---
title: "Reset Office 365 business passwords"
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
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 7a5d073b-7fae-4aa5-8f96-9ecd041aba9c
description: "Learn how to reset password for a user in Office 365 business subscription. "
---

# Reset Office 365 business passwords

Watch a short video about resetting user passwords.<br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FVVP] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](https://support.office.com/article/6ab4bbcd-79cf-4000-a0bd-d42ce4d12816).
  
## Let users reset their own passwords

We strongly recommend that you set up self-service password reset. This way you don't have to manually reset passwords for your users. To learn how, see [Let users reset their own passwords in Office 365](let-users-reset-passwords.md).
  
## Reset an Office 365 business password for someone else

These steps are only for people using an Office 365 business plan. To do them, you need to sign in with your Microsoft 365 admin account. [What's an admin account?](../admin-overview/admin-overview.md)

 
::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. On the **Active users** page, select the user and then select **Reset password**.
    
3. Follow the instructions on the **Reset password** page to auto-generate a new password for the user or create one for them, and then select **Reset**.  
    
4. Enter an email address the user can get to so they receive the new password, and follow up with them to make sure they got it.
 
  
## Reset my Office 365 tenant admin password

Use these steps if you forgot your password but you're able to sign in to Office 365 because, for example, your password is saved in your browser: 
    
1. In Office 365, select **Settings** \> **Office 365** \> **Personal info**. 
          
2. Double-check that your **Contact details** and **Alternate email** are accurate. If not, change them now. 
        
3. Sign out of Office 365: select your name in the upper right corner (in the above image, shown as **Diane**) \> **Sign out**. 
        
4. Now sign in again: type your user name \> **Next** \> and then select **Forgot password**. 
    
5. Follow the steps in the wizard to reset your password. It uses your alternate contact info to verify you're the right person to reset your password. 
    
If you forgot your password and can't sign in: 
    
- Ask another global admin in your business to reset your password for you.
    
- Or, [call Microsoft Support](https://support.office.com/article/contact-support-for-business-products-admin-help-32a17ca7-6fa0-4870-8a8d-e25ba4ccfd4b?ui=en-US&amp;rs=en-US&amp;ad=US#ID0EAADAAA=Phone_support_). 
    
## Reset all Office 365 business passwords for everyone in your organization at the same time
<a name="bkmk_forgot"> </a>

These steps work for a business with tens of users. If you have hundreds or thousands of users, see the next section on resetting passwords in bulk.
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
    
2. Select the option next to **Display name** to select everyone in your business. Then unselect yourself. You can't reset your own password at the same time you reset everyone else's password.
    
3. Select **Reset password**. 

4. Follow the instructions on the **Reset password** page, and select **Reset**.  If you opted for auto-generating the passwords, the new temporary passwords will be displayed.   
    
5. Enter an email address where you can receive the temporary passwords. You'll need to notify your users what their temporary passwords are.
    

  
## Reset Office 365 business passwords in bulk
<a name="bkmk_forgot"> </a>

Use PowerShell! Check out this post by Eyal Doron: [Managing passwords with PowerShell](https://go.microsoft.com/fwlink/?linkid=853696).
  
Here's a related article: [Set the passwords for multiple user accounts](https://support.office.com/article/014fc912-bee1-461d-ad00-56b80428b907.aspx#bkmk_password).
  
For overview information, see [PowerShell for Office 365 administrators](https://support.office.com/article/40fdcbd4-c34f-42ab-8678-8b3751137ef1.aspx).
  
## Force a password change for all users in your business
<a name="bkmk_forgot"> </a>

Check out this great blog post by Vasil Michev, Microsoft MVP: [Force password change for all users in Office 365](https://go.microsoft.com/fwlink/?linkid=853693).
  
## I'm lost!
<a name="bkmk_forgot"> </a>

Try this article: [I forgot the username or password for the account I use with Office.](https://support.office.com/article/eba0b4a2-c0ae-472c-99f6-bc63ee2425a8?wt.mc_id=SCL_reset-passwords_AdmHlp)
  
## Related articles
<a name="bkmk_forgot"> </a>
  
[Let users reset their own passwords in Office 365](let-users-reset-passwords.md)

[Set an individual user's password to never expire](set-password-to-never-expire.md)

[Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md)

[Restore a user in Office 365](restore-user.md)

[Remove a former employee from Office 365](remove-former-employee.md)

[Microsoft 365 Business training videos](https://support.office.com/article/6ab4bbcd-79cf-4000-a0bd-d42ce4d12816)
