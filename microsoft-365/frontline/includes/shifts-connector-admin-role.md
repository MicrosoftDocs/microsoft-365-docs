---
author: LanaChin
ms.author: v-lanachin
ms.date: 03/31/2022 
ms.topic: include
audience: admin
ms.service: msteams
---
To complete the steps in this article, you must be a Microsoft 365 global admin or a Shifts connector admin.

 The Shifts connector admin role is a custom role that you create in Azure AD and assign to a user. The name of the role must be "Shifts connector admin". The role doesn't need to have any specific permissions, although, at least one permission must be set when you create it. The service relies on the presence of the role on the user, and not its permissions.  To learn more, see [Create and assign a custom role in Azure AD](/azure/active-directory/roles/custom-create) and [Assign Azure AD roles to users](/azure/active-directory/roles/manage-roles-portal). Keep in mind that it can take up to 24 hours for the role to be created and applied to a user.