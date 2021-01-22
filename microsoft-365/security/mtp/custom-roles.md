---
title: Custom roles for role-based access control
description: Learn how to manage custom roles in Microsoft 365 security center
keywords: access, permissions, MTP, Microsoft Threat Protection, M365, security, MCAS, MDATP, Cloud App Security, Microsoft Defender Advanced Threat Protection, scope, scoping, RBAC
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
# Custom roles in role-based access control
In addition to [global roles in Azure Active Directory (AAD)](mtp-permissions.md), access to Microsoft Defender 365 can now be managed through the creation of custom roles in role-based settings (RBAC).  

By allowing you to manage access to specific data, tasks, and capabilities in Microsoft Defender 365, custom roles offer more control than global Azure AD roles, allowing you to grant users only the access they need with the least-permissive roles necessary.  

Custom roles can be created in addition to global Azure AD roles and allow you to manage permissions according to specific workloads within Microsoft 365 Defender, with the ability to assign dedicated teams per product.  

Custom roles are managed per each individual workload and allow access to the corresponding workload data within the Microsoft 365 security center. For example, permissions granted through Microsoft Defender for **Endpoint** will allow a user to access Endpoint data in the Microsoft 365 security center. Permissions granted through Defender for Office 365 will allow access to the corresponding **Email & collaboration** data in the Microsoft 365 security center.

## Create and manage custom roles
Custom roles and permissions can be created and individually managed through each of the following security portals: 

- Microsoft Defender for Endpoint – [Edit roles in Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles)
- Microsoft Defender for Office 365 – [Permissions in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center)
- Microsoft Cloud App Security – [Azure AD roles](https://docs.microsoft.com/azure/active-directory/roles/permissions-reference)

Each custom role created through an individual portal, allows access exclusively to the data of the relevant product portal. For example, a custom role created through Microsoft Defender for Endpoint will only allow access to Defender for Endpoint data. 

> [!NOTE]
> Custom roles created in Microsoft Cloud App Security have access to Microsoft Defender for Identity data as well. Users with User group admin, App/instance admin MCAS roles are not able to access MCAS data through the Microsoft 365 security center.

## Manage permissions and roles in the Microsoft 365 security center
Permissions and roles can also be managed in the Microsoft 365 security center:

1. Sign in to the Microsoft 365 security center at security.microsoft.com
2. In the navigation pane, select **Permissions & roles**
3. Under the **Permissions** header, select **Roles**

## Required roles and permissions 
Roles defined in the table below refer to custom roles within individual portals and are not connected to global roles in Azure AD, even if similarly named.  

> [!NOTE]
> Incident management requires management permissions for all products that are part of the incident.
 
| **Microsoft 365 Defender**  | **Required Defender for Endpoint roles**  | **Required Defender for Office 365 roles** | **Required Cloud App Security roles** | 
|---------|---------|---------|---------|
| Viewing investigation data: <ul><li>Alert page</li> <li>Alerts queue</li> <li>Incidents</li>  <li>Incident queue</li> <li>Action center</li></ul>| View data- security operations | <ul><li>View-only Manage alerts </li> <li>Organization configuration</li><li>Audit logs</li> <li>View-only audit logs</li> <li>Security reader</li> <li>Security admin</li><li>View-only recipients</li></ul>  | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul> |
| Viewing hunting data | View data- security operations | <ul><li>Security reader</li> <li>Security admin</li> <li>View-only recipients</li> | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul> |
| Managing alerts and incidents | Alerts investigation | <ul><li>Manage alerts</li> <li>Security admin</li> | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li></ul> |
| Action center remediation | Active remediation actions – security operations | Search and purge | |
| Setting custom detections | Manage security settings |<ul><li>Manage alerts</li> <li>Security admin</li></ul> | <ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul> |

