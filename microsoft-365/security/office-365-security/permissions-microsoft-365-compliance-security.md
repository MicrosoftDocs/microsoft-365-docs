---
title: Permissions in the Microsoft 365 security center
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
ms.audience: Admin
ms.topic: article
audience: Admin
localization_priority: Priority
ms.collection: 
  - M365-security-compliance
search.appverid: 
  - MOE150
  - MET150
description: Admins can learn how to manage permissions in the Microsoft 365 security center for all tasks related to security.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Permissions in the Microsoft 365 security center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Your organization needs to manage security scenarios that span all the Microsoft 365 services. And you need the flexibility to give the right admin permissions to the right people in your organization's IT group.

The Microsoft 365 security center supports directly managing permissions for users who perform security tasks in Microsoft 365. This means you'll no longer need to use the [Security & Compliance Center to manage permissions](permissions-in-the-security-and-compliance-center.md) for security features. By using the Microsoft 365 security center, you can manage permissions centrally for all tasks related to security.

To view the **Permissions** tab in the Microsoft 365 security center, users need to be a global administrator or need to be assigned the Role Management role (a role that by default is assigned only to the Organization Management role group). The Role Management role allows users to view, create, and modify role groups.

> [!NOTE]
> For compliance-related permissions in the Microsoft 365 compliance center, see [Permissions in the Microsoft 365 compliance center](/microsoft-365/compliance/microsoft-365-compliance-center-permissions)

Permissions in the Microsoft 365 security center are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by Exchange, so if you're familiar with Exchange, granting permissions in the Microsoft 365 security center will be very similar. But, It's important to remember that Exchange role groups and Microsoft 365 security center role groups don't share membership or permissions. For example, both environments have an Organization Management role group, but the permissions they grant, and the group memberships are different.

![Permissions page in the Security & Compliance Center](../../media/992c20ca-e82e-497c-9c8d-6fab212deb80.png)

## Relationship of members, roles, and role groups

A **role** grants permissions to do a set of tasks; for example, the Case Management role lets people work with eDiscovery cases.

A **role group** is a set of roles that lets people do their jobs across the Security & Compliance Center. For example, the Compliance Administrator role group includes (among other roles) the roles for Case Management, Content Search, and Organization Configuration (plus others) because someone who's a compliance admin will need the permissions for those tasks to do their job.

The Security & Compliance Center includes default role groups for the most common tasks and functions that you'll need to assign people to. We recommend simply adding individual users as **members** to the default role groups.

![Diagram showing relationship of role groups to roles and members](../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png)

## What the Microsoft 365 roles are

The roles that appear in the Microsoft 365 compliance center and Microsoft 365 security center are Azure Active Directory roles. These roles are designed to align with job functions in your organization's IT group, making it easy to give a person all the permissions necessary to get their job done.

****

|Role|Description|
|---|---|
|**Global administrator**|Access to all administrative features in all Microsoft 365 services. Only global administrators can assign other administrator roles. For more information, see [Global Administrator / Company Administrator](/azure/active-directory/roles/permissions-reference#global-administrator--company-administrator).|
|**Compliance data administrator**|Keep track of your organization's data across Microsoft 365, make sure it's protected, and get insights into any issues to help mitigate risks. For more information, see [Compliance Data Administrator](/azure/active-directory/roles/permissions-reference#compliance-data-administrator).|
|**Compliance administrator**|Help your organization stay compliant with any regulatory requirements, manage eDiscovery cases, and maintain data governance policies across Microsoft 365 locations, identities, and apps. For more information, see [Compliance Administrator](/azure/active-directory/roles/permissions-reference#compliance-administrator).|
|**Security operator**|View, investigate, and respond to active threats to your Microsoft 365 users, devices, and content. For more information, see [Security Operator](/azure/active-directory/roles/permissions-reference#security-operator).|
|**Security reader**|View and investigate active threats to your Microsoft 365 users, devices, and content, but (unlike the Security operator) they do not have permissions to respond by taking action. For more information, see [Security Reader](/azure/active-directory/roles/permissions-reference#security-reader).|
|**Security administrator**|Control your organization's overall security by managing security policies, reviewing security analytics and reports across Microsoft 365 products, and staying up-to-speed on the threat landscape. For more information, see [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator).|
|**Global reader**|The read-only version of the **Global administrator** role. View all settings and administrative information across Microsoft 365. For more information, see [Global Reader](/azure/active-directory/roles/permissions-reference#global-reader).|
|

## Global administrators can manage roles in Azure Active Directory

In the Microsoft 365 compliance center and Microsoft 365 security center, when you select a role, you can view its assignments. But to manage those assignments, you need to go to the Azure Active Directory.

For more information, see [View and assign administrator roles in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-manage-roles-portal).

![Link to manage permissions in Azure Active Directory](../../media/permissions-manage-in-azure-ad-link.png)

## Managing roles in a service instead of Azure Active Directory

The roles that appear in the Microsoft 365 compliance center and Microsoft 365 security center also appear in the services where they have permissions. For example, you can see these roles in the Security & Compliance Center.

![Roles in Security & Compliance Center](../../media/m365-roles-in-o365-scc.png)

For information about how these roles are used in the Security & Compliance Center, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

### Breaking inheritance

It's important to understand that you when you manage these roles in Azure Active Directory, you're doing so centrally for **all** Microsoft 365 services. However, when you manage a role in a specific service, such as the Security & Compliance Center, you're managing the role for **only** that specific service. The assignments and permissions for a role in a service override any permissions granted to the Azure Active Directory role.

This can be useful. For example, if a person is assigned to the Security administrator role, they don't have permissions to manage incidents. But you can use the permissions in Microsoft Defender for Endpoint to give them the specific permission for incident management in that service.

## Where to find role information for each Microsoft 365 service

By assigning a user to one of the Microsoft 365 compliance or security admin roles, you give that user permissions to a range of Microsoft 365 services. Use the links below to find more information about the specific permissions for a role in each service.

****

|Microsoft 365 service|Role info|
|---|---|
|Admin roles in Office 365 and Microsoft 365 for business plans|[Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md)|
|Azure Active Directory (Azure AD) and Azure AD Identity Protection|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Microsoft Defender for Identity|[Microsoft Defender for Identity role groups](/azure-advanced-threat-protection/atp-role-groups)|
|Azure Information Protection|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Compliance Manager|[Compliance Manager](../../compliance/compliance-manager-setup.md#set-user-permissions-and-assign-roles)|
|Exchange Online|[Exchange role-based access control](/exchange/permissions-exo/permissions-exo)|
|Intune|[Intune role-based access control](/intune/role-based-access-control)|
|Managed Desktop|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Microsoft Cloud App Security|[Role-based access control](/cloud-app-security/manage-admins)|
|Security & Compliance Center|[Microsoft 365 admin roles](permissions-in-the-security-and-compliance-center.md)|
|Privileged Identity Management|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Secure Score|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|SharePoint Online|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles) <p> [About the SharePoint admin role in Office 365](/sharepoint/sharepoint-admin-role)|
|Teams/Skype for Business|[Azure AD admin roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Microsoft Defender for Endpoint|[Microsoft Defender for Endpoint role-based access control](/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)|
|

## Coming soon

We're still working on permissions in the Microsoft 365 compliance center and Microsoft 365 security center. For example, we're currently working on support for the ability to:

- Manage roles in the Microsoft 365 compliance center and Microsoft 365 security center, instead of going to Azure Active Directory.
- Customize roles by adding or removing specific permissions.
- Create custom roles with permissions that you choose.