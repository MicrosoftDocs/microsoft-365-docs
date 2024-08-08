---
title: OneDrive Cross-tenant OneDrive migration Step 1
ms.author: heidip
author: MicrosoftHeidi
manager: jtremper
ms.date: 10/13/2023
recommendations: true
audience: ITPro
ms.topic: article
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Step 1 of the OneDrive Cross-tenant migration feature"
---
# Step 1: Connect to the source and target tenants

This article details Step 1 in a solution designed to complete a Cross-tenant OneDrive migration. To learn more, see [Cross-tenant OneDrive migration overview](cross-tenant-onedrive-migration.md).

- **Step 1: [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md)**
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md) 
- Step 3: [Verify trust is established](cross-tenant-onedrive-migration-step3.md) 
- Step 4: [Pre-create users and groups](cross-tenant-onedrive-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-onedrive-migration-step5.md)
- Step 6: [Start a Cross-tenant OneDrive migration](cross-tenant-onedrive-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-onedrive-migration-step7.md)

## Before you begin

- **Microsoft SharePoint Online Powershell**. Confirm you have the most recent version installed. If not, [Download SharePoint Online Management Shell from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=35588).
- Be a SharePoint Online admin or Microsoft 365 Global admin on both the source and target tenants

>[!IMPORTANT]
>Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

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

> [!IMPORTANT]
> **Microsoft 365 Multi-Geo customers:** You must treat each geography as a separate tenant. Provide the correct geography-specific URLs throughout the migration process.

## Step 2: [Establish trust between the source and target tenants](cross-tenant-onedrive-migration-step2.md)
