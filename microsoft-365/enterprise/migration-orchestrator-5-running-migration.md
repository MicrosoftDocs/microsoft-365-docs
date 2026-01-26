---
title: Running a migration with the migration orchestrator
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.date: 12/11/2025
recommendations: true
audience: ITPro
ms.topic: upgrade-and-migration-article
ms.service: microsoft-365-migration
ms.localizationpriority: medium
ms.collection: 
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "The steps for running a migration using the Microsoft 365 migration orchestrator."
---

# Running the migration

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

The migration is run by creating a migration job in the form of a batch. Users are grouped together into a batch and submitted together. The maximum batch size is 100 users. Migrations are managed through Graph APIs. These APIs can be run with PowerShell 5 or 7, or with [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer#mode=canary).

## Understanding validation

Because there are many [Prerequisites](migration-orchestrator-2-planning-prerequisites.md) for migration, there's a separate step you can run as many times as needed to confirm that those prerequisites are met. This step is called *Standalone Validation*, and it acts similarly to running a what-if. It checks for all the known requirements for a successful migration in the general migration ecosystem (app permissions, relationships between tenants, and so on) and at a user level (licenses, identity mapping, and so on). We recommend that for every batch, an admin should run the validation before submitting the migration. This action confirms that all requirements are met.

Running a validation batch results in either:

1. Confirmation that a batch and its users meet all prerequisites.
1. A list of errors resulting from failed checks.

Admins can review the list for any failures, fix any issues, and resubmit using a new batch to confirm success.

> [!NOTE]
> The list of errors might not be exhaustive. Admins should run validation and fix errors until all prerequisites are met and there are no failures.

When you submit the migration, we do another check of all of the prerequisites, but we don't return a list of the failures per workload.

> [!NOTE]
> For a list of the different stages and descriptions of batch migration processing, see [Batch migration description values](#batch-migration-description-values).

## Understanding the migration process

The migration occurs at a user-level, meaning that if one user passes the validation phase, their migration continues. If another user fails any validation check, their migration fails (and never actually begins). To migrate these failed users, create a new batch that includes the failed users, after correcting the validation failures. It retries the migration if there was a terminal failure.

### Validation

The first step that takes place is the Validation stage. Throughout this step, all necessary setup steps are validated. If any checks fail, then the migration fails. The administrator should then fix the failures and resubmit the migration. For a list of the prechecks, consult the [Prerequisites](migration-orchestrator-2-planning-prerequisites.md) article. This step includes all the checks confirmed in Standalone Validation, but it's not going to return the full results for every check. It only returns the first failure it encounters.

### Mailbox syncing

After all the checks pass for the applicable workloads, Mailbox syncing begins. Mailbox syncing means that in the background, the user's mailbox data is being moved to the target tenant. The user is still able to fully use their mailbox on the source tenant at this time. We strongly recommend submitting batches two weeks before the cut-over date as there's no impact on the end users during synchronization.

### Cutover

After the time designated by the CompleteAfterDate passes and the sync completes, the mailboxes cutover to the target tenant. After this point, no cancellations can take place. Users are able to access their mailboxes from the target tenant. Mailboxes don't appear on the source tenant any longer.

### Teams and OneDrive migration

After the mailbox is cutover, the migration of Teams chats, Teams meetings, and OneDrive sites begins. Chats and meetings are migrated into the target tenant. Users might see changes to their source chats as users are added or removed, and chats and meetings begin to appear in the target tenant.

### Migration conclusion

After the Teams chats, Teams meetings, and OneDrive sites migrate, the migration is complete. Users can use their target tenant accounts to use their mailboxes, chats, meetings, and OneDrive sites.

## Understanding Migration Status and Errors

For a breakdown of the meanings behind the statuses and errors, see [Batch migration description values](#batch-migration-description-values).

There's up to an hour-long delay between when updates are made to the group containing the authorized users for migration and when our system processes those changes. Allow for up to an hour to start the migration after changes are made to the group membership.

> [!NOTE]
> For more troubleshooting guidance, see [Resolve orchestrated migration errors](/troubleshoot/microsoft-365/admin/orchestrated-migration/resolve-orchestrated-migration-errors).

## Commands available to run

### Submit a batch for validation

This feature allows you to submit a batch of users to validate that the prerequisites are met before submitting a migration. It does **not** actually submit the migration. It creates a batch that runs once in the validation context. Getting information about this batch via [Retrieve a specific batch](#retrieve-a-specific-batch) returns a full list of results on the checks it ran. Any failures need to be addressed in order for a successful migration later. Each batch you submit needs to have a unique name. Users can only belong to one active batch at one time. The maximum batch size is 100 users.

There are two ways to submit a validation batch.

#### Option 1: Define request body

```powershell
body = '{
  "displayName": "xtmigration1",
  "completeAfterDateTime": "2024-12-09T22:48:03.092Z",
  "sourceTenantId": "XXXXX-XXXXX-XXXXXX-XXXXXX",
  "exchangeSettings": {
    "targetDeliveryDomain": "DOMAIN.onmicrosoft.com",
    "sourceEndpoint": "sampleEndpointText"
  },
  "resources": [
    "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX",
    "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX",
    "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX"
  ],
  "resourceType": "Users",
  "workloads": [
    "Teams",
    "Exchange",
    "ODSP",
"Meeting"
  ]
}'
Test-MgBetaCrossTenantMigrationJob -BodyParameter $body 
```

#### Option 2: Use parameters

```powershell
Test-MgBetaCrossTenantMigrationJob -DisplayName "xtmigration1" -CompleteAfterDateTime 2024-12-09T22:48:03.092Z -Resources @("XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX","XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX", "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX") -ResourceType Users -SourceTenantId XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX -ExchangeSettings @{SourceEndpoint = "sampleEndpointText"; TargetDeliveryDomain = "DOMAIN.onmicrosoft.com"} 
```

### Submit a batch for migration

This feature allows you to submit a batch of users to begin their migration. We recommend running [Submit a batch for validation](#submit-a-batch-for-validation) first to confirm that all prerequisites are in-place. Each batch you submit needs to have a unique name. Users can only belong to one active batch at one time. The maximum batch size is 100 users.

There are two ways to submit a migration batch.

#### Option 1: Define request body

```powershell
$body = '{
  "displayName": "xtmigration1",
  "completeAfterDateTime": "2024-12-09T22:48:03.092Z",
  "sourceTenantId": "XXXXX-XXXXX-XXXXXX-XXXXXX",
  "exchangeSettings": {
    "targetDeliveryDomain": "DOMAIN.onmicrosoft.com",
    "sourceEndpoint": "sampleEndpointText"
  },
  "resources": [
    "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX",
    "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX",
    "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX"
  ],
  "resourceType": "Users",
  "workloads": [
    "Teams",
    "Exchange",
    "ODSP",
"Meeting"
  ]
}'
New-MgBetaCrossTenantMigrationJob -BodyParameter $body 
```

#### Option 2: Use parameters

```powershell

New-MgBetaCrossTenantMigrationJob -DisplayName "xtmigration1" -CompleteAfterDateTime 2024-12-09T22:48:03.092Z -Resources @("XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX","XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX", "XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX") -ResourceType Users -SourceTenantId XXXXXXX-XXXXXXX-XXXXXXX-XXXXXXX -ExchangeSettings @{SourceEndpoint = "sampleEndpointText"; TargetDeliveryDomain = "DOMAIN.onmicrosoft.com"} 
```

### Retrieve all batches

This feature allows you to see all submitted batches. You see both validation and migration batches. It shows active and past migrations.

```powershell
Get-MgBetaCrossTenantMigrationJob | ConvertTo-Json
```

By default, the 20 most recent results appear. To access more, run the command with the parameter **-All**.

### Retrieve a specific batch

This feature allows you to receive information about a specific batch and its properties.

```powershell
Get-MgBetaCrossTenantMigrationJob -CrossTenantMigrationJobId <batch display name or job id> | ConvertTo-Json
```

By default, the 20 most recent results appear. To access more, run the command with the parameter (code) **-All**.

### Retrieve user status within a specific batch

This feature allows you to receive information about the users within a specific batch. You see the state for each of the workloads. This information includes:

- Exchange
- Teams Chats
- Teams Meetings
- OneDrive

```powershell
Get-MgBetaCrossTenantMigrationJobUser -CrossTenantMigrationJobId <batch display name or job id> -CrossTenantMigrationTaskId <ExternalDirectoryObjectIds for the target users> | ConvertTo-Json -Depth 100
```

By default, the 20 most recent results appear. To access more, run the command with the parameter **-All**.

### Update the complete after date for a specific batch

This feature allows you to change the complete after date. Moving the date pushes the earliest date at which the cutovers for mailboxes occur and when the Teams chat and meeting and OneDrive migration begins.

```powershell
Update-MgBetaCrossTenantMigrationJob -CrossTenantMigrationJobId <batch display name or job id> -CompleteAfterDateTime <date time to update to>
```

Acceptable date and time formats are available on [Standard date and time format](/dotnet/standard/base-types/standard-date-and-time-format-strings).

### Cancel a batch

This feature allows you to cancel an entire batch and all of its users' migrations. It cancels all migrations for users whose mailboxes have not yet cutover. A batch can only be canceled before the Complete After Date has passed. After this point, the migration  continues without cancellation.

```powershell
Stop-MgBetaCrossTenantMigrationJob -CrossTenantMigrationJobId <batch display name or job id> 
```

### Remove a user from a batch and cancel that user's migration

This feature allows you to cancel a single user's migration by removing them from that batch. It needs to be run multiple times if multiple users need to be removed. The remaining users in the batch are unaffected. This state is only possible before the user's mailbox has cutover, at which point the user can't be removed.

```powershell
Stop-MgBetaCrossTenantMigrationJobUser -CrossTenantMigrationJobId <batch display name or job id> -CrossTenantMigrationTaskId  <ExternalDirectoryObjectIds for the target user> 
```

If the removal is successful, you see a 202 Accepted request with the response:

>Cancellation request for user ID: `<XXXX-XXXXX-XXXXX-XXXX>` from batch: `<batch name or batch request ID>` was accepted.

At this point, the user is removed from the batch, their migration is canceled, and any mailbox syncing that took place is canceled. The user can be added to a new batch. No other user within that batch is affected. The identity mapping isn't edited at all.

If the removal is unsuccessful, here are the possible responses:

1. The User ID provided in the request doesn't exist within the batch provided. This message likely means the admin provided an incorrect User ID and should check it again.

    >Cancellation not possible as no task found for given ID `<User ID>` TraceId: `<Trace ID>`

2. The batch ID or batch name can't be found in the tenant. This likely means the admin provided an incorrect batch ID or batch name in the cancellation request and should check it again.

    >UserRequest not found with `<target tenant ID>`, `<batch ID or batch name>` TraceId: `<Trace ID>`

3. If the cancellation request comes in after the specified completeAfterDate passed, the user's migration can't be canceled and they can't be removed from the batch.

    >Cancellation is not possible as migration passed completeAfter date TraceId: `<Trace ID>`

4. The User Task is invalid, so the user's migration can't be canceled. This means there's a fundamental issue with the user's setup to the point that it wouldn't run within the batch anyway. An issue like this potentially comes from the user not being Identity Mapped. The impact is that the user can't be migrated, even though they technically belong to the batch.

    >Cancellation is not possible as task is invalid TraceId: `<Trace ID>`

    If a removal is unsuccessful (other than in an invalid user state), the user continues belonging to the batch and is migrated.

### Delete batch data

This feature allows you to delete the data associated with a batch from the migration system. It deletes the data within 30 days of the request.

```powershell
Remove-MgBetaCrossTenantMigrationJob -CrossTenantMigrationJobId <batch display name or job id> 
```

Only batches in a terminal state can be canceled. Either cancel the batch, or wait for all users to reach a terminal state of Canceled, Failed, or Completed.

> [!NOTE]
> Deleting batch data affects future migrations the batch would inform. We don't recommend deleting batch data until the entire migration completes.

## Common parameters

There are many parameters that must be provided in a specific format for the migration input:

- **displayName** - A batch name of your choosing to help you identify this specific batch.
- **completeAfterDateTime** - The date that specifies the **earliest** acceptable time for the cutover of Exchange to begin. There's no user impact until this date passes **and** the Exchange sync is complete. This date can be updated later. The acceptable date and time formats are available on [Microsoft Learn](/dotnet/standard/base-types/standard-date-and-time-format-strings#table-of-format-specifiers).
- **sourceTenantId** - The ID of the source tenant. This ID can be found in the Microsoft Entra admin center.
- **targetDeliveryDomain** - Your target tenant domain. Example: domain.onmicrosoft.com.
- **sourceEndpoint** - The name of the endpoint created on the target tenant. You can find it using the `Get-MigrationEndpoint` command with the `-Name` parameter.
- **resources** - A list of ExternalDirectoryObjectIds for the **target** users you're including in this batch. These resources are available in the Azure portal under the user as "**Object ID**" or through PowerShell.
- **resourceType** - Is always "**Users**" for all user content migrations.
- **workloads** - A string with the list of workloads you intend to migrate. These strings should be formatted in a comma-delimited list. The proper strings are:
  - "**Exchange**"
  - "**ODSP**"
  - "**Teams**"
  - "**Meeting**"
  
If you don't provide a string, the migration defaults to moving all four workloads.

## Migrating using PowerShell

### Connect to PowerShell and Microsoft Graph

1. Open Microsoft PowerShell.
2. Install the [Graph SDK](/powershell/microsoftgraph/?view=graph-powershell-bet&preserve-view=truea):
    - `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`
    - `Install-Module Microsoft.Graph`
3. Sign in with target tenant global administrator credentials:
    - `Connect-Graph`
4. Confirm you're in the right tenant:
    - `Get-MgContext`

#### Validate the batch

Before submitting a batch for migration, validate that the batch and its users are correctly configured by running a validation task.

See the full list of prerequisites that are checked during validation: [Prevalidation checks](migration-orchestrator-2-planning-prerequisites.md#prevalidation-checks).

See [Validate the batch](#submit-a-batch-for-validation) for an available list of validation commands to run.

Get the detailed report of failures and mitigate those failures before retrying at the batch level (see [Retrieve a specific batch](#retrieve-a-specific-batch)) and at the user level (see [Retrieve user status within a specific batch](#retrieve-user-status-within-a-specific-batch)).

Review the batch status. If it's ValidatePassed, then all prerequisites are met and you can continue to migrate the batch. If it's ValidateFailed, investigate the errors and messages. See [Troubleshoot orchestrated migration](/troubleshoot/microsoft-365/admin/orchestrated-migration/resolve-orchestrated-migration-errors). Fix those issues and run validate on a new batch until all issues are resolved, and the state is ValidatePassed.

### Submit a migration batch

Submit the batch once the validation batch is successful. Using a new batch name, submit the batch:  [Submit a migration batch](#submit-a-batch-for-migration).  

Regularly monitor the migration at the batch level: [Retrieve a specific batch](#retrieve-a-specific-batch) and at the user level: [Retrieve user status within a specific batch](#retrieve-user-status-within-a-specific-batch).

To understand progress, consult the [Batch migration description values table](#batch-migration-description-values).

If there are failures, investigate the errors and messages returned on the user objects:  [Troubleshoot orchestrated migration](/troubleshoot/microsoft-365/admin/orchestrated-migration/resolve-orchestrated-migration-errors). Follow the troubleshooting guidance to mitigate any issues and retry, starting again with validation.

#### After migration completes

When the migration is completed, you can monitor the results of the batch and user statuses. If any migrations failed, examine the error code and message for any retry instructions. Once users reach a terminal status of 'Canceled' or 'Failed,' they can be added to a new batch to be retried.

#### Make any required changes

If changes need to be made to the migration, like changing the [Complete After Date](#update-the-complete-after-date-for-a-specific-batch), [removing a user from a batch](#remove-a-user-from-a-batch-and-cancel-that-users-migration), or [canceling a migration](#cancel-a-batch), this can be done until a certain point in the migration, as defined in the [batch status table](#batch-migration-description-values).

## Batch migration description values

Use the following table to understand the validation and migration flows and status values:

> [!NOTE]
> For more information about troubleshooting, see See **[Troubleshoot orchestrated migration](/troubleshoot/microsoft-365/admin/orchestrated-migration/resolve-orchestrated-migration-errors)**.

### Migration batch

| Status | Description | Workloads |
| --- | --- | --- |
| Submitted/Approved/Processing  | The batch is submitted. | [Exchange] NotStarted <BR/> [Teams Chats] NotStarted <BR/> [Teams Meetings] NotStarted <BR/> [OneDrive] NotStarted <BR/> |
| InProgress | The batch is in progress, which includes checking for prerequisites for all workloads and processing the sync for the mailboxes. Batches and user migrations can be canceled throughout this phase. | [Exchange] Synced/Finalizing/Completed <BR/> [Teams Chats] Synced/InProgress <BR/> [Teams Meetings] Synced/InProgress <BR/> [OneDrive] Synced/InProgress <BR/> |
| CuttingOver | The batch is cutting over, which means that the mailbox is cutting over or has cut over, and the chats, meetings, and OneDrive are migrating.  <BR/> No cancellations can happen at this point. | [Exchange] Synced/Finalizing/Completed <BR/> [Teams Chats] Synced/InProgress <BR/>[Teams Meetings] Synced/InProgress <BR/> [OneDrive] Synced/InProgress<BR/>|
| Completed |  The batch completed without any errors. | [Exchange] Completed <BR/> [Teams Chats] Completed <BR/> [Teams Meetings] Completed <BR/> [OneDrive] Completed <BR/> |
| CompletedWithErrors  | The batch completed, but with errors. | [Exchange] Completed/Failed <BR/> [Teams Chats] Completed/Failed <BR/> [Teams Meetings] Completed/Failed <BR/> [OneDrive] Completed/Failed <BR/> |
| Canceled | The batch is canceled. |  |
| Failed | The batch failed.  |  |
| PendingCancel | The batch is pending cancellation. |  |
| PendingDelete | The batch is pending deletion. |  |
| Deleted | The batch data is deleted. |  |

### Validation batch

| Status | Description | Workloads |
| --- | --- | --- |
|ValidationSubmitted/ValidationProcessing | The validation batch has been submitted. | [Exchange] NotStarted <BR/> [Teams Chats] NotStarted <BR/> [Teams Meetings] NotStarted <BR/> [OneDrive] NotStarted <BR/> |
| ValidateInProgress |The validation batch is in progress. All applicable workloads are checked for their prerequisites. | [Exchange] InProgress <BR/> [Teams Chats] InProgress/Completed <BR/> [Teams Meetings] InProgress/Completed <BR/> [OneDrive] InProgress/Completed <BR/> |
|ValidatePassed/ValidateFailed | The validation batch completed. The batch either passed (no checks failed) or failed (at least one check failed). | [Exchange] Completed/Failed<BR/> [Teams Chats] Completed/Failed<BR/> [Teams Meetings] Completed/Failed<BR/> [OneDrive] Completed/Failed<BR/> |

## Next steps

For information on what to do after the migration is complete, see [Post-migration tasks for tenant-to-tenant migrations](migration-orchestrator-6-post-migration.md).

For FAQs and troubleshooting regarding the migration orchestrator, see [Migration orchestrator FAQ](migration-orchestrator-8-faq.md).
