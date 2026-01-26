---
title: Post-migration steps when using migration orchestrator
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
description: "The steps to take after completing a migration with Microsoft 365 migration orchestrator."
---

# Post-migration tasks and cleanup

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

After the migration completes, you should remove permissions and return the tenants to their original nonmigration state. If you want to migrate again in the future, you need to restore all these permissions and settings.

Identity mapping data is stored until you explicitly delete it.

Use the `Remove-CtimData -SourceTenantGuid <SourceTenantGuid>` cmdlet to remove identity mapping data from the target tenant. Use the `Remove-CtimData -TargetTenantGuid <TargetTenantGuid>` cmdlet to remove identity mapping data from the source tenant.

Post-migration steps for OneDrive are available in [Step 7 of our OneDrive documentation](/microsoft-365/enterprise/cross-tenant-onedrive-migration-step7).

- Use the [Remove-OrganizationRelationship](/exchange/sharing/organization-relationships/remove-an-organization-relationship#use-exchange-online-PowerShell-to-remove-an-organization-relationship) cmdlet to remove existing organization relationships for source or destination servers after the migration is complete.
- Use the [Remove-MigrationEndpoint](/PowerShell/module/exchange/remove-migrationendpoint) cmdlet to remove existing migration endpoints for source or destination servers after the migration is complete.
- Use the `Remove-MMSAppPermissions` cmdlet to remove permissions for meeting migrations.
- Use the `Remove-CtimServicePrincipal` cmdlet to remove permissions for identity mapping.
- Use the `Revoke-CTTMAppPermissions` cmdlet to remove permissions for Teams Chat migrations.
- Use the following to remove CTMS (cloud transport management service) permissions and service principals. This action is only required on the target tenant:

    ```powershell
    # Clean up CTMS Permissions
    Connect-MgGraph # Use Target Tenant Admin permissions, verify w/ Get-MgContext
    $ctimAppId = '90fb47fc-e46d-4fc5-9833-8517359f2daf' #Identity Mapping 1P app
    $permissionId = '42eb8f30-cb38-433e-9651-006680f3b238' # Permission ID for IdentityMapping-Experimental-Internal.Read from 1P portal
    $ctmsAppId = '6eda910c-74a9-491b-bda3-88692d503655' # CTMS App Id
    $fpAppSp = Get-MgServicePrincipal -Filter "appId eq '${ctimAppId}'"
    $ctmsSp = Get-MgServicePrincipal -Filter "appId eq '${ctmsAppId}'"
    $ctmsRole = Get-MgServicePrincipalAppRoleAssignedTo -ServicePrincipalId $fpAppSp.Id | Where {$_.PrincipalId -eq $ctmsSp.Id -and $_.AppRoleId -eq $permissionId}
    Remove-MgServicePrincipalAppRoleAssignedTo -AppRoleAssignmentId $ctmsRole.Id -ServicePrincipalId $fpAppSp.Id
    Remove-MgServicePrincipal -ServicePrincipalId $ctmsSp.Id
    ```

Check which CTMS app you provisioned. The ctmsAppId is one of:

- '506cf32b-5cbe-4ced-84c6-c7bde303f77c'
- '6eda910c-74a9-491b-bda3-88692d503655'

To remove the service principals and apps for the Teams Chats app and the Cross-Tenant Migration Service apps, go to the Microsoft 365 admin center and remove all permissions.

### User cleanup

Users remain on the source tenant after migration as Mail-Users. Depending on your organization's business needs, you can choose to remove or maintain these users.
