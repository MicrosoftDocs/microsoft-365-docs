---
title: Edit or delete roles Microsoft 365 Defender role-based access control (RBAC)
description: Edit or delete roles in Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
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

# Edit or delete roles in Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]


## Edit and Delete roles

You can edit and delete roles that were created as custom roles or roles that were imported from different workloads. 

#### Edit Roles 

1.  Select the role you want to edit and click **Edit** or click the Action menu next to the role name and select **Edit.**

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image15.png" style="width:6.5in;height:1.82361in" />

2.  After editing an imported role, data and the changes made in Microsoft 365 Defender RBAC will not be reflected to the individual RBAC model. You will be able seeing the original role definition only there.

#### Delete Roles 

1.  Select the role you want to delete and then click **Delete** **roles** or click the Action menu and select **Delete role**.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image16.png" style="width:6.5in;height:1.82361in" />

2.  Review the selected roles to be deleted and then click **Delete**.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image17.png" style="width:2.34722in;height:1.54167in" /> 

 

3.  After deleting an imported role, that role will not be deleted from the individual RBAC model. If needed, you can import it again to the Microsoft 365 Defender RBAC list of roles.

4.  If the workload is active, by removing the role all assigned permission to users will be deleted. 
