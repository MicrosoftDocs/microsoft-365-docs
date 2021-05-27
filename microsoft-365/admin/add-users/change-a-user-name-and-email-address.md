---
title: "Change a user name and email address"
f1.keywords:
- NOCSH
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
ms.custom:
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: fb5ac074-e203-4e1f-9843-b9d1a3e03297
description: "Learn how a Microsoft 365 global admin can change a user's email address and display name when their ame changes. "
---

# Change a user name and email address

You may need to change someone's email address and display name if, for example, they get married and their last name changes.

## Watch: Change a user's name or email address

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1SJuc] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

You must be a [global admin](about-admin-roles.md) to do these steps. 

## Change a user's email address

::: moniker range="o365-worldwide"
 
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.  

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page. 

::: moniker-end

1. Select the user's name, and then on the **Account** tab select **Manage username**.
    
1. In the first box, type the first part of the new email address. If you added your own domain to Microsoft 365, choose the domain for the new email alias by using the drop-down list. 

1. Select **Save changes**.

> [!IMPORTANT]
> If you get an error message, see [Resolve error messages](#resolve-error-messages).

## Set the primary email address

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page. 

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.  

::: moniker-end
    
2. Select the user's name, and then on the **Account** tab select **Manage email aliases**.

3. Select **Set as Primary** for the email address that you want to set as the primary email address for that person. 
    
   > [!IMPORTANT]
   > You won't see this option to Set as Primary if you purchased Microsoft 365 from GoDaddy or another Partner service that provides a management console. Instead, sign in to the GoDaddy / partner's management console to set the primary alias. 
   >  
   > Also, you'll only see this option if you're a global admin. If you don't see the option, you don't have permissions to change a user's name and primary email address.
  
4. You'll see a big yellow warning that you're about to change the person's sign-in information. Select **Save**, then **Close**.
    
5. Give the person the following information:
 
   - This change could take a while.
  
   - Their new username. They'll need it to sign in to Microsoft 365.
    
   - If they are using Skype for Business Online, they must reschedule any Skype for Business Online meetings that they organized, and tell their external contacts to update their contact information.

   - If they are using OneDrive, the URL to this location has changed. If they have OneNote notebooks in their OneDrive, they might need to close and reopen them in OneNote. If they have shared files from their OneDrive, the links to the files might not work and the user can reshare.    
  
   - If their password changed too, they are prompted to enter the new password on their mobile device, or it won't sync.
  
## Change a user's display name

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page. 

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page. 

::: moniker-end

2. Select the user's name, and then on the **Account** tab select **Manage contact information**.

3. In the **Display name** box, type a new name for the person, and then select **Save**.

   If you get the error message "**We're sorry, the user couldn't be edited. Review the user information and try again**, see [Resolve error messages](#resolve-error-messages).

It might take up to 24 hours for this change to take effect across all services. After the change has taken effect, the person will have to sign in to Outlook, Skype for Business and SharePoint with their updated username.
 
## Resolve error messages

### "A parameter cannot be found that matches parameter name 'EmailAddresses"

If you get the error message " **A parameter cannot be found that matches parameter name 'EmailAddresses**" it means that it's taking a bit longer to finish setting up your tenant, or your custom domain if you recently added one. The setup process can take up to 4 hours to complete. Wait a while so the setup process has time to finish, and then try again. If the problem persists, call [support](../../business-video/get-help-support.md) and ask them to do a full sync for you.
  
### "We're sorry, the user couldn't be edited. Review the user information and try again"

If you get the error message " **We're sorry, the user couldn't be edited. Review the user information and try again**." it means you aren't a global admin and you don't have permissions to change the user name. Find the global admin in your business and ask them to make the change.


## What to do with old email addresses

A person's previous primary email address is retained as an additional email address. **We strongly recommend that you don't remove the old email address.**
  
Some people might continue to send email to the person's old email address and deleting it may result in NDR failures. Microsoft automatically routes it to the new one. Also, do not reuse old SMTP email addresses and apply them to new accounts. This can also cause NDR failures or delivery to an unintended mailbox.
   
## What if the person's offline address book won't sync with the Global Address List?

If they are using Exchange Online or if their account is linked with your organization's on-premises Exchange environment, you might see this error when you try to change a username and email address: "This user is synchronized with your local Active Directory. Some details can be edited only through your local Active Directory."
  
This is due to the Microsoft Online Email Routing Address (MOERA). The MOERA is constructed from the person's  _userPrincipalName_ attribute in Active Directory and is automatically assigned to the cloud account during the initial sync and once created, it cannot be modified or removed in Microsoft 365. You can subsequently change the username in the Active Directory, but it doesn't change the MOERA and you may run into issues displaying the newly changed name in the Global Address List. 
  
To fix this, log in to the [Azure Active Directory Module for PowerShell]( https://go.microsoft.com/fwlink/?LinkId=823193) with your Microsoft 365 administrator credentials. and use the following syntax: 
  
```powershell
Set-MsolUserPrincipalName -UserPrincipalName anne.wallace@contoso.onmicrosoft.com -NewUserPrincipalName anne.jones@contoso.com
```

> [!TIP]
> This changes the person's **userPrincipalName** attribute and has no bearing on their Microsoft Online Email Routing Address (MOERA) email address. It is best practice, however, to have the person's logon UPN match their primary SMTP address. 
  
To learn how to change someone's username in Active Directory, in Windows Server 2003 and earlier, see [Rename a user account](/previous-versions/windows/it-pro/windows-server-2003/cc772952(v=ws.10)).
  
## Related content

[Admins: Reset a password for one or more users](reset-passwords.md) (article)\
[Add another email address to a user](../email/add-another-email-alias-for-a-user.md) (article)\
[Create a shared mailbox](../email/create-a-shared-mailbox.md) (article)