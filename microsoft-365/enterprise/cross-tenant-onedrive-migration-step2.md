---
title: OneDrive Cross-Tenant User Data Migration Step 2
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
description: "Step 2 of the OneDrive Cross-tenant migration feature"
---
# Step 2: Cross-tenant OneDrive migration - Establishing trust between the source and target tenants

After connecting to the source and target tenant, the next step in performing a cross-tenant OneDrive migration is establishing trust between the tenants.

To establish trust, each SharePoint Online tenant administrator must run specific commands on both source and target tenants. Once the trust has been requested, the administrator of the target tenant will receive an email informing them that another tenant is trying to establish a trust relationship.

A seven-day waiting period occurs before the trust becomes active. During this period, the trust relationship is considered "dormant".

The "trust" command is specific to SharePoint Online. It only grants permission for the SharePoint administrator on the source tenant to execute OneDrive Migration operations to the identified target tenant. 

Granting trust *doesn't* give the administrator any visibility, permission, or ability to collaborate between the source tenant and the target tenant. 

>[!Important]
>If you are a OneDrive Multi-Geo or a multi-national customer, you must establish trust between each geography involved in your migration project.
>

## Before you begin

Before running the trust commands, obtain the cross-tenant host URLs for both the source and target tenants. You will need these URLs when establishing the trust relationship between source-to-target and target-to-source. 

**To obtain the cross-tenant host URLs:**

On both the source and target tenants, run:

```powershell

Get-SPOCrossTenantHostURL
``` 

 
*Example:* Run command on Source tenant:

 :::image type="content" source="media/t2t-onedrive-hosturl-source.png" alt-text="example of how to obtain host url for source":::

*Example:* Run command on target tenant:

:::image type="content" source="media/t2t-onedrive-hosturl-target.png" alt-text="example of how to obtain host url for target":::
 


## Run the trust commands
These commands send a request to the tenant with whom you want to establish trust.

1. On the source tenant, run this command to send a trust request to the target tenant:

```powershell

Set-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Target -PartnerCrossTenantHostUrl <TARGETCrossTenantHostUrl>
 
``` 

</br>

2. On the target tenant, run this command to send a trust request to the source tenant:

```powershell
Set-SPOCrossTenantRelationship -Scenario MnA -PartnerRole Source -PartnerCrossTenantHostUrl <SOURCECrossTenantHostUrl>
```

 
### Parameter definitions

|Parameter|Definition|
|:-----|:-----|
|PartnerRole|Roles of the partner tenant you are establishing trust with.  Use *source* if partner tenant is the source of the OneDrive migrations, and *target* if the partner tenant is the Destination.
|PartnerCrossTenantHostURL|The cross-tenant host URL of the partner tenant.  The partner tenant can determine this for you by running: *Get-SPOCrossTenantHostURL* on each of the tenants.|

## Step 3: [Verify that trust has been established](cross-tenant-onedrive-migration-step3.md)