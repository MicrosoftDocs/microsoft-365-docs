---
title: Use basic permissions to access the portal
description: Learn how to use basic permissions to access the Microsoft Defender for Endpoint portal.
keywords: assign user roles, assign read and write access, assign read only access, user, user roles, roles
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.service: defender-endpoint
ms.subservice: onboard
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.custom:
  - has-azure-ad-ps-ref, azure-ad-ref-level-one-done 
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
ms.date: 01/18/2024
---

# Use basic permissions to access the portal

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Entra ID
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-basicaccess-abovefoldlink)

Refer to the instructions below to use basic permissions management.

You can use either of the following solutions:

- Microsoft Graph PowerShell
- Azure portal

For granular control over permissions, [switch to role-based access control](rbac.md).

## Assign user access using Microsoft Graph PowerShell

You can assign users with one of the following levels of permissions:

- Full access (Read and Write)
- Read-only access

### Before you begin

- Install Microsoft Graph PowerShell. For more information, see, [How to install Microsoft Graph PowerShell](/powershell/microsoftgraph/installation).

  > [!NOTE]
  > You need to run the PowerShell cmdlets in an elevated command-line.

- Connect to your Microsoft Entra ID. For more information, see [Connect-MgGraph](/powershell/microsoftgraph/authentication-commands).

  - **Full access**: Users with full access can log in, view all system information and resolve alerts, submit files for deep analysis, and download the onboarding package. Assigning full access rights requires adding the users to the "Security Administrator" or "Global Administrator" Microsoft Entra built-in roles.
  - **Read-only access**: Users with read-only access can log in, view all alerts, and related information.

    They will not be able to change alert states, submit files for deep analysis or perform any state changing operations.

    Assigning read-only access rights requires adding the users to the "Security Reader" Microsoft Entra built-in role.

Use the following steps to assign security roles:

- For **read and write** access, assign users to the security administrator role by using the following command:

  ```PowerShell
  $Role = Get-MgDirectoryRole -Filter "DisplayName eq 'Security Administrator'"
  $UserId = (Get-MgUser -UserId "secadmin@Contoso.onmicrosoft.com").Id

  $DirObject = @{
    "@odata.id" = "https://graph.microsoft.com/v1.0/directoryObjects/$UserId"
  }

  New-MgDirectoryRoleMemberByRef -DirectoryRoleId $Role.Id -BodyParameter $DirObject
  ```

- For **read-only** access, assign users to the security reader role by using the following command:

  ```PowerShell
  $Role = Get-MgDirectoryRole -Filter "DisplayName eq 'Security Reader'"
  $UserId = (Get-MgUser -UserId "reader@Contoso.onmicrosoft.com").Id

  $DirObject = @{
    "@odata.id" = "https://graph.microsoft.com/v1.0/directoryObjects/$UserId"
  }

  New-MgDirectoryRoleMemberByRef -DirectoryRoleId $Role.Id -BodyParameter $DirObject
  ```

For more information, see [Add or remove group members using Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-groups-members-azure-portal).

## Assign user access using the Azure portal

For more information, see [Assign administrator and non-administrator roles to users with Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal).

## Related topic

- [Manage portal access using RBAC](rbac.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
