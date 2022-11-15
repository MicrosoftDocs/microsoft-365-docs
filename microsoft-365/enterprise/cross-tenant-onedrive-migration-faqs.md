---
title: OneDrive Cross-tenant OneDrive migration FAQs
ms.author: jhendr
author: JoanneHendrickson
manager: serdars
recommendations: true
audience: ITPro
ms.topic: article
ms.service: sharepoint-online
ms.subservice: sharepoint-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "OneDrive Cross-tenant migration feature FAQs"
---

# Cross-tenant OneDrive migration FAQs

**Question**: Can a OneDrive account have any content in the target tenant before migration?</br>
Answer: No.  The tool does not support Merge functionality with existing content at present. The user being migrated must not have a pre-existing OneDrive on the target tenant.

**Question**: Can users be pre-created on the target tenant?</br>
Answer: Yes, all Users/Groups that are identified for migration should be pre-created on the target tenant and appropriate licenses assigned prior to staring any migrations. Also:

- OneDrive site creation should be restricted in the target tenant to prevent users creating OneDrive sites.
- If a OneDrive site already exists for the user on the target tenant the migration will fail.
- You cannot overwrite an existing site.
- OneDrive sites should NOT be created Prior OR during a migration.

**Question**: Can my OneDrive accounts be in Read-only mode prior to starting any cross-tenant migrations?</br>
Answer: No, Prior to starting any migrations, you need to ensure that your Source OneDrive accounts are NOT set to Read-Only, the migration will fail if they are. 

**Question**: Can anyone access the OneDrive while the migration process is running?</br>
Answer: During the migration, the user’s OneDrive is set to Read-only in Source.

**Question**: Can my OneDrive accounts be in **Read-only** mode prior to starting any cross-tenant migrations?</br>
Answer: No, before starting any migrations, ensure that your source OneDrive accounts are NOT set to Read-only. Otherwise, the migration will fail. 

**Question**: Can anyone access their OneDrive account while the migration process is running?</br>
Answer: No. During the migration, the user’s OneDrive is set to Read-Only in source.

**Question**: Does the tool support GCC and GCC-High tenants?</br>
Answer: We do NOT currently support government environments (GCC & GCC-High) but we plan to support them in the future.

