---
title: Activate Microsoft 365 Defender role-based access control (RBAC)
description: Activate Microsoft 365 Defender Security role-based access control (RBAC)
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: 
ms.topic:
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# Activate Microsoft 365 Defender Security role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Microsoft 365 Defender provides integrated threat protection, detection, and response across endpoints, email, identities, applications, and data within a single portal. Managing a user's permission to view data and complete tasks is vital to keep your organization secure.

The Microsoft 365 Defender role-based access control (RBAC) model provides a single permissions management experience that provides one central location for administrators to give users permission to view data and complete tasks across different security solutions.

## Activate the Microsoft 365 Defender RBAC

As mentioned here, Microsoft 365 Defender RBAC is released in an “opt-in” mode. To allow the Microsoft 365 Defender RBAC model to control access permissions, you must explicitly activate it.

### When you activate the Microsoft 365 Defender RBAC model, any existing roles that you managed in Defender for Endpoint, Defender for Identity, or Defender for Office 365 (Exchange Online Protection), will no longer be active. All access to these workloads in the Microsoft 365 Defender portal will be controlled by the Microsoft 365 Defender RBAC model.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image18.png" style="width:6.80916in;height:1.2207in" />*Note: For Defender for Office 365 customers, the Microsoft 365 Defender RBAC model does not impact the Office 365 Security & Compliance center (protection.office.com), or the Microsoft Compliance center (compliance.microsoft.com).*

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image19.png" style="width:2.56489in;height:2.64696in" />

If needed, you can deactivate Microsoft 365 Defender RBAC and revert to the individual RBAC roles from Defender for Endpoint, Defender for Identity, and Defender for Office 365 (Exchange Online Protection).

To control the Microsoft 365 Defender RBAC activation status, use the **Workload settings** link in the upper right corner of the Microsoft 365 Defender RBAC page or go to the Microsoft 365 Defender settings page.

Roles that were created, as well as roles that were imported and then edited, are valid only when Microsoft 365 Defender RBAC is active. These roles will not be duplicated into the individual RBAC list of roles. If you revert to the previous model, all roles that were created and edited within Microsoft 365 Defender RBAC will not be effective, and the status will change to inactive until you activate Microsoft 365 Defender RBAC again.
