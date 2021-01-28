---
title: Custom roles for role-based access control
description: Learn how to manage custom roles in Microsoft 365 security center
keywords: access, permissions, MTP, Microsoft Threat Protection, M365, security, MCAS, MDATP, Cloud App Security, Microsoft Defender Advanced Threat Protection, scope, scoping, RBAC, roles-based access, custom roles-based access, roles-based auth, RBAC in MDO, roles, rolegroups, permissions inheritance, fine-grained permissions
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---
# Custom roles in role-based access control for Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

[!INCLUDE [Prerelease](../includes/prerelease.md)]

**Applies to:**

- Microsoft 365 Defender
 
There are two roles that can be used to access to Microsoft 365 Defender:
- **Global Azure Active Directory (AD) roles** 
- **Custom role access**


You can continue to manage access to Microsoft 365 Defender using existing [Global roles in Azure Active Directory (AAD)](mtp-permissions.md). But the disadvantage of this is that users with Global admin Azure AD roles might have more access than what's needed for your users. 

With custom role-based access (RBAC) roles, you can tailor specific access for specific roles. Custom roles allow admins to manage permissions according to specific workloads within Microsoft 365 Defender, with the ability to assign dedicated teams for each product. 

>![NOTE] You can create custom RBAC roles for Defender for Office and Defender for Endpoint. However, Microsoft Cloud App Security and Defender for Identity requires setting roles in their respective portals.

Admins can manage user access to specific data, tasks, and capabilities in Microsoft 365 Defender with custom roles. Users are assigned with the least-permissive role necessary and only with the level of access that is required for their role.

Custom roles are managed for each individual workload and control access to workload data within the Microsoft 365 security center. For example, permissions granted through Microsoft Defender for **Endpoint** will allow a user to access Endpoint data in the Microsoft 365 security center. Permissions granted through Defender for Office 365 allows access to the corresponding **Email & collaboration** data in the Microsoft 365 security center.

>![NOTE] If you've set up roles for Defender for Endpoint or Defender for Office 365, these access settings will be available in Microsoft 365 Defender.

## Create and manage custom roles
Custom roles and permissions can be created and individually managed through each of the following security portals: 

- Microsoft Defender for Endpoint – [Edit roles in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/user-roles.md)
- Microsoft Defender for Office 365 – [Permissions in the Security & Compliance Center](/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center.md)
- Microsoft Cloud App Security – [Manage admin access](/cloud-app-security/manage-admins.md)

Each custom role created through an individual portal allows access to the data of the relevant product portal. For example, a custom role created through Microsoft Defender for Endpoint will only allow access to Defender for Endpoint data. 

> [!NOTE]
> Custom roles created in Microsoft Cloud App Security have access to Microsoft Defender for Identity data as well. Users with User group admin, or App/instance admin Microsoft Cloud App Security roles are not able to access Microsoft Cloud App Security data through the Microsoft 365 security center.

## Manage permissions and roles in the Microsoft 365 security center
Permissions and roles can also be managed in the Microsoft 365 security center:

1. Sign in to the Microsoft 365 security center at security.microsoft.com.
2. In the navigation pane, select **Permissions & roles**.
3. Under the **Permissions** header, select **Roles**.

## Required roles and permissions 
The following table describes the different mapping of what roles are required to access each workload in Microsoft 365 Defender. Roles defined in the table below refer to custom roles in individual portals and are not connected to global roles in Azure AD, even if similarly named.  

> [!NOTE]
> Incident management requires management permissions for all products that are part of the incident.
 
| **Microsoft 365 Defender**  | **Required Defender for Endpoint roles**  | **Required Defender for Office 365 roles** | **Required Cloud App Security roles** | 
|---------|---------|---------|---------|
| Viewing investigation data: <ul><li>Alert page</li> <li>Alerts queue</li> <li>Incidents</li>  <li>Incident queue</li> <li>Action center</li></ul>| View data- security operations | <ul><li>View-only Manage alerts </li> <li>Organization configuration</li><li>Audit logs</li> <li>View-only audit logs</li> <li>Security reader</li> <li>Security admin</li><li>View-only recipients</li></ul>  | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul> |
| Viewing hunting data | View data- security operations | <ul><li>Security reader</li> <li>Security admin</li> <li>View-only recipients</li> | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul> |
| Managing alerts and incidents | Alerts investigation | <ul><li>Manage alerts</li> <li>Security admin</li> | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li></ul> |
| Action center remediation | Active remediation actions – security operations | Search and purge | |
| Setting custom detections | Manage security settings |<ul><li>Manage alerts</li> <li>Security admin</li></ul> | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul> |
| Threat Analytics | Alerts and incidents data: <ul><li>View data- security operations</li></ul>TVM mitigations:<ul><li>View data - Threat and vulnerability management</li></ul> | Alerts and incidents data:<ul> <li>View-only Manage alerts</li> <li>Manage alerts</li> <li>Organization configuration</li><li>Audit logs</li> <li>View-only audit logs</li><li>Security reader</li> <li>Security admin</li><li>View-only recipients</li> </ul> Prevented email attempts: <ul><li>Security reader</li> <li>Security admin</li><li>View-only recipients</li> | Not available for MCAS or MDI users |

## Related topics
- [Manage access to Microsoft 365 Defender](mtp-permissions.md)
- [Manage admin access for MCAS](/cloud-app-security/manage-admins.md)