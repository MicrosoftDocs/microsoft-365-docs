---
title: "Admin roles for Intune in the Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 09/15/2022
ms.localizationpriority: medium
ms.collection: 
- tier1
description: "The Microsoft 365 admin center lets you manage some Microsoft Intune roles, which map to business functions and give permissions to do specific tasks."
---

# Admin roles for Intune in the Microsoft 365 admin center

Your Microsoft 365 or Office 365 subscription comes with a set of admin roles that you can assign to any users in your organization using the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Each admin role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers. Given this, these roles are only a subset of all the roles available in the Intune admin center, which includes additional roles specific to Intune itself.

Before adding specific Intune roles, roles must be assigned in Azure AD. To see these roles, sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) > Tenant administration > Roles > All roles >**. You can manage the role on the following pages:

- Properties: The name, description, permissions, and scope tags for the role.
- Assignments: A list of role assignments defining which users have access to which users or devices. A role can have multiple assignments, and a user can be in multiple assignments.

## About roles-based access control in Intune

Roles-based access control (RBAC) helps you manage who has access to your organization's resources and what they can do with those resources. By assigning roles to your Intune users, you can limit what they can see and change. There are both built-in and custom roles, and each role has a set of permissions that determine what users with that role can access, or change within your organization. The following information will cover both types of roles in Intune.

To create, edit, or assign roles, your account must have one of the following permissions in Azure AD:

- **Global Administrator**
- **Intune Service Administrator** (also known as **Intune Administrator** but not to be confused with the built-in **Intune Role Administrator** role.)

Find more information on [Azure Active Directory roles and RBAC](/azure/active-directory/roles/permissions-reference).

## Microsoft Intune built-in roles

Built-in roles use pre-defined rules based on common Intune scenarios. Alternatively, custom roles are built upon rules that are strictly defined by you. 

Here are the built-in roles that you can assign:

|Admin role     |Who should be assigned this role?  |
|---------|---------|
|**Application manager**     |   Assign the Application manager role to users who manage the application lifecycle for mobile apps, configure policy-managed apps, and view device info and configuration profiles.  |
|**Help desk operator**     |   Assign the help desk operator role to users who assign apps and policies to users and devices. |
|**Intune role administrator**    |   Assign the Intune role administrator to users who can assign Intune permissions to other admins and can manage custom and built in Intune roles.   |
|**Policy and profile manager**     |   Assign the policy and profile manager role to users manage compliance policy, configuration profiles and Apple enrollment.   |
|**Read only operator**     |   Assign the read only operator role to users who can only view users, devices, enrollment details and configurations.   |
|**School administrator**     |   Assign the school administrator role to users for full access to manage Windows 10-11 and iOS devices, apps, and configurations in Intune for Education.   |
|**Cloud PC Administrator**     |   A Cloud PC Administrator has read and write access to all Cloud PC features located within the Cloud PC blade.   |
|**Cloud PC Reader**     |   A Cloud PC Reader has read access to all Cloud PC features located within the Cloud PC blade.   |

## Microsoft Intune custom roles

You can create custom roles in Intune that include any permissions required for a specific job function. For example, if an IT department group manages applications, policies, and configuration profiles, you can add all those permissions together in one custom role. After creating a custom role, you can assign it to any users that need those permissions.

As with built-in roles, in order to create, edit, or assign roles, your account must have one of the following permissions in Azure AD:

- **Global Administrator**
- **Intune Service Administrator** (also known as **Intune Administrator** but not to be confused with the built-in **Intune Role Administrator** role.)

To create a custom role:

1. In the Microsoft Intune admin center, choose **Tenant administration > Roles > All roles > Create**.

1. On the **Basics** page, enter a name and description for the new role, then choose **Next**.

1. On the **Permissions** page, choose the permissions you want to use with this role.

1. On the **Scope (Tags)** page, choose the tags for this role. When this role is assigned to a user, that user can access resources that also have these tags. Choose **Next**.

1. On the **Review + create** page, when you're done, choose **Create**. The new role is displayed in the list on the **Intune roles - All roles** blade.

To copy a role:

1. In the Microsoft Intune admin center, choose **Tenant administration > Roles > All roles >** select the checkbox for a role in the list > **Duplicate**.

1. On the **Basics** page, enter a name. Make sure to use a unique name.

1. All the permissions and scope tags from the original role will already be selected. You can subsequently change the duplicate role's **Name, Description, Permissions, and Scope (Tags)**.

1. After you've made all the changes that you want, choose Next to get to the Review + create page. Select **Create**.

> [!Note]
>To be able to administer Intune you must have an Intune license assigned. Alternatively, you can allow non-licensed users to administer Intune by setting **Allow access to unlicensed admins** to **Yes**.

## How to assign a role

You can assign a built-in or custom role to an Intune user. To create, edit, or assign roles, your account must have one of the following permissions in Azure AD:

- **Global Administrator**
- **Intune Service Administrator** (also known as **Intune Administrator** but not to be confused with the built-in **Intune Role Administrator** role.)

1. In the Microsoft Intune admin center, choose **Tenant administration > Roles > All roles**.

1. Choose the built-in role you want to assign > Assignments > + Assign.

1. On the **Basics** page, enter an Assignment name and optional Assignment description, and then choose **Next**.

1. On the **Admin Groups** page, select the group that contains the user you want to give the permissions to. Choose **Next**.

1. On the **Scope (Groups)** page, choose a group containing the users and devices that the member above will be allowed to manage. You also have the option to choose all users or all devices. Choose **Next**.

> [!Note]
> The **All users** and **All devices** are **Intune virtual groups** and not Azure Active Directory (Azure AD) security groups. As a result, for **Scope (Groups)** assignment purposes you cannot use them as parents of Azure AD security groups. If you need both **All users** and **All devices** and specific Azure AD security groups for **Scope (Groups)** assignments, you must add them separately with separate assignments. Otherwise, even if the Scope (Groups) assignment for a role is set to **All Users** the admin in this role won't have access to specific Azure AD user groups. For Azure AD security groups, nesting is supported.

6. On the **Scope (Tags)** page, choose tags where this role assignment will be applied. Choose **Next**.

7. On the **Review + Create** page, when you're done, choose **Create**. The new assignment is displayed in the list of assignments.

> [!Note]
> When you create scope groups and assign a scope tag, you can only target groups that are listed in the Scope (Groups) of your role assignment.

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them admin roles. They, in turn, can assign users in your company - or their company - admin roles. You might want them to do this, for example, if they're setting up and managing your online organization for you.
  
A partner can assign these roles:
  
- Full administration, which has privileges equivalent to a global admin, except for managing multi-factor authentication through the Partner Center.

- Limited administration, which has privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated admin to your account. This process is initiated by an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](../admin/misc/add-partner.md).
  
## Related content

[About Microsoft 365 admin roles](../admin/add-users/about-admin-roles.md) (article)\
[Assign admin roles](../admin/add-users/assign-admin-roles.md) (article)\
[Activity reports in the Microsoft 365 admin center](../admin/activity-reports/activity-reports.md) (article)
