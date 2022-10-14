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
ms.date: 10/14/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Other Microsoft 365 Services

## Data Residency commitments available

>[!NOTE]
>The following M365 services do not have specific commitments for data residency.  You can find methods for determining the customer data location for these services below.

Use the following guidance to determine where your data is located. Please reference your tenant Default Geography.

- **Forms**: Tenants in EU member Countries maintain data in Macro Region Geography 1 – EMEA. All other tenants have customer data stored in the United States.
- **Intune**:  Refer to endpoint.microsoft.com, Tenant Administration | Tenant Status for existing tenants. If you do not have an existing tenant, create a trial tenant and provision Intune.
  - Microsoft will not store Intune customer data at rest outside the stated geo, except if:
  - It is necessary for Microsoft to provide customer support, troubleshoot the service, or comply with legal requirements.
  - The customer configures an account to enable such storage of customer data, including through the use of the following:
  - Features that are designed to operate globally, such as Content Delivery Network (CDN), which provides a global caching service and stores customer data at edge locations around the world.
  - Azure Active Directory (Azure AD), which may store directory data globally. This does not apply to Azure AD deployments in the United States (where Azure AD data is stored solely in the United States) or in Europe (where Azure AD data is stored in Europe or the United States).
  - Preview, beta, or other prerelease services, which typically store customer data in the United States but may store it globally.
    Regardless, Microsoft does not control or limit the Geo from which customers or their end users may access customer data. Similarly, where customer data in other services is subsequently integrated into Intune, the originating customer data will continue to be stored subject to the other service's own Geo commitments (if any); only the copy of the customer data integrated into Intune will be stored in the stated Geo for Intune.
- **Office for mobile**:  Customer data for this service comes from other services, like Exchange Online and SharePoint Online. There is no customer data stored outside of those services with the exception of the mobile device.
- **OneNote Services**:  OneNote stores customer data in OneDrive for Business. It does however have an API that can cause persistent caches to be made outside of the Geography where OneDrive for Business stores customer data.
- **Planner**:  Please see section (***TODO: add link to section 10***)
- **Power Apps for Microsoft 365**: Please refer to [Dynamics 365 availability and data locations | Microsoft Learn](/dynamics365/get-started/availability)
- **Stream**:  You can find this information from the "?" option in the Stream UI, if you have it running and then click on "About Microsoft Stream" and see where your data is stored. If needed, create a trial tenant. - [***TODO: need to validate text from team***]
- **Sway**:  Sway stores customer data in the United States for all tenants.
- **Viva Insights – Advanced, Mgr, Leader**: Please see section (***TODO: add link to section 10***)
  - The data region for Manager/Leader and Advanced is determined by the primary region of the tenant, not individual users.
- **Viva Insights – Personal**: Customer data for this service is stored within Exchange Online.  See (***TODO: link to EXO***).
  - Data residency for the Personal app is based on the user's mailbox location.
- **Viva Learning**: Please see section (***TODO: add link to section 10***)
- **Whiteboard**: Please refer to [Manage data for Microsoft Whiteboard | Microsoft Learn](/whiteboard/manage-data-organizations)
- **Yammer**: Please refer to [Data residency - Yammer | Microsoft Learn](/yammer/manage-security-and-compliance/data-residency)
