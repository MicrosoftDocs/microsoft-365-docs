---
title: "Give mailbox permissions to another user - Admin Help"
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
- MSStore_Link
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 1dbcf12f-a9de-4d1d-b0b3-a227f8a736d8
description: "Give a user the right to access another user's mailbox, which allows the user to read and send emails from the other user's mailbox."
---

# Give mailbox permissions to another user - Admin Help

As the admin, you may have company requirements to allow some users access to another user's mailbox. For example, you may want to enable an assistant to send or read email from their manager's mailbox, or one of your user's the ability to send email on behalf of another user. This topic shows you how to accomplish this.
  
If you're looking for information about creating and managing shared mailboxes, check out [Create a shared mailbox](../email/create-a-shared-mailbox.md).
    
## Looking to set up mailbox permissions?

Mailbox permissions allow you to give read/write access to a mailbox to another user. The articles below might give you the help you need to set up and use this feature:
  
 **Setting up the permissions:**
  
The first step to setting up permissions is deciding which actions you want to allow the other user to take in the given mailbox. You can allow a user to read emails from the mailbox, send emails on behalf of another user, and send emails as if they were sent from that mailbox. Refer to the following articles on how to set up each type of permissions:
  
- [Read email from another user's mailbox](give-mailbox-permissions-to-another-user.md#read-email-in-another-users-mailbox)
    
- [Send email from another user's mailbox](give-mailbox-permissions-to-another-user.md#send-email-from-another-users-mailbox)

- [Send email on behalf of another user](give-mailbox-permissions-to-another-user.md#send-email-on-behalf-of-another-user)
    
 **Changing propagation:**
  
Once you've set up the permissions, it can take up to 60 minutes for the changes to propagate through the system and be in effect.
  
 **How to use it once permissions are set up:**
  
There are a few different ways you can access a mailbox once you've been given access. For help on this, refer to this article: [Access another person's mailbox](https://support.microsoft.com/office/A909AD30-E413-40B5-A487-0EA70B763081).

> [!NOTE]
> The permissions can be set up only within the current organization tenant. It is not possible to set up mailbox permissions with out of tenant users.
  
## Send email from another user's mailbox

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.  
    
2. Select the name of the user (from whom you plan to give a sending permission) to open their properties pane.
    
3. On the **Mail** tab, select **Manage mailbox permissions**.

4. Next to **Send as**, select **Edit**. 

5. Select **Add permissions**, then choose the name of the person who you want this user to be able to send as. 
    
6. Select **Save**.
 
::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.  

2. Select the user you want, expand **Mail Settings**, and then Select **Edit** next to **Mailbox permissions**.

3. Next to **Send as**, select **Edit**. 

4. Select **Add permissions**, then choose the name of the person who you want this user to be able to send as. 
    
5. Select **Save**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page. 

2. Select the user you want, expand **Mail Settings**, and then Select **Edit** next to **Mailbox permissions**.

3. Next to **Send as**, select **Edit**. 

4. Select **Add permissions**, then choose the name of the person who you want this user to be able to send as. 
    
5. Select **Save**.

::: moniker-end
  
## Read email in another user's mailbox

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.  
    
2. Select the name of the user (whose mailbox you want to allow to be read) to open their properties pane.
    
3. On the **Mail** tab, select **Manage mailbox permissions**.
    
4. Next to **Read and manage**, select **Edit**. 
    
5. Select **Add permissions**, then choose the name of the user or users that you want to allow to read email from this mailbox.

6. Select **Save**.


> [!NOTE]
> **Read** and **Manage** permissions are called **Full Access** permission when granted in the Exchange admin center. Full Access permission does not grant **Send as** or **Send on Behalf**  permissions.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.  
  
2. Select the user you want, expand **Mail Settings**, and then select **Edit** next to **Mailbox permissions**.
    
3. Next to **Read and manage**, select **Edit**. 
    
4. Select **Add permissions**, then choose the name of the user or users that you want to allow to read email from this mailbox.

5. Select **Save**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page. 
  
2. Select the user you want, expand **Mail Settings**, and then select **Edit** next to **Mailbox permissions**.
    
3. Next to **Read and manage**, select **Edit**. 
    
4. Select **Add permissions**, then choose the name of the user or users that you want to allow to read email from this mailbox.

5. Select **Save**.

::: moniker-end


## Send email on behalf of another user

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.  

2. Select the name of the user (from whom you plan to give a **Send on behalf** permission) to open their properties pane.
    
3. On the **Mail** tab, select **Manage mailbox permissions**.
    
4. Next to **Send on behalf**, select **Edit**.

5. Select **Add permissions**, then choose the name of the user or users that you want to allow to send email on behalf of this mailbox.

6. Select **Save**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.  

2. Select the user you want, expand **Mail Settings**, and then select **Edit** next to **Mailbox permissions**.

3. Next to **Send on behalf**, select **Edit**.
    
4. Select **Add permissions**, then choose the name of the user or users that you want to allow to send email on behalf of this mailbox.

5. Select **Save**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page. 

2. Select the user you want, expand **Mail Settings**, and then select **Edit** next to **Mailbox permissions**.

3. Next to **Send on behalf**, select **Edit**.
    
4. Select **Add permissions**, then choose the name of the user or users that you want to allow to send email on behalf of this mailbox.

5. Select **Save**.

::: moniker-end


## Related content
  
[Manage another person's mail and calendar items](https://support.microsoft.com/office/afb79d6b-2967-43b9-a944-a6b953190af5) (article)
    
[Send email from another person or group](https://support.microsoft.com/office/0f4964af-aec6-484b-a65c-0434df8cdb6b) (article)

[Change a user name and email address](../add-users/change-a-user-name-and-email-address.md) (video)

