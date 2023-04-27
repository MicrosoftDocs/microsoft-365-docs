---
title: SharePoint Cross-tenant SharePoint migration Step 3 (preview)
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
description: "Step 3 of the SharePoint Cross-tenant migration feature"
---
# Step 3: Verifying trust (preview)

>[!Note]
>Cross-Tenant SharePoint migration is currently in a private preview stage of development. As an unfinished project, any information or availability is subject to change at any time. Support for private-preview customers will be handled via email. Cross-Tenant SharePoint migration is covered by the preview terms of the [Microsoft Universal License Terms for Online Services](https://www.microsoft.com/licensing/terms/product/ForOnlineServices/all).

This is Step 3 in a solution designed to complete a **Cross-tenant SharePoint migration.** To learn more, see [Cross-tenant SharePoint migration overview](cross-tenant-SharePoint-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-SharePoint-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-SharePoint-migration-step2.md) 
- **Step 3: [Verify trust has been established](cross-tenant-SharePoint-migration-step3.md)** 
- Step 4: [Pre-create users and groups](cross-tenant-SharePoint-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-SharePoint-migration-step5.md)
- Step 6: [Start a Cross-tenant SharePoint migration](cross-tenant-SharePoint-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-SharePoint-migration-step7.md)

Before proceeding with your migration,  you'll need to verify the trust is complete. A status of *GoodToProceed*,  confirms that the trust is verified.

## To verify trust has been established

1. On the **source tenant** run:
 
```powershell

Verify-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Target -PartnerCrossTenantHostUrl <TARGETCrossTenantHostUrl>

```
2. On the **target tenant** run:

```powershell 

Verify-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Source -PartnerCrossTenantHostUrl <SOURCECrossTenantHostUrl>
```

## Troubleshooting trust issues

When verifying trust, possible values

|Value|Description|
|:-----|:-----|
|NotEstablished|Trust hasn't been requested locally.|
|NotEstablishedByPartner|Trust hasn't been requested by the partner|
|DormantByPartner|Partner’s requested trust is within the seven days waiting period after creation.|
|CouldNotContactPartner|Couldn't contact the partner to determine status.|
|GoodToProceed|Verified to proceed.|


## Step 4: [Pre-create users and groups](cross-tenant-SharePoint-migration-step4.md)