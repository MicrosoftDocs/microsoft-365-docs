---
title: "About shared mailboxes"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
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
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
description: "Shared mailboxes are used when multiple people need access to the same mailbox. Learn what you need to know before creating a shared mailbox."
---

# About shared mailboxes

Shared mailboxes are used when multiple people need access to the same mailbox, such as a company information or support email address, reception desk, or other function that might be shared by multiple people.

Users with permissions to the group mailbox can send as or send on behalf of the mailbox email address if the administrator has given that user permissions to do that. This is particularly useful for help and support mailboxes because users can send emails from "Contoso Support" or "Building A Reception Desk."

## Before you begin

Before you [create a shared mailbox](create-a-shared-mailbox.md), here are some things you should know:

- **Licenses:** Your shared mailbox can store up to 50GB of data without you assigning a license to it. After that, you need to assign a license to the mailbox to store more data. For more details on shared mailbox licensing, please see [Exchange Online Limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#StorageLimits). When a shared mailbox reaches the storage limit, you'll be able to receive email for a while, but you won't be able to send new email. Then, after that, it will stop receiving email. Senders to the mailbox will get a non-delivery receipt.

- **User permissions:** You need to give users permissions (membership) to use the shared mailbox. Only people inside your organization can use a shared mailbox.

- **External users:** You can't give people outside your business (such as people with a Gmail account) access to your shared mailbox. If you want to do this, consider creating a group for Outlook instead. To learn more, see [Create a Microsoft 365 group in the admin center](../create-groups/create-groups.md).

- **Use with Outlook:** In addition to using Outlook on the web from your browser to access shared mailboxes, you can also use the Outlook for iOS app or the Outlook for Android app. To learn more, see [Add a shared mailbox to Outlook mobile](https://support.microsoft.com/office/f866242c-81b2-472e-8776-6c49c5473c9f). Another option is to create a group for your shared mailbox. To learn more, see [Compare Groups](../create-groups/compare-groups.md).

- **Encryption:** You can't encrypt email sent from a shared mailbox. This is because a shared mailbox does not have its own security context (username/password) so it cannot be assigned a key. If more than one person is a member, and they send/receive emails they encrypted with their own keys, other members might be able to read the email and others might not, depending which public key the email was encrypted with.

- **Mailbox conversion:** You can convert user mailboxes to shared mailboxes. See [Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md).

- **Admin roles:** Users with global admin or Exchange admin roles can create shared mailboxes.

- **Subscription requirements:** To create a shared mailbox, you need to subscribe to a Microsoft 365 for business plan that includes email (the Exchange Online service). The Microsoft 365 Apps for business subscription doesn't include email. Microsoft 365 Business Standard does include email.

- **Signing in:** A shared mailbox is not intended for direct sign-in by its associated user account. You should always block sign-in for the shared mailbox account and keep it blocked.

- **Too many users:** When there are too many designated users concurrently accessing a shared mailbox, they may intermittently fail to connect to this mailbox. In this case, you can consider reducing the number of the users or using a different workload, such a Microsoft 365 group or Public folder.

- **Message deletion:** Unfortunately, you can't prevent people from deleting messages in a shared mailbox. The only way around this is to create a Microsoft 365 group instead of a shared mailbox. A group in Outlook is like a shared mailbox. For a comparison of the two, see [Compare groups](../create-groups/compare-groups.md). To learn more about groups, see [Learn more about groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2).


> [!NOTE]
> To access a shared mailbox, a user must have an Exchange Online license, but the shared mailbox doesn't require a separate license. Every shared mailbox has a corresponding user account. Notice how you weren't asked to provide a password when you created the shared mailbox? The account has a password, but it's system-generated (unknown). You shouldn't use the account to log in to the shared mailbox. Without a license, shared mailboxes are limited to 50 GB. To increase the size limit to 100 GB, the shared mailbox must be assigned an Exchange Online Plan 2 license or an Exchange Online Plan 1 license with an Exchange Online Archiving add-on license. This will also let you enable auto-expanding archiving for an unlimited amount of archive storage capacity. Similarly, if you want to place a shared mailbox on litigation hold, the shared mailbox must have an Exchange Online Plan 2 license or an Exchange Online Plan 1 license with an Exchange Online Archiving add-on license. If you want to apply advanced features such as Microsoft Defender for Office 365, Advanced eDiscovery, or automatic retention policies, the shared mailbox must be licensed for those features.

## Related content

[Create a shared mailbox](create-a-shared-mailbox.md) (article)\
[Configure a shared mailbox](configure-a-shared-mailbox.md) (article)\
[Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md) (article)\
[Remove a license from a shared mailbox](remove-license-from-shared-mailbox.md) (article)\
[Resolve issues with shared mailboxes](resolve-issues-with-shared-mailboxes.md) (article)