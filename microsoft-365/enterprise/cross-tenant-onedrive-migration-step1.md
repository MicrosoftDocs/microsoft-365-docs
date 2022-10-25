---
title: OneDrive Cross-Tenant User Data Migration Step 1
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
description: "Step 1 of the OneDrive Cross-tenant migration feature"
---
# Step 1: Cross-tenant OneDrive migration - Connect to the source and target tenants

The first step in your cross-tenant OneDrive migration, is to connect to both your SharePoint source and target tenant.

## Before you begin

- **Microsoft SharePoint Online Powershell**. Confirm you have the most recent version installed. If not, [Download SharePoint Online Management Shell from Official Microsoft Download Center](/download/details.aspx?id=35588).
- Be a SharePoint Online admin or Microsoft 365 Global admin on both the source and target tenants.


### Connect to both tenants

1. Sign in to the Sharepoint Management Shell as a SharePoint Online admin or Microsoft 365 Global admin.
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
>**OneDrive Multi-Geo or multi-national customers:** You must treat each geography as a separate tenant. Provide the correct geography-specific URLs throughout the migration process.

## Step 2: [Establish trust between the source and target tenants](cross-tenant-onedrive-migration-step2.md)