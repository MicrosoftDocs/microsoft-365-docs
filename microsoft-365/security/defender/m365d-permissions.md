---
title: Manage access to Microsoft Defender XDR data in the Microsoft Defender portal
description: Learn how to manage permissions to data in Microsoft Defender XDR
keywords: access, permissions, Microsoft Defender XDR, M365, security, Defender for Cloud Apps, Microsoft Defender for Endpoint, scope, scoping, RBAC
search.product: eADQiWindows 10XVcnh
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
- essentials-manage
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 09/21/2023
---

# Manage access to Microsoft Defender XDR with Microsoft Entra global roles

> [!NOTE]
> If you are running the Microsoft Defender XDR preview program you can now experience the new Microsoft Defender 365 role-based access control (RBAC) model. For more information, see [Microsoft Defender 365 role-based access control (RBAC)](manage-rbac.md).

**Applies to:**

- Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

There are two ways to manage access to Microsoft Defender XDR:

- **Global Microsoft Entra roles**
- **Custom role access**

Accounts assigned the following **Global Microsoft Entra roles** can access Microsoft Defender XDR functionality and data:

- Global administrator
- Security administrator
- Security Operator
- Global Reader
- Security Reader

To review accounts with these roles, [view Permissions in the Microsoft Defender portal](https://security.microsoft.com/permissions).

**Custom role** access is a capability in Microsoft Defender XDR that allows you to manage access to specific data, tasks, and capabilities in Microsoft Defender XDR. Custom roles offer more control than global Microsoft Entra roles, providing users only the access they need with the least-permissive roles necessary.  Custom roles can be created in addition to global Microsoft Entra roles. [Learn more about custom roles](custom-roles.md).

> [!NOTE]
> This article applies only to managing global Microsoft Entra roles. For more information about using custom role-based access control, see [Custom roles for role-based access control](custom-roles.md)

## Access to functionality

Access to specific functionality is determined by your [Microsoft Entra role](/azure/active-directory/roles/permissions-reference). Contact a global administrator if you need access to specific functionality that requires you or your user group be assigned a new role.

### Approve pending automated tasks

[Automated investigation and remediation](m365d-autoir-actions.md) can take action on emails, forwarding rules, files, persistence mechanisms, and other artifacts found during investigations. To approve or reject pending actions that require explicit approval, you must have certain roles assigned in Microsoft 365. To learn more, see [Action center permissions](m365d-action-center.md#required-permissions-for-action-center-tasks).

## Access to data

Access to Microsoft Defender XDR data can be controlled using the scope assigned to user groups in Microsoft Defender for Endpoint role-based access control (RBAC). If your access hasn't been scoped to a specific set of devices in the Defender for Endpoint, you'll have full access to data in Microsoft Defender XDR. However, once your account is scoped, you'll only see data about the devices in your scope.

For example, if you belong to only one user group with a Microsoft Defender for Endpoint role and that user group has been given access to sales devices only, you'll see only data about sales devices in Microsoft Defender XDR. [Learn more about RBAC settings in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/rbac)

### Microsoft Defender for Cloud Apps access controls

During the preview, Microsoft Defender XDR doesn't enforce access controls based on  Defender for Cloud Apps settings. Access to Microsoft Defender XDR data isn't affected by these settings.

## Related articles

- [Custom roles in role-based access control for Microsoft Defender XDR](custom-roles.md)
- [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference)
- [Microsoft Defender for Endpoint RBAC](/windows/security/threat-protection/microsoft-defender-atp/rbac)
- [Defender for Cloud Apps roles](/cloud-app-security/manage-admins)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
