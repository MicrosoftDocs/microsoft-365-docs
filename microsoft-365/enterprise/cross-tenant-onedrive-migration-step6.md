---
title: OneDrive Cross-tenant OneDrive migration Step 6
ms.author: heidip
author: MicrosoftHeidi
manager: jtremper
ms.date: 10/13/2023
recommendations: true
audience: ITPro
ms.topic: article
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Step 6 of the OneDrive Cross-tenant migration feature"
---
# Step 6: Start a OneDrive cross-tenant migration

This is Step 6 in a solution designed to complete a Cross-tenant OneDrive migration. To learn more, see [Cross-tenant OneDrive migration overview](cross-tenant-onedrive-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md)
- Step 3: [Verify trust has been established](cross-tenant-onedrive-migration-step3.md)
- Step 4: [Precreate users and groups](cross-tenant-onedrive-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-onedrive-migration-step5.md)
- **Step 6: [Start a Cross-tenant OneDrive migration](cross-tenant-onedrive-migration-step6.md)**
- Step 7: [Post migration steps](cross-tenant-onedrive-migration-step7.md)

>[!IMPORTANT]
>Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

Now you're ready to start your OneDrive migration.  Before starting any cross-tenant migration, do the following steps.

1. Ensure you have verified the compatibility status. If you see a status of either **Compatible** or **Warning**  on your source tenant, you can continue. Run:

   ```powershell
   Get-SPOCrossTenantCompatibilityStatus –PartnerCrossTenantHostURL [Target tenant hostname]
   ```

2. To start the migration, a SharePoint Admin or Microsoft 365 Global Admin of the source tenant must run the following command:

```PowerShell
Start-SPOCrossTenantUserContentMove  -SourceUserPrincipalName <...> -TargetUserPrincipalName <...> -TargetCrossTenantHostUrl <...>
```

|Parameters|Description|
|---|---|
|SourceUserPrincipalName|User principal name of the user who owns the OneDrive on the Source tenant.|
|TargetUserPrincipalName|User principal name of the user who owns the OneDrive on the Target tenant.|
|TargetCrossTenantHostUrl|The Cross-tenant Host URL of the target tenant. To find the TargetCrossTenantHostUrl, run *Get-SPOCrossTenantHostUrl* on the tenant.|

Example:

```Powershell
Start-SPOCrossTenantUserContentMove -SourceUserPrincipalName DiegoS@M365x016651.OnMicrosoft.com -TargetUserPrincipalName
        Test-Diego@M365x946316.OnMicrosoft.com -TargetCrossTenantHostUrl https://m365x946316-my.sharepoint.com/ 
```

To Schedule a migration for a later time, you can use and append the above command with the one of the following parameters. 

These commands can be useful when planning bulk batches of OneDrive migrations. You can queue/migrate up to 4,000 OneDrive migrations per batch. If your user count exceeds 4,000, create separate batches, and schedule them to run once the current batch is close to completion.

|Parameter|Description|
|---|---|
|PreferredMoveBeginDate|The migration will likely begin at this specified time. Time must be specified in Coordinated Universal Time (UTC).|
|PreferredMoveEndDate|The migration will likely be completed by this specified time, on a best effort basis. Time must be specified in Coordinated Universal Time (UTC).|

## OneDrive status premigration

Before you start the migration, the users current source OneDrive status is similar to the example below. This example is from the users source tenant, showing their current files and folders.

:::image type="content" source="../media/cross-tenant-migration/t2t-onedrive-status-premigration.png" alt-text="pre-migration status":::

## Cancelling a OneDrive migration

You can stop the cross-tenant migration of a user's OneDrive by using the following command, provided the migration doesn't have a status of *In Progress*, *Rescheduled* or *Success*.

```powershell
Stop-SPOCrossTenantUserContentMove – SourceUserPrincipalName [UPN name of user who you wish to stop]
```

Example:

```powershell
Stop-SPOCrossTenantUserContentMove – SourceUserPrincipalName DiegoS@M365x016651.OnMicrosoft.com
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
|ReadytoTrigger|The Migration is in its preflight stage and will start the Migration shortly.|
|InProgress|The migration is in progress in one of the following states: </br>- Validation </br>- Backup </br>- Restore </br>- Cleanup|
|Success|The Migration completed successfully.|
|Rescheduled|The migration may not have completed and has been requeued for another pass.|
|Failed|The migration failed to complete.|

## Post-migration status checks

**Target tenant**: After the migration successfully completes, check the status of the user on the target tenant by logging into their new OneDrive account.

**Source tenant**: Since the user has successfully migrated to the target tenant, they no longer have an active OneDrive account on the source.

## Step 7: [Post migration steps](cross-tenant-onedrive-migration-step7.md)
