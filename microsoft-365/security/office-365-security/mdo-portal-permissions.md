---
title: Microsoft Defender for Office 365 permissions in the Microsoft 365 Defender portal
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.audience: Admin
ms.topic: conceptual
audience: Admin
ms.localizationpriority: high
ms.collection: 
  - m365-security
  - tier1
search.appverid: 
  - MOE150
  - MET150
description: Admins can learn how to manage Microsoft Defender for Office 365 (Email & collaboration) permissions in the Microsoft 365 Defender portal for all tasks related to Defender for Office 365 security features.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 1/31/2023
---

# Microsoft Defender for Office 365 permissions in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Exchange Online Protection](eop-about.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Global roles in Azure Active Directory (Azure AD) allow you to manage permissions and access to capabilities in all of Microsoft 365, which also includes Microsoft Defender for Office 365. But, if you need to limit permissions and capabilities to security features in Defender for Office 365 only, you can assign **Email & collaboration** permissions in the Microsoft 365 Defender portal.

To manage Defender for Office 365 permissions in the Microsoft 365 Defender portal, go to **Permissions & roles** \> expand **Email & collaboration roles** \> select **Roles** or go directly to <https://security.microsoft.com/securitypermissions>. You need to be a **Global administrator** or a member of the **Organization Management** role group in Defender for Office 365 permissions. Specifically, the **Role Management** role in Defender for Office 365 allows users to view, create, and modify Defender for Office 365 role groups. By default, that role is assigned only to the **Organization Management** role group (and by extension, global administrators).

> [!NOTE]
> Some Defender for Office 365 features require additional permissions in Exchange Online. For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).
>
> In the Microsoft 365 Defender preview program, a different Microsoft Defender 365 RBAC model is also available. The permissions in this RBAC model are different from the Defender for Office 365 permissions as described in this article. For more information, see [Microsoft 365 Defender role-based access control (RBAC)](../defender/manage-rbac.md).
>
> For information about permissions in the Microsoft Purview compliance portal, see [Permissions in the Microsoft Purview compliance portal](../../compliance/microsoft-365-compliance-center-permissions.md).

## Relationship of members, roles, and role groups

Defender for Office 365 permissions in the Microsoft 365 Defender portal are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by most Microsoft 365 services, so if you're familiar with the permission structure in these services, granting permissions in the Microsoft 365 Defender portal will be very familiar.

A **role** grants the permissions to do a set of tasks.

A **role group** is a set of roles that lets people do their jobs in the Microsoft 365 Defender portal.

Defender for Office 365 permissions in the Microsoft 365 Defender portal includes default role groups for the most common tasks and functions that you'll need to assign. Generally, we recommend simply adding individual users as **members** to the default role groups.

:::image type="content" source="../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png" alt-text="The relationship of a role group to its roles and members" lightbox="../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png":::

## Roles and role groups in the Microsoft 365 Defender portal

The following types of roles and role groups are available in on the **Permissions & roles** page at <https://security.microsoft.com/securitypermissions> in the Microsoft 365 Defender portal:

- **Azure AD roles**: You can view the roles and assigned users, but you can't manage them directly in the Microsoft 365 Defender portal. Azure AD roles are central roles that assign permissions for **all** Microsoft 365 services.

- **Email & collaboration roles**: You can view and manage these role groups directly in the Microsoft 365 Defender portal. These permissions are specific to the Microsoft 365 Defender portal and the Microsoft Purview compliance portal, and don't cover all of the permissions that are needed in other Microsoft 365 workloads.

:::image type="content" source="../../media/m365-sc-permissions-and-roles-page.png" alt-text="The Permissions & roles page in the Microsoft 365 Defender portal" lightbox="../../media/m365-sc-permissions-and-roles-page.png":::

### Azure AD roles in the Microsoft 365 Defender portal

When you open the Microsoft 365 Defender portal at <https://security.microsoft.com> and go to **Email & collaboration roles** \> **Permissions & roles** \> **Azure AD roles** \> **Roles** (or directly to <https://security.microsoft.com/aadpermissions>) you'll see the Azure AD roles that are described in this section.

When you select a role, a details flyout that contains the description of the role and the user assignments appears. But to manage those assignments, you need to click **Manage members in Azure AD** in the details flyout.

:::image type="content" source="../../media/permissions-manage-in-azure-ad-link.png" alt-text="The link to manage permissions in Azure Active Directory" lightbox="../../media/permissions-manage-in-azure-ad-link.png":::

For more information, see [View and assign administrator roles in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-manage-roles-portal) and [Manage access to Microsoft 365 Defender with Azure Active Directory global roles](/microsoft-365/security/defender/m365d-permissions).

|Role|Description|
|---|---|
|**Global administrator**|Access to all administrative features in all Microsoft 365 services. Only global administrators can assign other administrator roles. For more information, see [Global Administrator / Company Administrator](/azure/active-directory/roles/permissions-reference#global-administrator--company-administrator).|
|**Compliance data administrator**|Keep track of your organization's data across Microsoft 365, make sure it's protected, and get insights into any issues to help mitigate risks. For more information, see [Compliance Data Administrator](/azure/active-directory/roles/permissions-reference#compliance-data-administrator).|
|**Compliance administrator**|Help your organization stay compliant with any regulatory requirements, manage eDiscovery cases, and maintain data governance policies across Microsoft 365 locations, identities, and apps. For more information, see [Compliance Administrator](/azure/active-directory/roles/permissions-reference#compliance-administrator).|
|**Security operator**|View, investigate, and respond to active threats to your Microsoft 365 users, devices, and content. For more information, see [Security Operator](/azure/active-directory/roles/permissions-reference#security-operator).|
|**Security reader**|View and investigate active threats to your Microsoft 365 users, devices, and content, but (unlike the Security operator) they do not have permissions to respond by taking action. For more information, see [Security Reader](/azure/active-directory/roles/permissions-reference#security-reader).|
|**Security administrator**|Control your organization's overall security by managing security policies, reviewing security analytics and reports across Microsoft 365 products, and staying up-to-speed on the threat landscape. For more information, see [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator).|
|**Global reader**|The read-only version of the **Global administrator** role. View all settings and administrative information across Microsoft 365. For more information, see [Global Reader](/azure/active-directory/roles/permissions-reference#global-reader).|
|**Attack simulation administrator**|Create and manage all aspects of [attack simulation](attack-simulation-training-simulations.md) creation, launch/scheduling of a simulation, and the review of simulation results. For more information, see [Attack Simulation Administrator](/azure/active-directory/roles/permissions-reference#attack-simulation-administrator).|
|**Attack payload author**|Create attack payloads but not actually launch or schedule them. For more information, see [Attack Payload Author](/azure/active-directory/roles/permissions-reference#attack-payload-author).|

### Email & collaboration roles in the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal at <https://security.microsoft.com> \> **Email & collaboration roles** \> **Permissions & roles** page \> **Email & collaboration roles** \> **Roles** (or directly at <https://security.microsoft.com/emailandcollabpermissions>) you'll see the same role groups that are available in the Microsoft Purview compliance portal at <https://compliance.microsoft.com> \> **Permissions** page \> **Microsoft Purview solutions** \> **Roles** (or directly at <https://compliance.microsoft.com/compliancecenterpermissions>).

For complete information about these role groups, see [Roles and role groups in the Microsoft 365 Defender and Microsoft Purview compliance portals](scc-permissions.md)

#### Modify Email & collaboration role membership in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration roles** \> **Permissions & roles** \> **Email & collaboration roles** \> **Roles**. To go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.

2. On the **Permissions** page, select the role group that you want to modify from the list. You can click on the **Name** column header to sort the list by name, or you can click **Search** ![Search icon.](../../media/m365-cc-sc-search-icon.png) to find the role group.

3. In the role group details flyout that appears, click **Edit** in the **Members** section.

4. In the **Editing choose members** page that appears, do one of the following steps:
   - If there are no role group members, click **Choose members**.
   - If there are existing role group members, click **Edit**

5. In the **Choose members** flyout that appears, do one of the following steps:

   - Click **Add**. In the list of users that appears, select one or more users. Or, you can click **Search** ![Search icon.](../../media/m365-cc-sc-search-icon.png) to find and select users.

     When you've selected the users that you want to add, click **Add**.

   - Click **Remove**. Select one or more of the existing members. Or, you can click **Search** ![Search icon.](../../media/m365-cc-sc-search-icon.png) to find and select members.

     When you've selected the users that you want to remove, click **Remove**.

6. Back on the **Choose members** flyout, click **Done**.

7. Back on the **Editing choose members** page, click **Save**.

8. Back on the role group details flyout, click **Done**.
