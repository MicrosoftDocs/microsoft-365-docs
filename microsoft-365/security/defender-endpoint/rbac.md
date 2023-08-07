---
title: Use role-based access control to grant fine-grained access to Microsoft 365 Defender portal
description: Create roles and groups within your security operations to grant access to the portal.
keywords: rbac, role, based, access, control, groups, control, tier, aad
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Manage portal access using role-based access control

> [!NOTE]
> If you are running the Microsoft 365 Defender preview program you can now experience the new Microsoft Defender 365 role-based access control (RBAC) model. For more information, see [Microsoft Defender 365 role-based access control (RBAC)](../defender/manage-rbac.md).

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Azure Active Directory
- Office 365

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-rbac-abovefoldlink)

Using role-based access control (RBAC), you can create roles and groups within your security operations team to grant appropriate access to the  portal. Based on the roles and groups you create, you have fine-grained control over what users with access to the portal can see and do.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bJ2a]

Large geo-distributed security operations teams typically adopt a tier-based model to assign and authorize access to security portals. Typical tiers include the following three levels:

|Tier|Description|
|---|---|
|Tier 1|**Local security operations team / IT team** <br> This team usually triages and investigates alerts contained within their geolocation and escalates to Tier 2 in cases where an active remediation is required.|
|Tier 2|**Regional security operations team** <br> This team can see all the devices for their region and perform remediation actions.|
|Tier 3|**Global security operations team** <br> This team consists of security experts and are authorized to see and perform all actions from the portal.|

> [!NOTE]
> For Tier 0 assets, refer to [Privileged Identity Management](/azure/active-directory/privileged-identity-management/pim-configure) for security admins to provide more granular control of Microsoft Defender for Endpoint and Microsoft 365 Defender.

Defender for Endpoint RBAC is designed to support your tier- or role-based model of choice and gives you granular control over what roles can see, devices they can access, and actions they can take. The RBAC framework is centered around the following controls:

- **Control who can take specific action**
  - Create custom roles and control what Defender for Endpoint capabilities they can access with granularity.
- **Control who can see information on specific device group or groups**
  - [Create device groups](machine-groups.md) by specific criteria such as names, tags, domains, and others, then grant role access to them using a specific  Azure Active Directory (Azure AD) user group.

    > [!NOTE]
    > Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

To implement role-based access, you'll need to define admin roles, assign corresponding permissions, and assign Azure AD user groups assigned to the roles.

## Before you begin

Before using RBAC, it's important that you understand the roles that can grant permissions and the consequences of turning on RBAC.

> [!WARNING]
> Before enabling the feature, it's important that you have a Global Administrator role or Security Administrator role in Azure AD and that you have your Azure AD groups ready to reduce the risk of being locked out of the portal.

When you first log in to the Microsoft 365 Defender portal, you're granted either full access or read only access. Full access rights are granted to users with Security Administrator or Global Administrator roles in Azure AD. Read only access is granted to users with a Security Reader role in Azure AD.

Someone with a Defender for Endpoint Global administrator role has unrestricted access to all devices, regardless of their device group association and the Azure AD user groups assignments.

> [!WARNING]
> Initially, only those with Azure AD Global Administrator or Security Administrator rights will be able to create and assign roles in the Microsoft 365 Defender portal, therefore, having the right groups ready in Azure AD is important.
>
> **Turning on role-based access control will cause users with read-only permissions (for example, users assigned to Azure AD Security reader role) to lose access until they are assigned to a role.**
>
> Users with admin permissions are automatically assigned the default built-in Defender for Endpoint global administrator role with full permissions. After opting in to use RBAC, you can assign additional users that are not Azure AD Global or Security Administrators to the Defender for Endpoint global administrator role.
>
> After opting in to use RBAC, you cannot revert to the initial roles as when you first logged into the portal.

## Related topic

- [RBAC roles](../office-365-security/migrate-to-defender-for-office-365-onboard.md#rbac-roles)
- [Create and manage device groups in Microsoft Defender for Endpoint](machine-groups.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
