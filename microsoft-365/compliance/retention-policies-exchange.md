---
title: "Learn about retention policies for Exchange"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Learn about retention policies that apply specifically to Exchange email and Exchange public folders."
---

# Learn about retention policies for Exchange

The information in this article supplements [Learn about retention policies](retention-policies.md) because it has information that's specific to Exchange.

## How a retention policy works with Exchange locations

For a user's mail, calendar, and other items, a retention policy is applied at the level of a mailbox.

For a public folder, a retention policy is applied at the folder level, not the mailbox level. 

Both a mailbox and a public folder use the Recoverable Items folder to retain items. Only people who have been assigned eDiscovery permissions can view items in another user's Recoverable Items folder.
  
When a person deletes a message in a folder other than the Deleted Items folder, by default, the message moves to the Deleted Items folder. When a person deletes an item in the Deleted Items folder, the message is moved to the Recoverable Items folder. However, a user can soft-delete an item (SHIFT+DELETE) in any folder, which bypasses the Deleted Items folder and moves the item directly to the Recoverable Items folder.
  
When you apply a retention policy to an Exchange location, a process periodically evaluates items in the Recoverable Items folder. If an item doesn't match the rules of at least one retention policy, the item is permanently deleted (also called hard deleted) from the Recoverable Items folder.
  
When a user attempts to change properties of a mailbox item — such as the subject, body, attachments, senders and recipients, or date sent or received for a message — a copy of the original item is saved to the Recoverable Items folder before the change is committed. This action happens for each subsequent change. At the end of the retention period, copies in the Recoverable Items folder are permanently deleted.
  
If a user leaves your organization, and their mailbox is included in a retention policy, the mailbox becomes an inactive mailbox when the user's Office 365 account is deleted. The contents of an inactive mailbox are still subject to any retention policy that was placed on the mailbox before it was made inactive, and the contents are available to an eDiscovery search. For more information, see [Inactive mailboxes in Exchange Online](inactive-mailboxes-in-office-365.md).
  
After a retention policy is assigned to a mailbox or public folder, content can follow one of two paths when the retention policy is configured for retain and delete:

![Diagram of retention flow in email and public folders](../media/88f174cc-bbf4-4305-93d7-0515f496c8f9.png)

1. **If the item is modified or permanently deleted** by the user (either SHIFT+DELETE or deleted from Deleted Items) during the retention period: The item is moved (or copied, in the case of edit) to the Recoverable Items folder. There, a process runs periodically and identifies items whose retention period has expired, and these items are permanently deleted within 14 days of the end of the retention period. Note that 14 days is the default setting, but it can be configured up to 30 days.
    
2. **If the item is not modified or deleted** during the retention period: The same process runs periodically on all folders in the mailbox and identifies items whose retention period has expired, and these items are permanently deleted within 14 days of the end of the retention period. Note that 14 days is the default setting, but it can be configured up to 30 days. 


## Excluding specific types of Exchange items from a retention policy
By using PowerShell, you can exclude specific types of Exchange items from a retention policy. For example, you can exclude voicemail messages, IM conversations, and other Skype for Business Online content in mailboxes. You can also exclude calendar, note, and task items. This capability is available only by using PowerShell; it's not available when you create a retention policy by using the wizard in the Microsoft 365 compliance center.
  
To exclude your selected types for Exchange items in a retention policy, use the  `ExcludedItemClasses` parameter with the  `New-RetentionComplianceRule` and  `Set-RetentionComplianceRule` cmdlets.

## How to configure a retention policy for Exchange

See [How to create and edit retention policies](retention-policies.md#how-to-create-and-edit-retention-policies).

For the **Choose locations** page of the wizard, select one of the following options:

- **Apply policy only to content in Exchange email, public folders, Office 365 groups, OneDrive and SharePoint documents**

- **Let me choose specific locations** > **Exchange email** and **Exchange public folders**