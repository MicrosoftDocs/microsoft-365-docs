---
title: Migration orchestrator planning and prerequisites
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
description: "A planning and prerequisites article for Microsoft 365 migration orchestrator, a tool that allows you to migrate users from one tenant to another."
---

# Planning and prerequisites

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

This article covers both planning and prerequisites for Microsoft 365 migration orchestrator.

## Best Practices for Running Migration

> [!IMPORTANT]
> We require all users migrating content must be mapped in the identity mapping system before any migration takes place. Without this mapping, Teams chat and meeting migration end user experience can't add the correct users in every scenario.

You must follow specific ordering during the user creation and licensing. Users **must not have mailboxes or OneDrive sites provisioned on the target** before migration. This provisioning would make the migration fail. To prevent this failure, make sure you perform Identity Mapping, which stamps the Exchange GUID from each source user to each target user. This mapping prevents the provisioning of a mailbox before applying a license granting Exchange access to the user. You should also disable OneDrive creation for target users as soon as you create those users, to prevent a OneDrive from being provisioned.

It's important to be in the correct MsGraph context when running commands from the source and target tenants. To confirm you're correctly connected, use Disconnect-MgGraph, Connect-MgGraph, and Get-MgContext.

## Prerequisites

> [!NOTE]
> The requirements for a source tenant and a target tenant are slightly different.

### Prevalidation checks

The following sections provide step-by-step instructions to configure tenants and users to meet the prerequisites.

The following table lists the checks performed in the Pre-Migration validation stage of the migration. After the submission of the migration batch, these checks are the first tasks processed. If any of them hit an error, then the migration is canceled so any errors can be remediated. After the admin fixes the errors, they can submit a new batch with the same users.

|Check |Error message |Troubleshooting |
|------|--------------|----------------|
|A user can't belong to a preexisting batch |User migration validation failed. User is already a part of the same batch. </br>User migration validation failed. User is already a part of another batch {0} |If a user belongs to multiple batches, the user only migrates once. Likewise, if the same batch lists the user twice, the user migrates once. </br>Admins must resubmit the migration batch without the duplicate user. |
|The migration endpoint must exist |The migration endpoint '{0}' couldn't be found. |There must be a migration endpoint set up correctly for the migration to be successful. [Review](migration-orchestrator-3-tenant-config.md) the information on preparing the target tenant for information on how to set up this endpoint. |
|The organization relationship must be configured correctly between the two tenants | |There must be an Organization Relationship set up correctly for migration to be successful. [Review](migration-orchestrator-3-tenant-config.md) the information on preparing the target tenant for information on how to set up this relationship.  |
|The Teams Migration app must be provisioned correctly and enabled on the source and target tenants |Teams migration failed. App {0} in tenant {1} is not provisioned, or the app is provisioned but is not enabled. Please refer to tenant configuration documentation and retry migration. </br>Teams migration failed. The Cross-Tenant Teams Migration app in tenant {0} does not have the required app roles to check for Teams licenses for users. Refer to tenant configuration documentation and retry migration. </br>Teams migration failed. App {0} in tenant {1} is missing all the necessary role assignments. Refer to tenant configuration documentation retry migration. </br>Teams migration failed. The Cross-Tenant Teams Migration app is not properly configured to allow the service to check for appropriate app role assignments for app {0} in tenant {1}. Refer to tenant configuration documentation and retry migration. </br>Teams migration failed. The Cross-Tenant Teams Migration app is not properly configured to allow the service to check if there is a service principal provisioned for app {0} in tenant {1}. Refer to tenant configuration documentation and retry migration. </br>Teams migration failed. App {0} in tenant {1} is missing the {2} role assignment. Refer to tenant configuration documentation and retry migration. </br>Teams migration failed. The Cross-Tenant Teams Migration app is not properly configured to ensure authorization for user {0} in source tenant {1}. Refer to tenant configuration documentation and retry migration. </br>Teams migration failed. The Cross-Tenant Teams Migration app is unable to read authorization configuration. Refer to tenant configuration documentation and retry migration. |There's an issue with the setup of the app controlling Teams chat migration. Refer to the [tenant configuration document](migration-orchestrator-3-tenant-config.md) to set up these apps correctly. |
|A user must have a Teams license on both tenants |Teams migration failed. User {0} in tenant {1} does not have a Teams license. Assign a Teams license to the user and retry migration. |All users need a Teams license on both tenants. Assign the user a license on both tenants. |
|Each source user needs to be mapped to a target user (Identity Mapping) |Teams migration for user {0} failed. User {1} from source tenant {2} is not mapped to an identity in target tenant {3}. Refer to documentation for Identity Mapping and retry migration. </br>Teams migration for user {0} failed. There is a conflict in the target user provided by the migration service and the Identity Mapping service. Rerun Identity Mapping and retry migration. |Add the users to identity mapping. |
|All users submitted in the batch must belong to the provided scope security group |Teams migration failed. The user {0} from source tenant {1} is not authorized to migrate to user {2} from target tenant {3}. Refer to documentation for Identity Mapping and retry migration. |Add all source users to the security group linked in the Organization Relationship. |
|The Meeting Migration app must be provisioned correctly and enabled on the source tenant |Teams Meeting migration failed. The MMS App {0} in tenant {1} is not provisioned, or the app is provisioned but is not enabled. Please refer to tenant configuration documentation and retry migration. |Review the Teams Meeting Migration setup steps. |
|The Meeting Migration app must be provisioned correctly and enabled on the target tenant |Teams Meeting migration failed. The MMS App {0} in tenant {1} is not provisioned, or the app is provisioned but is not enabled. Please refer to tenant configuration documentation and retry migration. |Review the Teams Meeting Migration setup steps. |
|All users must have an Exchange Online license in both tenants |Teams Meeting migration failed for user {0}. User {0} in tenant {1} does not have an active Exchange Online Plan. Assign an Exchange Online Plan to the user and retry migration. |Review the licensing requirements. |
|Autoforwarding mode must be on in Exchange outbound spam filter policy for both tenants |Teams Meeting migration failed. Tenant {1} does not have AutoforwardingMode set to On in Default Exchange Outbound Spam Filter Policy. Refer to tenant configuration documentation and retry migration. |Review the Teams Meeting Migration setup steps. |
|Meeting Migration app on the target must have Calendars.ReadWrite RBAC role |Teams Meeting migration failed. MMS app in tenant {0} is missing the required RBAC roles to access the calendar. Refer to tenant configuration documentation and retry migration. |Review the Teams Meeting Migration setup steps. |
|The Meeting Migration app on both source and target tenant must have Exchange Administrator directory role |Teams Meeting migration failed. The MMS App {0} in source/target tenant {1} does not have the Exchange Administrator directory role assigned. Please assign the role and retry migration. |Review the Teams Meeting Migration setup steps. |

## Next steps

For information on configuring the tenants involved in the migration, see [Configuring source and target tenants](migration-orchestrator-3-tenant-config.md).
