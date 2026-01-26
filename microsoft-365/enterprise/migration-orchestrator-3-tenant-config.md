---
title: Migration orchestrator source and tenant domain configuration
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
description: "Discover the configuration requirements for Microsoft 365 migration orchestrator. Configuration is needed in both the source and client tenants to ensure a successful migration of your users' data."
---

# Configuring source and target tenants

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

## Prerequisites for source and target tenants

This article walks through all steps of preparing the tenants and users for a successful migration. Here are some other requirements we don't provide explicit steps for:

- The source admin and target admin must each have Global administrator access on their respective tenant, which is required to manage the setup and migration.
- At least one mail-enabled security group is required in the source tenant.
  - These groups are used to:
    - Scope the list of users whose content can move from source tenant to the target tenant.
    - Inform the identity mapping service what users should be mapped.
  - This scoping allows the source tenant administrator to restrict access to a specific set of users whose content needs to be moved, preventing unintended users from being migrated or their data accessed.
- You need to communicate with your trusted partner organization (who helps you move user content) to obtain their Microsoft 365 tenant ID. This tenant ID is used in the Organization Relationship DomainName field.
  - To obtain the tenant ID of a subscription, sign in to the Microsoft 365 admin center and go to [Active Directory > Properties](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties). Select the copy icon for the Tenant ID property to copy it to the clipboard.

## Prepare both tenants for Mailbox migration

To prepare tenants for mailbox moves, see [Cross-tenant mailbox migration](cross-tenant-mailbox-migration.md#preparing-source-and-target-tenants).

## Prepare both tenants for OneDrive migration

### Prepare both tenants by establishing trust

> [!IMPORTANT]
> These instructions must be run from both the source and the target tenant.

The required setup steps for OneDrive Migration on both source and target are available in [Steps 1 - 3](cross-tenant-onedrive-migration.md) of its public documentation. These steps establish trust for the tool and between tenants.

### Prepare both tenants by configuring the OneDrive migration application

> [!IMPORTANT]
> These instructions must be run from both the source and the target tenant.

1. Download [the module](https://download.microsoft.com/download/1ded7541-fa8d-48f7-90c4-fa8a15a6b62b/ConfigureOneDriveMigration.psm1) onto your local machine.
2. Connect to Graph PowerShell as a Global Administrator:
  `Connect-MgGraph`
3. Import the module containing the configuration details:
  `Import-Module <location>`
4. Grant the App Permissions:
  `Grant-OneDriveSharePointMigrationPermissions`

## Prepare both tenants for Teams Chat and Meeting Migration

### Prepare both tenants by setting correct permissions

> [!IMPORTANT]
> These instructions must be run from both the source and the target tenant.

1. Federated users must be allowed.
    1. Install Microsoft Teams PowerShell, if you didn't already install it: [Install Microsoft Teams PowerShell](/MicrosoftTeams/teams-powershell-install).
    2. Connect to Microsoft Teams PowerShell:
      `Connect-MicrosoftTeams`
    3. Run the cmdlet:
      `Set-CsTenantFederationConfiguration -AllowFederatedUsers $True`
2. If the tenant is a Trial tenant, it must also allow **External Access**.
    1. Install Microsoft Teams PowerShell, if you didn't already install it: [Install Microsoft Teams PowerShell](/MicrosoftTeams/teams-powershell-install).
    2. Connect to Microsoft Teams PowerShell:
      `Connect-MicrosoftTeams`
    3. Run the cmdlet:
      `Set-CsTenantFederationConfiguration -ExternalAccessWithTrialTenants "Allowed"`
3. Confirm the settings by running:
  `Get-CsTenantFederationConfiguration`

### Prepare both tenants by configuring the Teams Chat migration app

> [!IMPORTANT]
> These instructions must be run from both the source and the target tenant.

1. Download [the module](https://download.microsoft.com/download/1ded7541-fa8d-48f7-90c4-fa8a15a6b62b/ConfigureTeamsChatMigration.psm1) onto your local machine.
2. Connect to Graph PowerShell as a Global Administrator:
  `Connect-MgGraph`
3. Import the module containing the configuration details:
  `Import-Module <location>`
4. Grant the App Permissions:
  `Grant-CTTMAppPermissions`
5. To get detailed help, run `Get-Help Grant-CTTMAppPermissions -Detailed`. Authenticate in and accept.
6. If Microsoft.Graph.Authentication and Microsoft.Graph.Applications aren't already installed, you're prompted to do so.

    ```powershell
    Install-Module Microsoft.Graph.Authentication
    Install-Module Microsoft.Graph.Applications
    Grant-CTTMAppPermissions
    ```

7. There are nine permissions added:
    1. Cross Tenant Teams Migration app role
    2. Identity Mapping Service app role
    3. Chat.Create
    4. Chat.Read.All
    5. Teamwork.Migrate.All
    6. ChatMember.ReadWrite.All
    7. User.Read.All
    8. CrossTenantMigrationAuthorization-Internal.Read

### Prepare both tenants by configuring the Teams Meeting Migration app

> [!IMPORTANT]
> These instructions must be run from both the source and the target tenant.

1. Set the Execution Policy:
    `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`
2. Download [the module](https://download.microsoft.com/download/1ded7541-fa8d-48f7-90c4-fa8a15a6b62b/ConfigureTeamsMeetingMigration.psm1) onto your local machine.
3. Connect to Graph PowerShell as a Global Administrator:
    `Connect-MgGraph`
4. Import the module containing the configuration details:
    `Import-Module <location>`
5. Install the dependencies for running MMS Script. If you installed some of these dependencies in setup tasks for other workloads, you don't need to reinstall now.

    ```powershell
        Install-Module Microsoft.Graph.Authentication
        Install-Module Microsoft.Graph.Applications
        Install-Module Microsoft.Graph.Identity.DirectoryManagement
        Install-Module ExchangeOnlineManagement
        Install-Module MicrosoftTeams
    ```

6. **Only for the source tenant**: Grant App Permissions:
    `Grant-MMSAppPermissions -TenantType "source"`
7. **Only for the target tenant**: Grant App Permissions for the target tenant:
  `Grant-MMSAppPermissions -TenantType "target"`
8. Connect to Exchange Online:
  `Connect-ExchangeOnline`
9. Enable Auto Forwarding for both source and target tenant:
    `Enable-AutoForwardingMode`
    - Success: `Autoforwarding is set to On for Default Outbound Spam Filter Policy.`
10. Only for the target tenant: Set the calendar RBAC roles:
  `Set-CalendarRBACRoles`
    - Success: `RBAC role has been assigned to MMS App to allow Calendar Read Write Permissions.`
11. If Microsoft.Graph.Authentication, Microsoft.Graph.ExchangeOnlineManagement aren't installed, you're prompted to do so.
12. Grant-MMSAppPermissions adds Service Principals for:
    1. Cross Tenant Teams Migration app
    1. Meeting Migration Service app
    1. Identity Mapping Service app
13. Grant-MMSAppPermissions adds App Roles for:
    1. Cross Tenant Teams Migration app role from Cross Tenant Teams Migration app assigned to target Meeting Migration Service App
    1. Identity Mapping Service app role from Identity Mapping Service app to target Meeting Migration Service app
    1. CrossTenantMigrationAuthorization-Internal.Read
14. Grant-MMSAppPermissions adds the Graph permissions for:
    1. Online.ReadWrite.All
    1. User.Read.All
    1. RoleManagement.Read.Directory
    1. Chat.ReadBasic.All
    1. Application.Read.All
15. It also adds the Exchange Admin Directory Role and Application access policies to MMS Application.

## Prepare both tenants for Identity Mapping

> [!IMPORTANT]
> These instructions must be run from both the source and the target tenant.

Running Identity Mapping is a required step for migrating user data. Cross-Tenant Identity Mapping (CTIM) is a tool that allows source users to be mapped one-to-one to target users. It edits the users' properties, so they have the correct properties to successfully migrate. It also maintains a mapping file to reference so that the data for the correct source users is migrated to the correct target users.

To learn more about Identity Mapping, see [Cross-Tenant Identity Mapping](cross-tenant-identity-mapping.md).

> [!IMPORTANT]
> Use CTIM after creating target users and before migrating data to ensure accuracy and avoid manual errors.

## Prepare the target tenant for Cross-Tenant Migration Service

>[!NOTE]
>Download Microsoft.Graph.Beta to access the cmdlets. `Install-Module -Name Microsoft.Graph.Beta -MinimumVersion 2.33.0 -Force`

To prepare the target tenant for the Cross-Tenant Migration Service, follow these steps:

1. Download [the module](https://download.microsoft.com/download/1ded7541-fa8d-48f7-90c4-fa8a15a6b62b/ConfigureCrossTenantMigrationService.psm1) onto your local machine.
2. Connect to Graph PowerShell as a Global Administrator:
  `Connect-MgGraph`
3. Import the module containing the configuration details:
  `Import-Module <location>`
4. Grant the App Permissions:
  `Grant-CTMSAppPermissions`
5. To get detailed help, run `Get-Help Grant-CTMSAppPermissions -Detailed`. Authenticate in and accept.
6. If Microsoft.Graph.Authentication and Microsoft.Graph.Applications aren't already installed, you're prompted to do so.

    ```powershell
      Install-Module Microsoft.Graph.Authentication
      Install-Module Microsoft.Graph.Applications
      ```

You should receive output showing **CrossTenantMigration Prod AAD App** as an app with roles assigned and other apps provisioned by this point. The **IdentityMapping-Experimental-Internal.Read** app role is granted to the CTMS (cloud transport management service) application.

## Next steps

For information on preparing users for migration, see [Preparing users for tenant-to-tenant migration](migration-orchestrator-4-user-prep.md).
