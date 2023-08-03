---
title: Cross-tenant SharePoint site migration overview (preview)
ms.author: jhendr
author: JoanneHendrickson
manager: serdars
recommendations: true
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Learn about the Cross-tenant SharePoint migration solution to migrate your SharePoint sites from tenant to tenant, currently in preview."
---
# Cross-tenant SharePoint migration (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).


SharePoint sites can now be moved from one tenant to another using the Cross-tenant SharePoint migration feature. 

Using *SharePoint Online PowerShell*, SharePoint Admins can to transition sites into their new tenants.

Up to 4,000 SharePoint accounts can be scheduled for migration in advance at a given time. Once scheduled, migrations occur without content ever leaving the Microsoft 365 cloud and with minimal disruption. When migrations are complete, a redirect is placed in the location of the user's original SharePoint site, so any links to files and folders can continue working in the new location.

>[!Important]
>Cross-Tenant moves are a one and done migration activity. The content will be **moved** from the Source to Target, leaving behind a redirect link on Source. **Incremental and delta migration passes cannot be performed.**

## How to participate

The **Cross-Tenant User Content Migration** feature and licenses are currently only available to Enterprise Agreement customers. 

If you are an Enterprise Agreement customer who will be purchasing Cross-Tenant User Content Migration licenses, and you would like to evaluate Cross-Tenant SharePoint migration to improve your migration experience, sign-up at:

- **https://aka.ms/ODSPSecurityPreviews**
 
Make sure to include all of the requested information, and indicate your interest in "**SharePoint cross-tenant data migration (Mergers and Acquisition scenario)**". 


For more information on licensing:

- Contact your Microsoft account team
- [**Learn more at Cross-Tenant User Content Migration Licensing**](/microsoft-365/enterprise/cross-tenant-mailbox-migration).


## Prerequisites and settings

- **Microsoft SharePoint Online Powershell**. Confirm you have the most recent version installed. [Download SharePoint Online Management Shell from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=35588)

- **Turn off service encryption with Customer Key enabled.** Confirm that the source OneDrive tenant **doesn't** have Service encryption with Microsoft Purview Customer Key enabled. If enabled on Source tenant, the migration will fail. [Learn more on Service encryption with Microsoft Purview Customer Key](/microsoft-365/compliance/customer-key-overview)

- Source SharePoint sites must be set to Read/Write. If set to Read only, the migration will fail.

## Target SharePoint sites and Group-connected SharePoint sites

>[!Important]
>- Do not create any target SharePoint sites before starting your migration. If the site already exists on the target tenant the migration will fail. **You cannot overwrite or merge an existing site.** 
>
>- Target Microsoft 365 Groups for group-connected SharePoint site migrations CANNOT be linked to existing SharePoint sites. Target Microsoft 365 groups must be pre-created in a specific way
>
>Before starting any migrations, make certain that your source SharePoint sites are set to Read/write mode.  If they are set to read-only the migration will fail. 
>
>- Each individual SharePoint site being migrated must have no more than 2 TB of storage, or 1 million items. If during a migration of multiple sites a site with more than 2 TB is encountered, that site will eventually timeout and fail. Sites less 2 TB will continue until completion.
> - The 1 million item limit can be any "item", including files (including versions), folders, and list line entries if it is a list or library.
>
>- Ensure all users and groups identified for migration have been pre-created on the target tenant.
>- Assign the appropriate licenses to each user on the target tenant.


## Path size limits

Microsoft character path limit cannot exceed 400 characters. We recommend shortening your Target User/Site URL names to stay within the character limit. 
 
Consider the length of User/Site ULR names in your Target tenant when planning your migrations. Longer user/site URL names may result in migrations failing. Remember that the source's file or folder path name is combined with the new user or site name on the Target. Make sure that total doesn't exceed the 400-character path limit.
 
If your migration fails, rename the User/Site URL or work with the user to rename or move the affected files or folders higher up the directory structure to ensure it remains under the character threshold limit. Once resolved, you should be able to complete the migration.


## Support SharePoint features 

The following types of site can be migrated between geographic locations:
 
- Microsoft 365 group-connected sites, including those sites associated with Microsoft Teams
- Modern sites without a Microsoft 365 group association
- Classic SharePoint sites
- Communication sites

>[!Important]
>This feature **does not** include migration of Teams content, channels or associated structure. If a Teams-connected SharePoint site is migrated, only the SharePoint site content will be migrated to the target.

### Sharing Links
 
When the SharePoint site migration completes, the existing shared links for the files that were migrated will automatically redirect to the new geographic location.

### Permissions
 
Users with permissions to site may continue to have access to the site after the migration is complete, provided those users/groups were accounted for in the Identity Mapping step. 

### SharePoint Workflows
 
Workflows (2010 or 2013) must be re-created and republished on the Target tenant.


### Apps
If you're migrating a site with Apps, you must republish & potentially modify the App on the target tenant. 
 
### PowerApps/PowerAutomate
 
PowerApps & Automation Tasks must be re-created and reconnected to the Site on the target tenant.


### Web Parts
 
Web parts that reference content in other SharePoint Sites and/or other Microsoft 365 services (such as email, calendars) may need to be modified or re-created on the target tenant.

## Communicating with your users

When migrating SharePoint sites between tenants, it is important to communicate to your users what to expect. 

- How will this migration impact them?
- Will they be able to continue to work during the migration?
- When will the migration start and how long will it last?
- What is the new URL in which to access their new site plus any other details about the new tenant
- Advise users to close their files and not make any edits during their migration window.
- Advise of any file permissions or sharing changes that may occur as part of the migration.

## Scheduling SharePoint site migrations

You can schedule SharePoint site migrations in advance but consider the following:

- Start with a small number of sites to validate your workflows and communication strategies
- Once you are comfortable with the process, you can schedule large batches of migrations.
- You can schedule up to 4,000 migrations at a time per batch
- As the migrations begin, you can schedule more, with a maximum of 4,000 pending migrations in the queue at any given time.



## Get started

- **Step 1:** [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md).  
- **Step 2:** [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md)
- **Step 3:** [Verify trust has been established](cross-tenant-onedrive-migration-step3.md)
- **Step 4:** [Pre-create users and groups](cross-tenant-sharepoint-migration-step4.md)  
- **Step 5:** [Prepare identity mapping](cross-tenant-sharepoint-migration-step5.md)
- **Step 6:** [Start a Cross-tenant SharePoint migration](cross-tenant-sharepoint-migration-step6.md)
- **Step 7:** [Post migration steps](cross-tenant-sharepoint-migration-step7.md)

## Step 1: [Connect to source and target tenants](cross-tenant-sharepoint-migration-step1.md)
