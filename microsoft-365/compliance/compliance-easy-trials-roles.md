---
title: "User roles for starting Microsoft 365 trials"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: landing-page
ms.service: O365-seccomp
ms.collection: 
- purview-compliance
- tier2
ms.localizationpriority: high
search.appverid: 
- MOE150
- MET150
description: "Learn which user roles are required in order to sign up for a trial of Microsoft 365 Purview, Priva, and security products."
---

# User roles for starting Microsoft 365 trials

This article outlines the user roles required in order to enroll your organization in a Microsoft 365 trial.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Who can start all trials

A user with one of the roles listed below can start any Microsoft 365 trial.
 
| Role | Role Group | Where to assign | 
| :------------- | :-------------: | :------------: |
| Global administrator | Global administrator   | Purview compliance portal > Permissions > Azure AD > Roles |
| Billing Admin | Billing Administrator | Purview compliance portal > Permissions > Purview solutions > Roles |

## Roles for starting specific trials

The Purview, Priva, and Defender trials allow users with specific roles aside from Global administrator and Billing Admin to start their trials. Refer to the tables below for details.

#### Purview trials

Purview trials include the **Microsoft Purview solutions** trial and the **Compliance Manager premium assessments** trial. 

| Role | Role Group | Where to assign | 
| :------------- | :-------------: | :------------: |
| Compliance Administrator | Compliance Administrator   | Purview compliance portal > Permissions > Purview solutions > Roles |
| DLP Compliance Management, Information Protection Admin, RecordManagement, Retention Management, and Sensitivity Label Administrator | Compliance Data Administrator | Purview compliance portal > Permissions > Purview solutions > Roles |

#### Priva trials

Priva trials include the **Privacy Risk Management** trial and the **Subject Rights Requests** trial.

| Role | Role Group | Where to assign | 
| :------------- | :-------------: | :------------: |
| Privacy Management Admin | Privacy Management Administrators   | Purview compliance portal > Permissions > Purview solutions > Roles |
| Subject Rights Request Admin | Subject Rights Request Administrators | Purview compliance portal > Permissions > Purview solutions > Roles |

#### Security trials

Security trials include the **Defender Vulnerability Management** trial and the **Defender Vulnerability Management add-on** trial. Users will need a role with one of the permissions listed below in order to start a trial.

| Permission | Where to assign | 
| :------------- | :-------------: |
Security operations  | Microsoft 365 Defender portal > Permissions > Endpoints roles & groups > Roles  |
| Threat and vulnerability management | Microsoft 365 Defender portal > Permissions > Endpoints roles & groups > Roles |

## How to assign roles

For more information about how to assign user roles and permissions, see the following articles:

- **Microsoft 365 admin roles**: [About admin roles in the Microsoft 365 admin center](../admin/add-users/about-admin-roles.md)
- **Microsoft Purview and Priva**: [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md)
- **Microsoft 365 Defender**: [Create and manage roles for role-based access control](../security/defender-endpoint/user-roles.md)
