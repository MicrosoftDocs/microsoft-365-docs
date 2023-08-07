---
title: Provide managed security service provider (MSSP) access
description: Learn about changes from the Microsoft Defender Security Center to the Microsoft 365 Defender portal
keywords: Getting started with the Microsoft 365 Defender portal, Microsoft Defender for Office 365, Microsoft Defender for Endpoint, MDO, MDE, single pane of glass, converged portal, security portal, defender security portal
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
manager: dansimp
audience: ITPro
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
ms.collection: 
- m365-security
- tier2 
ms.date: 02/16/2021
---

# Provide managed security service provider (MSSP) access 

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

[!INCLUDE [Prerelease](../includes/prerelease.md)]

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)

To implement a multi-tenant delegated access solution, take the following steps:

1. Enable [role-based access control](/microsoft-365/security/defender-endpoint/rbac) for Defender for Endpoint via the Microsoft 365 Defender portal and connect with Azure Active Directory (Azure AD) groups.

2. Configure [entitlement management for external users](/azure/active-directory/governance/entitlement-management-external-users) within Azure AD Identity Governance to enable access requests and provisioning.

3. Manage access requests and audits in [Microsoft Myaccess](/azure/active-directory/governance/entitlement-management-request-approve).

## Enable role-based access controls in Microsoft Defender for Endpoint in Microsoft 365 Defender portal

1. **Create access groups for MSSP resources in Customer AAD: Groups**

    These groups will be linked to the Roles you create in Defender for Endpoint in Microsoft 365 Defender portal. To do so, in the customer AD tenant, create three groups. In our example approach, we create the following groups:

    - Tier 1 Analyst
    - Tier 2 Analyst
    - MSSP Analyst Approvers  

2. Create Defender for Endpoint roles for appropriate access levels in Customer Defender for Endpoint in Microsoft 365 Defender portal roles and groups.

    To enable RBAC in the customer Microsoft 365 Defender portal, access **Permissions >  Endpoints roles & groups > Roles** with a user account with Global Administrator or Security Administrator rights.

    :::image type="content" source="../../media/mssp-access.png" alt-text="The details of the MSSP access in the Microsoft 365 Defender portal" lightbox="../../media/mssp-access.png":::

    Then, create RBAC roles to meet MSSP SOC Tier needs. Link these roles to the created user groups via "Assigned user groups".

    Two possible roles:

    - **Tier 1 Analysts** <br>
      Perform all actions except for live response and manage security settings.

    - **Tier 2 Analysts** <br>
      Tier 1 capabilities with the addition to [live response](/microsoft-365/security/defender-endpoint/live-response).

    For more information, see [Manage portal access using role-based access control](/microsoft-365/security/defender-endpoint/rbac).

## Configure Governance Access Packages

1. **Add MSSP as Connected Organization in Customer AAD: Identity Governance**

    Adding the MSSP as a connected organization will allow the MSSP to request and have accesses provisioned. 

    To do so, in the customer AD tenant, access Identity Governance: Connected organization. Add a new organization and search for your MSSP Analyst tenant via Tenant ID or Domain. We suggest creating a separate AD tenant for your MSSP Analysts.

2. **Create a resource catalog in Customer AAD: Identity Governance**

    Resource catalogs are a logical collection of access packages, created in the customer AD tenant.

    To do so, in the customer AD tenant,  access Identity Governance: Catalogs, and add **New Catalog**. In our example, we will call it **MSSP Accesses**.

    :::image type="content" source="../../media/goverance-catalog.png" alt-text="A new catalog in the Microsoft 365 Defender portal" lightbox="../../media/goverance-catalog.png":::


    Further more information, see [Create a catalog of resources](/azure/active-directory/governance/entitlement-management-catalog-create).

3. **Create access packages for MSSP resources Customer AAD: Identity Governance**

    Access packages are the collection of rights and accesses that a requestor will be granted upon approval. 

    To do so, in the customer AD tenant, access Identity Governance: Access Packages, and add **New Access Package**. Create an access package for the MSSP approvers and each analyst tier. For example, the following Tier 1 Analyst configuration creates an access package that:

    - Requires a member of the AD group **MSSP Analyst Approvers** to authorize new requests
    - Has annual access reviews, where the SOC analysts can request an access extension
    - Can only be requested by users in the MSSP SOC Tenant
    - Access auto expires after 365 days

    :::image type="content" source="../../media/new-access-package.png" alt-text="The details of a new access package in the Microsoft 365 Defender portal" lightbox="../../media/new-access-package.png":::

    For more information, see [Create a new access package](/azure/active-directory/governance/entitlement-management-access-package-create).

4. **Provide access request link to MSSP resources from Customer AAD: Identity Governance**

    The My Access portal link is used by MSSP SOC analysts to request access via the access packages created. The link is durable, meaning the same link may be used over time for new analysts. The analyst request goes into a queue for approval by the **MSSP Analyst Approvers**.

    :::image type="content" source="../../media/access-properties.png" alt-text="The access properties in the Microsoft 365 Defender portal" lightbox="../../media/access-properties.png":::

    The link is located on the overview page of each access package.

## Manage access

1. Review and authorize access requests in Customer and/or MSSP myaccess.

    Access requests are managed in the customer My Access, by members of the MSSP Analyst Approvers group.

    To do so, access the customer's myaccess using: `https://myaccess.microsoft.com/@<Customer Domain>`.

    Example: `https://myaccess.microsoft.com/@M365x440XXX.onmicrosoft.com#/`

2. Approve or deny requests in the **Approvals** section of the UI.

     At this point, analyst access has been provisioned, and each analyst should be able to access the customer's Microsoft 365 Defender portal:

    `https://security.microsoft.com/?tid=<CustomerTenantId>` with the permissions and roles they were assigned.
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
