---
title: "About shared mailboxes"
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
- okr_smb
- AdminTemplateSet
description: "Shared mailboxes are used when multiple people need access to the same mailbox. Learn what you need to know before creating a shared mailbox."
---

# About shared mailboxes

Shared mailboxes are used when multiple people need access to the same mailbox, such as a company information or support email address, reception desk, or other function that might be shared by multiple people.

Users with permissions to the group mailbox can send as or send on behalf of the mailbox email address if the administrator has given that user permissions to do that. This is particularly useful for help and support mailboxes because users can send emails from "Contoso Support" or "Building A Reception Desk."

Before you [create a shared mailbox](create-a-shared-mailbox.md), here are some things you should know:

- **Licenses:** Your shared mailbox can store up to 50GB of data without you assigning a license to it. After that, you need to assign a license to the mailbox to store more data. For more details on shared mailbox licensing, please see [Exchange Online Limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#StorageLimits). When a shared mailbox reaches the storage limit, you'll be able to receive email for a while, but you won't be able to send new email. Then, after that, it will stop receiving email. Senders to the mailbox will get a non-delivery receipt.

> [!NOTE]
>
> The following scenarios require an Exchange Online Plan 2 license:
>
> - The shared mailbox has more than 50 GB of storage in use.
> - The shared mailbox uses in-place archiving.
> - The shared mailbox is placed on litigation hold.
>
> For step-by-step instructions on how to assign licenses, see [Assign licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

- **User permissions:** You need to give users permissions (membership) to use the shared mailbox. Only people inside your organization can use a shared mailbox.

- **External users:** You can't give people outside your business (such as people with a Gmail account) access to your shared mailbox. If you want to do this, consider creating a group for Outlook instead. To learn more, see [Create a Microsoft 365 group in the admin center](../create-groups/create-groups.md).

- **Use with Outlook for Android and iOS App:** In addition to using Outlook on the web from your browser to access shared mailboxes, you can also use the Outlook for iOS app or the Outlook for Android app. To learn more, see [Add a shared mailbox to Outlook mobile](https://support.microsoft.com/office/f866242c-81b2-472e-8776-6c49c5473c9f). Another option is to create a group for your shared mailbox. To learn more, see [Compare Groups](../create-groups/compare-groups.md).

- **Encryption:** You can't encrypt email sent from a shared mailbox. This is because a shared mailbox does not have its own security context (username/password) so it cannot be assigned a key. If more than one person is a member, and they send/receive emails they encrypted with their own keys, other members might be able to read the email and others might not, depending which public key the email was encrypted with.

- **Mailbox conversion:** You can convert user mailboxes to shared mailboxes. See [Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md).

- **Admin roles:** Users with Exchange admin roles can create shared mailboxes.

- **Subscription requirements:** To create a shared mailbox, you need to subscribe to a Microsoft 365 for business plan that includes email (the Exchange Online service). The Microsoft 365 Apps for business subscription doesn't include email. Microsoft 365 Business Standard does include email.

- **Signing in:** A shared mailbox is not intended for direct sign-in by its associated user account. You should always block sign-in for the shared mailbox account and keep it blocked.

- **Too many users:** When there are too many designated users concurrently accessing a shared mailbox (the max supported is 25), they may intermittently fail to connect to this mailbox or have inconsistencies like messages being duplicated in the outbox. In this case, reduce the number of users or use a different workload, like a Microsoft 365 group.

- **Message deletion:** Unfortunately, you can't prevent people from deleting messages in a shared mailbox. The only way around this is to [create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups) instead of a shared mailbox. A group in Outlook is like a shared mailbox. For a comparison of the two, see [Compare groups](../create-groups/compare-groups.md). To learn more about groups, see [Learn about Microsoft 365 groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2).

- **Multi-Geo** In a multi-geo environment, shared mailboxes need to be licensed the same way a user mailbox is licensed. Note that cross-geo mailbox auditing is not supported. For example, if a user is assigned permissions to access a shared mailbox in a different geo location, mailbox actions performed by that user are not logged in the mailbox audit log of the shared mailbox.

> [!NOTE]
> To access a shared mailbox, a user must have an Exchange Online license, but the shared mailbox doesn't require a separate license. Every shared mailbox has a corresponding user account. Notice how you weren't asked to provide a password when you created the shared mailbox? The account has a password, but it's system-generated (unknown). You shouldn't use the account to log in to the shared mailbox. Without a license, shared mailboxes are limited to 50 GB. To increase the size limit to 100 GB, the shared mailbox must be assigned an Exchange Online Plan 2 license. The Exchange Online Plan 1 license with an Exchange Online Archiving add-on license will only increase the size of the archive mailbox. This will also let you enable auto-expanding archiving for additional archive storage capacity. Similarly, if you want to place a shared mailbox on litigation hold, the shared mailbox must have an Exchange Online Plan 2 license or an Exchange Online Plan 1 license with an Exchange Online Archiving add-on license.
>
>If you want to apply advanced features such as Microsoft Defender for Office 365, eDiscovery (Premium), or retention policies, licenses may be required. For more information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

> [!NOTE]
> Prior to July 2018, all unlicensed shared mailboxes were provisioned with a size of 100 GB. For more information, see [Correcting Shared Mailbox provisioning and sizing](https://techcommunity.microsoft.com/t5/exchange-team-blog/correcting-shared-mailbox-provisioning-and-sizing/ba-p/607991).

## Troubleshooting shared mailbox issues

### Error when creating shared mailboxes

If you see the error message, **The proxy address "smtp:<shared mailbox name\>" is already being used by the proxy addresses or LegacyExchangeDN of "\<name>". Please choose another proxy address**, it means you're trying to give the shared mailbox a name that's already in use. For example, let's say you want shared mailboxes named info@domain1 and info@domain2. There are two ways to do this:

- Use Exchange Online PowerShell. See this blog post for instructions: [Create Shared Mailboxes with Same Alias at Different Domains](https://blog.quadrotech-it.com/blog/create-shared-mailboxes-with-same-alias-at-different-domains-in-office-365/)

- Name the second shared mailbox something different from the start to get around the error. Then in the admin center, rename the shared mailbox to what you want it to be.

### Error about not having send permissions when using a shared mailbox

If you created a shared mailbox and then try to send a message from it, you might get this:

**This message could not be sent. You do not have the permission to send the message on behalf of the specified user.**

This message appears when Microsoft 365 is experiencing a replication latency issue. It should go away in an hour or so, when the information about your new shared mailbox (or added user) is replicated across all of our data centers. Wait an hour and then try again to send a message.

## Related content

[Create a shared mailbox](create-a-shared-mailbox.md) (article)\
[Configure a shared mailbox](configure-a-shared-mailbox.md) (article)\
[Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md) (article)\

