---
title: "Step 7 - Delete a former employee's user account"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- m365solution-removeemployee
description: "After you've saved and accessed all of a former employee's user data, you can delete the former employee's account in the Microsoft 365 admin center."
---

# Step 7 - Delete a former employee's user account

After you've saved and accessed all the former employee's user data, you can delete the former employee's account.

> [!IMPORTANT]
> Don't delete the account if you've set up email forwarding or converted it to a shared mailbox. Both need the account to anchor the forwarding or shared mailbox.

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to delete.
3. Under the user's name, select **Delete user**. Choose the options you want for this user, and then select **Delete user**. If you've already given another user access to this user's email and OneDrive, you don't have to do it again here.

When you delete a user, the account becomes inactive for approximately 30 days. You've until then to restore the account before it's permanently deleted.

## Watch: Delete a former employee's user account

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=f1196f82-611c-41c8-8cc1-98e70f591d5d]

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

## Does your organization use Active Directory?

If your organization synchronizes user accounts to Microsoft 365 from a local Active Directory environment, you must delete and restore those user accounts in your local Active Directory service. You can't delete or restore the user in the Microsoft 365 admin center.

To learn how to delete and restore user account in Active Directory, see [Delete a User Account](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753730(v=ws.11)).
  
If you're using Microsoft Entra ID, see the [Remove-MgUser](/powershell/module/microsoft.graph.users/remove-mguser) PowerShell cmdlet.
  
## What you need to know about terminating an employee's email session

Here's information about how to get an employee out of email (Exchange).

|What you can do|How you do it|
|:-----|:-----|
|Terminate a session (such as Outlook on the web, Outlook, Exchange active sync, etc.) and force to open a new session|Reset password|
|Terminate a session and block access to future sessions (for all protocols)|Disable the account. For example, in the Exchange admin center or using PowerShell: <br/>  `Set-Mailbox user@contoso.com -AccountDisabled:$true`|
|Terminate the session for a particular protocol (such as ActiveSync)|Disable the protocol. For example, in the Exchange admin center or using PowerShell: <br/>  `Set-CASMailbox user@contoso.com -ActiveSyncEnabled:$false`|

The above operations can be done in three places:

|If you terminate the session here|How long it takes|
|---|---|
|In the Exchange admin center or using PowerShell|Expected delay is within 30 min|
|In the Microsoft Entra admin center|Expected delay is 60 min|
|In an on-premises environment|Expected delay is 3 hours or more|

### How to get fastest response for account termination

**Fastest**: Use the Exchange admin center (use PowerShell) or Microsoft Entra admin center. In an on-premises environment, it can take several hours to sync the change through Microsoft Entra Connect.
  
**Fastest for a user with presence on-premises and in the Exchange Datacenter**: Terminate the session using Microsoft Entra admin center/Exchange admin center AND make the change in the on-premises environment as well. Otherwise, the change in Microsoft Entra admin center/Exchange admin center will be overwritten by Microsoft Entra Connect.
  
## Related content

[Restore a user](restore-user.md) (article)

[Reset passwords](reset-passwords.md) (article)
