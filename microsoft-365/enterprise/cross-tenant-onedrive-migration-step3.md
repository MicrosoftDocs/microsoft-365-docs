---
title: OneDrive Cross-tenant OneDrive migration Step 3
ms.author: heidip
author: MicrosoftHeidi
manager: jtremper
ms.date: 10/13/2023
recommendations: true
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-migration
ms.localizationpriority: high
ms.collection: 
- SPMigration
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "Step 3 of the OneDrive Cross-tenant migration feature"
---
# Step 3: Verifying trust

This step is Step 3 in a solution designed to complete a Cross-tenant OneDrive migration. To learn more, see [Cross-tenant OneDrive migration overview](cross-tenant-onedrive-migration.md).

- Step 1: [Connect to the source and the target tenants](cross-tenant-onedrive-migration-step1.md)
- Step 2: [Establish trust between the source and the target tenant](cross-tenant-onedrive-migration-step2.md) 
- **Step 3: [Verify trust has been established](cross-tenant-onedrive-migration-step3.md)** 
- Step 4: [Pre-create users and groups](cross-tenant-onedrive-migration-step4.md)  
- Step 5: [Prepare identity mapping](cross-tenant-onedrive-migration-step5.md)
- Step 6: [Start a Cross-tenant OneDrive migration](cross-tenant-onedrive-migration-step6.md)
- Step 7: [Post migration steps](cross-tenant-onedrive-migration-step7.md)

Before proceeding with your migration,  you need to verify the trust is complete. A status of *GoodToProceed* confirms that the trust is verified.

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
|NotEstablished|Trust wasn't requested locally.|
|NotEstablishedByPartner|Partner hasn't requested the Trust.|
|DormantByPartner|Partner’s requested trust is within the seven days waiting period after creation.|
|CouldNotContactPartner|Couldn't contact the partner to determine status.|
|GoodToProceed|Verified to proceed.|


## Step 4: [Pre-create users and groups](cross-tenant-onedrive-migration-step4.md)
