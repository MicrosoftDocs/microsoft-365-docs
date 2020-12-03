---
title: View and release quarantined messages from shared mailboxes
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer:
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
ROBOTS: NOINDEX
description: "Users can learn how to view and act on quarantined messages that were sent to shared mailboxes that they have permissions to."
---

# View and release quarantined messages from shared mailboxes

> [!NOTE]
> The features that are described in this article are currently in Preview, aren't available to everyone, and are subject to change.

Users can manage quarantined messages where they are one of the recipients as described in [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md). But what about shared mailboxes where the user has Full Access and Send As or Send on Behalf permissions to the mailbox as described in [Shared mailboxes in Exchange Online](https://docs.microsoft.com/exchange/collaboration-exo/shared-mailboxes)?

Previously, users to managing messages sent to shared mailboxes required admins to leave automapping enabled for the shared mailbox (it's enabled by default when an admin gives a user access to another mailbox). However, depending on the size and number of mailboxes that the user has access to, performance can suffer as Outlooks tries to open *all* mailboxes that the user has access to. For this reason, many admins like to [remove automapping for shared mailboxes](https://docs.microsoft.com/outlook/troubleshoot/profiles-and-accounts/remove-automapping-for-shared-mailbox).

Now, automapping is no longer required for users to manage quarantined messages that were sent to shared mailboxes. It just works. Users have two different methods that they can use to access quarantined messages that were sent to the shared mailbox:

- If the admin has [enabled end user spam notifications](https://docs.microsoft.com/microsoft-365/security/office-365-security/configure-your-spam-filter-policies) in anti-spam policies, any user that has access to the end-user spam notifications in the shared mailbox can click on the **Review** button in the notification to go to quarantine in the Security & Compliance Center. Note that this method only allows the user to manage quarantined messages that were sent to the shared mailbox. The user can't manage their own quarantine messages in this context.

- The user can [go to the quarantine in the Security & Compliance Center](find-and-release-quarantined-messages-as-a-user.md). By default, only messages that were sent to the user are shown. However, the user can change **Sort results** (the **Message ID button** by default) to **Recipient email address**, enter the shared mailbox email address, and then click **Refresh** to see the quarantined messages that were sent to the shared mailbox.

  ![Sorting quarantined messages by recipient email address.](../../media/quarantine-sort-results-by-recipient-email-address.png)

Regardless of the method, users can avoid confusion by including the **Recipient** column for quarantined messages. The maximum number of columns to display is 7, so the user will need to click **Modify columns**, remove an existing column (for example, **Policy type**), select **Recipient**, and then click **Save** or **Save as default**.

  ![Remove the Policy type column and add the Recipient column to quarantine.](../../media/quarantine-add-recipient-column.png)

## Things to keep in mind

- The first user to act on the quarantined message basically decides the fate of the message for everyone who uses the shared mailbox. For example, if a shared mailbox is accessed by ten users, and one user decides to delete the quarantine message, then the message is deleted for all ten users. Likewise, if a user decides to release the message, it's released to all users of the shared mailbox.

- Currently, if a user is looking at quarantined messages that were sent to the shared mailbox, and they select multiple messages, they will receive an misleading error when they click **Release messages** or **Delete messages** in the **Bulk actions** flyout. The action is taken on the messages, and the error can be ignored.

    ![False error when bulk releasing or deleting quarantined messages sent to a shared mailbox.](../../media/quarantine-bulk-action-error.png)

- Currently, the **Block sender** button is not available in the **Details** flyout of quarantined messages that were sent to the shared mailbox.

- If a user manages quarantined messages for the shared mailbox in [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell), they need to use the [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/get-quarantinemessage) cmdlet with the _RecipientAddress_ parameter and the shared mailbox email address value to identify and act on quarantined messages that were sent to the shared mailbox. For example:

  ```powershell
  Get-QuarantinedMessage -RecipientAddress officeparty@contoso.com
  ```

  Then, the user can pick a quarantined message from the list and act on it (the first message in the list is 0, the second is 1, and so on).

  This example shows all of the quarantined messages that were sent to the shared mailbox, and then releases the first message in the list from quarantine.

  ```powershell
  $SharedMessages = Get-QuarantinedMessage -RecipientAddress officeparty@contoso.com | select -ExpandProperty Identity
  $SharedMessages
  Release-QuarantinedMessage -Identity $SharedMessages[0]
  ```

  For detailed syntax and parameter information, see the following topics:

  - [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/get-quarantinemessage)
  - [Get-QuarantineMessageHeader](https://docs.microsoft.com/powershell/module/exchange/get-quarantinemessageheader)
  - [Preview-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/preview-quarantinemessage)
  - [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/release-quarantinemessage)
