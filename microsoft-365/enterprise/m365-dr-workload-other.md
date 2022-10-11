---
title: Data Residency for Other Microsoft 365 Services
description: Learn about Data Residency for Other Microsoft 365 Services
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 10/11/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Other Microsoft 365 Services

## Data Residency commitments available

Use the following guidance to determine where your data is located. Please reference your tenant Default Geography. 

-	Forms: Tenants in EU member Countries maintain data in Macro Region Geography 1 – EMEA.  All other tenants have customer data stored in the United States.
  
-	**Intune**:  Refer to endpoint.microsoft.com, Tenant Administration > Tenant Status for existing tenants.  If you do not have an existing tenant, create a trial tenant and provision Intune.

-	**Office for mobile**:  Customer data for this service comes from other services, like Exchange Online and SharePoint Online.  There is no customer data stored outside of those services with the exception of the mobile device.
 
- **OneNote Services**:  OneNote stores customer data in OneDrive for Business.  It does however have an API that can cause persistent caches to be made outside of the Geography where OneDrive for Business stores customer data.
  
-	**Planner**:  Please see section (***TODO: add link to section 10***)

-	**Power Apps for Microsoft 365**: Please refer to [Dynamics 365 availability and data locations | Microsoft Learn](/dynamics365/get-started/availability)

-	**Stream**:  You can find this information from the “?” option in the Stream UI, if you have it running and then click on “About Microsoft Stream” and see where your data is stored. If needed, create a trial tenant.   -	[***TODO: need to validate text from team***]
	
-	**Sway**:  Sway stores customer data in the United States for all tenants.
  
-	**Viva Insights – Advanced**, Mgr, Leader:  Please see section (***TODO: add link to section 10***)
  
- **Viva Insights – Personal**:  Customer data for this service is stored within Exchange Online.  See (***TODO: link to EXO***).

-	**Viva Learning**:  Please see section (***TODO: add link to section 10***)

-	**Whiteboard**:   Please refer to [Manage data for Microsoft Whiteboard | Microsoft Learn](/whiteboard/manage-data-organizations)

-	**Yammer**:  Please refer to [Data residency - Yammer | Microsoft Learn](/yammer/manage-security-and-compliance/data-residency)


**Commitment:**

**No data residency commitments available, unless otherwise stated**
