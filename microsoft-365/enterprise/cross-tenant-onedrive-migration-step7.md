---
title: OneDrive Cross-Tenant User Data Migration Step 7
ms.author: jhendr
author: JoanneHendrickson
manager: serdars
ms.date: 10/26/2022
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
description: "Step 7 of the OneDrive Cross-tenant migration feature"
---
# Step 7:  Post migration steps

This is Step 7 in a solution designed to complete a Cross-tenant OneDrive migration. To learn more, see [Cross-tenant OneDrive migration overview](cross-tenant-onedrive-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md)
- Step 3: [Verify trust has been established](cross-tenant-onedrive-migration-step3.md)
- Step 4: [Pre-create users and groups](cross-tenant-onedrive-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-onedrive-migration-step5.md)
- Step 6: [Start a Cross-tenant OneDrive migration](cross-tenant-onedrive-migration-step6.md)
- **Step 7: [Post migration steps](cross-tenant-onedrive-migration-step7.md)**

## Removing trust relationship

> [!IMPORTANT]
> Ensure you remove the Trust Relationship on both source and target tenants before your source tenant licenses expire. Once the licenses expire, the trust removal command will not work on source.

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
|PartnerRole|Roles of the partner tenant you're establishing trust with. Use *source* if partner tenant is the source of the OneDrive migrations, and *target* if the partner tenant is the destination.|
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

Once the migration is complete, OneDrive users must sign in using their new identity and resync their files to their devices on the target tenant.

### OneDrive for Business

With their new credentials, have users sign in to OneDrive using the Microsoft 365 app launcher or a web browser.

### Permissions on OneDrive content

Users with permission to access OneDrive content will continue to be able to access it, provided they were included in the identity mapping file

### OneDrive Sync Client

The user must sign in to the **OneDrive Sync Client** and their new OneDrive location using their new identity. Once you've completed that step, the files and folders will begin resyncing to the device.

### Sharing Links

The existing shared links for the migrated files will automatically redirect to the new target location.
