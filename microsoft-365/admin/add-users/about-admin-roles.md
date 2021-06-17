---
title: "About admin roles in the Microsoft 365 admin center"
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
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: da585eea-f576-4f55-a1e0-87090b6aaa9d
description: "Admin roles such as the Service admin map to business functions and give permissions to do specific tasks in the admin center."
---

# About admin roles

Microsoft 365 or Office 365 subscription comes with a set of admin roles that you can assign to users in your organization using the Microsoft 365 admin center. Each admin role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers.

The Microsoft 365 admin center lets you manage Azure AD roles and Microsoft Intune roles. However, these roles are a subset of the roles available in the Azure AD portal and the Intune admin center.

## Before you begin

Looking for the full list of detailed Azure AD role descriptions you can manage in the Microsoft 365 admin center? Check out Administrator role permissions in Azure Active Directory. [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

Looking for the full list of detailed Intune role descriptions you can manage in the Microsoft 365 admin center?  Check out [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

For more information on assigning roles in the Microsoft 365 admin center, see [Assign admin roles](assign-admin-roles.md).

## Watch: What is an admin?

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1SRc0]

## Security guidelines for assigning roles

Because admins have access to sensitive data and files, we recommend that you follow these guidelines to keep your organization's data more secure.

| Recommendation                  | Why is this important?                 |
| :------------------- | :------------------- |
| Have 2 to 4 global admins  | Because only another global admin can reset a global admin's password, we recommend that you have at least 2 global admins in your organization in case of account lockout. But the global admin has almost unlimited access to your org's settings and most of the data, so we also recommend that you don't have more than 4 global admins because that's a security threat. |
| Assign the *least permissive* role    | Assigning the *least permissive* role means giving admins only the access they need to get the job done. For example, if you want someone to reset employee passwords you shouldn't assign the unlimited global admin role, you should assign a limited admin role, like Password admin or Helpdesk admin.  This will help keep your data secure.                 |
| Require multi-factor authentication for admins                  |    It's actually a good idea to require MFA for all of your users, but admins should definitely be required to use MFA to sign in. MFA makes users enter a second method of identification to verify they are who they say they are. Admins can have access to a lot of customer and employee data and if you require MFA, even if the admin's password gets compromised, the password is useless without the second form of identification.  <br><br>When you turn on MFA, the next time the user signs in, they'll need to provide an alternate email address and phone number for account recovery.  <br> [Set up multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md)          |

If you get a message in the admin center telling you that you don't have permissions to edit a setting or page, it's because you are assigned a role that doesn't have that permission.

## Commonly used Microsoft 365 admin center roles

In the Microsoft 365 admin center, you can go to **Roles**, and then select any role to open its detail pane. Select the **Permissions** tab to view the detailed list of what admins assigned that role have permissions to do. Select the **Assigned** or **Assigned admins** tab to add users to roles.

You'll probably only need to assign the following roles in your organization. By default, we first show roles that most organizations use. If you can't find a role, go to the bottom of the list and select **Show all by Category**. (For detailed information, including the cmdlets associated with a role, see [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).)

|Admin role     |Who should be assigned this role?  |
|---------|---------|
|Billing admin     |   Assign the Billing admin role to users who make purchases, manage subscriptions and service requests, and monitor service health. <br><br> Billing admins also can:<br> - Manage all aspects of billing <br> - Create and manage support tickets in the Azure portal <br>  |
|Exchange admin     |   Assign the Exchange admin role to users who need to view and manage your user's email mailboxes, Microsoft 365 groups, and Exchange Online. <br><br> Exchange admins can also:<br> - Recover deleted items in a user's mailbox <br> - Set up "Send As" and "Send on behalf" delegates <br>  |
|Global admin     |   Assign the Global admin role to users who need global access to most management features and data across Microsoft online services. <br><br> Giving too many users global access is a security risk and we recommend that you have between 2 and 4 Global admins. <br><br> Only global admins can:<br> - Reset passwords for all users <br> - Add and manage domains <br> <br> **Note:**   The person who signed up for Microsoft online services automatically becomes a Global admin. |
|Global reader    |   Assign the global reader role to users who need to view admin features and settings in admin centers that the global admin can view. The global reader admin can't edit any settings.   |
|Groups admin     |   Assign the groups admin role to users who need to manage all groups settings across admin centers, including the Microsoft 365 admin center and Azure Active Directory portal. <br><br> Groups admins can:<br> - Create, edit, delete, and restore Microsoft 365 groups <br> - Create and update group creation, expiration, and naming policies <br> - Create, edit, delete, and restore Azure Active Directory security groups| 
|Helpdesk admin     |   Assign the Helpdesk admin role to users who need to do the following:<br> - Reset passwords <br> - Force users to sign out <br> - Manage service requests <br> - Monitor service health <br> <br> **Note**: The Helpdesk admin can only help non-admin users and users assigned these roles: Directory reader, Guest inviter, Helpdesk admin, Message center reader, and Reports reader.      |
|License admin    |   Assign the License admin role to users who need to assign and remove licenses from users and edit their usage location. <br/><br/> License admins also can: <br> - Reprocess license assignments for group-based licensing <br> - Assign product licenses to groups for group-based licensing  |
|Office Apps admin    |   Assign the Office Apps admin role to users who need to do the following: <br> - Use the Office cloud policy service to create and manage cloud-based policies for Office <br> - Create and manage service requests <br> - Manage the What's New content that users see in their Office apps   <br> - Monitor service health  |
|Password admin  |   Assign the Password admin role to a user who needs to reset passwords for non-administrators and Password Administrators.   |
|Message center reader |   Assign the Reports reader role to users who need to do the following: <br> - Monitor message center notifications <br> - Get weekly email digests of message center posts and updates <br> - Share message center posts <br> - Have read-only access to Azure AD services, such as users and groups|
|Power Platform admin |   Assign the Reports reader role to users who need to do the following: <br> - Manage all admin features for Power Apps, Power Automate, and data loss prevention <br> - Create and manage service requests <br> - Monitor service health  |
|Reports reader |   Assign the Reports reader role to users who need to do the following: <br> - View usage data and the activity reports in the Microsoft 365 admin center <br> - Get access to the Power BI adoption content pack <br> - Get access to sign-in reports and activity in Azure AD <br> - View data returned by Microsoft Graph reporting API|
|Service Support admin   |   Assign the Service Support admin role as an additional role to admins or users who need to do the following in addition to their usual admin role: <br> - Open and manage service requests <br> - View and share message center posts <br> - Monitor service health   |
|SharePoint admin    |   Assign the SharePoint admin role to users who need to access and manage the SharePoint Online admin center. <br><br>SharePoint admins can also: <br> - Create and delete sites <br> - Manage site collections and global SharePoint settings   |
|Teams service admin    |   Assign the Teams service admin role to users who need to access and manage the Teams admin center. <br><br>Teams service admins can also: <br> - Manage meetings <br> - Manage conference bridges <br> - Manage all org-wide settings, including federation, teams upgrade, and teams client settings   |
|User admin     |    Assign the User admin role to users who need to do the following for all users: <br> - Add users and groups <br> - Assign licenses <br> - Manage most users properties <br> - Create and manage user views <br> - Update password expiration policies <br> - Manage service requests <br> - Monitor service health <br><br>  The user admin can also do the following actions for users who aren't admins and for users assigned the following roles: Directory reader, Guest inviter, Helpdesk admin, Message center reader, Reports reader: <br> - Manage usernames<br> - Delete and restore users<br> - Reset passwords <br> - Force users to sign out <br> - Update (FIDO) device keys   |

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them admin roles. They, in turn, can assign users in your company, or their company, admin roles. You might want them to do this, for example, if they are setting up and managing your online organization for you.
  
A partner can assign these roles:
  
- **Admin Agent** Privileges equivalent to a global admin, with the exception of managing multi-factor authentication through the Partner Center.

- **Helpdesk Agent** Privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated admin to your account. This process is initiated by an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](../misc/add-partner.md).
  
## Related content

[Assign admin roles](assign-admin-roles.md) (article)\
[Azure AD roles in the Microsoft 365 admin center](azure-ad-roles-in-the-mac.md) (article)\
[Activity reports in the Microsoft 365 admin center](../activity-reports/activity-reports.md) (article)\
[Exchange Online admin role](about-exchange-online-admin-role.md) (article)
