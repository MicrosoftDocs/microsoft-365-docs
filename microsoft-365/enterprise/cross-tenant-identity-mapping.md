---
title: Cross-Tenant Identity Mapping (preview)
description: How to map identities across Microsoft 365 organizations when preparing for cross-tenant migrations. 
author: briandaymsft
ms.author: brianday
manager: rolowe
ms.topic: overview
ms.date: 07/18/2022
ms.service: office-365
ms.custom: template-overview
---

# Cross-Tenant Identity Mapping (preview)

Cross-Tenant Identity Mapping is a feature that can be used during migrations from one Microsoft 365 organization to another (commonly referred to as a cross-tenant migration). It provides a secure method of establishing one-to-one object relationships across organization boundaries and automatically prepares the target objects for a successful migration.

>[!NOTE]
>Cross-Tenant Identity Mapping is in a private preview stage of development. As an unfinished project any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant Identity Mapping is covered by the **preview terms** of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

## Benefits of using Cross-Tenant Identity Mapping

Cross-Tenant Identity Mapping removes the need to export large data sets from a source organization for the sole purpose of configuring Mail Enabled User objects in the target organization.

With Cross-Tenant Identity Mapping, data remains within the Microsoft security boundary and is securely copied directly from the source organization to the target organization using specially configured **Organization Relationships** serving as a unidirectional trust.

Using Cross-Tenant Identity Mapping will reduce the potential for mistakes when configuring what could potentially be thousands of target objects for a migration by automatically configuring values such as _ExchangeGuid_, _ArchiveGuid_, and all necessary _X500 proxy addresses_.

Some additional benefits of using Cross-Tenant Identity Mapping:

- Reduces the number of manual processes where a mistake may result in failed migrations
- Automates identification of objects within scope to migrate from the source organization to the target organization
- Establishes a 1:1 map of a Mailbox User object in the source organization to a pre-existing Mail Enabled User object in the target organization
- Automates population of required attributes from the source organization Mailbox User to the target organization Mail Enabled User
- Provides a list of objects prepared and ready for [cross-tenant mailbox migration](cross-tenant-mailbox-migration.md) based on the source organization users' primarySMTPAddress value

## FAQ about Cross-Tenant Identity Mapping

We would like to provide information commonly asked so you may evaluate if you would like to participate in the private preview.

- The feature is only intended to be used with [Cross-tenant mailbox migration (preview)](cross-tenant-mailbox-migration.md), and not with any third-party non-Microsoft migration solutions.
- Data processing (storage, compute, transfer, etc.) is currently within the United States of America, and within the Exchange Online home region of the organizations participating in the migration.
  - For Multi-Geo enabled organizations, the organization's home geo for Exchange Online will be used.
- This feature can currently only be enabled in the worldwide Microsoft 365 offering. It doesn't work in GCC, GCC High, DoD, Office 365 by 21 Vianet, etc.
- Some familiarity with PowerShell is currently required as the feature is PowerShell-based
- The feature communicates over an encrypted connection to a REST endpoint.
- The feature currently requires the Global Administrator role for initial setup. This behavior may change in a future update.
- Organizational Relationships are used as a dual handshake approach to ensure both organizations have authorized this transaction type to take place.
- It works with cloud-only or hybrid organizations.
- Target organizations in a hybrid configuration will require an on-premises Exchange server to modify any Mail Enabled User objects synchronized from the on-premises directory. We haven't tested support for the new Exchange Management Tool feature released in Exchange Server 2019 CU12.

## What does participating in the private preview entail?

We're looking for customers willing to both try Cross-Tenant Identity Mapping and to provide feedback based on their experience. Did it make the migration easier for you compared to earlier migrations you've performed? Are there features you feel are missing? All constructive feedback is welcomed.

## How to participate

If you would like to participate or you have more questions, please email [CTIMPreview@service.microsoft.com](mailto:CTIMPreview@service.microsoft.com) and provide some basic information about the migration you would like to use Cross-Tenant Identity Mapping with.

## Next steps

We recommend reviewing the current Cross-Tenant Mailbox Migration steps related to preparing target user objects for migration as this preparation is what Cross-Tenant Identity Mapping will automate.

- [Review Cross-Tenant Mailbox Migration (preview)](cross-tenant-mailbox-migration.md#prepare-target-user-objects-for-migration)
