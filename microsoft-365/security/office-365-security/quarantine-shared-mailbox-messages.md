---
title: View and release quarantined messages from shared mailboxes
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer: 
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 
ms.collection: 
  - m365-security
  - tier1
description: Users can learn how to view and act on quarantined messages that were sent to shared mailboxes that they have permissions to.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 7/24/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# View and release quarantined messages from shared mailboxes

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Users can manage quarantined messages where they're one of the recipients as described in [Find and release quarantined messages as a user in EOP](quarantine-end-user.md). But what about **shared mailboxes** where the user has Full Access and Send As or Send on Behalf permissions to the mailbox as described in [Shared mailboxes in Exchange Online](/exchange/collaboration-exo/shared-mailboxes)?

Previously, the ability for users to manage quarantined messages sent to a shared mailbox required admins to leave automapping enabled for the shared mailbox (it's enabled by default when an admin gives a user access to another mailbox). However, depending on the size and number of mailboxes that the user has access to, performance can suffer as Outlooks tries to open _all_ mailboxes that the user has access to. For this reason, many admins choose to [remove automapping for shared mailboxes](/outlook/troubleshoot/profiles-and-accounts/remove-automapping-for-shared-mailbox).

Now, automapping is no longer required for users to manage quarantined messages that were sent to shared mailboxes. It just works. There are two different methods to access quarantined messages that were sent to a shared mailbox:

- If the following statements are all true:
  - An admin has configured [quarantine policies](quarantine-policies.md#anatomy-of-a-quarantine-policy) to allow quarantine notifications (formerly known as end-user spam notifications).
  - The user has access to quarantine notifications of the shared mailbox.
  - The user has Full Access permissions to the shared mailbox (directly or via a security group).

  The user can select **Review** in the notification to go to quarantine in the Microsoft 365 Defender portal. This method only allows access to quarantined messages that were sent to the shared mailbox. Users can't manage their own quarantine messages in this context.

- The user can [go to quarantine in the Microsoft 365 Defender portal](quarantine-end-user.md) and select **Filter** to filter the results by **Recipient address** (the email address of the shared mailbox). On the main **Quarantine** page, you can click on the **Recipient** column header to sort by messages that were sent to the shared mailbox.

## Things to keep in mind

- Quarantine isn't available in Microsoft 365 operated by 21Vianet.

- _Quarantine policies_ define what users are allowed to do or not do to quarantined messages based on why the message was quarantined for [supported features](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features). Default quarantine policies enforce the historical capabilities for the security feature that quarantined the message as described in the table [here](quarantine-end-user.md). Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users. For more information, see [Create quarantine policies](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

- The first user to act on the quarantined message decides the fate of the message for everyone who uses the shared mailbox. For example, if a shared mailbox is accessed by 10 users, and a user decides to delete the quarantine message, the message is deleted for all 10 users. Likewise, if a user decides to release the message, it's released to the shared mailbox and is accessible by all other users of the shared mailbox.

- Currently, the **Block sender** button isn't available in the **Details** flyout for quarantined messages that were sent to the shared mailbox.

- Regarding quarantine operations for shared mailboxes, if you use nested security groups to grant access to a shared mailbox, we recommend no more than two levels of nested groups. For example, Group A is a member of Group B, which is a member of Group C. To assign permissions to a shared mailbox, don't add the user to Group A, and then assign Group C to the shared mailbox.

- Access to quarantined items for shared mailboxes in on-premises environments is currently not supported (directly or by using security groups).

- As of July 2022, users with primary SMTP addresses that are different from their user principal names (UPNs) should be able to access quarantined messages for the shared mailbox.

- To manage quarantined messages for the shared mailbox in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), the user needs to use the [Get-QuarantineMessage](/powershell/module/exchange/get-quarantinemessage) cmdlet with shared mailbox email address for the value of the _RecipientAddress_ parameter to identify the messages. For example:

  ```powershell
  Get-QuarantineMessage -RecipientAddress officeparty@contoso.com
  ```

  Then, the user can select a quarantined message from the list to view or take action on.

  This example shows all of the quarantined messages that were sent to the shared mailbox, and then releases the first message in the list from quarantine (the first message in the list is 0, the second is 1, and so on).

  ```powershell
  $SharedMessages = Get-QuarantineMessage -RecipientAddress officeparty@contoso.com | select -ExpandProperty Identity
  $SharedMessages
  Release-QuarantineMessage -Identity $SharedMessages[0]
  ```

  For detailed syntax and parameter information, see the following articles:

  - [Get-QuarantineMessage](/powershell/module/exchange/get-quarantinemessage)
  - [Get-QuarantineMessageHeader](/powershell/module/exchange/get-quarantinemessageheader)
  - [Preview-QuarantineMessage](/powershell/module/exchange/preview-quarantinemessage)
  - [Release-QuarantineMessage](/powershell/module/exchange/release-quarantinemessage)
