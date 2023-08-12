---
title: "Configure shared mailbox settings"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
description: "Create a shared mailbox and configure some settings for its users, such as email forwarding and automatic replies."
---

# Configure Microsoft 365 shared mailbox settings

After you have [created a shared mailbox](create-a-shared-mailbox.md), you'll want to configure some settings for the mailbox users, such as email forwarding and automatic replies. Later, you might want to change other settings, such as the mailbox name, members, or member permissions. 

## Change the name or email alias of a shared mailbox, or change the primary email address

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, and then select either **Edit name** or **Edit email addresses**.

3. Enter a new name for the shared mailbox, or add another email alias. If you want to change the primary email address, your mailbox must have more than one email alias.

4. Select **Save**.

## Forward emails that are sent to a shared mailbox

You do not need to assign a license to the shared mailbox in order to forward email that's sent to it. You can forward the messages to any valid email address or distribution list.

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Email forwarding** \> **Edit**.
    
3. Set the toggle to **On**, and enter one email address to forward the messages to. It can be any valid email address. To forward to multiple addresses, you need to [create a distribution group](/office365/admin/setup/create-distribution-lists) for the addresses, and then enter the name of the group in this box.
    
4. Select **Save**.

## Send automatic replies from a shared mailbox

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Automatic replies** \> **Edit**.
    
3. Set the toggle to **On**, and choose whether to send the reply to people inside your organization or outside your organization.

4. Enter the reply you want to send to people inside your organization. You can't add images, only text.

5. If you want to *also* send a reply to people outside your organization, select the check box, who you want to get the reply, and type the text. There's no way to only send to people outside your organization but not to people inside your organization.

6. Select **Save**.

## Allow everyone to see the Sent email (the replies)

By default, messages sent from the shared mailbox aren't saved to the Sent Items folder of the shared mailbox. Instead, they are saved to the Sent Items folder of the person who sent the message.

If you want to allow everyone to see the Sent email, in the admin center, edit the shared mailbox settings, and select **Sent items** \> **Edit**.


## Choose the apps that a shared mailbox can use to access Microsoft email

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Email apps** \> **Edit**.

3. Set the toggle to **On** for all of the apps you want members to be able to use to access the shared mailbox. Set the toggle to **Off** for any apps you don't want them to use. 

4. Select **Save**.


## Put a shared mailbox on litigation hold

To learn more about litigation hold, see [Create a Litigation Hold](../../compliance/ediscovery-create-a-litigation-hold.md).

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Litigation hold** \> **Edit**.

3. Set the toggle to **On**. 

4. Optionally, enter a duration, s note about the hold, and a URL with more information.  

5. Select **Save**.


## Add or remove members

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Members** \> **Edit**.

3. Do one of the following:
   - To add members, select **Add members**, search for or select a member to add, and then select **Save**.
   - To remove members, use the Search box to search for the member if necessary, select the **X** next to the member's name, and then select **Save**. 

4. Select **Save** again.

## Add or remove permissions of members

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Members** \> **Customize permissions**.

3. Select **Edit** next to the permission you want to change for a member. 

4. Do one of the following:
   - To give that permission to an additional member, select **Add permissions**, search for or select a member to add, and then select **Save**.
   - To remove the permission from a member, use the Search box to search for the member if necessary,  select the **X** next to the member's name, and then select **Save**. 

4. Select **Save** again.

## Show or hide a shared mailbox in the global address list

If you choose not to show the shared mailbox in the global address list, the mailbox won't appear in your organization's address list, but it will still receive email sent to it. 

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Show in global address list** \> **Edit**.

3. Set the toggle to **On**  or **Off**. 

4. Select **Save**.

> [!NOTE]
> Hiding a shared mailbox from address list will make it impossible for new shared mailbox members to add the hidden mailbox to their Outlook profile until the shared mailbox is again shown in the address list. 

## Related content

[About shared mailboxes](about-shared-mailboxes.md) (article)\
[Create a shared mailbox](create-a-shared-mailbox.md) (article)\
[Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md) (article)\
[Remove a license from a shared mailbox](remove-license-from-shared-mailbox.md) (article)\
[Resolve issues with shared mailboxes](resolve-issues-with-shared-mailboxes.md) (article)
