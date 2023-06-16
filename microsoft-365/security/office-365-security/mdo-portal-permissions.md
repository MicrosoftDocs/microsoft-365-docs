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
description: Admins can learn how to manage Microsoft Defender for Office 365 (Email & collaboration) permissions in the Microsoft 365 Defender portal.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Microsoft Defender for Office 365 permissions in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Global roles in Azure Active Directory (Azure AD) allow you to manage permissions and access to capabilities in all of Microsoft 365, which also includes Microsoft Defender for Office 365. But, if you need to limit permissions and capabilities to security features in Defender for Office 365 only, you can assign **Email & collaboration** permissions in the Microsoft 365 Defender portal.

To manage Defender for Office 365 permissions in the Microsoft 365 Defender portal, go to **Permissions** \> **Email & collaboration roles** \> **Roles** or go directly to <https://security.microsoft.com/emailandcollabpermissions>.

You need to be member of the **Global Administrator** role in Azure AD or a member of the **Organization Management** role group in Defender for Office 365 permissions. Specifically, the **Role Management** role in Defender for Office 365 allows users to view, create, and modify Defender for Office 365 role groups. By default, that role is assigned only to the **Organization Management** role group (and by extension, global administrators).

> [!NOTE]
> Some Defender for Office 365 features require additional permissions in Exchange Online. For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).
>
> In the Microsoft 365 Defender preview program, a different Microsoft Defender 365 RBAC model is also available. The permissions in this RBAC model are different from the Defender for Office 365 permissions as described in this article. For more information, see [Microsoft 365 Defender role-based access control (RBAC)](../defender/manage-rbac.md).
>
> For information about permissions in the Microsoft Purview compliance portal, see [Permissions in the Microsoft Purview compliance portal](../../compliance/microsoft-365-compliance-center-permissions.md).

## Relationship of members, roles, and role groups

Defender for Office 365 permissions in the Microsoft 365 Defender portal are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by most Microsoft 365 services, so if you're familiar with the permission structure in these services, granting permissions in the Microsoft 365 Defender portal should be familiar.

A **role** grants the permissions to do a set of tasks.

A **role group** is a set of roles that lets people do their jobs in the Microsoft 365 Defender portal.

Defender for Office 365 permissions in the Microsoft 365 Defender portal includes default role groups for the most common tasks and functions that you need to assign. Generally, we recommend simply adding individual users as **members** to the default role groups.

:::image type="content" source="../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png" alt-text="The relationship of a role group to its roles and members" lightbox="../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png":::

## Roles and role groups in the Microsoft 365 Defender portal

On the **Permissions** page in the Defender portal at <https://security.microsoft.com/securitypermissions>, the following types of roles and role groups are available:

- **Azure AD roles**: You can view the roles and assigned users, but you can't manage them directly in the Microsoft 365 Defender portal. Azure AD roles are central roles that assign permissions for **all** Microsoft 365 services.

- **Email & collaboration roles**: You can view and manage these role groups directly in the Microsoft 365 Defender portal. These permissions are specific to the Microsoft 365 Defender portal and the Microsoft Purview compliance portal. These permissions don't cover all of the permissions that you need in other Microsoft 365 workloads.

:::image type="content" source="../../media/m365-sc-permissions-and-roles-page.png" alt-text="The Permissions & roles page in the Microsoft 365 Defender portal" lightbox="../../media/m365-sc-permissions-and-roles-page.png":::

### Azure AD roles in the Microsoft 365 Defender portal

Azure AD roles that are described in this section are available in the [Defender portal](https://security.microsoft.com) \> **Permissions** \> **Azure AD** \> **Roles** or directly at <https://security.microsoft.com/aadpermissions>.

When you select a role, a details flyout opens that contains the description of the role and the user assignments. But to manage those assignments, you need to select **Manage members in Azure AD** at the bottom of the flyout.

:::image type="content" source="../../media/permissions-manage-in-azure-ad-link.png" alt-text="The link to manage permissions in Azure Active Directory" lightbox="../../media/permissions-manage-in-azure-ad-link.png":::

For more information, see [View and assign administrator roles in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-manage-roles-portal) and [Manage access to Microsoft 365 Defender with Azure Active Directory global roles](/microsoft-365/security/defender/m365d-permissions).

|Role|Description|
|---|---|
|**Global administrator**|Access to all administrative features in all Microsoft 365 services. Only global administrators can assign other administrator roles. For more information, see [Global Administrator / Company Administrator](/azure/active-directory/roles/permissions-reference#global-administrator--company-administrator).|
|**Compliance data administrator**|Keep track of your organization's data across Microsoft 365, make sure it's protected, and get insights into any issues to help mitigate risks. For more information, see [Compliance Data Administrator](/azure/active-directory/roles/permissions-reference#compliance-data-administrator).|
|**Compliance administrator**|Help your organization stay compliant with any regulatory requirements, manage eDiscovery cases, and maintain data governance policies across Microsoft 365 locations, identities, and apps. For more information, see [Compliance Administrator](/azure/active-directory/roles/permissions-reference#compliance-administrator).|
|**Security operator**|View, investigate, and respond to active threats to your Microsoft 365 users, devices, and content. For more information, see [Security Operator](/azure/active-directory/roles/permissions-reference#security-operator).|
|**Security reader**|View and investigate active threats to your Microsoft 365 users, devices, and content, but (unlike the Security operator) they don't have permissions to respond by taking action. For more information, see [Security Reader](/azure/active-directory/roles/permissions-reference#security-reader).|
|**Security administrator**|Control your organization's overall security by managing security policies, reviewing security analytics and reports across Microsoft 365 products, and staying up-to-speed on the threat landscape. For more information, see [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator).|
|**Global reader**|The read-only version of the **Global administrator** role. View all settings and administrative information across Microsoft 365. For more information, see [Global Reader](/azure/active-directory/roles/permissions-reference#global-reader).|
|**Attack simulation administrator**|Create and manage all aspects of [attack simulation](attack-simulation-training-simulations.md) creation, launch/scheduling of a simulation, and the review of simulation results. For more information, see [Attack Simulation Administrator](/azure/active-directory/roles/permissions-reference#attack-simulation-administrator).|
|**Attack payload author**|Create attack payloads but not actually launch or schedule them. For more information, see [Attack Payload Author](/azure/active-directory/roles/permissions-reference#attack-payload-author).|

### Email & collaboration roles in the Microsoft 365 Defender portal

The same role groups and roles are available in the Defender portal and in the Purview compliance portal:

- [Defender portal](https://security.microsoft.com): **Permissions** \> **Email & collaboration roles** \> **Roles** or directly at <https://security.microsoft.com/emailandcollabpermissions>
- [Purview compliance portal](https://compliance.microsoft.com): **Roles & Scopes** \> **Permissions** \> **Microsoft Purview solutions** \> **Roles** or directly at <https://compliance.microsoft.com/compliancecenterpermissions>

For complete information about these role groups, see [Roles and role groups in the Microsoft 365 Defender and Microsoft Purview compliance portals](scc-permissions.md)

The following actions are available for Email & collaboration role groups in the Defender portal:

- [Create role groups](#create-email--collaboration-role-groups-in-the-microsoft-365-defender-portal)
- [Copy role groups](#copy-email--collaboration-role-groups-in-the-microsoft-365-defender-portal)
- [Modify role group membership](#modify-email--collaboration-role-group-membership-in-the-microsoft-365-defender-portal)
- [Modify role assignments](#modify-email--collaboration-role-group-role-assignments-in-the-microsoft-365-defender-portal) (custom role groups only)
- [Remove role groups](#remove-email--collaboration-role-groups-in-the-microsoft-365-defender-portal) (custom role groups only)

#### Create Email & collaboration role groups in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Permissions** \> **Email & collaboration roles** \> **Roles**. Or, to go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.

2. On the **Permissions** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new role group wizard.

3. On the **Name your role group** page, enter the following information:
   - **Name**: Enter a unique name for the role group.
   - **Description**: Enter an optional description for the role group.

   When you're finished on the **Name your role group** page, select **Next**.

4. On the **Choose roles** page, select **Choose roles**.

   1. In the **Chose roles** flyout that opens, select **Add** at the top of the flyout.

   2. In the new **Choose roles** flyout that opens, select one or more roles. Select the **Name** column header to sort the list by name, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role.

      After you've selected one or more roles to add, select **Add** at the bottom of the flyout.

      Back on the original **Choose roles** flyout, the roles you added are listed on the page. To add more roles, repeat the previous step. Roles that you already selected are grayed out.

      To remove roles, select **Remove**. In the new **Choose roles** flyout that opens, select one or more roles, and then select **Remove**.

   3. When you're finished on the original **Choose roles** flyout, select **Done**.

   Back on the **Choose roles** page, the roles are shown in the **Selected roles** section.

   When you're finished on the **Choose roles** page, select **Next**.

5. On the **Choose members** page, select **Choose members**.

   1. In the **Choose members** flyout that opens, select **Add** at the top of the flyout.

   2. In the new **Choose members** flyout that opens, select one or more users. Select a column header to sort the list by **Name** or **Email address**, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the user.

      After you've selected one or more users to add, select **Add** at the bottom of the flyout.

      Back on the original **Choose members** flyout, the members you added are listed on the page. To add more members, repeat the previous step. Members that you already selected are grayed out.

      To remove members, select **Remove**. In the new **Choose members** flyout that opens, select one or more members, and then select **Remove**.

   3. When you're finished on the original **Choose roles** flyout, select **Done**.

   Back on the **Choose members** page, the members are shown in the **Selected members** section.

   When you're finished on the **Choose page** page, select **Next**.

6. On the **Review your settings** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review your settings** page, select **Create role group**.

Back on the **Permissions** page, the new role group is listed.

#### Copy Email & collaboration role groups in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Permissions** \> **Email & collaboration roles** \> **Roles**. Or, to go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.

2. On the **Permissions** page, select the role group from the list. Use the **Name** column header to sort the list by name, or the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role group.

3. In the role group details flyout that opens, select **Copy role group** at the top of the flyout.

The new role group wizard opens as previously described for [creating a new role group](#create-email--collaboration-role-groups-in-the-microsoft-365-defender-portal).

The default name of the new role group is **Copy of \<original role group name\>**, but you can change it.

The roles and members are populated with the values from the role you're copying, but you can change them.

#### Modify Email & collaboration role group membership in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Permissions** \> **Email & collaboration roles** \> **Roles**. Or, to go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.

2. On the **Permissions** page, select the role group from the list. Use the **Name** column header to sort the list by name, or the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role group.

3. In the role group details flyout that opens, do one of the following steps:

   - Select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit role group** at the top of the flyout. In the edit role group wizard that opens, select the **Choose members** tab.
   - In the **Members** section of the flyout, select **Edit**.

4. On the **Choose members** tab of the edit role group wizard that opens, do one of the following steps:
   - If there are no role group members, select **Choose members**.
   - If there are existing role group members, select **Edit**

5. In the **Choose members** flyout that opens, do one of the following steps:

   - **Add members**: Select **Add** at the top of the flyout. In the new **Choose members** flyout that opens, select one or more users. Select a column header to sort the list by **Name** or **Email address**, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the user.

     After you've selected one or more users to add, select **Add** at the bottom of the flyout.

     Back in the original **Choose members** flyout, the added users are shown in the **Members** section.

   - **Remove members**: Select **Remove** at the top of the flyout. In the new **Choose members** flyout that opens, select one or more users. Select a column header to sort the list by **Name** or **Email address**, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the user.

     After you've selected one or more users to remove, select **Remove**.

     Back on the original **Choose members** flyout, the removed users are no longer shown in the **Members** section.

   When you're finished in the original **Choose members** flyout, select **Done**.

7. Back on the **Choose members** tab of the wizard, select **Save**.

8. Back on the role group details flyout, select **Done**.

#### Modify Email & collaboration role group role assignments in the Microsoft 365 Defender portal

> [!NOTE]
> You can modify the role assignments for custom role groups only. You can't modify the role assignments for built-in role groups.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Permissions** \> **Email & collaboration roles** \> **Roles**. Or, to go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.

2. On the **Permissions** page, select the role group from the list. Select the **Name** column header to sort the list by name, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role group.

3. In the role group details flyout that opens, do one of the following steps:

   - Select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit role group** at the top of the flyout. In the edit role group wizard that opens, select the **Choose roles** tab.
   - In the **Assigned roles** section of the flyout, select **Edit**.

4. On the **Choose roles** tab of the edit role group wizard that opens, do one of the following steps:
   - If there are no assigned roles, select **Choose roles**.
   - If there are existing roles assigned, select **Edit**

5. In the **Choose roles** flyout that opens, do one of the following steps:

   - **Add roles**: Select **Add** at the top of the flyout. In the new **Choose roles** flyout that opens, select one or more roles. Roles that are already assigned are grayed out. Select the **Name** column header to sort the list by name, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role.

     After you've selected one or more roles to add, select **Add** at the bottom of the flyout.

     Back in the original **Choose roles** flyout, the added roles are shown in the **Roles** section.

   - **Remove roles**: Select **Remove** at the top of the flyout. In the new **Choose roles** flyout that opens, select one or more roles. Select a column header to sort the list by **Name**, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role.

     After you've selected one or more roles to remove, select **Remove**.

     Back on the original **Choose roles** flyout, the removed roles are no longer shown in the **Roles** section.

   When you're finished in the original **Choose roles** flyout, select **Done**.

7. Back on the **Choose roles** tab of the wizard, select **Save**.

8. Back on the role group details flyout, select **Done**.

#### Remove Email & collaboration role groups in the Microsoft 365 Defender portal

> [!NOTE]
> You can remove custom role groups only. You can't remove built-in role groups.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Permissions** \> **Email & collaboration roles** \> **Roles**. Or, to go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.

2. On the **Permissions** page, select the role group from the list. Select the **Name** column header to sort the list by name, or use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find the role group.

3. In the role group details flyout that opens, select **Delete role group** at the top of the flyout.

4. Select **Yes** in the warning dialog that opens.

Back on the **Permissions** page, the role group is no longer listed.
