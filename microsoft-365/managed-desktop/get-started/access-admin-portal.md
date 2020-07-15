---
title: Access the Admin portal
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Access the admin portal

Your gateway to the Microsoft Managed Desktop service is the Microsoft [Azure portal](https://portal.azure.com). For more about using and customizing your Azure portal experience generally, see the [Azure portal documentation](https://docs.microsoft.com/azure/azure-portal/). 

Your administrative account needs specific permissions in order to access the Microsoft Managed Desktop Admin portal. You can manage admin access to these features within your organization by using Role-based Access Control (RBAC). For more information about Azure Active Directory roles, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles).

Assign your admin user accounts any of the following roles to ensure access:

|Azure AD role  |Microsoft Managed Desktop permissions  |
|---------|---------|
|Global Administrator     | Admins with this role will have **read and write permissions** to all features in the Microsoft Managed Desktop Admin portal.         |
|Global Reader     | Admins with this role will have **read-only permissions** to all features in the Microsoft Managed Desktop Admin portal.         |
|Intune Service Administrator     |  Admins with this role will have **read and write permissions** to all features in the Microsoft Managed Desktop Admin portal.       |
|Service Support Administrator     | Admins with this role will have **read and write permissions** to all features in the Microsoft Managed Desktop Admin portal.         |

> [!IMPORTANT]
> Only the Global Administrator role has the necessary permissions to *enroll* your organization in Microsoft Managed Desktop. Be aware that Azure Active Directory roles will give user accounts privileges across a variety of Microsoft services. After completing enrollment with Microsoft Managed Desktop, you should always use the role with the *least* privileges necessary to accomplish your other tasks.

## Assigning roles to administrators

If you need help assigning Azure Active Directory roles, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles).
