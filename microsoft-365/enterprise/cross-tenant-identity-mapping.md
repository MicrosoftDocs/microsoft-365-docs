---
title: Cross-Tenant Identity Mapping (Preview)
description: How to map identities across Microsoft 365 organizations when preparing for cross-tenant migrations. 
author: briandaymsft
ms.author: brianday
ms.topic: overview #Required; leave this attribute/value as-is.
ms.date: 05/22/2022
ms.custom: template-overview #Required; leave this attribute/value as-is.
---

# What is Cross-Tenant Identity Mapping

Cross-Tenant Identity Mapping may be used during migrations from one Microsoft 365 organization to another. It provides a secure method of establishing object relationships across organization boundaries, then preparing the target organization objects for a successful migration. Cross-Tenant Identity Mapping securely copies attributes like ExchangeGuid, ArchiveGuid, and all necessary X500 proxy addresses on a Mail Enabled User object in the target organization.

## Benefits of using Cross-Tenant Identity Mapping

Some of the benefits of using Cross-Tenant Identity Mapping are.

- Reducing the number of manual processes where a mistake may result in failed migrations.
- Automated identification of objects within scope to migrate from the source organization to the target organization.
- Establishing a 1:1 map of a Mailbox User object in the source organization to a pre-existing Mail Enabled User object in the target organization.
- Automated population of required attributes from the source organization Mailbox User to the target organization Mail Enabled User.
- Providing a list of objects prepared and ready for Cross-Tenant Mailbox Migration based on the source organization users’ primarySMTPAddress value.

## Facts about Cross-Tenant Identity Mapping

Cross-Tenant Identity Mapping is in a private preview stage of development. As an unfinished project information is subject to change and support will be is handled via email. We would like to provide information commonly asked so you may evaluate if you would like to participate in the private preview.

- Data processing (storage, compute, transfer, etc.) is currently within the United States of America, and within the Exchange Online home region of the involved organizations.
  - For Multi-Geo enabled organizations, the organization's home geo for Exchange Online will be used.
- It currently works with the normal worldwide Microsoft 365 offering. It doesn't work in GCC, GCC High, DoD, Office 365 by 21 Vianet, etc.
- Familiarity with PowerShell is currently required as the feature relies on various PowerShell modules
- The feature communicates over an encrypted connection to a REST endpoint.
- The feature currently requires the Global Administrator role for initial setup. This behavior may change in a future update.
- Organizational Relationships are used as a dual handshake approach to ensure both organizations have authorized this transaction type to take place.
- It works with cloud-only or hybrid organizations.
- It requires an on-premises Exchange server when the Mail Enabled User objects in the target organization are synchronized from on-premises. We haven't yet tested support for the new Exchange Management Tool feature released in Exchange Server 2019 CU12.
- You can have multiple projects going on at once to support numerous ongoing migration efforts. For example, a single source organization may have multiple target organizations while a single target organization may have multiple source organizations.

## What does participating in the private preview entail?

We're looking for customers willing to both try Cross-Tenant Identity Mapping and to provide feedback based on their experience. Did it make the migration easier for you compared to earlier migrations you've performed? Are there features you feel are missing? All constructive feedback is welcomed!

## How to participate

If you would like to participate or you have more questions, then email CTIMPreview@service.microsoft.com. It would be helpful if you provide information about the migration you would like to use Cross-Tenant Identity Mapping on.

## Next steps

We recommend reviewing the current Cross-Tenant Mailbox Migration steps related to preparing target user objects for migration as this preparation is what Cross-Tenant Identity Mapping will automate.

- [Review Cross-Tenant Mailbox Migration Preview Instructions](cross-tenant-mailbox-migration.md#prepare-target-user-objects-for-migration)
