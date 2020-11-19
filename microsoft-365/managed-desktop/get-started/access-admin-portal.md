---
title: Access the Admin portal
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
ms.author: jaimeo
author: jaimeo
ms.topic: article
audience: ITPro
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
---

# Access the admin portal

Your gateway to the Microsoft Managed Desktop service is the Microsoft [Azure portal](https://portal.azure.com). For more about using and customizing your Azure portal experience generally, see the [Azure portal documentation](https://docs.microsoft.com/azure/azure-portal/). Available in preview now, you can also find Microsoft Managed Desktop in the [Microsoft Endpoint Manager](https://endpoint.microsoft.com/). If you are unfamiliar with the capabilities of this portal for device management see the [Microsoft Endpoint Manager documentation](https://docs.microsoft.com/mem/).

> [!NOTE]
> However you choose to accesss Microsoft Managed Desktop, in [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) or the [Azure portal](https://portal.azure.com), the following browsers are supported:
> - Microsoft Edge (latest version)
> - Microsoft Internet Explorer 11
> - Safari (latest version, Mac only)
> - Chrome (latest version)
> - Firefox (latest version)

Your administrative account needs specific permissions in order to access the Microsoft Managed Desktop administrative features in either Azure portal or Microsoft Endpoint Manager. You can manage admin access to these features within your organization by using Role-based Access Control (RBAC). Several Azure Active Directory (Azure AD) administrator roles and built-in custom roles are available to provide more granular control to different features within the Microsoft Managed Desktop Admin portal. For more information about Azure Active Directory roles, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). Unlike Azure AD administrator roles that apply to a variety of Microsoft products and services, custom roles are specific to Microsoft Managed Desktop and will only guarantee access to the Admin features for this service. Admins can assign custom roles to users individually or in combination with Azure AD administrator roles to add Microsoft Managed Desktop permissions to existing admin accounts.

Each of the roles below can be assigned to provide different levels of access:

|Azure AD role  |Microsoft Managed Desktop permissions  |
|---------|---------|
|Global Administrator     | Admins with this role will have **read and write permissions to all features** in the Microsoft Managed Desktop Admin portal.         |
|Global Reader     | Admins with this role will have **read-only permissions to all features** in the Microsoft Managed Desktop Admin portal.         |
|Intune Service Administrator     |  Admins with this role will have **read and write permissions to features not related to security** in the Microsoft Managed Desktop Admin portal.       |
|Service Support Administrator     | Admins with this role will have **read-only pemrmissions to features not related to security** and **write permissions to manage support requests** in the Microsoft Managed Desktop Admin portal.         |
|Security Admin | Admins with this role will have **read-only permissions to all features** and **write permissions for security related features** in Microsoft Managed Desktop in the Admin portal. |
|Security Reader |Admins with this role will have **read-only permissions to all features** in the Microsoft Managed Desktop Admin portal.|

> [!IMPORTANT]
> Only the Global Administrator role has the necessary permissions to *enroll* your organization in Microsoft Managed Desktop. Be aware that Azure Active Directory roles will give user accounts privileges across a variety of Microsoft services. After completing enrollment with Microsoft Managed Desktop, you should always use the role with the *least* privileges necessary to accomplish your other tasks.

 
|Custom role  |Microsoft Managed Desktop permissions  |
|---------|---------|
|Microsoft Managed Desktop Service Administrator  | When assigned to a user, this role gives the admin **read and write permissions to features not related to security** in the Microsoft Managed Desktop Admin portal.  |
|Microsoft Managed Desktop Service Reader | When assigned to a user, this role gives the admin **read-only permissions to features not related to security** in the Microsoft Managed Desktop Admin portal. |
|Microsoft Managed Desktop Security Manager |When assigned to a user, this role gives that admin **read and write permissions only for security related features** in the Microsoft Managed Desktop Admin portal.   |

> [!NOTE]
> Security features include security-related communications, management of security contacts, management of security-related support requests, and access to security related reports. 

## Assigning roles to administrators

If you need help assigning Azure Active Directory roles, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles).

For easy management of the built-in roles, a security group has been created for each custom role (for example, “Modern Workplace Roles – Security Manager”). To assign users to one of the security groups, follow these steps:
1.	Go the Azure portal and navigate to the Azure Active Directory blade.
2.	Select Groups on the left-hand side.
3.	Search for Modern Workplace Roles, and then select the group associated with the role you want to assign. 
4.	Select Members on the left-hand side, and then select + Add members on the command bar.
5.	Enter the email of the person being added. If they are an external user, you have to invite them before you can assign the group.
6.	Select Select at the bottom.

> [!NOTE]
> Nesting security groups for role assignment is not currently supported. 
