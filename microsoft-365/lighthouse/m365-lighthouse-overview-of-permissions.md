---
title: "Overview of permissions in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 11/19/2024
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-get-started
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn more about how permissions work in Lighthouse."
---

# Overview of permissions in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse permissions are primarily managed by the following:

- Lighthouse role-based access control (RBAC) in the partner tenant
- Granular delegated administrative privileges (GDAP) in the customer tenant

To use Lighthouse, you need a combination of roles assigned via RBAC and GDAP.

## Manage Lighthouse RBAC permissions in the partner tenant

Lighthouse permissions in the partner tenant are managed by assigning RBAC roles in Lighthouse. Each role has a set of permissions that determines which data users can access and change within the partner tenant. Lighthouse RBAC roles don't provide access to customer data. Access to customer data is governed by a Lighthouse user's GDAP permissions (see [Manage GDAP in the customer tenant](#manage-gdap-in-the-customer-tenant)).

RBAC roles are managed from the **Lighthouse permissions** page in Lighthouse. To access the **Lighthouse permissions** page and manage permissions, you must hold one of the following roles:

- Privileged Role Administrator in Microsoft Entra ID
- Administrator in Lighthouse

To learn more, see [Manage Lighthouse RBAC permissions in Microsoft 365 Lighthouse](m365-lighthouse-manage-lighthouse-rbac-permissions.md).

The following table provides an overview of each Lighthouse RBAC role. For a list of actions each role can perform in the partner tenant, see [Lighthouse RBAC roles and capabilities](#lighthouse-rbac-roles-and-capabilities). 

| Lighthouse&nbsp;RBAC&nbsp;role | Overview |
|---|---|
| Account Manager | Account Managers have full access to Sales Advisor pages and data across the entire partner tenant.<br><br>Account Managers can export Sales Advisor data. |
| Administrator | Administrators have full administrative permissions in Lighthouse. <br><br>Administrators can manage RBAC and GDAP permissions, view audit logs, and create baselines, tags, and alerts.<br><br>Administrators are automatically assigned the Privileged Role Administrator, User Administrator, and Group Administrator roles in Microsoft Entra ID and the Admin Agent role in Partner Center. |
| Author | Authors can manage tenants, tags, alert rules, and baselines to deploy tenant configurations. |
| Operator | Operators manage customer tenants in Lighthouse based on the GDAP permissions assigned to them for each customer tenant that they manage.<br><br>Operators can view high-level customer tenant status and manage alerts.<br><br>Lighthouse users who hold at least one Microsoft Entra role are automatically assigned the Operator role.<br><br>**Note:** Lighthouse Administrators can use templates on the **Delegated access** page to assign GDAP permissions to Lighthouse users. |
| Reader | Readers have read-only access to data in Lighthouse.<br><br>Lighthouse Readers can view high-level customer tenant status and alerts. |

## Lighthouse RBAC roles and capabilities

The following table describes the actions that each Lighthouse RBAC role can perform in Lighthouse. For some actions, you need to hold a Microsoft Entra role in addition to a Lighthouse RBAC role. For other actions, only a Microsoft Entra role is required. Microsoft Entra role requirements are indicated in the last column of the table. For a complete list of Microsoft Entra roles and the actions they can perform, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

| Area | Actions | Account&nbsp;Manager | Administrator | Author | Operator | Reader | Need Microsoft Entra&nbsp;role? |
|---|---|:---:|:---:|:---:|:---:|:---:|:---:|
| **Home page** | View data on cards |  |  |  |  |  | Yes |
|  | Add users |  |  |  |  |  | Yes |
|  | Reset password |  |  |  |  |  | Yes |
|  | Offboard users |  |  |  |  |  | Yes |
| **Alerts** | View alerts and alert rules | &check; | &check; | &check; |  | &check; | No |
|  | Manage alerts (change severity, status, or assignment) |  | &check; | &check; |  |  | No |
|  | Create, edit, and delete alert rules |  | &check; | &check; |  |  | No |
| **Copilot insights** | View opportunities and adoption data |  |  |  |  |  | Yes|
| **Tenants** | View the **Tenants** page | &check; | &check; | &check; | &check; | &check; | No |
|  | View tenant details |  |  |  |  |  | Yes |
|  | Export data | &check; | &check; | &check; | &check; | &check; | No |
|  | View tags | &check; | &check; | &check; | &check; | &check; | No |
|  | Create, update, and delete tags in Lighthouse |  | &check; | &check; |  |  | No |
|  | Assign and remove tags from tenants |  | &check; | &check; |  |  | No |
|  | Activate and inactivate a tenant |  | &check; | &check; |  |  | No |
|  | Create customer reports |  |  |  |  |  | Yes |
|  | View delegated access status | &check; | &check; | &check; | &check; | &check; | No |
|  | View Microsoft Secure Score |  |  |  |  |  | Yes |
|  | View baseline assignments | &check; | &check; | &check; | &check; | &check; | No |
|  | View deployment status |  |  |  | &check; |  | Yes |
|  | View apps and services usage |  |  |  | &check; |  | Yes |
|  | View and edit customer contact and website info | &check; | &check; |  | &check; | &check; | No |
| **Users** | Search for users | | | | | | Yes |
|  | View user metrics | | | | | | Yes |
|  | Onboard new users | | | | | | Yes |
|  | Offboard users | | | | | | Yes |
|  | View inactive users | | | | | | Yes |
|  | View shared mailboxes | | | | | | Yes |
|  | View and manage risky users | | | | | | Yes |
|  | View and manage multifactor authentication | | | | | | Yes |
|  | View and manage self-service password reset | | | | | | Yes |
| **Devices** | View device security data | | | | | | Yes |
|  | View vulnerability management data | | | | | | Yes |
|  | View device compliance data | | | | | | Yes |
|  | View threat management data | | | | | | Yes |
|  | View device health data | | | | | | Yes |
|  | View Windows 365 data | | | | | | Yes |
|  | View Windows event logs | | | | | | Yes |
| **Apps** | View app performance and app management data | | | | | | Yes |
| **Quarantined messages** | View and manage quarantined messages | | | | | | Yes | 
| **Baselines** | View baselines (default, custom) and task details |  | &check; |  &check; | &check; | &check; | No |
|  | Create, clone, edit, and assign baselines | | &check; | &check; |  |  | No |
|  | Extract a task from a tenant to add to a baseline | | &check; | &check; | | | Yes |
|  | View deployment insights | | | | | | Yes |
| **Service&nbsp;health** | Monitor service health<sup>1</sup> |  |  |  |  |  | No |
| **Support** | Create and manage service requests<sup>2</sup> |  |  |  |  |  | No |
| **Audit logs** | View audit logs |  | &check; |  |  |  | Yes
| **Permissions** | View the **Lighthouse Permissions** page | |  &check; |  |  |  | No |
|  | Set up and manage Lighthouse permissions |  | &check; |  |  |  | No |
|  | View, set up, and manage GDAP on the **Delegated access** page |  | &check; |  |  |  | No |
| **Sales Advisor** | View opportunities | &check; | &check; |  |  |  | No |
|  | View subscription renewals | &check; | &check; |  |  |  | No |
|  | View license requests | &check; | &check; |  |  |  | No |

<sup>1</sup> To monitor service health, Lighthouse users must hold at least one Microsoft Entra role in the partner tenant with the following property set: **microsoft.office365.serviceHealth/allEntities/allTasks**. The users must also have at least the Admin Agent role or Helpdesk Agent role assigned to them in Partner Center. 

<sup>2</sup> To create and manage service requests, Lighthouse users must hold at least one Microsoft Entra role in the partner tenant with the following property set: **microsoft.office365.supportTickets/allEntities/allTasks**.

## Manage GDAP in the customer tenant

Just as Lighthouse RBAC roles manage permissions in the partner tenant, GDAP manages permissions in the customer tenants. GDAP gives you a high level of control and flexibility by providing access to customer tenants through [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference). Assigning the least-privileged roles by task to MSP technicians through GDAP reduces security risk for both MSPs and customers. We recommend that you use GDAP reader roles across customer tenants to give Lighthouse users an aggregate view across all customer tenants.

For more information about setting up a GDAP relationship with a customer tenant in Lighthouse, see [Obtain granular admin permissions to manage a customer's service - Partner Center](/partner-center/gdap-obtain-admin-permissions-to-manage-customer). 

For more information about least-privileged roles by task, see [Least-privileged roles - Partner Center](/partner-center/gdap-least-privileged-roles-by-task) and [Least privileged roles by task in Microsoft Entra ID](/azure/active-directory/roles/delegate-by-task).  

For more information about GDAP or delegated administrative privileges (DAP) deprecation, see [GDAP frequently asked questions - Partner Center](/partner-center/gdap-faq), or search the [Partner Center announcements](/partner-center/announcements/) for dates and timelines.

For a complete list of Microsoft Entra roles and the actions they can perform, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference). For information on how to assign roles, see [Assign Microsoft Entra roles to users](/azure/active-directory/roles/manage-roles-portal).

## Related content

[View your Microsoft Entra roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)  
[Manage Lighthouse RBAC permissions in Microsoft 365 Lighthouse](m365-lighthouse-manage-lighthouse-rbac-permissions.md) (article)  
[Set up GDAP in Microsoft 365 Lighthouse](m365-lighthouse-setup-gdap.md) (article)  
[Overview of the Delegated access page in Microsoft 365 Lighthouse](m365-lighthouse-delegated-access-overview.md) (article)  
[Assign roles and permissions to users - Partner Center](/partner-center/permissions-overview) (article)  
[GDAP frequently asked questions - Partner Center](/partner-center/gdap-faq) (article)  
[Microsoft 365 Lighthouse frequently asked questions (FAQs)](m365-lighthouse-faq.yml) (article)
