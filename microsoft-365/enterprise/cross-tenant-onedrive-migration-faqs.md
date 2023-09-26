---
title: OneDrive Cross-tenant OneDrive migration FAQs
ms.author: jhendr
author: JoanneHendrickson
manager: serdars
ms.date: 11/14/2022
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

## Pre-migration FAQs

**Question**: Can a OneDrive account have any content in the **target tenant** before migration?</br>
**Answer:** No. The tool doesn't support Merge functionality with existing content. The user being migrated must not have a pre-existing OneDrive on the target tenant.

**Question**: Can users be pre-created on the target tenant?</br>
**Answer:** Yes, all Users/Groups that are identified for migration should be pre-created on the target tenant and appropriate licenses assigned prior to staring any migrations. Also:

- OneDrive site creation should be restricted in the target tenant to prevent users creating OneDrive sites.
- If a OneDrive site already exists for the user on the target tenant the migration fails.
- You can't overwrite an existing site.
- OneDrive sites should NOT be created Prior OR during a migration.

**Question**: Can my OneDrive accounts be in Read-only mode prior to starting any cross-tenant migrations?</br>
**Answer:** No. Before starting any migration, you need to ensure that your Source OneDrive accounts are NOT set to Read-Only, otherwise the migration will fail. 

**Question**: Can anyone access the OneDrive while the migration process is running?</br>
**Answer:** During the migration, the user’s OneDrive is set to Read-only in Source.

**Question**: Can my OneDrive accounts be in **Read-only** mode prior to starting any cross-tenant migrations?</br>
**Answer:** No, before starting any migrations, ensure that your source OneDrive accounts are NOT set to Read-only. Otherwise, the migration fails. 

**Question**: Can anyone access their OneDrive account while the migration process is running?</br>
**Answer:** No. During the migration, the user’s OneDrive is set to Read-Only in source.

**Question**: Does the tool support GCC and GCC-High tenants?</br>
**Answer:** We do NOT currently support government environments (GCC & GCC-High) but we plan to support them in the future.

**Question:** What is the current size limit for each OneDrive migration?</br>
**Answer:**  Each individual OneDrive site/account being migrated must have no more than 2 TB of storage, or 1 million items. The 1 million item limit can be any "item", including files (including versions), folders, and list line entries if it is a list or library.  **IMPORTANT:** If you attempt to migrate any OneDrive site that exceeds the 2GB quota, the transfer fails.

**Question:** How long does the migration take?</br>
Like most migrations it's difficult to assign an exact length of time for how long a migration might take. So many factors play into this, such as number of users/sites, number of files/folders, when you're running your migrations, etc. However, you'll find our process is substantially faster than existing third party migration tools. Bulk migrations complete faster than using standard migration tools.

**Question:** Are OneDrive accounts with Legal hold supported for migrations?</br>
OneDrive accounts currently under a Hold policy will be blocked from migration. To migrate these OneDrive accounts, remove the hold policy, migrate, then reapply the hold as needed on the target tenant.

**Question:** Are OneDrive accounts with Customer Key Encryption supported for migration?</br>
**Answer:**  No. We do NOT support migration if the source tenant has Service encryption with Microsoft Purview Customer Key enabled.

**Question:**  What do I need to consider for migrating users/sites between Multi-Geo tenants? </br>
**Answer:**  If you're a OneDrive Multi-Geo or MNC customer, you must treat each geography as a separate tenant and supply the correct geography-specific URLs throughout the process. You must also establish trust between each geography involved in your migration project.


## Post-migration FAQs

**Question:** What should users do once their account is migrated to the new Target tenant?</br>
**Answer:** Once the migration is complete, the user is directed to OneDrive on their new tenant (either via Microsoft 365 app launcher or web browser). Users should sign in to OneDrive using their new credentials.

**Question:** What happens to permissions on OneDrive content?</br>
**Answer:** Users with permissions to OneDrive content will continue to have access to their content upon completion on the new target tenant. if those users/groups were included as part of the Identity Map and mapped accordingly. 

**Question:** What do I need to do to sync my content via OneDrive Sync Client? </br>
**Answer:**  After the migration is complete, the user needs to sign in to their OneDrive Sync client using their new identity and to the new OneDrive location. Once this is done, files and folders begin resyncing to the device. 

**Question:** What happens to sharing links? </br>
**Answer:** After completing a user’s OneDrive cross-tenant migration, existing shared links for files that were migrated will automatically redirect to the new target location.

**Question:** How are shared files handled?</br>
**Answer:**  When a OneDrive account is migrated, we place a redirect at the old location; anyone clicking on a sharing link to the old location will be redirected to the new one, provided they still have access on the destination. Those redirects remain until the original/source tenant is deprovisioned or can be removed by the admin site-by-site.

**Question:** Will external Shared Files still work?</br>
**Answer:**  As part of the migration process, Admins must pre-create the appropriate users on the destination tenant, including guest/external users,  and provide the tool with an "Identity Map". The identify map tells us how to adjust file/site ownership and permissions.

**Question:** Will the shared file map to new internal users?</br>
**Answer:** See the question above. The identity map informs how files are shared. The previous answer highlights how to apply this.

**Question:** If a file is shared in a Teams chat, will those files still be accessible after migration?</br>
**Answer:**  See the question above. The identity map informs how files are shared. If a user selects the link, it attempts to redirect to the new location. The file is accessible as long as the user has permissions to access the file on the destination. 
