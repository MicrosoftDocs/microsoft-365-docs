---
title: SharePoint Cross-tenant SharePoint migration Step 1 (preview)
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
description: "Step 1 of the SharePoint Cross-tenant migration feature"
---
# Step 1: Connect to the source and target tenants (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

This is Step 1 in a solution designed to complete a **Cross-tenant SharePoint migration**. To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

- **Step 1: [Connect to the source and the target tenants](cross-tenant-SharePoint-migration-step1.md)**
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-SharePoint-migration-step2.md) 
- Step 3: [Verify trust has been established](cross-tenant-SharePoint-migration-step3.md) 
- Step 4: [Pre-create users and groups](cross-tenant-SharePoint-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-SharePoint-migration-step5.md)
- Step 6: [Start a Cross-tenant SharePoint migration](cross-tenant-SharePoint-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)

## Before you begin

- **Microsoft SharePoint Online Powershell**. Confirm you have the most recent version installed. If not, [Download SharePoint Online Management Shell from Official Microsoft Download Center](/download/details.aspx?id=35588).
- Be a SharePoint Online admin or Microsoft 365 Global admin on both the source and target tenants


### Connect to both tenants

1. Sign in to the SharePoint Management Shell as a SharePoint Online admin or Microsoft 365 Global admin.
2. Run the following entering the **source** tenant URL: 

    ```powershell
    Connect-SPOService -url https://<TenantName>-admin.sharepoint.com
    ```

3. When prompted, sign in to the **source** tenant using your Admin username and password.
 
4. Run the following entering the **target** tenant URL: 

    ```powershell
    Connect-SPOService -url https://<TenantName>-admin.sharepoint.com
    ```

5. When prompted, sign in to the **target** tenant using your Admin username and password.

>[!Important]
>**Microsoft 365 Multi-Geo customers:** You must treat each geography as a separate tenant. Provide the correct geography-specific URLs throughout the migration process.

## Step 2: [Establish trust between the source and target tenants](cross-tenant-SharePoint-migration-step2.md)