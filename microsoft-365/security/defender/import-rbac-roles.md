---
title: Import roles (migrate) to Microsoft 365 Defender RBAC 
description: Create custom Microsoft 365 Defender Security portal role-based access control (RBAC)
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

# Import roles (migrate) to Microsoft 365 Defender RBAC 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Import roles (migrate) to Microsoft 365 Defender RBAC from individual RBAC models

You can import existing roles that are maintained as part of the individual products (for example, Microsoft Defender for Endpoint) to the Microsoft 365 Defender RBAC model.

Importing roles will migrate existing data (permissions, assignments) and will maintain full parity with the Microsoft 365 Defender RBAC model.

*Note: the Microsoft 365 Defender RBAC model is more granular than the individual RBAC models. Once roles migrated, you will be able modifying imported roles and change level of permissions as needed.*

1.  In **Permissions and roles,** click **Import roles.**

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image10.png" style="width:6.5in;height:1.4375in" />

2.  Choose the individual products from where you want to import your roles and click **Next**.  

> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image11.png" style="width:6.5in;height:1.66042in" />

3.  You can choose all roles or select a few roles from the list. You can always repeat the import action and choose other roles that were not selected. 

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image12.png" style="width:6.5in;height:1.57639in" />

4.  Review the roles to make sure you have selected all the roles you want to import and then click Submit.

>  

5.  A confirmation message is displayed. Click **Done**.  

> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image13.png" style="width:6.5in;height:1.4125in" />

 

Imported roles appear in the **Permissions and roles** list together with any custom roles you might have created. All imported roles will be marked as **Imported** until they are edited. 

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image14.png" style="width:6.78989in;height:1.92308in" /> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image13.png" style="width:6.5in;height:1.4125in" />

*Note: You can import roles as frequently as required. After you edit an imported role, that changes will not affect the original role where it was imported from. You can always delete the role which was imported to Microsoft 365 Defender RBAC and re-import it if needed. By importing the same role twice, if not deleted first, you will create a duplicate role.*