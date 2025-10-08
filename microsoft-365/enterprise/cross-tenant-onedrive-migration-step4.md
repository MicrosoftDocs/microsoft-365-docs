---
title: OneDrive Cross-tenant OneDrive migration Step 4
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.date: 08/14/2025
recommendations: true
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Step 4 of the OneDrive Cross-tenant migration feature, involving group precreation."
---

# Step 4: Precreate users and groups

This article is Step 4 in a solution designed to complete a Cross-tenant OneDrive migration. To learn more, see [Cross-tenant OneDrive migration overview](cross-tenant-onedrive-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md) 
- Step 3: [Verify trust is established](cross-tenant-onedrive-migration-step3.md) 
- **Step 4: [Precreate users and groups](cross-tenant-onedrive-migration-step4.md)**  
- Step 5: [Prepare identity mapping](cross-tenant-onedrive-migration-step5.md)
- Step 6: [Start a Cross-tenant OneDrive migration](cross-tenant-onedrive-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-onedrive-migration-step7.md)

## Identify users and groups to be migrated

To ensure that OneDrive permissions are retained as part of the migration, a mapping file needs to be created to align users from the source tenant to the target tenant.

1. Identify the full list of OneDrive sites to be migrated from the source to the target tenant.
2. Prepare a complete list of users and groups to be migrated to the target tenant.

## Precreate users and groups on the target tenant

1. Precreate users and groups as needed in the target tenant’s directory.
2. All users whose OneDrive accounts are migrating to the target tenant must have new user identities created for them in the target tenant.
3. All users whose OneDrive accounts are migrating to the target tenant must be assigned the appropriate OneDrive license.
4. Any users who remain in the source tenant but need access to resources migrating to the target tenant should have new guest identities created for them in the target tenant.
5. Precreated users must be added as members of any appropriate security groups or unified groups before the OneDrive migration begins.
6. If the user or group name already exists in the target tenant, create a user or group with a different name and make a note of it for the next step.
7. We recommend that OneDrive site creations are restricted in the target tenant to prevent users from creating OneDrive sites.

## For tenants with Multi-Geo

When creating M365 group objects, we recommend you assign the group to the geo instance the site's to be migrated to at the time of creation. The "MailboxRegion" is used to set the residency of the group object. 

   ```powershell
   New-UnifiedGroup -DisplayName MultiGeoEUR -Alias "MultiGeoEUR" -AccessType Public -MailboxRegion EUR
   ```

>[!NOTE]
>If the group site is outside the default instance, the MailboxRegion (PDL) must be set.
>For more information, see [Create a Microsoft 365 Group with a specific preferred data location](/microsoft-365/enterprise/multi-geo-add-group-with-pdl).

>[!NOTE]
>To learn more on restricting OneDrive site creation, see [Disable OneDrive creation for some users](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users).

## Step 5: [Prepare the identity mapping file](cross-tenant-onedrive-migration-step5.md)
