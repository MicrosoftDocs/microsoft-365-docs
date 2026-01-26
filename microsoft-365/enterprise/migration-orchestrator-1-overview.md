---
title: Migration orchestrator overview
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.date: 12/11/2025
recommendations: true
audience: ITPro
ms.topic: upgrade-and-migration-article
ms.service: microsoft-365-migration
ms.localizationpriority: medium
ms.collection: 
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Learn about orchestrator for Microsoft 365, a tool that allows you to migrate personal user data from one tenant to another. This migration includes Exchange mailboxes and Teams data for individual users."
---

# An overview of tenant-to-tenant migration with orchestrator in Microsoft 365

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

## What is tenant-to-tenant migration with orchestrator?

Tenant-to-tenant migration using orchestrator in Microsoft 365 enables organizations to move user data and workloads between separate Microsoft 365 tenants. This functionality supports scenarios such as mergers, acquisitions, divestitures, and internal reorganizations.

This article provides a high-level overview of the migration process, including architecture models, licensing requirements, key security and compliance considerations, and supported workloads.

To provide feedback or make requests to the product team, use [this form](https://forms.office.com/r/0QU3YbYhDn).

## Migration Architecture Models

Organizations can choose from several migration models depending on their business needs:

- **Single-Event Migration**

  - All users and workloads are migrated in a single cutover event.
  - Best suited for small to medium businesses or simple organizational changes.
- **Phased Migration**

  - Users are migrated in batches over time.
  - Ideal for large enterprises or complex environments.
- **Tenant Move/Split**

  - A subset of users is moved to a new tenant while others remain.
  - Common in divestiture scenarios.
    
All migration models require planning, communication, and time to allow the data to move.

## Licensing and availability

Cross-Tenant migrations require a per-user license (one-time fee) and can be assigned on either the source or target user object. This license enables the migration of Exchange Online mailboxes and OneDrives included in the Orchestrated migration. During preview for Teams meetings and Teams chats, no other licenses are required for these specific workload migrations. Cross Tenant User Data Migration is available as an add-on to the following Microsoft 365 subscription plans:

- Microsoft 365 Business Basic, Standard, and Premium
- Microsoft 365 F1/F3/E3/E5/
- Office 365 F3/E1/E3/E5
- Exchange Online
- SharePoint in Microsoft 365
- OneDrive
- EDU

This product is available for EA, CSP, Web direct, small business, and EDU customers. The pricing at GA isn't available yet.

## Security and compliance considerations

Organizations subject to regulatory compliance (for example, GDPR, HIPAA) should consult legal and compliance teams before initiating migration.

## Supported scenarios

> [!IMPORTANT]
> This migration moves **content**, not **identities**. Customers are responsible for correctly creating and configuring users, and the product moves the in-scope content from its source tenant location to its target tenant location. We designed this product with the end-user in mind. This migration is intended to minimize disruption to the end-user.

This new product simplifies both an admin's role in migrating content cross-tenant and a user's experience when they migrate. If you intend to run the migration of multiple workloads (such as Exchange, chats, meetings, and OneDrive), we strongly suggest including all workloads for each user in the batch. Migrating Teams chats and Teams meetings without the mailbox (or at the same time as the mailbox migration with another tool) might result in unexpected user experiences we didn't identify in our testing. The orchestrator was designed to intelligently migrate the workloads in an order that accounts for all dependencies and minimizes risk for migrations to fail.

While customers can run migrations for the workloads they want, the Teams Meeting migration does depend on a successful mailbox migration. **Teams Meeting migration fails without a successful mailbox migration**.

> [!NOTE]
> If you intend to migrate OneDrive sites, there's a limit to how many OneDrive accounts can be scheduled to migrate at a time. This limit is shared between the OneDrive and SharePoint migrations. [Learn more](cross-tenant-onedrive-migration.md) about this limit.

> [!IMPORTANT]
> Identity Mapping is required, which means the specific user configuration supported by Identity Mapping is required. [Learn more](cross-tenant-identity-mapping.md) about Identity mapping.

If you have a specific scenario that requires you to migrate workloads individually, reach out to via our [support form](https://forms.office.com/r/0QU3YbYhDn) to discuss options and potential risks.

### Exchange mailbox scope

Mailboxes on any type of hold aren't migrated, and a move for those mailboxes is blocked. Talk to our engineering team before attempting to move any users with holds applied.

Only user-visible content in the mailbox (email, contacts, calendar, tasks, and notes) migrates to the target tenant. The source mailbox is deleted after a successful migration. This deletion means that, after migration, under no circumstances is the source mailbox available, discoverable, or accessible in the source tenant. The calendar isn't available on the source tenant after migration.

After the moves are complete, the source user mailbox is converted to a MailUser, and the targetAddress (shown as ExternalEmailAddress in Exchange) is stamped with the routing address to the destination tenant. This process leaves the legacy MailUser in the source tenant and allows for coexistence and mail routing. When business processes allow, the source tenant can remove the source MailUser or convert them to a mail contact.

All limitations listed on the public documentation for [mailbox migration](cross-tenant-mailbox-migration.md) apply.

### OneDrive scope

The OneDrive content moves from the source to the target, leaving behind a redirect link on the source. Incremental and delta migration passes can't be performed. All limitations listed in the [public documentation for OneDrive migration](cross-tenant-onedrive-migration.md) apply.

### Teams chat and meeting scope

Chats and meetings are migrated from the source to the target. The original content on the source remains, though it might be in an edited form. This configuration means that the user participant list might change, with source users removed and target users added. There might be duplicate threads created on both tenants. Once the migration completes, users should only use their target identity to use Teams. If there's out-of-scope content, they can reference the source Teams client if they still have a licensed source user.

### Not in-scope

The Cross-Tenant User Data Migration solution doesn't migrate shared data, such as Teams and Channels or SharePoint Sites. This data remains in the source tenant.

For workload-specific items that are out-of-scope, refer to the [known issues](migration-orchestrator-8-faq.md) list.

## Next steps

See [Planning and prerequisites](migration-orchestrator-2-planning-prerequisites.md) for information on the prerequisites for migrating with orchestrator and other planning guidance.

For information about the end-user experience during and after migration, see [End-user experience for cross-tenant migration](migration-orchestrator-7-end-user-exp.md).
