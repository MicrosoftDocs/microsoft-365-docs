---
title: Access the Admin portal
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
description: How to find and use the Admin portal, including controlling access to it.
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

Your gateway to the Microsoft Managed Desktop service is [Microsoft Endpoint Manager](https://endpoint.microsoft.com/). If you are unfamiliar with the capabilities of this portal for device management, see the [Microsoft Endpoint Manager documentation](/mem/).

> [!NOTE]
> In [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) the following browsers are supported:
> - Microsoft Edge (latest version)
> - Safari (latest version, Mac only)
> - Chrome (latest version)
> - Firefox (latest version)

Your administrative account will need specific permissions in order to access the Microsoft Managed Desktop administrative features in Microsoft Endpoint Manager. You can manage admin access to these features within your organization by using role-based access control. Several Azure Active Directory (Azure AD) administrator roles and built-in Microsoft Managed Desktop roles are available to provide more granular control to different features within the Microsoft Managed Desktop Admin portal. For more information about Azure Active Directory roles, see [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles). Unlike Azure AD administrator roles that apply to various Microsoft products and services, the built-in roles are specific to Microsoft Managed Desktop and will only guarantee access to the Admin features for this service. Admins can assign built-in roles to users individually or in combination with Azure AD administrator roles to add Microsoft Managed Desktop permissions to existing admin accounts.

## Azure Active Directory roles with Microsoft Managed Desktop access

|Azure AD role  |Microsoft Managed Desktop permissions  |
|---------|---------|
|Global Administrator     | Admins with this role will have **read and write permissions to all features** in the Microsoft Managed Desktop Admin portal.         |
|Global Reader     | Admins with this role will have **read-only permissions to all features** in the Microsoft Managed Desktop Admin portal.         |
|Intune Service Administrator     |  Admins with this role will have **read and write permissions to features not related to security** in the Microsoft Managed Desktop Admin portal.       |
|Service Support Administrator     | Admins with this role will have **read-only permissions to features not related to security** and **write permissions to manage support requests** in the Microsoft Managed Desktop Admin portal.         |
|Security Admin | Admins with this role will have **read-only permissions to all features** and **write permissions for security related features** in Microsoft Managed Desktop in the Admin portal. |
|Security Reader |Admins with this role will have **read-only permissions to all features** in the Microsoft Managed Desktop Admin portal.|

If you need help with assigning Azure Active Directory roles, see [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles).

> [!IMPORTANT]
> Only the Global Administrator role has the necessary permissions to *enroll* your organization in Microsoft Managed Desktop. Be aware that Azure Active Directory roles will give user accounts privileges across a variety of Microsoft services. After completing enrollment with Microsoft Managed Desktop, you should always use the role with the *least* privileges necessary to accomplish your other tasks.

## Built-in roles provided by Microsoft Managed Desktop


|Built-in role  |Microsoft Managed Desktop permissions  |
|---------|---------|
|Microsoft Managed Desktop Service Administrator  | When assigned to a user, this role gives the admin **read and write permissions to features not related to security** in the Microsoft Managed Desktop Admin portal.  |
|Microsoft Managed Desktop Service Reader | When assigned to a user, this role gives the admin **read-only permissions to features not related to security** in the Microsoft Managed Desktop Admin portal. |
|Microsoft Managed Desktop Security Manager |When assigned to a user, this role gives that admin **read and write permissions only for security related features** in the Microsoft Managed Desktop Admin portal.   |

> [!NOTE]
> Security features include security-related communications, management of security contacts, management of security-related support requests, and access to security related reports. 

### Assigning built-in roles to user

For easy management of built-in roles, there is a security group for each custom role with the name "Modern Workplace Roles - _Role Name_"(for example, “Modern Workplace Roles – Security Manager”). To assign users to one of these security groups, follow these steps:
1.	Go the Microsoft Endpoint Manager portal.
2.	Select **Groups** on the left side.
3.	Search for **Modern Workplace Roles**, and then select the group associated with the role you want to assign. 
4.	Select **Members** on the left side, and then select **+ Add members** on the command bar.
5.	Enter the email of the person being added. If they are a guest, you must invite them before you can assign the group.
6.	Select **Select** at the bottom.

> [!NOTE]
> Nesting security groups for role assignment is not currently supported. 

### Assigning built-in roles to groups

If you need to assign one or more of the built-in roles to a existing group, follow these steps:
1. Go to [portal.azure.com](https://portal.azure.com/).
2. Search for and open **Enterprise applications**.
3. Change the **Application type** filter to _Microsoft Applications_ and, then select **Apply**.
4. Search for and select _Modern Workplace Customer APIs_.
5. Select **Users and groups** from the pane on the left side, and then select **+ Add user/group**.
6. Search for the group you want from **Users and groups**.
7. Search for the applicable role from **Select a role**, and then select it.
8. Select **Assign**.
