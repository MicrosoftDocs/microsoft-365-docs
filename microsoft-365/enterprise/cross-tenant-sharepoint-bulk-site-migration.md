---
title: Performing Bulk SharePoint site Cross-tenant migrations (preview)
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
description: "Performing Bulk SharePoint site Cross-tenant migrations. This feature is in private preview."
---
# Performing Bulk SharePoint Site Migrations (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

This article discusses to to perform bulk SharePoint site migrations using the  Cross-tenant SharePoint migration solution. To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

To perform a bulk SharePoint Site migration, you can create specific scripts via PowerShell on the Source tenant.

Though Microsoft does not offer any specific suggestions for how to create these PowerShell scripts, we recommend that you engage the services of an Admin user who is proficient in PowerShell script creation and execution. A suggested approach would be the following:

1. **Validate scoped sites for SharePoint Migration**.  Create a script that will validate the status of your SharePoint Sites, site users, and groups before initiating the migration.  This script should be designed to validate the existence of the **SharePoint** site, as well as the provisioning status of the users and groups on the target tenant. Once validated, the script should provide the status of those users and groups, and log any exceptions that are found.</br>

2. **Build Identity Map**.  Follow the steps detailed here: [Create the Identity mapping file](/microsoft-365/enterprise/cross-tenant-sharepoint-migration-step5#create-the-identity-mapping-file). </br>

3. **Schedule jobs for sites for SharePoint site migration**. Create a script that will schedule all the **SharePoint** sites you want to migrate. You can schedule up to 4,000 migrations. </br>

4. **Reporting status for all SharePoint sites being migrated**. Create scripts that can be used to provide a report on the status of all SharePoint sites in the migration. You can tailor the script to output success and failure status and provide status details for each site migration.
