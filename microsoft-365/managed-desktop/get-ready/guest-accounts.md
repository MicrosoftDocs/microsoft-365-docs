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
audience: Admin
---

# Prerequisites for guest accounts

Microsoft Managed Desktop requires the following settings in your Azure AD organization for guest account access. You can adjust these settings at the [Azure portal](https://portal.azure.com) under **External Identities / External collaboration settings**:

-   For **Guest invite restrictions** set to **Member users and users assigned to specific admin roles can invite guest users including guests with member permissions**
-   For **Collaboration restrictions**, choose any of these options:
    -   If you select **Allow invitations to be sent to any domain (most inclusive)**, no other configuration required.
    -   If you select **Deny invitations to the specified domains**, make sure that Microsoft.com isn’t listed in the target domains.
    -   If you select **Allow invitations only to the specified domains (most restrictive)**, make sure that Microsoft.com *is* listed in the target domains.

If you set restrictions that interact with these settings, make sure to exclude the Azure Active Directory **Modern Workplace Service Accounts**. For example, if you have a conditional access policy that prevents guest accounts from accessing the Intune portal, exclude the **Modern Workplace Service Accounts** group from this policy.

## Steps to get ready

1. Review [prerequisites for Microsoft Managed Desktop](prerequisites.md).
2. Use [readiness assessment tools](readiness-assessment-tool.md).
3. [Prerequisites for guest accounts](guest-accounts.md) (This article)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md)
7. [Apps in Microsoft Managed Desktop](apps.md)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md)
