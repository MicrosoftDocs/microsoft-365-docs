---
title: SharePoint Cross-tenant SharePoint migration FAQs
ms.author: heidip
author: MicrosoftHeidi
manager: jtremper
ms.date: 10/01/2025
recommendations: true
audience: ITPro
ms.topic: faq
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "SharePoint Cross-tenant migration feature FAQs"
---

# Cross-tenant SharePoint migration FAQs

## Premigration FAQs

**Question:** Can a SharePoint account have any content in the **target tenant** before migration?</br>
**Answer:** No. The tool doesn't support Merge functionality with existing content. The user being migrated must not have a preexisting SharePoint on the target tenant.

**Question:** Can users be precreated on the target tenant?</br>
**Answer:** Yes, all Users/Groups that are identified for migration should be precreated on the target tenant and appropriate licenses assigned before staring any migrations. Also:

- SharePoint site creation should be restricted in the target tenant to prevent users creating SharePoint sites.
- The migration fails if a SharePoint site already exists for the user on the target tenant.
- You can't overwrite an existing site.
- SharePoint sites should NOT be created before OR during a migration.

**Question:** Can my SharePoint accounts be in Read-only mode before starting any cross-tenant migrations?</br>
**Answer:** No. Before starting any migration, you need to ensure that your Source SharePoint accounts are NOT set to Read-Only, otherwise the migration fails.

**Question:** Can my SharePoint accounts be in **Read-only** mode before starting any cross-tenant migrations?</br>
**Answer:** No, before starting any migrations, ensure that your source SharePoint accounts are NOT set to Read-only. Otherwise, the migration fails.

**Question**: Does the tool support GCC and GCC-High tenants?</br>
**Answer:** We don't currently support government environments (GCC & GCC-High) but we plan to support them in the future.

**Question:** Are SharePoint accounts with Customer Key Encryption supported for migration?</br>
**Answer:**  No. We do NOT support migration if the source tenant has Service encryption with Microsoft Purview Customer Key enabled.

**Question:**  What do I need to consider for migrating sites between Multi-Geo tenants?</br>
**Answer:**  If you're a SharePoint Multi-Geo or MNC customer, you must treat each geography as a separate tenant and supply the correct geography-specific URLs throughout the process. You must also establish trust between each geography involved in your migration project.


## Post-migration FAQs

**Question:** What happens to permissions on SharePoint content?</br>
**Answer:** Users with permissions to SharePoint content continue to have access to their content upon completion on the new target tenant, if those users/groups were included as part of the Identity Map and mapped accordingly.

**Question:** What happens to sharing links?</br>
**Answer:** After the SharePoint cross-tenant migration, existing shared links for files that were migrated automatically redirect to the new target location.

**Question:** How are shared files handled?</br>
Selecting a sharing link to the old location redirects to the new location. The original/source tenant is deprovisioned or the admin can remove it on a site-by-site basis.

**Question:** Do external Shared Files still work?</br>
**Answer:**  As part of the migration process, Admins must precreate the appropriate users on the destination tenant, including guest/external users,  and provide the tool with an "Identity Map." The identify map tells us how to adjust file/site ownership and permissions.

**Question:** If a file is shared in a Teams chat, are those files still accessible after migration?</br>
**Answer:**  See the question above. The identity map informs how files are shared. If a user selects the link, it attempts to redirect to the new location. The file is accessible as long as the user has permissions to access the file on the destination. 
