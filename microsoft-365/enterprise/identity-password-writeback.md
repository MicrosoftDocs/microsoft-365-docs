---
title: "Step 9: Simplify password updates"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/01/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand and configure password writeback for hybrid environments.
---

# Step 9: Simplify password updates

*This step is optional for hybrid environments and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 9, you allow users to reset their passwords through Azure AD, which is then replicated to your local Windows Server Active Directory (AD). This process is known as password writeback. With password writeback, users don’t need to update their passwords through the on-premises Windows Server AD where user accounts and their attributes are stored. 

Password writeback is required to fully utilize Identity Protection feature capabilities, such as requiring users to change their on-premises passwords when there has been a high risk of account compromise detected.

For additional information and configuration instructions, see [Azure AD SSPR with password writeback](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-writeback).

>[!Note]
>Upgrade to the latest version of Azure AD Connect to ensure the best possible experience and new features as they are released. For more information, see [Custom installation of Azure AD Connect](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-get-started-custom).
>

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step9) corresponding to this step.

## Next step

[Step 10: Simplify password resets](identity-password-reset.md)

