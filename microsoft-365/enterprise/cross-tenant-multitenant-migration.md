---
title: Moving from multitenant to migration readiness
author: MicrosoftHeidi
ms.author: heidip
manager: dansimp
ms.reviewer:
ms.topic: overview
ms.date: 12/01/2025
ms.service: microsoft-365-enterprise
ms.localizationpriority: high
description: "Preparing a multitenant Microsoft 365 environment for migration."
---

# Introduction

This article is designed for tenant administrators with an established Multitenant Organization (MTO) who are preparing for identity and data migration from one MTO member to another. It outlines the steps to move from MTO-based collaboration to full migration readiness, ensuring secure access, minimal disruption, and compliance.

**Scenario Example**: Contoso and Fabrikam have an existing MTO for Day 1 collaboration. Fabrikam users are synced into Contoso's tenant as B2B (business to business) external members, enabling seamless collaboration. Now, Contoso plans to migrate user data from Fabrikam to its own tenant. This article walks through the steps to convert Fabrikam identities into migration-ready internal mail users for a smooth transition.

## Day 1 Collaboration in Multitenant Organization (MTO)

MTO enables immediate cross-tenant collaboration without changing user credentials.

### Steps to establish MTO

1. Create your MTO in the Microsoft admin center (MAC) portal.
1. Configure trust relationships and policies.
1. Sync users as business-to-business (B2B) external members.
1. Enable collaboration features (Teams, file sharing, profile cards).

> [!NOTE]
> This guide assumes you completed these steps already.

## Premigration preparation checklist

- Define which users and groups to migrate by specifying Mail Enabled Security Groups in the MailboxMovePublishedScope field (there's a maximum of 5,000 objects per scope).

> [!TIP]
> Avoid nested groups and ensure no user's in more than one scope.

- Organization Relationship configured (MailboxMoveEnabled = $True).
- Required PowerShell modules installed:
  - ExchangeOnlineManagement
  - Microsoft.Graph
  - Microsoft.Graph.Beta
  - CrossTenantIdentityMapping (with -AllowPrerelease) 
- MailUser objects exist in the target tenant for each migrating (accepted domains only).

## Migration scope definition

Defining the migration scope is a crucial step that determines the users and groups to migrate from the source tenant to the target tenant. This step ensures that only the intended accounts are included in the migration process.

1. In Exchange Online PowerShell, create a Mail-Enabled Security Group in the Source Tenant:

  `New-DistributionGroup -Type Security -Name "[MigrationScopeGroupName]" -DisplayName "Migration Scope for [Project or Batch Name]"`

  *Example*:
   `New-DistributionGroup -Type Security -Name "MTO-Migration-Scope-2025" -DisplayName "Migration Scope for Bellevue Project"`

2. Migration Scope Group: Add each user (or group) you want to migrate to the mail-enabled security group:

  `DistributionGroupMember -Identity "<MigrationScopeGroupName>" -Member <UserOrGroup>`

  Repeat for all users/groups to be migrated.

3. Assign an admin as the owner of the group for management and auditing:

  `Set-DistributionGroup -Identity "<MigrationScopeGroupName>" -ManagedBy <AdminAccount>`

4. Verify group membership:

  `Get-DistributionGroupMember -Identity "<MigrationScopeGroupName>" | select Name, PrimarySmtpAddress`

5. Reference the group in migration configuration. When configuring the migration, specify the group name as the *MailboxMovePublishedScope* in the organization relationship or migration tool.

> [!NOTE]
> You can also complete the migration scope process in the Microsoft 365 admin center.

## Organization relationship updates

There are existing organizational relationships established as part of your MTO setup. These relationships need to be updated to allow the migration of data and to specify which users are in-scope for migration.

For example: `Set-OrganizationRelationship -Identity "MTO-OrgRel-ae2b6c6c-818a-4420-9830-c6083e37495e" -DomainNames "kingdomshu.onmicrosoft.com","ae2b6c6c-818a-4420-9830-c6083e37495e`

**Source tenant**

Update your organization relationship with a scope:

`Set-OrganizationRelationship "MTO-OrgRel-{target-tenant-id}" -Enabled:$true -MailboxMoveEnabled:$true -MailboxMoveCapability RemoteOutbound -OAuthApplicationId {migration-app-id} -MailboxMovePublishedScopes {migration-scope-name}`

**Target tenant**

`Set-OrganizationRelationship "MTO-OrgRel-{source-tenant-id}" -Enabled:$true -MailboxMoveEnabled:$true -MailboxMoveCapability Inbound`

## Identity mapping

Before any cross-tenant migration, identity mapping is essential to make sure every user and group in the source tenant is correctly matched to an object in the target tenant. In this section, the process involves mapping the source user to the corresponding user object (B2B member) where the user currently exists as an MTO user.

**Source tenant admin**

1. Initiate a copy request:
  `New-CtimCopyRequest -SecurityGroupGuid <GUID> -TargetTenantGuid <GUID>`
2. Share the resulting RequestID with the target tenant admin.

> [!TIP]
> Running a copy request for the same scope twice with -Overwrite resets previous mappings.

**Target tenant admin**

1. Accept the copy request.
1. Check request status:
  `Get-CtimRequest <RequestID>`
1. Accept the request:
  `Accept-CtimCopyRequest -RequestID <RequestID> -SourceTenantGUID <GUID>`
1. If necessary, reject the request:
  `Reject-CtimCopyRequest`

Wait for the request to reach the **Completed** state before continuing to mapping.

### Mapping (Target tenant)

- Automated Mapping (Recommended):
  - Run the following command: `New-CtimMapRequest -SourceTenantGuid <GUID>`
- Manual Mapping (Optional):
  - Download a CSV mapping file:
    `Download-CtimCopiedIdentities -SourceTenantGuid <GUID> -FilePath <path>`
  - Populate the TargetExternalDirectoryObjectId column with the GUIDs of target MailUser objects.
  - Upload the edited file.
    `Upload-CtimMappingData -SourceTenantGuid <GUID> -MappingCsvFilePath <path>`
  - Initiate mapping using CSV.
    `New-CtimMapRequest -SourceTenantGuid <GUID> -UseCsv`

> [!TIP]
> Use commas as delimiters in the CSV file.

## Writing attributes (write step)

After mapping identities, you must write mailbox attributes from the source tenant to the corresponding MailUser objects in the target tenant. This step ensures migration readiness and proper mail routing.

### For cloud-only mailuser objects

- Initiate the write request:
  - `New-CtimWriteRequest -SourceTenantGuid <GUID>`

This command writes attributes (ExchangeGuid, ArchiveGuid, X500 proxy addresses, and so on) from the mapped source mailbox user to the target MailUser object.

### Validation

- Confirm all objects have a **Complete** status in CTIM (Cross-tenant identity mapping) before starting mailbox migration:
  - `Get-CtimRequest -RequestId <ID>`
  - `Get-CtimReport -SourceTenantGuid <GUID> -RequestId <ID>`

**Before the write process**

MailUser objects have no ExchangeGuid or X500 addresses—only SMTP addresses.

**After the write process**

ExchangeGuid, ArchiveGuid (if applicable), and X500 proxy addresses are populated. All necessary attributes for migration and mail routing are present.

## Migration application setup

- Create the migration application in the target tenant.
- Run the cmdlet to call Graph or operate in the Microsoft Entra admin center.
- Copy the migration application ID and secret.
- Grant the migration application permissions in the source tenant.
- Visit the admin consent URL and grant access.

### Register the application in Microsoft Entra: (Target tenant)

1. Go to the Microsoft Entra admin center.
1. In the left-hand menu, go to **Entra ID**.
1. Select **App registrations**.
1. Select **New registration**.
1. Provide a name (for example, *MTO Migration App*).
1. Set the supported account types to **Accounts in this organizational directory only**.
1. Redirect the URI is optional.
1. Complete registration.
1. Take note of the Application (client) ID and Directory (tenant) ID.
1. Go to **Certificates & secrets** and create a new client secret.
1. Select **Client secrets**.
1. Select the **New client secret** option.
    1. Provide a description.
    1. Select an expiration date (the default is 180 days).
    1. Select **Add** to add the new client secret.
1. Save the secret value securely. You use this value for PowerShell scripts and migration endpoint setup.

### Configure API permissions

1. Go to the Microsoft Entra admin center.
1. In the left-hand menu, go to **API permissions**.
1. Remove any permissions in the list by selecting **Remove permissions**.
1. Select **Add a permission**.
1. Add Exchange Online permissions > Search for and select **Office 365 Exchange Online**.
1. Select **Office 365 Exchange Online**.
1. Choose **Application permissions**.
1. Add the following delegated and application permissions:
  - Exchange.ManageAsApp
  - Directory.Read.All
  - MailboxMigration.ReadWrite
1. Confirm all application permissions are added.

### Grant admin consent

In the target tenant, grant admin consent for all permissions:

1. After adding all permissions, select **Grant admin consent for *TenantName***.
1. Confirm grant consent.
1. In the source tenant, use the admin consent URL to grant access: `https://login.microsoftonline.com/common/adminconsent?client_id={migration-application-id}`.

This step allows the migration app to operate across both tenants.

##  Migration Endpoint Creation (Target tenant)

The migration endpoint enables mailbox migration between tenants. It uses the migration application’s identity (client ID and secret) to securely connect the target tenant to the source tenant.

Prerequisites:

- Migration application’s client ID and client secret (generated in Microsoft Entra in the target tenant).
- Source tenant ID (the tenant you're migrating mailboxes from).
- Appropriate permissions in Exchange Online (Target tenant).

**Connect to ExchangeOnline PowerShell**

1. `Connect-ExchangeOnline -UserPrincipalName <your-admin-account>`
2. Create the PSCredential object:

```powershell
$appId = "<migration-application-id>"
$appSecret = "<migration-application-secret>"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $appId, (ConvertTo-SecureString -String $appSecret -AsPlainText -Force)
```
3. Create the Migration EndPoint. Run the following command to create the migration endpoint:

```powershell
New-MigrationEndpoint -RemoteServer outlook.office.com ` 

  -RemoteTenant <source-tenant-id> `
  -Credentials $credential `
  -ExchangeRemoteMove:$true `
  -Name MTO-MigrationEndpoint-<source-tenant-id>
```

- RemoteServer: Always use outlook.office.com for Exchange Online migrations.
- RemoteTenant: The tenant ID of the source tenant.
- Credentials: The previously created PSCredential object.
- ApplicationId: The migration application’s client ID.

4. Validate the migration endpoint:

`Get-MigrationEndpoint | Format-List Name, Status, RemoteServer, RemoteTenant`

Ensure the endpoint status is **Active** and the configuration matches your migration scenario.

### Best practices

- No Nested Groups: Avoid adding nested groups; only direct members are included in the migration scope.
- Unique Membership: Ensure no user is in more than one migration scope group to prevent conflicts.
- Batch Management: For large migrations, create separate scope groups for each batch or project phase.
- Documentation: Keep a record of group membership and changes for auditing and troubleshooting.

## User Conversion to Internal Member

After preparing for migration, you must convert B2B guests (external users) in the target tenant to internal member users. This step is required to allow migrated guests to have the correct permissions and access as internal members in the destination tenant.

> [!WARNING]
> This conversion breaks the MTO collaboration experience. If you need keep the MTO collaboration experience, you need to provision new user objects for migration.

> [!IMPORTANT]
> This conversion should be done when you're ready to start the migration.

### Option 1: Microsoft Entra Admin Center (Recommended for Small Batches)

1. Visit the [https://entra.microsoft.com/](https://entra.microsoft.com/) website and sign in with an admin account in the **target tenant**.
1. Search for each B2B guest who's subject to migration.
1. For each user, select the option to convert to internal member (this option is available in the user’s profile if they're a B2B guest).
1. Repeat for all users you plan to migrate.

### Option 2: Microsoft Graph API (Recommended for Bulk Operations)

- You can automate the conversion using the Microsoft Graph API (preview version).
- Refer to the official documentation for details and examples: [Convert an external user to an internal user](/graph/api/user-convertexternaltointernalmemberuser).
- This method is ideal for large migrations or automation via scripts.

## Migration Readiness Validation

Before starting mailbox migration, it’s essential to validate that your migration endpoint, server connectivity, and user identities are correctly configured for migration.

1. Connect to Exchange Online PowerShell in the target tenant:
  `Connect-ExchangeOnline -UserPrincipalName [your-admin-account]`
2. Run the readiness check:
  `Test-MigrationServerAvailability -Endpoint MigrationEndpointName]`
  - Replace **MigrationEndpointName** with the name of your migration endpoint (for example, `MTO-MigrationEndpoint-<source-tenant-id>`).
3. Check the output for Success or Failure and identity readiness.

## Perform the migration

Follow detailed instructions for [cross-tenant migration](cross-tenant-mailbox-migration.md#perform-mailbox-migrations).

Cross-tenant Exchange mailbox migrations are initiated from the target tenant as migration batches. This process is similar to the way onboarding migration batches work when migrating from Exchange on-premises to Microsoft 365.

