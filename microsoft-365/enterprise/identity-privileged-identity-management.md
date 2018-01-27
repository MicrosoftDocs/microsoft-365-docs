---
title: "Step 6: Privileged Identity Management"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: ""
---

# Step 6: Privileged Identity Management

![This step is optional and applies only to the E5 version of Microsoft 365 Enterprise](./media/banners/Banner-Optional-E5Only.png)

**Summary:** 

Rather than having your global administrator accounts be permanently assigned the global administrator role, you can use Azure AD Privileged Identity Management (PIM) to enable on-demand, just-in-time, and for a limited time assignment of the global administrator role when it is needed.
 
Instead of your global administrator accounts being a permanent admin, they become eligible admins. The global administrator role is inactive until someone needs it. You then complete an activation process to add the global administrator role to the global administrator account for a predetermined amount of time. When the time expires, PIM removes the global administrator role from the global administrator account.

Using PIM and this process significantly reduces the amount of time that your global administrator accounts are vulnerable to attack and use by malicious users.

>[!Note]
>PIM is available with Azure Active Directory Premium P2, which is included with Microsoft 365 Enterprise E5, or you can purchase individual Azure Active Directory Premium P2 licenses for your global administrator accounts.
>

See the [steps to configure PIM](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure).

The results of this step are Azure PIM is enabled for your Azure AD tenant and global administrator accounts are configured for PIM activation.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step6) corresponding to this step.


## Next step

[Step 7: Multi-factor authentication](identity-multi-factor-authentication.md)
