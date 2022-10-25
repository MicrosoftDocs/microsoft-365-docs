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

# Step 4: Managing permissions and pre-creating users and groups

The next step before performing a cross-tenant OneDrive migration is to establish who will have permissions to files and folders on the target tenant after the migration completes.

## Identify users and groups to be migrated

1. Identify the full list of OneDrive users/sites that will be migrating from the source to the target tenant.
2. Based on that list of OneDrive users/sites, prepare a complete list of users and groups that need to continue to have permission to the users/sites being migrated. 

## Pre-create Users and Groups on the Target Tenant

1. Pre-create users and groups as needed in the target tenant’s directory.
2. All users whose OneDrive accounts are migrating to the target tenant must have new user identities created for them in the target tenant.
3. All users whose OneDrive accounts are migrating to the target tenant must be assigned the appropriate OneDrive license.
4. Make sure that these new users **do not** attempt to sign in to their new target OneDrive. 
5. Any users who remain in the source tenant but need access to resources migrating to the target tenant should have new guest identities created for them in the target tenant.
6. Pre-created users must be added as members of any appropriate security groups or unified groups before the OneDrive migrations begins. 
7. If the user or group name already exists in the target tenant, create a user or group with a different name and make a note of it for the next step.


## Step 5: [Prepare the identity mapping file](cross-tenant-onedrive-migration-step5.md)