---
title: "Add another email alias for a user"
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
- MSStore_Link
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 0b0bd900-68b1-4bf5-808b-5d240a7739f4
description: "Learn how you can have more than one email address, called an email alias, associated with your Microsoft 365 for business account. "
---

# Add another email alias for a user
  
This article is for Microsoft 365 administrators who have business subscriptions. It's not for home users.
  
A primary email address in Microsoft 365 is usually the email address a user was assigned when their account was created. When the user sends email to someone else, their primary email address is what typically appears in the  *From*  field in email apps. They can also have more than one email address associated with their Microsoft 365 for business account. These additional addresses are called aliases. 
  
For example, let's say Jenna has the email address jenna@contosoco.com, but she also wants to receive email at jen@contosoco.com because some people refer to her by that name. You can create aliases for her so that both email addresses go to Jenna's inbox.
  
You can create up to 400 aliases for a user. No additional fees or licenses are required.
  
> [!Tip]
> If you want multiple people to manage email sent to a single email address like info@NodPublishers.com or sales@NodPublishers.com, create a shared mailbox. To learn more, see [Create a shared mailbox](create-a-shared-mailbox.md).
  
## Add email aliases to a user

You must have [admin permissions](../add-users/about-admin-roles.md) to do this. 

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active Users** page, select the user > **Manage username and email**. You won't see this option if the person doesn't have a license assigned to them. 
    
3. Select **+ Add an alias** and enter a new alias for the user.   
    
    > [!Important] 
    > If you get the error message "**A parameter cannot be found that matches parameter name 'EmailAddresses**," it means that it's taking a bit longer to finish setting up your tenant, or your custom domain if you recently added one. The setup process can take up to 4 hours to complete. Wait a while so the set up process has time to finish, and then try again. If the problem persists, call Support and they will do a full sync for you.
    
  
    > [!IMPORTANT]
    > If you purchased your subscription from GoDaddy or another Partner, to set the new alias as the primary, you must go to the GoDaddy/partner management console. 
  
    > [!TIP]
    > The email alias must end with a domain from the drop-down list. To add another domain name to the list, see [Add a domain to Microsoft 365](../setup/add-domain.md). 
  
     
5. When you're done, choose **Save changes**.
    
6. Wait 24 hours for the new aliases to populate throughout Microsoft 365.
    
    The user will now have a primary address and an alias. For example, all mail sent to Eliza Hoffman's primary address, Eliza@NodPublishers.com, and her  alias, Sales@NodPublishers.com, will go to Eliza's Inbox.
    
  
7. **When the user replies, the *From* address will depend on her Outlook client. Outlook on the web will use the alias at which the email was received (we'll call this the ping-pong principle). Outlook desktop will use her primary email alias.** For example, let's say a message is sent to Sales@NodPublishers.com, and it arrives in Eliza's inbox. When Eliza replies to the message using Outlook desktop, her primary email address will appear as Eliza@NodPublishers.com, not Sales@NodPublishers.com.
    
## Did you get "A parameter cannot be found that matches parameter name EmailAddresses"?

If you get the error message "**A parameter cannot be found that matches parameter name EmailAddresses**" it means that it's taking a bit longer to finish setting up your tenant, or your custom domain if you recently added one. The setup process can take up to 4 hours to complete. Wait a while so the set up process has time to finish, and then try again. If the problem persists, call Support and they will do a full sync for you.
  
## Did you purchase your subscription from GoDaddy or another Partner?


If you purchased your subscription from GoDaddy or another Partner, to set the new alias as the primary, you must go to the GoDaddy/partner management console.

## Sending email from the proxy address easily

A new feature is rolling out in April 2021 that allows users to send from their aliases easily when using Outlook on the web. When the feature rolls out to a tenancy where the tenant admin uses the `Set-OrganizationConfig -SendFromAliasEnabled $true` cmdlet, users within the tenancy will get access to a list of checkboxes where each entry corresponds to an alias in their Outlook settings. Selecting an alias will make it appear in the From dropdown in the Compose form.
  
## Related content

[Send email from a different address](https://support.microsoft.com/office/ccba89cb-141c-4a36-8c56-6d16a8556d2e) (article)

[Change a user name and email address](../add-users/change-a-user-name-and-email-address.md) (article)

[Configure email forwarding in Microsoft 365](configure-email-forwarding.md) (article)
