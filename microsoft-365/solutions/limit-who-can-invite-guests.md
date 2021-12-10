---
title: "Limit who can invite guests"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
- SPO_Content
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: 
---

# Limit who can invite guests




## Create a security group

Create a security group that can be assigned a role.

1. Sign in to the [Azure portal](https://portal.azure.com) using a Global administrator or Security administrator account. Then open the **Azure Active Directory** service.
1. On the **Active Directory** page, select **Groups** and then select **New group**.
1. Choose **Security** for the **Group type**.
1. Type a **Group name.** 
1. Optionally, add a description for the group.
1. For **Azure AD roles can be assigned to the group**, choose **Yes**.
1. Add group owners and members.
1. Under **Roles**, select **No roles selected**.
1. Search for and select the **Guest inviter** role, and then choose **Select**.
1. Select **Create**, and confirm that you want a group to which roles can be assigned. Your group is created and ready for you to add members.




## Configure external collaboration settings


1. In [Azure Active Directory](https://aad.portal.azure.com/), select **External identities**.
1. Select **External collaboration settings**.
1. Under **Guest invite settings**, choose **Only users assigned to specific admin roles can invite guests**.
1. Select **Save**.

## Related topics

