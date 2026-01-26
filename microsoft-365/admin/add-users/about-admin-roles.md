---
title: "About administrator roles in the Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/08/2026
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.localizationpriority: high
ms.collection:
- Tier1
- M365-subscription-management
- Adm_O365
- Adm_TOC
description: "Learn about administrator roles, such as the global administrator role, or the service administrator role. Roles map to specific business functions and give permissions to do specific tasks in the Microsoft 365 admin center."
customer-intent: As an administrator, I want to understand administrator roles that are available with my Microsoft 365 for business subscription.
---

# About administrator roles in the Microsoft 365 admin center

> Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube. These resources are especially helpful for small business admins who are new to Microsoft 365.

In order to perform tasks, such as adding users, assigning licenses, or configuring services, you must be assigned an administrator role in Microsoft 365 for business. Your Microsoft 365 or Office 365 subscription comes with a set of administrator roles that can be assigned in the [Microsoft 365 admin center](https://admin.microsoft.com). Each administrator role maps to common business functions and enables people in your organization to do specific tasks in the admin centers. This article provides an overview of administrator roles, security guidelines to keep in mind, and links to related content.

## Watch: What is an admin?

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198028).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=09f25c9c-6c0b-4e0d-85c6-acd0964d39d9]

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com) and sign in. If you can access the Microsoft 365 admin center, you're an administrator, and you can proceed to the next step.

2. In the left navigation pane, select **Users** > **Active users**. (Or, go directly to the [Active users page](https://go.microsoft.com/fwlink/p/?linkid=834822).)

3. Select the user account for the person who you want to make an administrator. The user's details appear in the right dialog box.

## Before you begin

The [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339) lets you manage Microsoft Entra roles and Microsoft Intune roles. However, these roles are a subset of the roles available in the Microsoft Entra admin center and the Microsoft Intune admin center.

- For the full list of detailed Microsoft Entra role descriptions you can manage in the Microsoft 365 admin center, see Administrator role permissions in [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).
- For the full list of detailed Intune role descriptions you can manage in the Microsoft 365 admin center, see [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

For more information on assigning roles in the Microsoft 365 admin center, see [Assign admin roles](assign-admin-roles.md).

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions, and that you limit the number of users who have administrative permissions. See [Least privileged roles by task in Microsoft Entra ID](/entra/identity/role-based-access-control/delegate-by-task).

## Security guidelines for assigning roles

Because administrators have access to sensitive data and files, we recommend that you follow these guidelines to keep your organization's data more secure.

| Recommendation   | Why it's important |
| :------------------- | :------------------- |
| Have as few global administrators as possible  | Global Administrators have almost unlimited access to your organization's settings and most of its data. We recommend you limit the number of Global Administrators as much as possible. A Global Administrator could inadvertently lock their account and require a password reset. Either another Global Administrator or a Privileged Authentication Administrator can reset a Global Administrator's password. Therefore, we recommend you have at least a Privileged Authentication administrator in the event a Global Administrator is locked out of their account. |
| Assign the *least permissive* role    | Assigning the *least permissive* role means giving administrators only the access they need to get the job done. For example, if you want someone to reset user passwords you shouldn't assign the unlimited global administrator role; instead, you should assign a limited administrator role, like Password Administrator or Helpdesk Administrator. See [Least privileged roles by task in Microsoft Entra ID](/entra/identity/role-based-access-control/delegate-by-task). |
| Require multifactor authentication (MFA) for administrators   |  It's a good idea to require MFA for all of your users, especially administrators. MFA makes users use a second method of identification to verify their identity. Administrators can have access to user data, such as their name, email address, location, and so on. If you require MFA, even if the administrator's password gets compromised, the password alone isn't sufficient to sign in without another method of identification.  <br><br>When you turn on MFA, the next time the user signs in, they'll need to provide an alternate email address and phone number for account recovery.  <br> [Set up multifactor authentication](../security-and-compliance/set-up-multi-factor-authentication.md)   |

If you get a message in the Microsoft 365 admin center that you don't have permissions to edit a setting or page, it's because you're assigned to a role that doesn't have that permission. In this case, take one or more of the following actions:

- Talk to another administrator to assign you the correct permissions.
- Learn more about how administrator roles are assigned. See [Assign administrator roles](assign-admin-roles.md).
- [Contact support for Microsoft 365 for business](../get-help-support.md).

## Commonly used Microsoft 365 admin center roles

To view administrator roles, follow these steps:

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to [Role assignments](https://go.microsoft.com/fwlink/p/?linkid=2097861).

2. Select any role to open its detail pane. 

3. Select the **Permissions** tab to view the detailed list of what administrators assigned that role have permissions to do. 

4. Select the **Assigned** or **Assigned admins** tab to add users to roles.

   To view the full list of roles, go to the bottom of the list and select **Show all by Category**. For detailed information, including the cmdlets associated with a role, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

### Administrator roles and who should be assigned

The following table lists administrator roles and information about who should be assigned these roles. To see the full list of roles, visit [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

|Administrator role     |Who should be assigned this role?  |
|---------|---------|
| [AI Administrator](/entra/identity/role-based-access-control/permissions-reference#ai-administrator) | Assign the AI Administrator role to users who need to do the following tasks:<br/><br> - Allow users to install an app or install an app for users in the organization if the app doesn't require permission <br> - Read and configure Azure and Microsoft 365 service health dashboards <br> - View usage reports, adoption insights, and organizational insight <br> - Create and manage support tickets in Azure and the Microsoft 365 admin center|
|[Billing Administrator](/entra/identity/role-based-access-control/permissions-reference#billing-administrator)     |   Assign the Billing Administrator role to users who make purchases, manage subscriptions & service requests, and monitor service health. Billing administrators can also:<br/><br> - Manage all aspects of billing<br> - Create and manage support tickets in the Azure portal <br/><br/>|
|[Exchange Administrator](/entra/identity/role-based-access-control/permissions-reference#exchange-administrator)     |   Assign the Exchange Administrator role to users who need to view and manage your user's email mailboxes, Microsoft 365 Groups, and Exchange Online. Exchange Administrators can also:<br/><br> - Recover deleted items in a user's mailbox <br> - Set up "Send As" and "Send on behalf" delegates <br>  |
|[Fabric Administrator](/entra/identity/role-based-access-control/permissions-reference#fabric-administrator) |   Assign the Fabric Administrator role to users who need to do the following tasks: <br/><br> - Manage all admin features for Microsoft Fabric and Power BI <br> - Report on usage and performance <br> - Review and manage auditing  |
|[Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator)     |   Global Administrators can:<br/><br> - Manage purchasing of your organization's subscriptions and products<br> - Reset passwords for all users <br> - Add and manage domains <br> - Unblock another global admin <br/><br/>The person who purchased a subscription for your organization and signed up for Microsoft online services is a global administrator automatically. Additionally, only global administrators can view and manage subscriptions purchased through a Partner.|
|[Global Reader](/entra/identity/role-based-access-control/permissions-reference#global-reader)    |   Assign the Global Reader role to users who need to view administrator features and settings in admin centers that the global administrator can view. The global reader can't edit any settings.  <br/><br/> For subscriptions purchased through a partner, the Global Reader role isn't available. |
|[Groups Administrator](/entra/identity/role-based-access-control/permissions-reference#groups-administrator)     |   Assign the Groups Administrator role to users who need to manage all groups settings across admin centers, including the Microsoft 365 admin center and Microsoft Entra admin center. Groups Administrators can:<br/><br> - Create, edit, delete, and restore Microsoft 365 Groups<br> - Create and update group creation, expiration, and naming policies<br> - Create, edit, delete, and restore Microsoft Entra security groups <br/><br/>Also see [Manage who can create Microsoft 365 Groups](/microsoft-365/solutions/manage-creation-of-groups). |
|[Helpdesk Administrator](/entra/identity/role-based-access-control/permissions-reference#helpdesk-administrator)     |   Assign the Helpdesk Administrator role to users who need to do the following tasks:<br/><br> - Reset passwords <br> - Force users to sign out<br> - Manage service requests<br> - Monitor service health<br/><br/> The Helpdesk admin can only help users who aren't administrator users and users who are assigned these roles: Directory reader, Guest inviter, Helpdesk admin, Message Center reader, and Reports reader.      |
|[License Administrator](/entra/identity/role-based-access-control/permissions-reference#license-administrator)    |   Assign the License Administrator role to users who need to assign and remove licenses from users and edit their usage location. License administrators can also: <br/><br> - Reprocess license assignments for group-based licensing <br> - Assign product licenses to groups for group-based licensing  |
|[Message Center Privacy Reader](/entra/identity/role-based-access-control/permissions-reference#message-center-privacy-reader)    |   Assign the Message Center Privacy Reader role to users who need to read privacy and security messages and updates in the Microsoft 365 Message Center. Message Center privacy readers might get email notifications related to data privacy, depending on their preferences, and they can unsubscribe using Message Center preferences. Only Global Administrators and Message Center Privacy Readers can read data privacy messages. This role has no permission to view, create, or manage service requests. Message Center privacy readers can also: <br/><br> - Monitor all notifications in the Message Center, including data privacy messages<br> - View groups, domains, and subscriptions   |
|[Message Center Reader](/entra/identity/role-based-access-control/permissions-reference#message-center-reader) |   Assign the Message Center Reader role to users who need to do the following tasks: <br/><br> - Monitor Message Center notifications<br> - Get weekly email digests of Message Center posts and updates<br> - Share Message Center posts<br> - Have read-only access to Microsoft Entra services, such as users and groups|
|[Microsoft Graph Data Connect Administrator](/entra/identity/role-based-access-control/permissions-reference#microsoft-graph-data-connect-administrator)     |   Assign the Microsoft Graph Data Connect Administrator role to users who need to do the following tasks: <br/><br>- Access the full set of administrative capabilities of Microsoft Graph Data Connect <br> - Manage Microsoft Graph Data Connect settings in a tenant <br> - Enable or disable the Microsoft Graph Data Connect service <br> - Configure dataset workload selections in Microsoft Graph Data Connect <br> - Configure cross-tenant data movement settings in Microsoft Graph Data Connect <br> - View, approve, or deny application authorization requests for Microsoft Graph Data Connect <br> - View, create, update, or delete application registrations for Microsoft Graph Data Connect|
|[Migration Administrator](/entra/identity/role-based-access-control/permissions-reference#microsoft-365-migration-administrator) |   Assign the Microsoft 365 Migration Administrator role to users who need to do the following tasks: <br/><br> - Use Migration Manager in the Microsoft 365 admin center to manage content migration to Microsoft 365, including Microsoft Teams, OneDrive, and SharePoint sites, from various sources such as Google Drive, Dropbox, and Box.<br> - Select migration sources, create migration inventories (such as Google Drive user lists), schedule and execute migrations, and download reports.<br> - Create new SharePoint sites if the destination sites don't already exist, create SharePoint lists under the SharePoint admin sites, and create and update items in SharePoint lists.<br> - Manage migration project settings and migration lifecycle for tasks and manage permission mappings from source to destination.<br><br>With this role, you can only migrate from Google Drive, Box, Dropbox, and Egnyte. This role doesn't allow you to migrate from file share sources from the SharePoint admin center. Use the SharePoint admin to migrate from file share sources.|
|[Office Apps Administrator](/entra/identity/role-based-access-control/permissions-reference#office-apps-administrator)    |   Assign the Office Apps Administrator role to users who need to do the following tasks: <br/><br> - Use the Cloud Policy service for Microsoft 365 to create and manage cloud-based policies.<br> - Create and manage service requests<br> - Manage the What's New content that users see in their apps in Microsoft 365<br> - Monitor service health<br> - Manage Office Scripts settings  |
|[Organizational Messages Approver](/entra/identity/role-based-access-control/permissions-reference#organizational-messages-approver)   |    Assign the Organizational Messages Approver role to users who need to review, approve, or reject new organizational messages for delivery in the Microsoft 365 admin center before they're sent to users through Microsoft product surfaces.  |
|[Organizational Messages Writer](/entra/identity/role-based-access-control/permissions-reference#organizational-messages-writer)    |    Assign the Organizational Messages Writer role to users who need to write, publish, manage, and review the organizational messages for end-users through Microsoft product surfaces.   |
|[Password Administrator](/entra/identity/role-based-access-control/permissions-reference#password-administrator)  |   Assign the Password Administrator role to a user who needs to reset passwords for users.   |
|[People Administrator](/entra/identity/role-based-access-control/permissions-reference#people-administrator) |   Assign the People Administrator role to users who need to do the following tasks: <br/><br> - Update profile photos for all users including administrators<br> - Update people settings for all users (pronouns, name pronunciation, and profile card settings)|
|[Power Platform Administrator](/entra/identity/role-based-access-control/permissions-reference#power-platform-administrator) |   Assign the Power Platform Administrator role to users who need to do the following tasks: <br/><br> - Manage all admin features for Power Apps, Power Automate, Power BI, Microsoft Fabric, and Microsoft Purview Data Loss Prevention<br> - Create and manage service requests<br> - Monitor service health  |
|[Reports Reader](/entra/identity/role-based-access-control/permissions-reference#reports-reader) |   Assign the Reports Reader role to users who need to do the following tasks: <br/><br> - View usage data and the activity reports in the Microsoft 365 admin center<br> - Get access to the Power BI adoption content pack<br> - Get access to sign-in reports and activity in Microsoft Entra ID<br> - View data returned by Microsoft Graph reporting API|
|[Search Administrator](/entra/identity/role-based-access-control/permissions-reference#search-administrator) |  Assign the Search Administrator role to users who need to create and manage search result content and define query settings for improved search results within the organization. The Search admin manages the Microsoft search configuration and can perform all the content-management tasks that a Search editor can.|
|[Service Support Administrator](/entra/identity/role-based-access-control/permissions-reference#service-support-administrator)   |   Assign the Service Support Administrator role as another role to administrators or users who need to do the following tasks in addition to their usual admin role: <br/><br> - Open and manage service requests<br> - View and share Message Center posts<br> - Monitor service health   |
|[SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator)    |   Assign the SharePoint Administrator role to users who need to access and manage the SharePoint admin center. SharePoint Administrators can also: <br/><br> - Create and delete sites<br> - Manage site collections and global SharePoint settings   |
|[Teams Administrator](/entra/identity/role-based-access-control/permissions-reference#teams-administrator)    |   Assign the Teams Administrator role to users who need to access and manage the Teams admin center. A Teams Administrator can also: <br/><br/> - Manage meetings<br> - Manage conference bridges<br> - Manage all org-wide settings, including federation, teams upgrade, and teams client settings   |
|[User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator)     |    Assign the User Administrator role to users who need to do the following tasks: <br/><br/> - Create, disable, or enable user accounts <br/>- Add users and groups<br> - Assign licenses<br> - Manage most users properties<br> - Create and manage user views<br> - Update password expiration policies<br> - Manage service requests<br> - Monitor service health <br/>- Update (FIDO) device keys   |
|[User Experience Success Manager](/entra/identity/role-based-access-control/permissions-reference#user-experience-success-manager)     |    Assign the User Experience Success Manager role to users who need to access Experience Insights, Adoption Score, and the Message Center in the Microsoft 365 admin center. This role includes the permissions of the Usage Summary Reports Reader role.    |
| [Viva Glint Tenant Administrator](/entra/identity/role-based-access-control/permissions-reference#viva-glint-tenant-administrator) | Assign the Viva Glint Tenant Administrator role to users who manage the Viva Glint app. See [Assign Viva Glint Tenant and Service Administrators](/viva/glint/setup/post-provisioning-next-steps). |

Also see [Check admin roles in your organization](/microsoft-365/admin/add-users/assign-admin-roles#check-admin-roles-in-your-organization).

## Permissions based on administrator roles and Group type in the Microsoft 365 administrator center

|Administrator | Microsoft 365 Groups   | Security Groups  | Distribution Groups   | Mail Enabled Security Groups   |
| --- | --- | --- | --- | --- |
| [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator)  | Create, Read, Update, Delete  | Create, Read, Update, Delete | Create, Read, Update, Delete | Create, Read, Update, Delete |
| [Global Reader](/entra/identity/role-based-access-control/permissions-reference#global-reader)  | Read | Read  | Read | Read |
| [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator)  | Create, Read, Update, Delete<br/>(Can't update Exchange Online properties) | Create, Read, Update, Delete | Read | Read |
| [Exchange Administrator](/entra/identity/role-based-access-control/permissions-reference#exchange-administrator)  | Create, Read, Update, Delete | Read, Update (only groups they own), Delete (only groups they own)  | Create, Read, Update, Delete | Create, Read, Update, Delete |
| [Teams Administrator](/entra/identity/role-based-access-control/permissions-reference#teams-administrator)  | Create, Read, Update, Delete<br/>(Can't update Exchange Online properties) | Create, Read, Update, Delete (only groups they own)  | Read | Read |
| [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator)  | Create, Read, Update, Delete<br/>(Can't update Exchange Online properties) | Create, Read, Update, Delete -_only groups they own_  | Read | Read |
| [Billing Administrator](/entra/identity/role-based-access-control/permissions-reference#billing-administrator)  | Read | Read | Read  | Read |
| [Service Support Administrator](/entra/identity/role-based-access-control/permissions-reference#service-support-administrator)  | Read | Read  | Read | Read |
| [Groups Administrator](/entra/identity/role-based-access-control/permissions-reference#groups-administrator)  | Create, Read, Update, Delete<br/>(Can't update Exchange Online properties) | Create, Read, Update, Delete | Read | Read |
| [AI administrator](/entra/identity/role-based-access-control/permissions-reference#ai-administrator) | Read | Read | Read | Read |

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them administrator roles. They, in turn, can assign users in your company, or their company, administrator roles. You might want to assign administrator roles to partners if they're setting up and managing your online organization for you.
  
A partner can assign these roles:
  
- **Admin Agent** Privileges equivalent to a global administrator, except for managing multifactor authentication through the Partner Center.
- **Helpdesk Agent** Privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated administrator to your account. The partner has to be an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](../misc/add-partner.md).

## Volume licensing roles

Volume licensing (VL) agreement administrators access their volume licenses in the [Microsoft 365 admin center](https://admin.microsoft.com).

- VL Administrators don't have permissions to any other admin center information or functionality outside the VL section.
- Global administrators don't assign any VL roles and don't need to assign any administrator role to a VL Administrator for them to be able to access the VL agreement.
- Global administrators don't have access to VL information or functionality in the admin center, unless they're assigned to a VL role by a VL Administrator.

For more information, see [Manage volume licensing user roles](../../commerce/licenses/manage-user-roles-vl.md) or [contact the Volume Licensing Support team](../../commerce/licenses/contact-vl-support.md).

## Related content

- [Get support for Microsoft 365 for business](../get-help-support.md)

- [Reset passwords in Microsoft 365 for business](reset-passwords.md)

- [Assign administrator roles](assign-admin-roles.md)

- [Check administrator roles in your organization](/microsoft-365/admin/add-users/assign-admin-roles#check-admin-roles-in-your-organization)

- [Manage user authentication methods for Microsoft Entra multifactor authentication](/entra/identity/authentication/howto-mfa-userdevicesettings)

- [Microsoft Entra roles in the Microsoft 365 administrator center](azure-ad-roles-in-the-mac.md)

- [Activity reports in the Microsoft 365 admin center](../activity-reports/activity-reports.md)

- [Exchange Online administrator role](about-exchange-online-admin-role.md)
