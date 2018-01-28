---
title: "Step 9: Password writeback"
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
description: Understand and configure password writeback for hybrid environments.
---

# Step 9: Password writeback

![This step is optional for hybrid environments and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Hybrid-Optional-BothSKUs.png)

If you’re synchronizing your on-premises Windows Server AD with Azure AD, the identity provider that stores all of the user accounts and their attributes is the on-premises Windows Server AD. The user account and attributes stored in Azure AD is just a synchronized copy. 

Therefore, when a user needs to reset her or his password, they must do so through the on-premises Windows Server AD. This requires them to be on-premises (either directly or through a remote access connection), or they can contact their IT department. 

Using a self-service password, also known as password writeback, the user can reset the password on their user account through Azure AD, which is then replicated to your local Windows Server AD.

This is required for full deployment of identity protection features.

For additional information and configuration instructions, see [Azure AD SSPR with password writeback](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-writeback).

>[!Note]
>Upgrade to the latest version of Azure AD Connect to ensure the best possible experience and new features as they are released. For more information, see Custom installation of Azure AD Connect.
>

>[!Note]
>Password writeback is required to fully utilize Identity Protection feature capabilities, such as requiring users to change their on-premises passwords when there has been a high risk of account compromise detected
>

The results of this step is that you have enabled password writeback in the Azure AD tenant for your Microsoft 365 Enterprise subscription.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step9) corresponding to this step.


## Next step

[Step 10: Password reset](identity-password-reset.md)

