---
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.date: 10/17/2023 
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
ms.collection: m365-frontline 
---
You must be a Microsoft 365 global admin or a Shifts connector admin to complete the steps in this article.

The Shifts connector admin role is a custom role that you create in Microsoft Entra ID and assign to a user. The name of the role must be "Shifts connector admin". The role doesn't need to have any specific permissions, although, at least one permission must be set when you create it. The service relies on the presence of the role on the user, and not its permissions.

To learn more, see [Create and assign a custom role in Microsoft Entra ID](/azure/active-directory/roles/custom-create) and [Assign Microsoft Entra roles to users](/azure/active-directory/roles/manage-roles-portal). Keep in mind that it can take up to 24 hours for the role to be created and applied to a user.
