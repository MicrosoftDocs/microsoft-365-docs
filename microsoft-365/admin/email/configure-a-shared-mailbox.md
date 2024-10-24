---
title: "Configure shared mailbox settings"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 09/30/2024
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
description: "Create a shared mailbox and configure some settings for its users, such as email forwarding and automatic replies."
---

# Configure Microsoft 365 shared mailbox settings

After you have [created a shared mailbox](create-a-shared-mailbox.md), you'll want to configure some settings for the mailbox users, such as email forwarding and automatic replies. Later, you might want to change other settings, such as the mailbox name, members, or member permissions.

## Change the name of a shared mailbox

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, and then select **Edit** under **Basic information**.

3. Enter a new name for the shared mailbox.

4. Select **Save**.

## Change the email address of a shared mailbox

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, and then select **Edit** under **Email addresses**.

3. Enter a new email address for the shared mailbox. If you want to change the primary email address, your mailbox must have more than one email alias.

## Forward emails that are sent to a shared mailbox

> [!IMPORTANT]
> Email forwarding to recipients outside the organization doesn't prevent messages identified as spam, phishing, or malware from being forwarded. The recipient needs their own email security filter to identify and block these messages.

You do not need to assign a license to the shared mailbox in order to forward email that's sent to it. You can forward the messages to any valid email address or distribution list.

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Edit** under **Email forwarding**.

3. Select the checkbox to **Forward all emails sent to this mailbox**. Enter one email address to forward the messages to. It can be any valid email address. To forward to multiple addresses, you need to [create a distribution group](/office365/admin/setup/create-distribution-lists) for the addresses, and then enter the name of the group in this box.

4. Select **Save**.

## Send automatic replies from a shared mailbox

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Edit** under **Automatic replies**.

3. Select the checkbox to **Send automatic replies to senders inside this organization**.

4. Enter the replies you want to send to people inside or outside your organization. You can't add images, only text.

5. Select **Save**.

## Allow everyone to see the Sent email (the replies)

By default, messages sent from the shared mailbox aren't saved to the Sent Items folder of the shared mailbox. Instead, they are saved to the Sent Items folder of the person who sent the message.

If you want to allow everyone to see the Sent email, in the admin center, edit the shared mailbox settings. Select **Edit** under **Sent items**. Select the options you want for sent items.

## Choose the apps that a shared mailbox can use to access Microsoft email

1. In the admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Edit** under **Email apps**.

3. Select the checkboxes for all of the apps you want members to be able to use to access the shared mailbox.

4. Select **Save**.

## Put a shared mailbox on litigation hold

To learn more about litigation hold, see [Create a Litigation Hold](../../compliance/ediscovery-create-a-litigation-hold.md).

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.

2. Select **Recipients** > **Mailboxes** and select the shared mailbox you want to manage.

3. On the **Others** tab, select **Edit** under **Litigation hold**.

4. Enter a duration, a note about the hold for the user if you want, and a URL with more information.  

5. Select **Save**.

## Add or remove members

1. In the Microsoft 365 admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Edit** under **Members**.

3. Do one of the following:
   - To add members, select **Add members**, search for or select a member to add, and then select **Save**.
   - To remove members, use the Search box to search for the member if necessary, deselect the member and choose **Remove member**.

## Add or remove permissions of members

1. In the Microsoft 365 admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then under Manage mailbox permissions, select one of the permissions.

3. Do one of the following:
   - To give that permission to an additional member, select **Add permissions**, search for or select a member to add, and then select **Add**.
   - To remove the permission from a member, select the user, and then select **Remove permissions**.

## Show or hide a shared mailbox in the global address list

If you choose not to show the shared mailbox in the global address list, the mailbox won't appear in your organization's address list, but it will still receive email sent to it.

1. In the Microsoft 365 admin center, go to **Teams & groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a>.

2. Select the shared mailbox you want to edit, then select **Edit** under **Show in global address list**.

3. Select the option you want next to Show in my organization's global address list. Select **Save**.

> [!NOTE]
> Hiding a shared mailbox from address list will make it impossible for new shared mailbox members to add the hidden mailbox to their Outlook profile until the shared mailbox is again shown in the address list.

## Related content

[About shared mailboxes](about-shared-mailboxes.md) (article)\
[Create a shared mailbox](create-a-shared-mailbox.md) (article)\
[Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md) (article)\
