---
title: View and release quarantined messages from shared mailboxes
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer: 
ms.date: 
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 
ms.collection: 
  - m365-security
description: Users can learn how to view and act on quarantined messages that were sent to shared mailboxes that they have permissions to.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# View and release quarantined messages from shared mailboxes

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to:**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Users can manage quarantined messages where they are one of the recipients as described in [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md). But what about **shared mailboxes** where the user has Full Access and Send As or Send on Behalf permissions to the mailbox as described in [Shared mailboxes in Exchange Online](/exchange/collaboration-exo/shared-mailboxes)?

Previously, the ability for users to manage quarantined messages sent to a shared mailbox required admins to leave automapping enabled for the shared mailbox (it's enabled by default when an admin gives a user access to another mailbox). However, depending on the size and number of mailboxes that the user has access to, performance can suffer as Outlooks tries to open _all_ mailboxes that the user has access to. For this reason, many admins choose to [remove automapping for shared mailboxes](/outlook/troubleshoot/profiles-and-accounts/remove-automapping-for-shared-mailbox).

Now, automapping is no longer required for users to manage quarantined messages that were sent to shared mailboxes. It just works. There are two different methods to access quarantined messages that were sent to a shared mailbox:

- If the following statements are all true:
  - An admin has configured [quarantine policies](quarantine-policies.md) to allow quarantine notifications (formerly known as end-user spam notifications).
  - The user has access to quarantine notifications of the shared mailbox.
  - The user has Full Access permissions to the shared mailbox (directly or via a security group).

  The user can click the **Review** button in the notification to go to quarantine in the Microsoft 365 Defender portal. This method only allows access to quarantined messages that were sent to the shared mailbox. Users can't manage their own quarantine messages in this context.

- The user can [go to quarantine in the Microsoft 365 Defender portal](find-and-release-quarantined-messages-as-a-user.md) and click **Filter** to filter the results by **Recipient address** (the email address of the shared mailbox). On the main **Quarantine** page, you can click on the **Recipient** column to sort by messages that were sent to the shared mailbox.

## Things to keep in mind

- _Quarantine policies_ define what users are allowed to do or not do to quarantined messages based on why the message was quarantined (for supported features). Default quarantine policies enforce the historical capabilities that allow recipients to view and act on messages. Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users. For more information, see [Quarantine policies](quarantine-policies.md).

- The first user to act on the quarantined message decides the fate of the message for everyone who uses the shared mailbox. For example, if a shared mailbox is accessed by 10 users, and a user decides to delete the quarantine message, the message is deleted for all 10 users. Likewise, if a user decides to release the message, it's released to the shared mailbox and is accessible by all other users of the shared mailbox.

- Currently, the **Block sender** button is not available in the **Details** flyout for quarantined messages that were sent to the shared mailbox.

- Regarding quarantine operations for shared mailboxes, if you use nested security groups to grant access to a shared mailbox, we recommend no more than two levels of nested groups. For example, Group A is a member of Group B, which is a member of Group C. To assign permissions to a shared mailbox, don't add the user to Group A and then assign Group C to the shared mailbox.

- As of July 2022, users with primary SMTP addresses that are different from their user principal names (UPNs) should be able to access quarantined messages for the shared mailbox.

- To manage quarantined messages for the shared mailbox in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), the end-user will need to use the [Get-QuarantineMessage](/powershell/module/exchange/get-quarantinemessage) cmdlet with shared mailbox email address for the value of the _RecipientAddress_ parameter to identify the messages. For example:

  ```powershell
  Get-QuarantineMessage -RecipientAddress officeparty@contoso.com
  ```

  Then, the end-user can select a quarantined message from the list to view or take action on.

  This example shows all of the quarantined messages that were sent to the shared mailbox, and then releases the first message in the list from quarantine (the first message in the list is 0, the second is 1, and so on).

  ```powershell
  $SharedMessages = Get-QuarantineMessage -RecipientAddress officeparty@contoso.com | select -ExpandProperty Identity
  $SharedMessages
  Release-QuarantineMessage -Identity $SharedMessages[0]
  ```

  For detailed syntax and parameter information, see the following topics:

  - [Get-QuarantineMessage](/powershell/module/exchange/get-quarantinemessage)
  - [Get-QuarantineMessageHeader](/powershell/module/exchange/get-quarantinemessageheader)
  - [Preview-QuarantineMessage](/powershell/module/exchange/preview-quarantinemessage)
  - [Release-QuarantineMessage](/powershell/module/exchange/release-quarantinemessage)
