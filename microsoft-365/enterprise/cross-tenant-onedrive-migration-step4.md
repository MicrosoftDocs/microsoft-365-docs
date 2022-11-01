---
title: OneDrive Cross-Tenant User Data Migration Step 4
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
description: "Step 4 of the OneDrive Cross-tenant migration feature"
---

# Step 4: Pre-creating users and groups

To ensure that OneDrive permissions are retained as part of the migration, a mapping file needs to be created to align users from the source tenant to the target tenant.

## Identify users and groups to be migrated

1. Identify the full list of OneDrive sites that will be migrated from the source to the target tenant.
2. Prepare a complete list of users and groups that will be migrated to the target tenant.

## Pre-create users and groups on the target tenant

1. Pre-create users and groups as needed in the target tenant’s directory.
2. All users whose OneDrive accounts are migrating to the target tenant must have new user identities created for them in the target tenant.
3. All users whose OneDrive accounts are migrating to the target tenant must be assigned the appropriate OneDrive license.
4. Any users who remain in the source tenant but need access to resources migrating to the target tenant should have new guest identities created for them in the target tenant.
5. Pre-created users must be added as members of any appropriate security groups or unified groups before the OneDrive migration begins. 
6. If the user or group name already exists in the target tenant, create a user or group with a different name and make a note of it for the next step.
7. We recommend that OneDrive site creations are restricted in the target tenant to prevent users from creating OneDrive sites.

>[!Note]
>To learn more on restricting OneDrive site creation, see [Disable OneDrive creation for some users](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users)

## Step 5: [Prepare the identity mapping file](cross-tenant-onedrive-migration-step5.md)