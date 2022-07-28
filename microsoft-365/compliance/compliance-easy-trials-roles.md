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
ms.collection: m365-security-compliance
ms.localizationpriority: high
search.appverid: 
- MOE150
- MET150
description: "Learn which user roles are required in order to sign up for a trial of Microsoft 365 compliance and security products."
---

# User roles for starting Microsoft 365 trials

Certain user roles are required in order to sign up for a Microsoft 365 trial. This article explains the necessary roles.

## Who can start a trial

A user with one of the roles listed below can start any Microsoft 365 trial.
 
| Role | Role Group | Where to assign role | 
| :------------- | :-------------: | :------------: |
| Global administrator | Global administrator   | Purview compliance portal > Permissions > Azure AD roles |
| Billing Admin | Billing Administrator | Purview compliance portal > Permissions > Role groups for Microsoft Purview solutions |

## Additional roles for starting specific trials

Each trial allows users with additional roles to start a trial. View each trial's roles below.

#### Purview trials

Purview trials include the **Microsoft Purview solutions** trial and the **Compliance Manager premium assessments** trial. 

| Role | Role Group | Where to assign role | 
| :------------- | :-------------: | :------------: |
| Compliance Administrator | Compliance Administrator   | Purview compliance portal > Permissions > Role groups for Microsoft Purview solutions |
| TBD | Compliance Data Administrator | Purview compliance portal > Permissions > Role groups for Microsoft Purview solutions |

#### Priva trials

Priva trials include the **Privacy Risk Management** trial and the **Subject Rights Requests** trial.

| Role | Role Group | Where to assign role | 
| :------------- | :-------------: | :------------: |
| Privacy Management Admin | Privacy Management Administrators   | Purview compliance portal > Permissions > Role groups for Microsoft Purview solutions |
| Subject Rights Request Admin | Subject Rights Request Administrators | Purview compliance portal > Permissions > Role groups for Microsoft Purview solutions |

### Security trials

Security trials include the **Defender Vulnerability Management** trial.

| Role | Role Group | Where to assign role | 
| :------------- | :-------------: | :------------: |
| TBD (there is no Security operations role) | Security Operator  | Microsoft 365 Defender portal > Permissions > Email & collaboration roles  |
| Thread and vulnerability management (I dont see this anywhere) | TBD | Microsoft 365 Defender portal > Permissions > Email & collaboration roles |

## How to assign roles

For more information about about roles and permissions, including guidance on how to assign users to roles, refer to the following articles:

- For Microsoft 365 admin roles: [About admin roles in the Microsoft 365 admin center](../admin/add-users/about-admin-roles.md)
- For Microsoft Purview and Priva: [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md)
- For Microsoft 365 Defender: [Create and manage roles for role-based access control](../security/defender-endpoint/user-roles.md)