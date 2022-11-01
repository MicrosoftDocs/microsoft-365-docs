---
title: OneDrive Cross-Tenant User Data Migration Step 3
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
description: "Step 3 of the OneDrive Cross-tenant migration feature"
---
# Step 3: Cross-tenant OneDrive migration - Verifying trust

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


## Step 4: [Pre-create users and groups](cross-tenant-onedrive-migration-step4.md)