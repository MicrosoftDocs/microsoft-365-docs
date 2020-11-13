---
title: Prerequisites for guest accounts
description:  Configuration guidelines for guest accounts and how to adjust them
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Prerequisites for guest accounts

Microsoft Managed Desktop requires the following settings in your Azure AD organization for guest account access. You can adjust these settings at the [Azure portal](https://portal.azure.com) under **External Identities / External collaboration**:

-   **Admins and users in the guest inviter role can invite** set to **Yes**
-   For **Collaboration restrictions**, choose any of these options:
    -   If you select **Allow invitations to be sent to any domain (most inclusive)**, no other configuration required.
    -   If you select **Deny invitations to the specified domains**, make sure that Microsoft.com isn’t listed in the target domains.
    -   If you select **Allow invitations only to the specified domains (most restrictive)**, make sure that Microsoft.com *is* listed in the target domains.

If you set restrictions that interact with these settings, make sure to exclude the Azure Active Directory **Modern Workplace Service Accounts**. For example, if you have a conditional access policy that prevents guest accounts from accessing the Intune portal, exclude the **Modern Workplace Service Accounts** group from this policy.

