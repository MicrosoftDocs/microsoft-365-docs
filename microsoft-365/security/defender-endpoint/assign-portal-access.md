---
title: Assign user access 
description: Assign read and write or read only access to the Microsoft Defender for Endpoint portal.
keywords: assign user roles, assign read and write access, assign read only access, user, user roles, roles
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.mktglfcycl: deploy
ms.sitesec: library
ms.service: microsoft-365-security
ms.subservice: mde
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 3/30/2023
---

# Assign user access 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- Azure Active Directory
- Office 365
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

Defender for Endpoint supports two ways to manage permissions:

- **Basic permissions management**: Set permissions to either full access or read-only.
- **Role-based access control (RBAC)**: Set granular permissions by defining roles, assigning Azure AD user groups to the roles, and granting the user groups access to device groups. For more information on RBAC, see [Manage portal access using role-based access control](rbac.md).

> [!NOTE]
> If you have already assigned basic permissions, you may switch to RBAC anytime. Consider the following before making the switch:
> - Users with full access (users that are assigned the Global Administrator or Security Administrator directory role in Azure AD), are automatically assigned the default Defender for Endpoint administrator role, which also has full access. Additional Azure AD user groups can be assigned to the Defender for Endpoint administrator role after switching to RBAC. Only users assigned to the Defender for Endpoint administrator role can manage permissions using RBAC. 
> - Users that have read-only access (Security Readers) will lose access to the portal until they are assigned a role. Note that only Azure AD user groups can be assigned a role under RBAC.
> - After switching to RBAC, you will not be able to switch back to using basic permissions management.
>
>  Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## Related topics

- [Use basic permissions to access the portal](basic-permissions.md)
- [Manage portal access using RBAC](rbac.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
