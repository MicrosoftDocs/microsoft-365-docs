---
title: OneDrive Cross-Tenant User Data Migration Step 7
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
description: "Step 7 of the OneDrive Cross-tenant migration feature"
---
# Step 7:  Post migration steps

## Removing trust relationship

>[!Important]
>Ensure you remove the Trust Relationship on both Source and Target before to your Source tenant licenses expiring. Once the licenses expire the Trust removal command will not work on Source.

1. On the source tenant, run this command to remove the trust relationship between Source and Target tenant.

```powershell
Remove-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Target -PartnerCrossTenantHostUrl <TARGETCrossTenantHostUrl>

```
</br>

2. On the target tenant, run this command to remove the trust relationship between the target and source tenant.

```powershell

Remove-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Target -PartnerCrossTenantHostUrl <TARGETCrossTenantHostUrl>

```


### Parameter definitions

|Parameter|Definition|
|:-----|:-----|
|PartnerRole|Roles of the partner tenant you are establishing trust with.  Use *source* if partner tenant is the source of the OneDrive migrations, and *target* if the partner tenant is the destination.
|PartnerCrossTenantHostURL|The cross-tenant host URL of the partner tenant.  The partner tenant can determine this for you by running: *Get-SPOCrossTenantHostURL* on each of the tenants.|


## Other post migration steps

Once the migration is complete, OneDrive users must sign in using their new identity and re-sync their files to their devices on the target tenant.

### OneDrive for Business
With their new credentials, have users sign in to OneDrive using the Microsoft 365 app launcher or a web browser.

### Permissions on OneDrive content
Users with permission to access OneDrive content will continue to be able to access it, provided they were included in the identity mapping file

### OneDrive Sync Client
The user must to sign-in to the **OneDrive Sync Client** using their new identity and to the new OneDrive location. Once this is done, files and folders will begin re-syncing to the device.

### Sharing Links
The existing shared links for the migrated files will automatically redirect to the new target location.


## Regression of the migration

If you need to Migrate a OneDrive site back from the target tenant to the original source tenant,  reverse this process.

Your old target is the new source; the old source is now the new target. 

Before starting any regression or rollback of OneDrive accounts back to the original source, delete any redirect links on the original source. 

### Start a regression migration

To start the regression migration:

1. Sign in to the Sharepoint Management Shell as a SharePoint Online admin or Microsoft 365 Global admin. 
2. On the new source tenant run:

```powershell

Start-SPOCrossTenantUserContentMove  -SourceUserPrincipalName <…> -TargetUserPrincipalName <…> -TargetCrossTenantHostUrl <…>

```

|Parameters|Description|
|:-----|:-----|
|SourceUserPrincipalName|User principal name of the user who owns the OneDrive on the New Source tenant.|
|TargetUserPrincipalName |User principal name of the user who owns the OneDrive on the New Target tenant.|
|TargetCrossTenantHostUrl|Cross-tenant Host URL of the target tenant.To determine TargetCrossTenantHostUrl, run *Get-SPOCrossTenantHostUrl* on their tenant.|

