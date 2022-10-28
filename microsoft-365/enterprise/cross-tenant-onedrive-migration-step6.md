---
title: OneDrive Cross-Tenant User Data Migration Step 6
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
description: "Step 6 of the OneDrive Cross-tenant migration feature"
---
# Step 6: Start a OneDrive Cross-Tenant Migration

Now you are ready to start your OneDrive migration.  Before starting any cross-tenant migration, do the following steps. 

1. Ensure you have verified the compatibility status. if you see a compatible status on your source tenant you may continue. Run:

```powershell
Get-SPOCrossTenantCompatibilityStatus –PartnerCrossTenantHostURL [Target tenant hostname]
```

2. To start the migration, a SharePoint Online Admin or Microsoft 365 Global Admin of the source tenant must run the following command:

```PowerShell
Start-SPOCrossTenantUserContentMove  -SourceUserPrincipalName <…> -TargetUserPrincipalName <…> -TargetCrossTenantHostUrl <…>
```

|Parameters|Description|
|:-----|:-----|
|SourceUserPrincipalName|User principal name of the user who owns the OneDrive on the Source tenant.|
|TargetUserPrincipalName| – user principal name of the user who owns the OneDrive on the Target tenant.|
|TargetCrossTenantHostUrl| – the Cross-Tenant Host URL of the Target tenant. The partner tenant admin can determine this for you by running. To determine TargetCrossTenantHostUrl, the Admin can determine this by running Get-SPOCrossTenantHostUrl on their tenant.|

In our example the command would be:

```Powershell

Start-SPOCrossTenantUserContentMove -SourceUserPrincipalName DiegoS@M365x016651.OnMicrosoft.com -TargetUserPrincipalName
        Test-Diego@M365x946316.OnMicrosoft.com -TargetCrossTenantHostUrl https://m365x946316-my.sharepoint.com/ 

```

To Schedule a migration for a later time, you may use and append the above command with the one of the following parameters. 

These commands can be useful when planning bulk batches of OneDrive migrations.  You can queue/migrate up to 4,000 OneDrive migrations per batch.  If your user count exceeded 4,000 then separate batches can be created and scheduled to run once the current batch is close to completion.

|Parameter|Description|
|:-----|:-----|
|PreferredMoveBeginDate|The migration will likely begin at this specified time. Time must be specified in Coordinated Universal Time (UTC).|
|PreferredMoveEndDate|The migration will likely be completed by this specified time, on a best effort basis. Time must be specified in Coordinated Universal Time (UTC).|


## OneDrive status pre-migration

Before starting the migration you will expect to see the users current Source OneDrive status as below.

In this example, that they are on the Source tenant and their current files and folders are displayed.


:::image type="content" source="../media/cross-tenant-migration/t2t-onedrive-status-premigration.png" alt-text="pre-migration status":::

## Cancelling a OneDrive migration

You can stop the cross-tenant migration of a user's OneDrive by using the following command, provided the migration is not In Progress or Success status.

```powershell

Stop-SPOCrossTenantUserContentMove – SourceUserPrincipalName [UPN name of user who you wish to stop]

Stop-SPOCrossTenantUserContentMove – SourceUserPrincipalName DiegoS@M365x016651.OnMicrosoft.com
```

## Determining current status of a migration

Once you have started your Migration you can check its status by using the following command on Source OR Target tenant:

**Source command format**
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
Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL  https://m365x016551-my.sharepoint.com/
```

To find the status of a specific user's migration, use the *UserPrincipalName* parameter:

```powershell

Get-SPOCrossTenantUserContentMoveState -PartnerCrossTenantHostURL <PartnerCrossTenantHostURL> - SourceUserPrincipalName <UPN>
Get-SPOUserAndContentMoveState -PartnerCrossTenantHostURL https://m365x946316-my.sharepoint.com - SourceUserPrincipalName DiegoS@M365x016651.OnMicrosoft.com
```


## Migration States


|Status|Description|
|:-----|:-----|
|NotStarted|The migration has not yet started.|
|Scheduled|The migration is now in the queue and is scheduled to run when a slot becomes available.|
|ReadytoTrigger|The Migration is in its pre-flight stage and will start the Migration shortly.|
|InProgress|The migration is in progress in one of the following states: </br>- Validation </br>- Backup </br>- Restore </br>- Cleanup|
|Success|The Migration has completed successfully.|
|Rescheduled|The migration may not have completed and has been re-queued for another pass.|
|Failed	|The migration failed to complete.|


Example Migration and Status Check
The below screenshot shows the successful start of the migration for our example user DiegoS.
 
The below screenshot shows the Status check and that the migration for DiegoS has been successful.
 
## Post-migration status checks

**Target tenant:** 
Once the migration has completed successfully you can check the status of the user on the target tenant by logging into their new OneDrive account. 

**Source tenant:**
Since the user has successfully migrated to the target tenant, they no longer have an active OneDrive account on the source.
