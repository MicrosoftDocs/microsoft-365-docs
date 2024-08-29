---
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.date: 8/26/2024 
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
ms.collection: m365-frontline 
---
You must be a Microsoft 365 Global Administrator or a Shifts connector admin to complete the steps in this article.

The Shifts connector admin role is a custom role that you create in Microsoft Entra ID and assign to a user. The name of the role must be "Shifts connector admin". The role doesn't need to have any specific permissions, although, at least one permission must be set when you create it. The service relies on the presence of the role on the user, and not its permissions.

To learn more, see [Create and assign a custom role in Microsoft Entra ID](/entra/identity/role-based-access-control/custom-create) and [Assign Microsoft Entra roles to users](/entra/identity/role-based-access-control/manage-roles-portal). Keep in mind that it can take up to 24 hours for the role to be created and applied to a user.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use a less-privileged role.
