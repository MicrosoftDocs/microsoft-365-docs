---
title: Prerequisites for guest accounts
description:  Configuration guidelines for guest accounts and how to adjust them
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
audience: Admin
---

# Prerequisites for guest accounts

## External collaboration settings

Microsoft Managed Desktop recommends the following configuration in your Azure AD organization for guest account access. You can adjust these settings at the [Azure portal](https://portal.azure.com) under **External Identities / External collaboration settings**:

| Setting | Set to |
| ------ | ------ |
| Guest access | Guests have limited access to properties and memberships of directory objects. |
| Guest invite settings | Member users and users assigned to specific admin roles can invite guests including guests with member permissions |

Microsoft Managed Desktop requires the following configuration in your Azure AD organization for guest account access. You can adjust this setting at the [Azure portal](https://portal.azure.com) under **External Identities / External collaboration settings**:

| Setting | Option |
| ------ | ------ |
| Collaboration restrictions | Select any of these options: <ul><li>If you select **Allow invitations to be sent to any domain (most inclusive)**, no other configuration required.</li><li>If you select **Deny invitations to the specified domains**, make sure that Microsoft.com isn't listed in the target domains.</li><li>If you select **Allow invitations only to the specified domains (most restrictive)**, make sure that Microsoft.com *is* listed in the target domains.</li><ul>

If you set restrictions that interact with these settings, ensure to exclude the Azure Active Directory **Modern Workplace Service Accounts**. For example, if you have a conditional access policy that prevents guest accounts from accessing the Intune portal, exclude the **Modern Workplace Service Accounts** group from this policy.

For more information, see [Enable B2B external collaboration and manage who can invite guests](/azure/active-directory/external-identities/delegate-invitations#to-configure-external-collaboration-settings).

## Unlicensed Intune admin

The **Allow access to unlicensed admins** setting must be enabled. Without this setting enabled, errors can occur when we try to access your Azure AD organization for service. You can safely enable this setting without worrying about security implications. The scope of access is defined by the roles assigned to users, including our operations staff.

**To enable this setting:**

1. Go to the Microsoft Endpoint Manager [admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Tenant administration**, select **Roles**. Then, select **Administrator licensing**.
3. In the **Allow access to unlicensed admins** section, select **Yes**.

> [!IMPORTANT]
> You cannot undo this setting after you select **Yes**.

For more information, see [Unlicensed admins in Microsoft Intune](/mem/intune/fundamentals/unlicensed-admins).

## Steps to get ready for Microsoft Managed Desktop

1. Review [prerequisites for Microsoft Managed Desktop](prerequisites.md).
1. Run [readiness assessment tools](readiness-assessment-tool.md).
1. Buy [Company Portal](../get-started/company-portal.md).
1. Review prerequisites for guest accounts (this article).
1. Check [network configuration](network.md).
1. [Prepare certificates and network profiles](certs-wifi-lan.md).
1. [Prepare user access to data](authentication.md).
1. [Prepare apps](apps.md).
1. [Prepare mapped drives](mapped-drives.md).
1. [Prepare printing resources](printing.md).
1. Address [device names](address-device-names.md).
