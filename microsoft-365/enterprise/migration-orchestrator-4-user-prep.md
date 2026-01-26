---
title: Preparing users for cross-tenant migration with orchestrator
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
description: "Users need preparation before a cross-tenant migration. This article outlines the steps you need to take before the cross-tenant migration begins"
---

# Preparing users for migration

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

Preparing users is a necessary step for migration. The Cross-Tenant User Data Migration product requires that source user objects and target user objects exist. The source users are users in the source tenant whose content is migrated. The target users are the destination users into which the content from the source is migrated. Users must be created properly and mapped before the migration can take place.

> [!IMPORTANT]
> You must keep the specific configuration of fields pertaining to a user in mind. There are no exceptions. The following steps must be taken in the outlined order. Otherwise, users could be incorrectly configured and require extra work to put them in a good state.

> [!NOTE]
> Target users can't have mailboxes or OneDrive sites provisioned before the migration takes place. To properly configure the target users, **Identity Mapping** must be completed before assigning Exchange or OneDrive licenses to users.

## Create and prepare target user objects for migration

Migrating users must be present in the target tenant and Exchange Online system as MailUsers marked with specific attributes to enable the cross-tenant moves. The system fails to move users improperly set up in the target tenant. The [Prerequisites](migration-orchestrator-2-planning-prerequisites.md) article details the MailUser object requirements for the target tenant.

Users on the target tenant [must not have OneDrive sites provisioned](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users) before the migration takes place.

> [!NOTE]
> Target users must not have licenses (for example, E5) applied to them before running Identity Mapping. If they have licenses applied before the source user's ExchangeGuid is stamped on the target user object, each target user has a mailbox, and isn't a MailUser.

### Creating new target user objects

A MailUser object (also known as Mail-Enabled User, or MEU) must exist in the target tenant for each source user whose data is being migrated.

These MailUser objects don't need all attributes populated before running Cross-Tenant Identity Mapping (CTIM). CTIM prepares the ExchangeGuid, ArchiveGuid, and copies all existing X500 addresses as a proxy address. It also creates a new X500 proxy address based on the user's current ExchangeLegacyDN in the source tenant.

MailUser objects in the target tenant must not have email addresses from nonaccepted domains in the PrimarySmtpAddress of EmailAddresses fields. This causes the process to fail on that user.

Target MailUsers need to have the source user's PrimarySMTPAddress, preferably in the target MailUser's ExternalEmailAddress field.
Here are examples of commands you may use to create a properly configured MailUser object:

```powershell
Connect-ExchangeOnline

# Make new user

New-MailUser -PrimarySmtpAddress username@targettenant.com -MicrosoftOnlineServicesID username@targettenant.com -ExternalEmailAddress username@sourcetenant.com -Name "First Last"

# Make new user, and stamp the source user's SMTP address, and create a password

New-MailUser -PrimarySmtpAddress username@targettenant.com -MicrosoftOnlineServicesID username@targettenant.com -ExternalEmailAddress username@sourcetenant.com -Name "First Last" -Password $Secure_String_Pwd
```

### Add sources to the security group

If the source users aren't already added into the mail-enabled security group you created before, this addition must be done before Identity Mapping is complete. You can do it manually in the Microsoft 365 admin center, or in PowerShell using the following command:

```powershell
Add-DistributionGroupMember -Identity "DistributionGroupName" -Member "UserEmailAddress"
```

## Run Identity Mapping

You need to run Identity Mapping for any orchestrated migrations. This step should be performed before beginning any migration, for all users you intend to migrate the content of. [Learn more](cross-tenant-identity-mapping.md) about Identity mapping.

### OneDrive Identity Mapping for Permissions (Optional)

Run Identity mapping for OneDrive sites if you want users (other than the users OneDrive sites belong to) to have access to files within a OneDrive as they did on the source. This action includes the mapping of migrating users (those users who are Identity Mapped using the native solution), guests, and groups you wish to grant OneDrive site content permissions to.

For full support, we recommend mapping all migrating users, guests, or groups that should retain permissions. You can find instructions at [Step 5](cross-tenant-onedrive-migration-step5.md) of our OneDrive site migration documentation. [Step 4](cross-tenant-onedrive-migration-step4.md) also includes information about guest and group requirements.

## User license requirements

- Users on the source and target tenants must have a license with Exchange Online and Teams (E3 and E5 both include Exchange Online and Teams).
- Users on the target must not have an Exchange mailbox provisioned before migration. This causes the migration to fail.
- To prevent issues, user licenses for Exchange Online and Teams must be assigned **after** identity mapping. Having an ExchangeGuid stamped from the source user object onto the target user object prevents a mailbox from being provisioned.
- After identity mapping completes successfully for the user, a license can be applied.
- You should [disable OneDrive site creation](/sharepoint/restricted-site-creation) for target users as soon as you create those users to prevent a OneDrive site from being provisioned.
- Either the source or the target user needs a Cross-Tenant Data Migration license.
- The assigning of a Teams license should assign the user a SIP domain. If you see issues relating to a user not having a SIP domain, you can assign one manually using [Set-CsUser](/powershell/module/microsoftteams/set-csuser?view=teams-ps&preserve-view=true). The tenant's SIP Domain can be found using [Get-CsOnlineSIPDomain](/powershell/module/microsoftteams/get-csonlinesipdomain?view=teams-ps&preserve-view=true).

## Next steps

For information on running the migration after preparing users, see [Running the migration](migration-orchestrator-5-running-migration.md).
