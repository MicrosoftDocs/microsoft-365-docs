---
title: "About Intune admin roles in the Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
description: "Admin roles map to business functions and give permissions to do specific tasks in the admin center. For example, the Service admin opens support tickets with Microsoft."
---

# Intune admin roles in the Microsoft 365 admin center

Your Microsoft 365 or Office 365 subscription comes with a set of admin roles that you can assign to users in your organization using the Microsoft 365 admin center. Each admin role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers.

The Microsoft 365 admin center lets you manage some Microsoft Intune roles. However, these roles are a subset of the roles available in the Intune admin center. Looking for the detailed role descriptions for Microsoft Intune? Check out [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

For more information on assigning roles in the Microsoft 365 admin center, see [Assign admin roles](assign-admin-roles.md).

In the Microsoft 365 admin center, you can go to **Roles**, and then select any role to open its detail pane. Select the **Permissions** tab to view the detailed list of what admins assigned that role have permissions to do. Select the **Assigned** or **Assigned admins** tab to add users to roles.

## Microsoft Intune Roles available in the Microsoft 365 admin center

|Admin role     |Who should be assigned this role?  |
|---------|---------|
|Application manager     |   Assign the Application manager role to users who mangage the application lifecycle for mobile apps, configures policy-managed apps and views device info and configuration profiles.  |
|Help desk operator     |   Assign the help desk operator role to users who assign apps and policies to users and devices. |
|Intune role administrator    |   Assign the Intune role administrator to users who can assign Intune permissions to other admins and can manage custom and built in Intune roles.   |
|Policy and profile manager     |   Assign the policy and profile manager role to users manage compliance policy, configuration profiles and Apple enrollment.   |
|Read only operator     |   Assign the read only operator role to users who can only view users, devices, enrollment details and configurations.   |
|School administrator     |   Assign the school administrator role to users for full access to manage Windows 10 and iOS devices, apps and configurations in Intune for Education.   |

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them admin roles. They, in turn, can assign users in your company - or their company - admin roles. You might want them to do this, for example, if they are setting up and managing your online organization for you.
  
A partner can assign these roles:
  
- Full administration, which has privileges equivalent to a global admin, with the exception of managing multi-factor authentication through the Partner Center.

- Limited administration, which has privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated admin to your account. This process is initiated by an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](../misc/add-partner.md).
  
## Related articles

[About Microsoft 365 admin roles](about-admin-roles.md)

[Assign admin roles](assign-admin-roles.md)

[Activity reports in the Microsoft 365 admin center](../activity-reports/activity-reports.md)