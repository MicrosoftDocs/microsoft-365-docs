---
title: How to Migrate from Microsoft Defender for Endpoint to Microsoft Defender for Business.
description: Learn how to migrate from Microsoft Defender for Endpoint Plan 1 or Microsoft Defender for Endpoint Plan 2 to Microsoft Defender for Business.
author: 4D5A
audience: Admin
ms.topic: article
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
ms.custom: intro-get-started
---

# How to Migrate from Microsoft Defender for Endpoint to Microsoft Defender for Business.

Microsoft offers various versions of Microsoft Defender for Endpoint (MDE) and Microsoft Defender for Business (MDB). This article is inteded for admins who previously deployed MDE Plan 1 Trial, MDE Plan 1, MDE Plan 2 Trial, or MDE Plan 2 and now are moving to MDB.

**Use this article to:**
- [Prepare your organization to migrate from MDE to MDB](#prepare-your-organization-to-migrate-from-mde-to-mdb)
- [Troubleshoot issues with migrating from MDE to MDB](#troubleshoot-issues-with-migrating-from-mde-to-mdb)

## Prepare your organization to migrate from MDE to MDB

The migration process from MDE to MDB is planned to be an easy process which mostly requires changing licenses in the Microsofr 365 Admin Center for your Microsoft 365 tenant and reviewing your existing MDE settings after you complete the migration from MDE to MDB.

To start the process, you will need to add MDB licenses to your Microsoft 365 tenant. As of March 1, 2022, Defender for Business is included in Microsoft 365 Business Premium.

1. [Get Microsoft Defender for Business] (get-defender-business.md) licenses.

2. Unassign all MDE licenses from users and assign your MDB licenses.

2. [Assign MDB licenses to users.] (mdb-add-users.md)

3. Check the features shown in the Microsoft Defender Dashboard and confirm that you see the MDB features.

> [!IMPORTANT]
> After you have removed all MDE licenses in your Microsoft 365 tenant, assigned MDB licenses and you go to https://security.microsoft.com, you should confirm that you only see the features for MDB.
> For example, if you are migrating from MDE Plan 2 Trial or MDE Plan 2, you should no longer see the "Advanced Hunting" feature under Hunting. If you still see the "Advanced Hunting" feature, please see the section, [Troubleshoot issues with migrating from MDE to MDB].
> If you click Configuration management, the "Device configuration" feature should be displayed once you have successfully migrated to MDB. If you do not see the "Device configuration" feature, please see the section, [Troubleshoot issues with migrating from MDE to MDB].
>

> [!NOTE]
> The Microsoft Defender Dashboard URI is the same for MDE and MDB. As of June 1, 2022, you cannot manage a mix of MDE and MDB licenes in the same Microsoft 365 tenant's Microsoft Defender Dashboard. The configuration of your Microsoft Defender Dashbaord is determined by the SKU identified in the Microsoft 365 tenant. If the Microsoft 365 tenant has SKUs for both MDE and MDB that will cause a conflict and your Microsoft Defender Dashbaord may display features for the incorrect subscription.
>

## Troubleshoot issues with migrating from MDE to MDB

If you see the "Advanced Hunting" feature or you do not see the "Device configuration" feature in Microsoft Defender Dashboard (https://security.microsoft.com) after you have removed all MDE licenses from your Microsoft 365 tenant and assigned MDB licenses, you may have a license conflict.

A license conflict may occur if you previously added MDE Plan 1 Trial or MDE Plan 2 Trial and they either have not expired (which may prevent you from removing them) or they have expired and cannot be extended (which may prevent you from removing them).

### Verify the license which is active in your Microsoft 365 tenant by querying Microsoft 365 Graph.

1. Open https://developer.microsoft.com/en-us/graph/graph-explorer 
2. Login as a Microsoft 365 Global Admin in your Microsoft 365 tenant
3. Check the box **Consent on behalf of your tenant**.
4. In the dropdown for the API action, select **GET**.
5. In the dropdown for the API version, select **v1.0**.
6. In the textbox enter **https://graph.microsoft.com/v1.0/subscribedSkus**.
7. Click **Run query**.

The table below provides the servicePlanName values which you may obtain from the Microsoft Graph Explorer API Query GET https://graph.microsoft.com/v1.0/subscribedSkus.

   | servicePlanName | Information |
   |:---|:---|
   | MDE_LITE | Your tenant still has an MDE Plan 1 Trial or MDE Plan 1 license activated. |
   | WINDEFATP | Your tenant still has an MDE Plan 2 Trial or MDE Plan 2 license activated |
   | MDE_SMB | Your tenant has an MDB Trial or MDB license activated |

>[!NOTE]
> If you receive the error, "Forbidden - 403... You need to consent to the permissions on the Modify permissions (Preview) tab", click **Modify permissions (Preview)** at the top of the page. You need to add the permission **Organization.Read.All** to run your query.
>

8. Copy the entire output of the Microsoft Graph Explorer API Query GET https://graph.microsoft.com/v1.0/subscribedSkus.
9. Access your Microsoft 365 Admin Center.
10. Click **Support**.
11. Click **New service request**.
12. Enter **How to setup defender for endpoint (Microsoft Defender for Endpoint)**.
13. Click the arrow button.
14. Click **Contact support**.
15. In the Description, explain that you are attempting to migrate to MDB, and paste the output you copied in step 8.
16. Complete the form.
17. Click **Contact me**.

Microsoft 365 Support should contact you to assist with removing the conflicting setting on the back end.