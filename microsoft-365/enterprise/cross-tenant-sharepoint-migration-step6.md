---
title: SharePoint site Cross-tenant SharePoint migration Step 6 (preview)
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
description: "Step 6 of the SharePoint site Cross-tenant migration feature"
---
# Step 6: Start a SharePoint site cross-tenant migration (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

This is Step 6 in a solution designed to complete a Cross-tenant SharePoint migration. To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

- Step 1: [Connect to the source and the tarIPs tenants](cross-tenant-SharePoint-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-SharePoint-migration-step2.md)
- Step 3: [Verify trust has been established](cross-tenant-SharePoint-migration-step3.md)
- Step 4: [Pre-create users and groups](cross-tenant-SharePoint-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-SharePoint-migration-step5.md)
- **Step 6: [Start a Cross-tenant SharePoint migration](cross-tenant-SharePoint-migration-step6.md)**
- Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)

Now you're ready to start your SharePoint migration. Before starting any cross-tenant migration, do the following steps.

## Start a SharePoint Cross-tenant site migration

1. Ensure you have verified the compatibility status. If you see a status of either **Compatible** or **Warning**  on your source tenant, you may continue. Run:

   ```powershell
   Get-SPOCrossTenantCompatibilityStatus –PartnerCrossTenantHostURL [Target tenant hostname]
   ```

2. To start the migration, a SharePoint Online Admin or Microsoft 365 Global Admin of the source tenant must run the following command:

```PowerShell
Start-SPOCrossTenantGroupContentMove  -SourceSiteUrl <…> -TargetSiteUrl <…> -TargetCrossTenantHostUrl| <…>

```

|Parameters|Description|
|---|---|
|SourceSiteUrl|Full URL of the SharePoint Site of the Source tenant, for example: https://sourcetenant.sharepoint.com/sites/sitename |
|TargetSiteUrl |Full URL of the SharePoint Site of the Target tenant, for example: https://targettenant.sharepoint.com/sites/newsitename |
|TargetCrossTenantHostUrl|The Cross-tenant host URL of the target tenant. The target tenant Admin can determine the TargetCrossTenantHostUrl by running *Get-SPOCrossTenantHostUrl* on their tenant.|
|

### Start a SharePoint M365 Group connected site cross-tenant migration

1. Ensure you have verified the compatibility status. If you see a status of either **Compatible** or **Warning**  on your source tenant, you may continue. Run:

   ```powershell
   Get-SPOCrossTenantCompatibilityStatus –PartnerCrossTenantHostURL [Target tenant hostname]

2. To start the migration, a SharePoint Online Admin or Microsoft 365 Global Admin of the source tenant must run the following command:

```powershell
Start-SPOCrossTenantGroupContentMove  -SourceGroupAlias <…> -TargetGroupAlias <…> -TargetCrossTenantHostUrl <…>

```

|Parameters|Description|
|---|---|
|SourceGroupAlias|Alias of the Microsoft 365 Group connected to the SharePoint Site on the Source tenant. For example: SourceGroup1|
|TargetGroupAlias|Alias of the Microsoft 365 that was created on the target tenant |
|TargetCrossTenantHostUrl|The Cross-tenant Host URL of the target tenant. The target tenant Admin can determine the TargetCrossTenantHostUrl by running *Get-SPOCrossTenantHostUrl* on their tenant|


## Schedule a migration for a later time

To schedule a migration for a later time, add one of the following parameters to the command.

For example:

```powershell

Start-SPOCrossTenantGroupContentMove  -SourceGroupAlias <…> -TargetGroupAlias <…> -TargetCrossTenantHostUrl <…> -PreferredMoveBeginDate <…>

```


These commands can be useful when planning bulk batches of site migrations.  You can queue and migrate up to 4,000 migrations per batch.  If your count exceeds 4,000 then separate batches can be created and scheduled to run once the current batch is close to completion.

|Parameter|Description|
|---|---|
|PreferredMoveBeginDate|The migration will likely begin at this specified time. Time must be specified in Coordinated Universal Time (UTC).|
|PreferredMoveEndDate|The migration will likely be completed by this specified time, on a best effort basis. Time must be specified in Coordinated Universal Time (UTC).|

## SharePoint status pre-migration

Before starting the migration, the users current source SharePoint status will be similar to the example below.  This example is from the users source tenant, showing their current files and folders.

:::image type="content" source="../media/cross-tenant-migration/t2t-onedrive-status-premigration.png" alt-text="pre-migration status":::

## Cancelling a SharePoint site migration

You can stop the cross-tenant migration of either a SharePoint site or SharePoint Microsoft 365 Group by using the following command, provided the migration doesn't have a status of *In Progress* or *Success*.

**To cancel a SharePoint site migration:**

```powershell
Stop-SPOCrossTenantSiteContentMove – SourceSiteURL [URL of Site you wish to stop]
```

**To cancel a SharePoint Microsoft 365 Group migration:**

```powershell
Stop-SPOCrossTenantGroupContentMove – SourceGroupAlias [Alias of Group connected to site you wish to stop]

```

## Determining current status of a migration

After starting your migration, you can check its status using the following command on either the source OR target tenant:

**Source command format:**

```powershell
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL [Target URL]
```

Example:

```Powershell
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL  https://m365x946316-my.sharepoint.com/
```

**Target command:**

```powershell
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL [Source URL]
```

Example:

```powershell
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL  https://m365x016551-my.sharepoint.com/
```

To find the status of a specific user's migration, use the *SourceUserPrincipalName* parameter:

```powershell
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL <PartnerCrossTenantHostURL> -SourceUserPrincipalName <UPN>
```

Example:

```powershell
Get-SPOUserAndContentMoveState -PartnerCrossTenantHostURL https://m365x946316-my.sharepoint.com -SourceUserPrincipalName DiegoS@M365x016651.OnMicrosoft.com
```

To get the status of the move based on a particular user’s UPN but with more information, use the *-Verbose* parameter.

Example:

```PowerShell
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL https://ttesttenant-my.sharepoint.com -SourceUserPrincipalName User3@stesttenant.onmicrosoft.com -Verbose 
```

## Migration States

|Status|Description|
|---|---|
|NotStarted|The migration hasn't yet started.|
|Scheduled|The migration is now in the queue and is scheduled to run when a slot becomes available.|
|ReadytoTrigger|The Migration is in its pre-flight stage and will start the Migration shortly.|
|InProgress|The migration is in progress in one of the following states: </br>- Validation </br>- Backup </br>- Restore </br>- Cleanup|
|Success|The Migration has completed successfully.|
|Rescheduled|The migration may not have completed and has been requeued for another pass.|
|Failed|The migration failed to complete.|

## Post-migration status checks

**Target tenant**: After the migration has successfully completed, check the status of the user on the target tenant by logging into their new SharePoint account.

**Source tenant**: Since the user has successfully migrated to the target tenant, they no longer have an active SharePoint account on the source.

## Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)
