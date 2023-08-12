---
title: Use basic permissions to access the portal
description: Learn how to use basic permissions to access the Microsoft Defender for Endpoint portal.
keywords: assign user roles, assign read and write access, assign read only access, user, user roles, roles
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.service: microsoft-365-security
ms.subservice: mde
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
ms.date: 12/18/2020
---

# Use basic permissions to access the portal

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- Azure Active Directory
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-basicaccess-abovefoldlink)

Refer to the instructions below to use basic permissions management.

You can use either of the following solutions:

- Azure PowerShell
- Azure portal

For granular control over permissions, [switch to role-based access control](rbac.md).

## Assign user access using Azure PowerShell

You can assign users with one of the following levels of permissions:

- Full access (Read and Write)
- Read-only access

### Before you begin

- Install Azure PowerShell. For more information, see, [How to install and configure Azure PowerShell](https://azure.microsoft.com/documentation/articles/powershell-install-configure/).

  > [!NOTE]
  > You need to run the PowerShell cmdlets in an elevated command-line.

- Connect to your Azure Active Directory. For more information, see [Connect-MsolService](/powershell/module/msonline/connect-msolservice).

  - **Full access**: Users with full access can log in, view all system information and resolve alerts, submit files for deep analysis, and download the onboarding package. Assigning full access rights requires adding the users to the "Security Administrator" or "Global Administrator" AAD built-in roles.
  - **Read-only access**: Users with read-only access can log in, view all alerts, and related information.

    They will not be able to change alert states, submit files for deep analysis or perform any state changing operations.

    Assigning read-only access rights requires adding the users to the "Security Reader" Azure AD built-in role.

Use the following steps to assign security roles:

- For **read and write** access, assign users to the security administrator role by using the following command:

  ```PowerShell
  Add-MsolRoleMember -RoleName "Security Administrator" -RoleMemberEmailAddress "secadmin@Contoso.onmicrosoft.com"
  ```

- For **read-only** access, assign users to the security reader role by using the following command:

  ```PowerShell
  Add-MsolRoleMember -RoleName "Security Reader" -RoleMemberEmailAddress "reader@Contoso.onmicrosoft.com"
  ```

For more information, see [Add or remove group members using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-groups-members-azure-portal).

## Assign user access using the Azure portal

For more information, see [Assign administrator and non-administrator roles to users with Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal).

## Related topic

- [Manage portal access using RBAC](rbac.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
