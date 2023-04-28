---
title: SharePoint Cross-Tenant User Data Migration Step 7 (preview)
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
description: "Step 7 of the SharePoint Cross-tenant migration feature"
---
# Step 7:  Post migration steps (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

This is Step 7 in a solution designed to complete a Cross-tenant SharePoint migration. To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-SharePoint-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-SharePoint-migration-step2.md)
- Step 3: [Verify trust has been established](cross-tenant-SharePoint-migration-step3.md)
- Step 4: [Pre-create users and groups](cross-tenant-SharePoint-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-SharePoint-migration-step5.md)
- Step 6: [Start a Cross-tenant SharePoint migration](cross-tenant-SharePoint-migration-step6.md)
- **Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)**

## Removing trust relationship

> [!IMPORTANT]
> Make sure you remove the Trust Relationship on both source and target tenants before your source tenant licenses expire. Once the licenses expire, the trust removal command will not work on source.

1. On the source tenant, run this command to remove the trust relationship between Source and Target tenant.

   ```powershell
   Remove-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Target -PartnerCrossTenantHostUrl <TARGETCrossTenantHostUrl>
   ```

2. On the target tenant, run this command to remove the trust relationship between the target and source tenant.

   ```powershell
   Remove-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Target -PartnerCrossTenantHostUrl <TARGETCrossTenantHostUrl>
   ```

### Parameter definitions

|Parameter|Definition|
|---|---|
|PartnerRole|Roles of the partner tenant you're establishing trust with. Use *source* if partner tenant is the source of the SharePoint migrations, and *target* if the partner tenant is the destination.|
|PartnerCrossTenantHostURL|The cross-tenant host URL of the partner tenant. The partner tenant can determine this for you by running: *Get-SPOCrossTenantHostURL* on each of the tenants.|


## Removing redirect links post migration
 
 After the migration from Source to Target is complete, a redirect link is placed on the source. If users attempt to log back into their Source account or site, the link automatically redirects them to their new Target site. Remove the redirect links on the source after your full migration has completed.

:::image type="content" source="../media/cross-tenant-migration/t2t-onedrive-redirect-workflow.png" alt-text="flow chart of how redirects are created":::
 
Occasionally, a user may need to be migrated back to the original source. Remove the redirect link on the Target if you migrate a user back to the source.
 
- To remove redirect links, use the **Remove-SPOSite** PowerShell command.
- To get a list of all redirect sites on a tenant,  use the **Get-Sposite -Template RedirectSite#0** command.

Keep track of any user or site you migrate back to the source from the target. After successfully migrating these users or sites back to the source, confirm that the user/sites are accessible.   Then you can remove the redirect link from Target using the **Remove-SPOSite command**.

>[!Important]
>Site URL’s must be unique. When migrating a user or site back to the source, the redirect site created on the initial move will use the original URL. This will result in a conflict and cause the migration to fail if not removed. redirect link still being present on the tenant you are attempting to migrate to.


## Other post migration steps

Existing links and permissions should continue to work as expected once the migration is complete, based on the identity mapping files that were created.

### SharePoint sites

The source SharePoint site is set to read-only while a migration is in progress.  Once the migration is complete, users are directed to the site in the new target tenant whenever they navigate to the source site.  Users must sign in using their target tenant credentials. 

### Permissions on SharePoint content

Users with permissions to SharePoint content will continue to have access to the content during the migration and after it is complete, provided that those users or groups were included as part of the identity mapping step.

### Sharing Links

The existing shared links for the migrated files will automatically redirect to the new target location.
