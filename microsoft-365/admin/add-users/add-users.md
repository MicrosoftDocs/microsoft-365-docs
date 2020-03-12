---
title: "Add users individually or in bulk to Office 365"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_O365_Setup
- Adm_O365_TOC
ms.custom:
- MSStore_Link
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 1970f7d6-03b5-442f-b385-5880b9c256ec
description: "Learn how to add users to Office 365, one at a time or multiple users at the same time from a CSV file."
---

# Add users individually or in bulk to Office 365

The people on your team each need a user account before they can sign in and access [Office 365 for business](https://go.microsoft.com/fwlink/?LinkID=519395). The easiest way to add user accounts is to add them one at a time in the Microsoft 365 admin center. After you do this step, your users will have Office 365 licenses, sign in credentials, and Office 365 mailboxes.

::: moniker range="o365-worldwide"

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

2. Go to **Users** > **Active users**, and select **Add a user**.
   
3. In the **Set up the basics** pane, fill in the following information, and then select **Next**. 
  
- **Name** Fill in first, last, display name, and username. 
    
- **Domain** For example, if the user's username is Jakob, and his domain is contoso.com, he'll sign in to Office 365 by typing jakob@contoso.com. 
    
- **Password settings** Choose to the use auto-generated password or create your own strong password for the user. 
    
    - They'll need to change their password after 90 days. Or you can choose to **Require this user to change their password when they first sign in**.
    
    - Choose whether you want to  send the password in email when the user has been added. 
    
4. In the **Assign product licenses** pane, select the location and the appropriate license for the user. If you don't have any licenses available, you can still add a user and buy additional licenses. Select **Next**.

5. In the **Optional settings** page, expand **Roles** if you want to make this user an admin, and expand **Profile info** if you want to add additional information about the user. 

6. Select **Next**, review your new user's settings, make any changes you like, and then select **Finish adding**. 

::: moniker-end


::: moniker range="o365-germany"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">https://portal.office.de/adminportal</a>.

2. Go to **Users** > **Active users**, and select **Add a user**.
   
  
   In the **New user** pane, fill in the following information. Select **Add** when you are done. 
  
- **Name** Fill in first, last, display name, and user name. 
    
- **Domain** For example, if the user's username is Jakob, and his domain is contoso.com, he'll sign in to Office 365 by typing jakob@contoso.com. 
    
- **Contact information** Expand to fill in a mobile phone number, address, and so on. 
    
- **Password** Use the auto-generated password or expand to specify a strong password for the user. 
    
    They'll need to change their password after 90 days. Or you can choose to **Make this user change their password when they first sign in**.
    
- **Roles** Expand if you need to make this user an admin. 
    
- **Product licenses** Expand this section and select the appropriate license. If you don't have any licenses available, you can still add a user and buy additional licenses. 

::: moniker-end

::: moniker range="o365-21vianet"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">https://portal.partner.microsoftonline.cn</a>.

2. Go to **Users** > **Active users**, and select **Add a user**.
   
  
   In the **New user** pane, fill in the following information. Select **Add** when you are done. 
  
- **Name** Fill in first, last, display name, and user name. 
    
- **Domain** For example, if the user's username is Jakob, and his domain is contoso.com, he'll sign in to Office 365 by typing jakob@contoso.com. 
    
- **Contact information** Expand to fill in a mobile phone number, address, and so on. 
    
- **Password** Use the auto-generated password or expand to specify a strong password for the user. 
    
    They'll need to change their password after 90 days. Or you can choose to **Make this user change their password when they first sign in**.
    
- **Roles** Expand if you need to make this user an admin. 
    
- **Product licenses** Expand this section and select the appropriate license. If you don't have any licenses available, you can still add a user and buy additional licenses. 

::: moniker-end 
  
After you add a user, you'll get an email notification from the Microsoft Online Services Team. The email will contain the person's Office 365 user ID and password so they can sign in to Office 365. You need to tell your new user about their Office 365 sign in information. Use your normal process for communicating new passwords.

> [!NOTE]
>If you create users by migrating mail boxes, you will need to activate user accounts by assigning licenses. If you don't assign a license to a user, their mailbox will be disabled after a grace period of 30 days. See how to [assign licenses to users](https://support.office.com/article/997596b5-4173-4627-b915-36abac6786dc) using the Microsoft 365 admin center.

### Video: Add and manage users in the admin center

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FOfN?autoplay=false]
  
## Next steps

Share the [Employee quick start guide](https://support.office.com/article/b9700090-ce64-4046-ab92-ce8488a7bc0f.aspx) with your new users to set things up, like [Office on a PC or Mac](https://support.office.com/article/4414eaaf-0478-48be-9c42-23adc4716658.aspx) and [Office mobile apps](https://support.office.com/article/7dabb6cb-0046-40b6-81fe-767e0b1f014f.aspx).
  
## Need help?

[Contact Office 365 for business support](../contact-support-for-business-products.md).  

## Have hundreds or thousands of users to add?


To add multiple users at the same time, follow these steps:
  
- **Use a spreadsheet to add people in bulk.** See [Add several users at the same time](https://docs.microsoft.com/office365/enterprise/add-several-users-at-the-same-time).
    
- **Automate adding accounts and assigning licenses.** See [Create user accounts with Office 365 PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/create-user-accounts-with-office-365-powershell). Choose this method if you're already familiar with using Windows PowerShell cmdlets.
    
- **Using ActiveDirectory?** [Set up directory synchronization for Office 365](https://docs.microsoft.com/office365/enterprise/set-up-directory-synchronization). Use the Azure AD Connect tool to replicate Active Directory user accounts (and other Active Directory objects) in Office 365. The sync only adds the user accounts. You will need to assign licenses to the synced users before they can use email and other Office apps.
    
- **Migrating from Exchange?** [Ways to migrate multiple email accounts to Office 365](https://docs.microsoft.com/Exchange/mailbox-migration/mailbox-migration). When you migrate multiple mailboxes to Office 365 by using either cutover, staged, or a hybrid Exchange method, you will add users automatically as part of the migration. The migration only adds the user accounts. You will need assign licenses to the users before they can use email and other Office apps.

## Related articles

[Add a new employee to Office 365](add-new-employee.md)

[Delete a user from your organization](delete-a-user.md)

[Restore a user in Office 365](restore-user.md)

[Add several users at the same time to Office 365](https://docs.microsoft.com/office365/enterprise/add-several-users-at-the-same-time)


