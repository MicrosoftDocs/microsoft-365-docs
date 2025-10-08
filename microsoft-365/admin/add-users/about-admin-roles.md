---
title: "About administrator roles in the Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 10/01/2025
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- trust-pod
ms.custom:
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- admindeeplinkMAC
- adminvideo
- business_assist
- campaignIDs-batch1
- campaignIDs-batch2
description: "Learn about admin roles, such as the global admin role, or the service admin role. Roles map to specific business functions and give permissions to do specific tasks in the Microsoft 365 admin center."
---

# About administrator roles in the Microsoft 365 admin center

> Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

Your Microsoft 365 or Office 365 subscription comes with a set of administrator roles that you can assign to users in your organization in the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339). Each administrator role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions, and that you limit the number of users who have administrative permissions. 

## Watch: What is an admin?

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198028).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=09f25c9c-6c0b-4e0d-85c6-acd0964d39d9]

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com) and sign in. If you can access the Microsoft 365 admin center, you're an administrator, and you can proceed to the next step.

2. In the left navigation pane, select **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.

3. Select the user account for the person who you want to make an administrator. The user's details appear in the right dialog box.

## Before you begin

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> lets you manage Microsoft Entra roles and Microsoft Intune roles. However, these roles are a subset of the roles available in the Microsoft Entra admin center and the Microsoft Intune admin center.

- For the full list of detailed Microsoft Entra role descriptions you can manage in the Microsoft 365 admin center, check out Administrator role permissions in [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

- For the full list of detailed Intune role descriptions you can manage in the Microsoft 365 admin center, check out [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

For more information on assigning roles in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, see [Assign admin roles](assign-admin-roles.md).

## Security guidelines for assigning roles

Because administrators have access to sensitive data and files, we recommend that you follow these guidelines to keep your organization's data more secure.

| Recommendation   | Why it's important |
| :------------------- | :------------------- |
| Have as few global administrators as possible  | Global Administrators have almost unlimited access to your organization's settings and most of its data. We recommend you limit the number of Global Administrators as much as possible. A Global Administrator could inadvertently lock their account and require a password reset. Either another Global Administrator or a Privileged Authentication Administrator can reset a Global Administrator's password. Therefore, we recommend you have at least a Privileged Authentication administrator in the event a Global Administrator is locked out of their account. |
| Assign the *least permissive* role    | Assigning the *least permissive* role means giving administrators only the access they need to get the job done. For example, if you want someone to reset user passwords you shouldn't assign the unlimited global administrator role; instead, you should assign a limited administrator role, like Password Administrator or Helpdesk Administrator.  |
| Require multifactor authentication (MFA) for administrators   |  It's a good idea to require MFA for all of your users, especially administrators. MFA makes users use a second method of identification to verify their identity. Administrators can have access to user data, such as their name, email address, location, and so on. If you require MFA, even if the administrator's password gets compromised, the password alone isn't sufficient to sign in without an additional method of identification.  <br><br>When you turn on MFA, the next time the user signs in, they'll need to provide an alternate email address and phone number for account recovery.  <br> [Set up multifactor authentication](../security-and-compliance/set-up-multi-factor-authentication.md)   |

If you get a message in the Microsoft 365 admin center that you don't have permissions to edit a setting or page, it's because you're assigned to a role that doesn't have that permission. In this case, take one of more of the following actions:

- Talk to another administrator to assign you the correct permissions.
- Learn more about how administrator roles are assigned. See [Assign administrator roles](assign-admin-roles.md).
- [Contact support for Microsoft 365 for business](../get-help-support.md).

## Commonly used Microsoft 365 admin center roles

To view administrator roles, follow these steps:

1. In the Microsoft 365 admin center, go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2097861" target="_blank">**Role assignments**</a>.

2. Select any role to open its detail pane. 

3. Select the **Permissions** tab to view the detailed list of what administrators assigned that role have permissions to do. 

4. Select the **Assigned** or **Assigned admins** tab to add users to roles.

   To view the full list of roles, go to the bottom of the list and select **Show all by Category**. For detailed information, including the cmdlets associated with a role, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

### Administrator roles and who should be assigned

The following table lists administrator roles and information about who should be assigned these roles.

|Administrator role     |Who should be assigned this role?  |
|---------|---------|
| AI administrator | Assign the AI Administrator role to users who need to do the following tasks:<br> &bull; Allow users to install an app or install an app for users in the organization if the app doesn't require permission <br> &bull; Read and configure Azure and Microsoft 365 service health dashboards <br> &bull; View usage reports, adoption insights, and organizational insight <br> &bull; Create and manage support tickets in Azure and the Microsoft 365 admin center<br/> <br/> **Note**: The AI Administrator role is currently limited. For full administrative capabilities, it's recommended using the Global Administrator role until the AI Administrator role is fully functional. We're continuously expanding support for more functionalities to enhance the AI Administrator role.|
|Billing administrator     |   Assign the Billing administrator role to users who make purchases, manage subscriptions and service requests, and monitor service health. Billing administrators can't assign licenses; If a Billing administrator is also a License or User administrator, visit [Licenses](https://go.microsoft.com/fwlink/p/?linkid=842264) to assign licenses.<br><br> Billing administrators also can:<br> &bull; Manage all aspects of billing<br> &bull; Create and manage support tickets in the Azure portal <br/><br/>|
|Exchange admin     |   Assign the Exchange admin role to users who need to view and manage your user's email mailboxes, Microsoft 365 Groups, and Exchange Online. <br><br> Exchange administrators can also:<br> &bull; Recover deleted items in a user's mailbox <br> &bull; Set up "Send As" and "Send on behalf" delegates <br>  |
|Fabric admin |   Assign the Fabric admin role to users who need to do the following tasks: <br> &bull; Manage all admin features for Microsoft Fabric and Power BI <br> &bull; Report on usage and performance <br> &bull; Review and manage auditing  |
|Global admin     |   Giving too many users global access is a security risk and we recommend that you have as few global administrators as possible. <br/><br/> Only global administrators can:<br> &bull; Reset passwords for all users <br> &bull; Add and manage domains <br> &bull; Unblock another global admin <br/><br/>The person who signed up for Microsoft online services automatically becomes a Global admin. Additionally, only Global administrators can view and manage subscriptions purchased through a Partner.|
|Global reader    |   Assign the global reader role to users who need to view administrator features and settings in admin centers that the global administrator can view. The global reader can't edit any settings.  <br/><br/> For subscriptions purchased through a partner, global reader role isn't available. |
|Graph data connect administrator     |   Assign the Graph data connect admin role to users who need to do the following tasks: <br>&bull; Access the full set of administrative capabilities of Microsoft Graph Data Connect <br> &bull; Manage Microsoft Graph Data Connect settings in a tenant <br> &bull; Enable or disable the Microsoft Graph Data Connect service <br> &bull; Configure dataset workload selections in Microsoft Graph Data Connect <br> &bull; Configure cross-tenant data movement settings in Microsoft Graph Data Connect <br> &bull; View, approve, or deny application authorization requests for Microsoft Graph Data Connect <br> &bull; View, create, update, or delete application registrations for Microsoft Graph Data Connect|
|Groups administrator     |   Assign the groups admin role to users who need to manage all groups settings across admin centers, including the Microsoft 365 admin center and Microsoft Entra admin center. <br><br> Groups administrators can:<br> &bull; Create, edit, delete, and restore Microsoft 365 groups<br> &bull; Create and update group creation, expiration, and naming policies<br> &bull; Create, edit, delete, and restore Microsoft Entra security groups|
|Helpdesk administrator     |   Assign the Helpdesk admin role to users who need to do the following:<br> &bull; Reset passwords <br> &bull; Force users to sign out<br> &bull; Manage service requests<br> &bull; Monitor service health<br/><br/> The Helpdesk admin can only help users who aren't administrator users and users who are assigned these roles: Directory reader, Guest inviter, Helpdesk admin, Message center reader, and Reports reader.      |
|License administrator    |   Assign the License admin role to users who need to assign and remove licenses from users and edit their usage location. <br/><br/> License administrators also can: <br> &bull; Reprocess license assignments for group-based licensing <br> &bull; Assign product licenses to groups for group-based licensing  |
|Message center privacy reader    |   Assign the Message center privacy reader role to users who need to read privacy and security messages and updates in the Microsoft 365 Message center. Message center privacy readers might get email notifications related to data privacy, depending on their preferences, and they can unsubscribe using Message center preferences. Only global administrators and Message center privacy readers can read data privacy messages. This role has no permission to view, create, or manage service requests. <br><br>Message center privacy readers can also: <br> &bull; Monitor all notifications in the Message Center, including data privacy messages<br> &bull; View groups, domains, and subscriptions   |
|Message center reader |   Assign the Message center reader role to users who need to do the following tasks: <br> &bull; Monitor message center notifications<br> &bull; Get weekly email digests of message center posts and updates<br> &bull; Share message center posts<br> &bull; Have read-only access to Microsoft Entra services, such as users and groups|
|Migration administrator |   Assign the Microsoft 365 Migration Administrator role to users who need to do the following tasks: <br> &bull; Use Migration Manager in the Microsoft 365 admin center to manage content migration to Microsoft 365, including Microsoft Teams, OneDrive, and SharePoint sites, from various sources such as Google Drive, Dropbox, and Box.<br> &bull; Select migration sources, create migration inventories (such as Google Drive user lists), schedule and execute migrations, and download reports.<br> &bull; Create new SharePoint sites if the destination sites don't already exist, create SharePoint lists under the SharePoint admin sites, and create and update items in SharePoint lists.<br> &bull; Manage migration project settings and migration lifecycle for tasks and manage permission mappings from source to destination.<br><br>With this role, you can only migrate from Google Drive, Box, Dropbox, and Egnyte. This role doesn't allow you to migrate from file share sources from the SharePoint admin center. Use the SharePoint admin to migrate from file share sources.|
|Office Apps admin    |   Assign the Office Apps admin role to users who need to do the following tasks: <br> &bull; Use the Cloud Policy service for Microsoft 365 to create and manage cloud-based policies.<br> &bull; Create and manage service requests<br> &bull; Manage the What's New content that users see in their apps in Microsoft 365<br> &bull; Monitor service health<br> &bull; Manage Office Scripts settings  |
|Organizational Message Writer    |    Assign the Organizational Message Writer role to users who need to write, publish, manage, and review the organizational messages for end-users through Microsoft product surfaces.   |
|Organizational Messages Approver   |    Assign the Organizational Messages Approver role to users who need to review, approve, or reject new organizational messages for delivery in the Microsoft 365 admin center before they're sent to users through Microsoft product surfaces.  |
|Password administrator  |   Assign the Password admin role to a user who needs to reset passwords for users who aren't administrators and Password Administrators.   |
|People administrator |   Assign the People administrator role to users who need to do the following tasks: <br> &bull; Update profile photos for all users including administrators<br> &bull; Update people settings for all users (pronouns, name pronunciation, and profile card settings)|
|Power Platform administrator |   Assign the Power Platform admin role to users who need to do the following tasks: <br> &bull; Manage all admin features for Power Apps, Power Automate, Power BI, Microsoft Fabric, and Microsoft Purview Data Loss Prevention<br> &bull; Create and manage service requests<br> &bull; Monitor service health  |
|Reports reader |   Assign the Reports reader role to users who need to do the following tasks: <br> &bull; View usage data and the activity reports in the Microsoft 365 admin center<br> &bull; Get access to the Power BI adoption content pack<br> &bull; Get access to sign-in reports and activity in Microsoft Entra ID<br> &bull; View data returned by Microsoft Graph reporting API|
|Search administrator |  Assign the Search admin role to users who need to create and manage search result content and define query settings for improved search results within the organization. The Search admin manages the Microsoft search configuration and can perform all the content-management tasks that a Search editor can.|
|Service Support administrator   |   Assign the Service Support admin role as another role to administrators or users who need to do the following tasks in addition to their usual admin role: <br> &bull; Open and manage service requests<br> &bull; View and share message center posts<br> &bull; Monitor service health   |
|SharePoint administrator    |   Assign the SharePoint admin role to users who need to access and manage the SharePoint admin center. <br><br>SharePoint administrators can also: <br> &bull; Create and delete sites<br> &bull; Manage site collections and global SharePoint settings   |
|Teams administrator    |   Assign the Teams administrator role to users who need to access and manage the Teams admin center. <br><br>Teams administrator can also: <br> &bull; Manage meetings<br> &bull; Manage conference bridges<br> &bull; Manage all org-wide settings, including federation, teams upgrade, and teams client settings   |
|User administrator     |    Assign the User admin role to users who need to do the following tasks for all users: <br> &bull; Add users and groups<br> &bull; Assign licenses<br> &bull; Manage most users properties<br> &bull; Create and manage user views<br> &bull; Update password expiration policies<br> &bull; Manage service requests<br> &bull; Monitor service health <br><br>  The user admin can also do the following actions for users who aren't administrators and for users assigned the following roles: Directory reader, Guest inviter, Helpdesk admin, Message center reader, Reports reader: <br> &bull; Manage usernames<br> &bull; Delete and restore users<br> &bull; Reset passwords<br> &bull; Force users to sign out<br> &bull; Update (FIDO) device keys   |
|User Experience Success Manager     |    Assign the User Experience Success Manager role to users who need to access Experience Insights, Adoption Score, and the Message Center in the Microsoft 365 admin center. This role includes the permissions of the Usage Summary Reports Reader role.    |

## Permissions based on administrator roles and Group type in the Microsoft 365 admin center

|Administrator Role | Microsoft 365 Groups   | Security Groups  | Distribution Groups   | Mail Enabled Security Groups   |
| --- | --- | --- | --- | --- |
| Global administrator  | Create, Read, Update, Delete  | Create, Read, Update, Delete | Create, Read, Update, Delete | Create, Read, Update, Delete |
| Global reader  | Read | Read  | Read | Read |
| User administrator  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete | Read | Read |
| Exchange administrator  | Create, Read, Update, Delete | Read, Update - *only groups they own*, Delete - *only groups they own*  | Create, Read, Update, Delete | Create, Read, Update, Delete |
| Teams administrator  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete - _only groups they own_  | Read | Read |
| SharePoint administrator  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete -_only groups they own_  | Read | Read |
| Billing administrator  | Read | Read | Read  | Read |
| Service administrator  | Read | Read  | Read | Read |
| Group administrator  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete | Read | Read |
| AI administrator | Read | Read | Read | Read |

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them admin roles. They, in turn, can assign users in your company, or their company, admin roles. You might want to assign admin roles to partners if they're setting up and managing your online organization for you.
  
A partner can assign these roles:
  
- **Admin Agent** Privileges equivalent to a global admin, except for managing multifactor authentication through the Partner Center.

- **Helpdesk Agent** Privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated admin to your account. The partner has to be an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](../misc/add-partner.md).

## Volume licensing roles

Volume licensing (VL) agreement administrators access their volume licenses in the Microsoft 365 admin center.

- VL Administrators don't have permissions to any other admin center information or functionality outside the VL section.
- Global administrators don't assign any VL roles and don't need to assign any admin role to a VL Administrator for them to be able to access the VL agreement.
- Global administrators don't have access to VL information or functionality in the admin center, unless they're assigned a VL role by a VL Administrator.

For more information, see [Manage volume licensing user roles](../../commerce/licenses/manage-user-roles-vl.md) or [contact the Volume Licensing Support team](../../commerce/licenses/contact-vl-support.md).

## Related content

[Assign admin roles](assign-admin-roles.md)

[Microsoft Entra roles in the Microsoft 365 admin center](azure-ad-roles-in-the-mac.md)

[Activity reports in the Microsoft 365 admin center](../activity-reports/activity-reports.md)

[Exchange Online admin role](about-exchange-online-admin-role.md)
