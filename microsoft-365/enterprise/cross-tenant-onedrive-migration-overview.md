---
title: OneDrive Cross-Tenant User Data Migration Overview
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
description: "Overview of the OneDrive Cross-tenant migration"
---

# Cross-tenant OneDrive migration overview

>[!Note]
> This feature isn't currently supported for users of the Government Cloud, including GCC, Consumer, GCC High, or DoD.


>[!Note]
> Information in this article refers to **Cross-tenant OneDrive migration**. [Learn about about the cross-tenant Mailbox migration here](/microsoft-365/enterprise/cross-tenant-mailbox-migration)

During mergers or divestitures, you commonly need the ability to move users OneDrive accounts into a new Microsoft 365 tenant. With Cross-tenant OneDrive migration, tenant administrators can use familiar tools like *SharePoint Online PowerShell* to transition users into their new organization.

SharePoint administrators of two separate tenants can use the *Set-SPOCrossTenantRelationship* cmdlet to establish an organization relationship, and the *Start-SPOCrossTenantUserContentMove* command to begin cross-tenant OneDrive moves.

Up to 4,000 OneDrive accounts can be scheduled for migration in advance at a given time. Once scheduled, migrations occur without the user's data ever leaving the Microsoft 365 cloud and with minimal disruption, requiring only a few minutes where a user's OneDrive will be read-only. When migrations are complete, a redirect is placed in the location of the user's original OneDrive, so any links to files and folders can continue working in the new location. 

>[!Important]
>- Each user having their OneDrive migrated cross-tenant must be licensed for Cross-Tenant User Data Migration.
>- Cross-tenant OneDrive migration cannot be used for customers using Service Encryption with Microsoft Purview Customer Key. [Learn about Service encryption with Microsoft Purview Customer Key - Microsoft Purview](/microsoft-365/compliance/customer-key-overview?view=o365-worldwide)



## Prerequisites and settings

- **Microsoft SharePoint Online Powershell**. Confirm you have the most recent version installed. [Download SharePoint Online Management Shell from Official Microsoft Download Center](/download/details.aspx?id=35588)

- **Turn off service encryption with Customer Key enabled.** Confirm that the source OneDrive tenant **doesn't** have Service encryption with Microsoft Purview Customer Key enabled. If enabled on Source tenant, the migration will fail. [Learn more on Service encryption with Microsoft Purview Customer Key](/microsoft-365/compliance/customer-key-overview)

- Source OneDrive accounts must be set to Read/Write. If set to Read only, they'll fail.

- 
## Legal holds
OneDrive accounts with a Hold policy applied will be blocked from migration.
To migrate these OneDrive accounts, remove the hold policy, migrate, then reapply the hold as needed on the target tenant.
  

## Pre-create target accounts

- Ensure all Users/groups identified for migration have been pre-created on the target tenant.
- Assign the appropriate licenses to each user on the target tenant.
- We recommend that you restrict OneDrive site creation in the Target tenant to prevent users from creating OneDrive sites. If a OneDrive site already exists for the user on the target tenant the migration will fail. You can't overwrite an existing site.

>[!Note]
> To learn more on how to restrict OneDrive site creation, see [Disable OneDrive creation for some users](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users)

## Path size limits

Microsoft limits the number of characters in a path to not exceed 400 characters.
This is the full path limit, not just the file name. In planning your migrations, review the length of the OneDrive URLs in your target tenant. Failure often occurs when files or folder paths from the source, combined with the OneDrive URL on the target exceed the 400-character path limit. 

If a migration detects that you have exceeded the character limit you will need to work with the site owner to update the file/folder directory structure to reduce file path lengths. Once resolved then you should be able to complete the migration.

Any legal URL will be accepted when creating your Identity Map from Source to Target for your migrations. At this current time usernames/URLs that contain an apostrophe character ( **'** ) in a username/URL will fail with an "invalid character" error when attempting the migration.

>[!Tip]
>We recommend keeping your target OneDrive URL names short to avoid exceeding the character limit.

## OneDrive account size limits
Each OneDrive account can have a maximum of 2 TB of content or 1 million items.


## Permissions

All users and groups included in the identity mapping file uploaded to the target tenant will maintain permissions in the target tenant related to the migrated OneDrive site. 

## Shared files

After a OneDrive account is migrated, anyone clicking on a shared link to the old location will be redirected to the new one, provided they still have access to the destination. 

Those redirects remain until the source tenant is deprovisioned. The admin can also selectively remove redirects site-by-site.

## How does it work?

- **Step 1:** [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md).  
- **Step 2:** [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md) 
- **Step 3:** [Verify trust has been established](cross-tenant-onedrive-migration-step3.md) 
- **Step 4:** [Manage permissions](cross-tenant-onedrive-migration-step4.md)  
- **Step 5:** [Prepare identity mapping](cross-tenant-onedrive-migration-step5.md)
- **Step 6:** [Start a Cross-tenant OneDrive migration](cross-tenant-onedrive-migration-step6.md) 

## Step 1: [Connect to source and target tenants](cross-tenant-onedrive-migration-step1.md)