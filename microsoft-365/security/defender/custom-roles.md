---
title: Custom roles for role-based access control
description: Learn how to manage custom roles in the Microsoft 365 Defender portal
keywords: access, permissions, Microsoft 365 Defender, M365, security, Defender for Cloud Apps, Microsoft Defender for Endpoint, scope, scoping, RBAC, roles-based access, custom roles-based access, roles-based auth, RBAC in MDO, roles, rolegroups, permissions inheritance, fine-grained permissions
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 01/03/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
---
# Custom roles in role-based access control for Microsoft 365 Defender

> [!NOTE]
> If you are running the Microsoft 365 Defender preview program you can now experience the new Microsoft Defender 365 role-based access control (RBAC) model. For more information, see [Microsoft Defender 365 role-based access control (RBAC)](manage-rbac.md).

[!INCLUDE [Prerelease](../includes/prerelease.md)]

**Applies to:**

- Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)] 

There are two types of roles that can be used to access to Microsoft 365 Defender:

- **Global Azure Active Directory (AD) roles**
- **Custom roles**

Access to Microsoft 365 Defender can be managed collectively by using [Global roles in Azure Active Directory (AAD)](m365d-permissions.md)

If you need greater flexibility and control over access to specific product data, Microsoft 365 Defender access can also be managed with the creation of Custom roles through each respective security portal.

For example, a Custom role created through Microsoft Defender for Endpoint would allow access to the relevant product data, including Endpoint data within the Microsoft 365 Defender portal. Similarly, a Custom role created through Microsoft Defender for Office 365 would allow access to the relevant product data, including Email & collaboration data within the Microsoft 365 Defender portal.

Users with existing Custom roles may access data in the Microsoft 365 Defender portal according to their existing workload permissions with no additional configuration required.

## Create and manage custom roles

Custom roles and permissions can be created and individually managed through each of the following security portals:

- Microsoft Defender for Endpoint – [Edit roles in Microsoft Defender for Endpoint](../defender-endpoint/user-roles.md)
- Microsoft Defender for Office 365 – [Permissions in the Security & Compliance Center](../office-365-security/scc-permissions.md?preserve-view=true&view=o365-worldwide)
- Microsoft Defender for Cloud Apps – [Manage admin access](/cloud-app-security/manage-admins)

Each custom role created through an individual portal allows access to the data of the relevant product portal. For example, a custom role created through Microsoft Defender for Endpoint will only allow access to Defender for Endpoint data.

> [!TIP]
> Permissions and roles can also be accessed through the Microsoft 365 Defender portal by selecting Permissions & roles from the navigation pane. Access to Microsoft Defender for Cloud Apps is managed through the Defender for Cloud Apps portal and controls access to Microsoft Defender for Identity as well.  See [Microsoft Defender for Cloud Apps](/cloud-app-security/manage-admins)

> [!NOTE]
> Custom roles created in Microsoft Defender for Cloud Apps have access to Microsoft Defender for Identity data as well. Users with User group admin, or App/instance admin Microsoft Defender for Cloud Apps roles are not able to access Microsoft Defender for Cloud Apps data through the Microsoft 365 Defender portal.

## Manage permissions and roles in the Microsoft 365 Defender portal

Permissions and roles can also be managed in the Microsoft 365 Defender portal:

1. Sign in to the Microsoft 365 Defender portal at security.microsoft.com.
2. In the navigation pane, select **Permissions & roles**.
3. Under the **Permissions** header, select **Roles**.

> [!NOTE]
> This only applies to Defender for Office 365 and Defender for Endpoint. Access for other workloads must be done in their relevant portals.

## Required roles and permissions

The following table outlines the roles and permissions required to access each unified experience in each workload. Roles defined in the table below refer to custom roles in individual portals and are not connected to global roles in Azure AD, even if similarly named.

> [!NOTE]
> Incident management requires management permissions for all products that are part of the incident.

|Microsoft 365 Defender workload|One of the following roles is required for Defender for Endpoint|One of the following roles is required for Defender for Office 365|One of the following roles is required for Defender for Cloud Apps|
|---|---|---|---|
|Viewing investigation data: <ul><li>Alert page</li> <li>Alerts queue</li> <li>Incidents</li>  <li>Incident queue</li> <li>Action center</li></ul>|View data- security operations|<ul><li>View-only Manage alerts </li> <li>Organization configuration</li><li>Audit logs</li> <li>View-only audit logs</li> <li>Security reader</li> <li>Security admin</li><li>View-only recipients</li></ul>|<ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul>|
|Viewing hunting data|View data- security operations|<ul><li>Security reader</li> <li>Security admin</li> <li>View-only recipients</li>|<ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul>|
|Managing alerts and incidents|Alerts investigation|<ul><li>Manage alerts</li> <li>Security admin</li>|<ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li></ul>|
|Action center remediation|Active remediation actions – security operations|Search and purge||
|Setting custom detections|Manage security settings|<ul><li>Manage alerts</li> <li>Security admin</li></ul>|<ul><li>Global admin</li> <li>Security admin</li> <li>Compliance admin</li> <li>Security operator</li> <li>Security reader</li> <li>Global reader</li></ul>|
|Threat Analytics|Alerts and incidents data: <ul><li>View data- security operations</li></ul>Defender Vulnerability Management mitigations:<ul><li>View data - Threat and vulnerability management</li></ul>|Alerts and incidents data:<ul> <li>View-only Manage alerts</li> <li>Manage alerts</li> <li>Organization configuration</li><li>Audit logs</li> <li>View-only audit logs</li><li>Security reader</li> <li>Security admin</li><li>View-only recipients</li> </ul> Prevented email attempts: <ul><li>Security reader</li> <li>Security admin</li><li>View-only recipients</li>|Not available for Defender for Cloud Apps or MDI users|

For example, to view hunting data from Microsoft Defender for Endpoint, View data security operations permissions are required.

Similarly, to view hunting data from Microsoft Defender for Office 365, users would require one of the following roles:

- View data security operations
- Security reader
- Security admin
- View-only recipients

## Related topics

- [RBAC roles](../office-365-security/migrate-to-defender-for-office-365-onboard.md#rbac-roles)
- [Manage access to Microsoft 365 Defender](m365d-permissions.md)
- [Manage admin access for Defender for Cloud Apps](/cloud-app-security/manage-admins)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
