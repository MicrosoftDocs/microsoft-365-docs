---
title: "About admin roles in the Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 06/24/2024
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
ms.custom: 
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- admindeeplinkMAC
- adminvideo
- business_assist
- campaignIDs-batch1
description: "Learn about admin roles, such as the global admin role, or the service admin role. Roles map to specific business functions and give permissions to do specific tasks in the Microsoft 365 admin center."
---

# About admin roles in the Microsoft 365 admin center

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

Microsoft 365 or Office 365 subscription comes with a set of admin roles that you can assign to users in your organization using the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Each admin role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Watch: What is an admin?

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198028).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=09f25c9c-6c0b-4e0d-85c6-acd0964d39d9]

1. While signed into Microsoft 365, select the app launcher. If you see the Admin button, then you're an admin.
1. Select **Admin** to go to the Microsoft 365 admin center.
1. In the left navigation pane, select **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.
1. Select the person who you want to make an admin. The user's details appear in the right dialog box.

## Before you begin

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> lets you manage Microsoft Entra roles and Microsoft Intune roles. However, these roles are a subset of the roles available in the Microsoft Entra admin center and the Intune admin center.

For the full list of detailed Microsoft Entra role descriptions you can manage in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, check out Administrator role permissions in [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

For the full list of detailed Intune role descriptions you can manage in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, check out [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

For more information on assigning roles in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, see [Assign admin roles](assign-admin-roles.md).

## Security guidelines for assigning roles

Because admins have access to sensitive data and files, we recommend that you follow these guidelines to keep your organization's data more secure.

| Recommendation                  | Why is this important?                 |
| :------------------- | :------------------- |
| Have as few global administrators as possible  | Global Admins have almost unlimited access to your organization's settings and most of its data. We recommend you limit the number of Global Admins as much as possible. A Global Admin may inadvertently lock their account and require a password reset. Either another Global Admin or a Privileged Authentication Admin can reset a Global Admin's password. Therefore, we recommend you have at least a Privileged Authentication administrator in the event a Global administrator is locked out of their account. |
| Assign the *least permissive* role    | Assigning the *least permissive* role means giving admins only the access they need to get the job done. For example, if you want someone to reset employee passwords you shouldn't assign the unlimited global admin role, you should assign a limited admin role, like Password admin or Helpdesk admin.                 |
| Require multi-factor authentication for admins                  |    It's actually a good idea to require MFA for all of your users, but admins should definitely be required to use MFA to sign in. MFA makes users use a second method of identification to verify their identity. Admins can have access to much of customer and employee data. If you require MFA, even if the admin's password gets compromised, the password is useless without the second method of identification.  <br><br>When you turn on MFA, the next time the user signs in, they'll need to provide an alternate email address and phone number for account recovery.  <br> [Set up multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md)          |

If you get a message in the admin center that you don't have permissions to edit a setting or page, it's because you're assigned a role that doesn't have that permission. Talk to another admin to assign you the correct permissions or see [Assign admin roles](assign-admin-roles.md) to assign yourself the correct role.

## Commonly used Microsoft 365 admin center roles

In the Microsoft 365 admin center, you can go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2097861" target="_blank">**Role assignments**</a>, and then select any role to open its detail pane. Select the **Permissions** tab to view the detailed list of what admins assigned that role have permissions to do. Select the **Assigned** or **Assigned admins** tab to add users to roles.

You'll probably only need to assign the following roles in your organization. By default, we first show roles that most organizations use. If you can't find a role, go to the bottom of the list and select **Show all by Category**. For detailed information, including the cmdlets associated with a role, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

|Admin role     |Who should be assigned this role?  |
|---------|---------|
| AI administrator | Assign the AI Administrator role to users who need to do the following tasks:<br> &bull; Manage all aspects of Microsoft 365 Copilot <br> &bull; Manage AI-related enterprise services, extensibility, and copilot agents from the Integrated apps page in the Microsoft 365 admin center <br> &bull; Approve and publish line-of-business copilot agents <br> &bull; Allow users to install an app or install an app for users in the organization if the app does not require permission <br> &bull; Read and configure Azure and Microsoft 365 service health dashboards <br> &bull; View usage reports, adoption insights, and organizational insight <br> &bull; Create and manage support tickets in Azure and the Microsoft 365 admin center<br/>|
|Billing admin     |   Assign the Billing admin role to users who make purchases, manage subscriptions and service requests, and monitor service health. Billing admins cannot assign licenses; If a Billing admin is also a License or User Administrator, visit [Licenses](https://go.microsoft.com/fwlink/p/?linkid=842264) to assign licenses.<br><br> Billing admins also can:<br> &bull; Manage all aspects of billing<br> &bull; Create and manage support tickets in the Azure portal <br/><br/>|
|Exchange admin     |   Assign the Exchange admin role to users who need to view and manage your user's email mailboxes, Microsoft 365 groups, and Exchange Online. <br><br> Exchange admins can also:<br> &bull; Recover deleted items in a user's mailbox <br> &bull; Set up "Send As" and "Send on behalf" delegates <br>  |
|Fabric admin |   Assign the Fabric admin role to users who need to do the following: <br> &bull; Manage all admin features for Microsoft Fabric and Power BI <br> &bull; Report on usage and performance <br> &bull; Review and manage auditing  |
|Global admin     |   Giving too many users global access is a security risk and we recommend that you have as few global admins as possible. <br/><br/> Only global admins can:<br> &bull; Reset passwords for all users <br> &bull; Add and manage domains <br> &bull; Unblock another global admin <br/><br/> **Note:**   The person who signed up for Microsoft online services automatically becomes a Global admin. Additionally, only Global admins can view and manage subscriptions purchased through a Partner.|
|Global reader    |   Assign the global reader role to users who need to view admin features and settings in admin centers that the global admin can view. The global reader admin can't edit any settings.  <br/><br/> **Note:**   For subscriptions purchased through a partner, global reader role isn't available. |
|Groups admin     |   Assign the groups admin role to users who need to manage all groups settings across admin centers, including the Microsoft 365 admin center and Microsoft Entra admin center. <br><br> Groups admins can:<br> &bull; Create, edit, delete, and restore Microsoft 365 groups<br> &bull; Create and update group creation, expiration, and naming policies<br> &bull; Create, edit, delete, and restore Microsoft Entra security groups|
|Helpdesk admin     |   Assign the Helpdesk admin role to users who need to do the following:<br> &bull; Reset passwords<br> &bull; Force users to sign out<br> &bull; Manage service requests<br> &bull; Monitor service health<br/><br/> **Note**: The Helpdesk admin can only help non-admin users and users assigned these roles: Directory reader, Guest inviter, Helpdesk admin, Message center reader, and Reports reader.      |
|License admin    |   Assign the License admin role to users who need to assign and remove licenses from users and edit their usage location. <br/><br/> License admins also can: <br> &bull; Reprocess license assignments for group-based licensing <br> &bull; Assign product licenses to groups for group-based licensing  |
|Message center privacy reader    |   Assign the Message center privacy reader role to users who need to read privacy and security messages and updates in the Microsoft 365 Message center. Message center privacy readers may get email notifications related to data privacy, depending on their preferences, and they can unsubscribe using Message center preferences. Only global administrators and Message center privacy readers can read data privacy messages. This role has no permission to view, create, or manage service requests. <br><br>Message center privacy readers can also: <br> &bull; Monitor all notifications in the Message Center, including data privacy messages<br> &bull; View groups, domains, and subscriptions   |
|Message center reader |   Assign the Message center reader role to users who need to do the following: <br> &bull; Monitor message center notifications<br> &bull; Get weekly email digests of message center posts and updates<br> &bull; Share message center posts<br> &bull; Have read-only access to Microsoft Entra services, such as users and groups|
|Migration admin |   Assign the Microsoft 365 Migration Administrator role to users who need to do the following tasks: <br> &bull; Use Migration Manager in the Microsoft 365 admin center to manage content migration to Microsoft 365, including Teams, OneDrive for Business, and SharePoint sites, from various sources such as Google Drive, Dropbox, and Box.<br> &bull; Select migration sources, create migration inventories (such as Google Drive user lists), schedule and execute migrations, and download reports.<br> &bull; Create new SharePoint sites if the destination sites don't already exist, create SharePoint lists under the SharePoint admin sites, and create and update items in SharePoint lists.<br> &bull; Manage migration project settings and migration lifecycle for tasks as well as manage permission mappings from source to destination.<br><br>**Note:** With this role, you can only migrate from Google Drive, Box, Dropbox and Egnyte. This role doesn't allow you to migrate from file share sources from the SharePoint admin center. Use the SharePoint admin to migrate from file share sources.|
|Office Apps admin    |   Assign the Office Apps admin role to users who need to do the following: <br> &bull; Use the Cloud Policy service for Microsoft 365 to create and manage cloud-based policies.<br> &bull; Create and manage service requests<br> &bull; Manage the What's New content that users see in their apps in Microsoft 365<br> &bull; Monitor service health<br> &bull; Manage Office Scripts settings  |
|Organizational Message Writer    |    Assign the Organizational Message Writer role to users who need to write, publish, manage, and review the organizational messages for end-users through Microsoft product surfaces.   |
|Organizational Messages Approver   |    Assign the Organizational Messages Approver role to users who need to review, approve, or reject new organizational messages for delivery in the Microsoft 365 admin center before they are sent to users through Microsoft product surfaces.  |
|Password admin  |   Assign the Password admin role to a user who needs to reset passwords for non-administrators and Password Administrators.   |
|Power Platform admin |   Assign the Power Platform admin role to users who need to do the following: <br> &bull; Manage all admin features for Power Apps, Power Automate, Power BI, Microsoft Fabric, and Microsoft Purview Data Loss Prevention<br> &bull; Create and manage service requests<br> &bull; Monitor service health  |
|Reports reader |   Assign the Reports reader role to users who need to do the following: <br> &bull; View usage data and the activity reports in the Microsoft 365 admin center<br> &bull; Get access to the Power BI adoption content pack<br> &bull; Get access to sign-in reports and activity in Microsoft Entra ID<br> &bull; View data returned by Microsoft Graph reporting API|
|Search admin |  Assign the Search admin role to users who need to create and manage search result content and define query settings for improved search results within the organization. The Search admin manages the Microsoft search configuration and can perform all the content-management tasks that a Search editor can.|
|Service Support admin   |   Assign the Service Support admin role as an additional role to admins or users who need to do the following in addition to their usual admin role: <br> &bull; Open and manage service requests<br> &bull; View and share message center posts<br> &bull; Monitor service health   |
|SharePoint admin    |   Assign the SharePoint admin role to users who need to access and manage the SharePoint Online admin center. <br><br>SharePoint admins can also: <br> &bull; Create and delete sites<br> &bull; Manage site collections and global SharePoint settings   |
|Teams administrator    |   Assign the Teams administrator role to users who need to access and manage the Teams admin center. <br><br>Teams administrator can also: <br> &bull; Manage meetings<br> &bull; Manage conference bridges<br> &bull; Manage all org-wide settings, including federation, teams upgrade, and teams client settings   |
|User admin     |    Assign the User admin role to users who need to do the following for all users: <br> &bull; Add users and groups<br> &bull; Assign licenses<br> &bull; Manage most users properties<br> &bull; Create and manage user views<br> &bull; Update password expiration policies<br> &bull; Manage service requests<br> &bull; Monitor service health <br><br>  The user admin can also do the following actions for users who aren't admins and for users assigned the following roles: Directory reader, Guest inviter, Helpdesk admin, Message center reader, Reports reader: <br> &bull; Manage usernames<br> &bull; Delete and restore users<br> &bull; Reset passwords<br> &bull; Force users to sign out<br> &bull; Update (FIDO) device keys   |
|User Experience Success Manager     |    Assign the User Experience Success Manager role to users who need to access Experience Insights, Adoption Score, and the Message Center in the Microsoft 365 admin center. This role includes the permissions of the Usage Summary Reports Reader role.    |

## Permissions based on Admin role and Group type in M365 Admin page

|Admin Role | M365 Groups   | Security Groups  | Distribution Groups   | Mail Enabled Security Groups   |
| --- | --- | --- | --- | --- |
| Global admin  | Create, Read, Update, Delete  | Create, Read, Update, Delete | Create, Read, Update, Delete | Create, Read, Update, Delete |
| Global reader  | Read | Read  | Read | Read |
| User admin  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete | Read | Read |
| Exchange admin  | Create, Read, Update, Delete | Read, Update - *only groups they own*, Delete - *only groups they own*  | Create, Read, Update, Delete | Create, Read, Update, Delete |
| Teams admin  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete - _only groups they own_  | Read | Read |
| SharePoint admin  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete -_only groups they own_  | Read | Read |
| Billing admin  | Read | Read | Read  | Read |
| Skype admin  | Read | Read | Read | Read |
| Service admin  | Read | Read  | Read | Read |
| Group admin  | Create, Read, Update, Delete, ***Can't update EXO properties*** | Create, Read, Update, Delete | Read | Read |
| AI administrator | Read | Read | Read | Read | 

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them admin roles. They, in turn, can assign users in your company, or their company, admin roles. You may want to assign admin roles to partners if they're setting up and managing your online organization for you.
  
A partner can assign these roles:
  
- **Admin Agent** Privileges equivalent to a global admin, except for managing multi-factor authentication through the Partner Center.

- **Helpdesk Agent** Privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated admin to your account. The partner has to be an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](../misc/add-partner.md).

## Volume licensing roles

Permissions to volume licensing information in Microsoft 365 admin center are controlled by the VL Agreement Administrators in Volume Licensing Service Center (VLSC), even for VL roles that predominantly use functionality in the Microsoft 365 admin center rather than VLSC.

- Some volume licensing (VL) functionality is now available in Microsoft 365 admin center in a new volume licensing blade visible only to volume licensing users only.

- Volume licensing users see no other Microsoft 365 admin center information or functionality.

- Microsoft 365 admin center Global Admins have no role in assigning VL user permissions and do not need to assign any admin permissions to VL users for them to see the volume licensing blade.

- Volume licensing users must first register on the Volume Licensing Service Center (VLSC), where all roles and permissions for volume licensing functions is managed.

- For more information about volume licensing in Microsoft 365 admin center, see [Frequently Asked Questions for the Volume Licensing Service Center](/licensing/vlsc-faqs-home-page) or [contact the Volume Licensing Service team](/licensing/contact-us).
  
## Related content

[Assign admin roles](assign-admin-roles.md) (article)\
[Microsoft Entra roles in the Microsoft 365 admin center](azure-ad-roles-in-the-mac.md) (article)\
[Activity reports in the Microsoft 365 admin center](../activity-reports/activity-reports.md) (article)\
[Exchange Online admin role](about-exchange-online-admin-role.md) (article)
