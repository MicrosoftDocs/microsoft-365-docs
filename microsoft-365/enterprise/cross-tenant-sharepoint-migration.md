---
title: Cross-tenant SharePoint site migration overview
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.date: 08/14/2025
recommendations: true
audience: ITPro
ms.topic: upgrade-and-migration-article
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Learn about the Cross-tenant SharePoint migration solution to migrate your SharePoint sites from tenant to tenant."
---
# Cross-tenant SharePoint migration

SharePoint sites can now be moved from one tenant to another using the Cross-tenant SharePoint migration feature.

SharePoint Admins can transition sites into their new tenants using *SharePoint Online PowerShell*.

Up to 4,000 SharePoint accounts can be scheduled for migration in advance at a given time. Once scheduled, migrations occur without content ever leaving the Microsoft 365 cloud and with minimal disruption. When migrations are complete, a redirect is placed in the location of the user's original SharePoint site, so any links to files and folders can continue working in the new location.

>[!Important]
>Cross-Tenant moves are a one and done migration activity. The content is **moved** from the Source to Target, leaving behind a redirect link on Source. **Incremental and delta migration passes can't be performed.**

## How to participate

The **Cross-Tenant Shared Data Migration** feature and licenses are currently only available to Enterprise Agreement customers.

If you're an Enterprise Agreement customer purchasing Cross-Tenant Shared Data Migration licenses, and you want to evaluate Cross-Tenant SharePoint migration to improve your migration experience:

- Contact your Microsoft account team.
- [**Learn more at Cross-Tenant Shared Data Content Migration Licensing**](/microsoft-365/enterprise/cross-tenant-sharepoint-migration).
- Licenses are offered on a per 100 GB of data moved basis.

>[!Note]
> To find out how many licenses are needed to migrate your given data: Get the StorageUsed for each SharePoint Site you are migrating via with this tool and sum it up (values are in bytes). A grace storage limit of 20 percent is given in the scenario the sites grow in storage used.

```
Get-SPOSite -Limit <String> | Select-Object Url, StorageUsageCurrent
```

## Prerequisites and settings

- **Microsoft SharePoint Online Powershell**. Confirm you have the most recent version installed. [Download SharePoint Online Management Shell from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=35588)

- **Confirm that the source SharePoint tenant does not have Service encryption with Microsoft Purview Customer Key enabled.** If enabled on Source tenant, the migration fails. [Learn more on Service encryption with Microsoft Purview Customer Key](/microsoft-365/compliance/customer-key-overview)

- Source SharePoint sites must be set to Read/Write. If set to Read only, the migration fails.

## Target SharePoint sites and Group-connected SharePoint sites

>[!IMPORTANT]
>
>- Don't create any target SharePoint sites before starting your migration. If the site already exists on the target tenant, the migration fails. **You can't overwrite or merge an existing site.**
>
>- Target Microsoft 365 Groups for group-connected SharePoint site migrations **can't** be linked to existing SharePoint sites. Target Microsoft 365 groups must be precreated in a specific way.
>
>- Before starting any migrations, make certain that your source SharePoint sites are set to Read/write mode. If they're set to Read-only, the migration fails.
>
>- Each individual SharePoint site being migrated must have no more than 5 TB of storage, or 1 million items. If during a migration of multiple sites a site with more than 5 TB is encountered, that site eventually times out and fails. Sites less 5 TB continue until completion.
>
>- The 1 million item limit can be any item, including files (including versions), folders, and list line entries if it's a list or library.
>
>- Ensure all users and groups identified for migration are precreated on the target tenant.
>- Assign the appropriate licenses to each user on either the Source **or** the Target tenant. **The license doesn't need to be applied in both locations.**

## Path size limits

Microsoft character path limit can't exceed 400 characters. We recommend shortening your Target User and Site URL names to stay within the character limit.

Consider the length of User and Site ULR names in your Target tenant when you plan your migrations. Longer user and site URL names may result in migrations failing. Remember that the source's file or folder path name is combined with the new user or site name on the Target. Make sure that total doesn't exceed the 400-character path limit.

If your migration fails, rename the User or Site URL. Alternatively, work with the user to rename or move the affected files or folders higher up the directory structure to ensure it remains under the character path limit. Once resolved, you should be able to complete the migration.

## Multi-Geo

You can migrate sites directly into individual satellite geo instances as needed. When you work with multi-geo environments, more planning and configuration need to be considered.

- Trust configurations need to be established between all source and target instances that are part of the migration. 
- The identity mapping file must be uploaded to every target instance.
- When you migrate in multi-geo environments, each source instance is subject to the 4000 queue size limit regardless of the number of target tenants.
- Establishing multiple trusts allows you to move sites directly into a geo instance of choice.
- If a site is migrated to an incorrect instance, you can't use Cross Tenant Shared Data Migration to move it between instances of the same tenant.

Use the appropriate multi geo commands to move the site between geo instance of the same tenant.
- To move OneDrive sites between instances, see [Move a OneDrive site.](/microsoft-365/enterprise/m365-dr-workload-spo).
- To move SharePoint sites between instances, see [Move a SharePoint site or SharePoint Embedded container site.](/microsoft-365/enterprise/m365-dr-workload-spo).

## Support SharePoint features

The following types of site can be migrated between geographic locations:

- Microsoft 365 group-connected sites, including those sites associated with Microsoft Teams
- Modern sites without a Microsoft 365 group association
- Classic SharePoint sites
- Communication sites

>[!Important]
>This feature **doesn't** include migration of Teams content, channels or associated structure. If a Teams-connected SharePoint site is migrated, only the SharePoint site content is migrated to the target.

### Sharing Links

When the SharePoint site migration completes, the existing shared links for the files migrated are automatically redirected to the new geographic location.

### Permissions

Users with permissions to site may continue to have access to the site after the migration is complete, provided those users/groups were accounted for in the Identity Mapping step.

### SharePoint Workflows

Workflows (2010 or 2013) must be re-created and republished on the Target tenant.

### Apps

If you're migrating a site with Apps, you must republish and potentially modify the App on the target tenant.

### PowerApps/PowerAutomate

PowerApps and Automation Tasks must be recreated and reconnected to the Site on the target tenant.

### Web Parts

Web parts that reference content in other SharePoint Sites and/or other Microsoft 365 services (such as email, calendars) may need to be modified or recreated on the target tenant.

### Sensitivity labels

Labels associated with migrated files may not display correctly in Microsoft 365 user experiences. In addition, any protection or policy associated with the original label won't be present after migration. To apply protection or policy, the recommendation is to remove labels from files before migration, and reapply new labels as appropriate after migration.

#### Sensitivity Labels with User-Defined Permissions

Sites containing Sensitivity labels with *user-defined permissions* can't be migrated using cross-tenant migration. This guidance refers to sensitivity labels where the setting **Let users assign permissions when they apply the label** is selected in the label definition. More information can be found here: [Enable sensitivity labels for files in SharePoint and OneDrive](/purview/sensitivity-labels-sharepoint-onedrive-files#support-for-labels-configured-for-user-defined-permissions).

In order to migrate sites containing Sensitivity labels with *user-defined permissions*, the labels must first be removed from files within the sites. This action can be done either manually, or by using **Unlock-SPOSensitivityLabelEncryptedFile**.

**Example**:

`Unlock-SPOSensitivityLabelEncryptedFile. -FileUrl "https://contoso.com/sites/Marketing/Shared Documents/Doc1.docx" -JustificationText "Need to decrypt this file".`

## Communicating with your users

When you migrate SharePoint sites between tenants, it's important to communicate to your users what to expect.

- How could this migration impact them?
- Can they continue to work during the migration?
- When does the migration start and how long could it last?
- What's the new URL to access the new site, plus any other details about the new tenant?
- Advise users to close their files and not make any edits during their migration window.
- Advise about any file permissions or sharing changes that may occur as part of the migration.

## Scheduling SharePoint site migrations

You can schedule SharePoint site migrations in advance but consider the following recommendations:

- Start with a few sites to validate your workflows and communication strategies.
- Once you're comfortable with the process, you can schedule large batches of migrations.
- You can schedule up to 4,000 migrations at a time per batch.
- As the migrations begin, you can schedule more, with a maximum of 4,000 pending migrations in the queue at any given time.

## Get started

- **Step 1:** [Connect to the source and the target tenants](cross-tenant-sharepoint-migration-step1.md).  
- **Step 2:** [Establish trust between the source and the target tenant](cross-tenant-sharepoint-migration-step2.md)
- **Step 3:** [Verify trust is established](cross-tenant-sharepoint-migration-step3.md)
- **Step 4:** [Precreate users and groups](cross-tenant-sharepoint-migration-step4.md)  
- **Step 5:** [Prepare identity mapping](cross-tenant-sharepoint-migration-step5.md)
- **Step 6:** [Start a Cross-tenant SharePoint migration](cross-tenant-sharepoint-migration-step6.md)
- **Step 7:** [Post migration steps](cross-tenant-sharepoint-migration-step7.md)

## Step 1: [Connect to source and target tenants](cross-tenant-sharepoint-migration-step1.md)
