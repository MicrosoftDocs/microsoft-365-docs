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

When performing a cross-tenant OneDrive migration, you first connect to the source and target tenants, then establish trust between the tenants. Run commands on the source and target tenants to verify the established trust. A status of *GoodToProceed*,  confirms that the trust is verified.

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
|NotEstablished|Trust has not been requested locally.|
|NotEstablishedByPartner|Trust has not been requested by the requested partner|
|Dormant|Requested trust is within the 7 days waiting period after creation.|
|DormantByPartner|Partner’s requested trust is within the 7 days waiting period after creation.|
|CouldNotContactPartner|Could not contact the partner to determine status.|
|GoodToProceed|Verified to proceed.|


## Step 4: [Manage permissions and precreate users and groups](cross-tenant-onedrive-migration-step4.md)