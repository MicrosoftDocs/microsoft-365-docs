---
title: "Overview of the Users page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms-reviewer: ragovind
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Users page."
---

# Overview of the Users page in Microsoft 365 Lighthouse 

Microsoft 365 Lighthouse lets you manage users across customer tenant accounts by selecting any of the links under **Users** in the left navigation pane. From the Users page, you can search for users and assess and act on the security state of your user accounts. You can also view insights into risky users and the status of multifactor authentication and self-service password reset.  
  
## Account management page  
  
On the Account management page, you can quickly search across tenants for specific users and perform common user management tasks like updating user account information, resetting passwords, assigning licenses, and managing a user's groups, mailbox, or OneDrive. You can also view inactive accounts and take the appropriate security actions and reclaim unused licenses.

:::image type="content" source="../media/m365-lighthouse-users-page-overview/users-search-users-tab.png" alt-text="Screenshot of the Search and Inactive users page.":::

## Risky Users page

The Risky Users page shows user accounts across your tenants that have been flagged for risky behavior. Select any of the users to view more information on a detected risk or to mitigate a risk by resetting a user's password or blocking sign-in. For more information about risk types and detection, see [What is risk?](/azure/active-directory/identity-protection/concept-identity-protection-risks).

The Risky Users page also includes the following options:
- **Export:** Select to export device compliance data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current device compliance data.
- **Confirm user(s) compromised:** Select to confirm the user was compromised.
- **Dismiss user(s) risk:** Select to dismiss the user risk.  
- **Reset password:** Select to change or reset user password.
- **Block Sign-in:** Select to prevent anyone from signing in as this user.

:::image type="content" source="../media/m365-lighthouse-users-page-overview/users-risky-users-tab.png" alt-text="Screenshot of the Risky users page.":::

## Multifactor Authentication page

The Multifactor Authentication page provides detailed information on the status of multifactor authentication (MFA) enablement across your tenants. Select any tenant in the list to see more details for that tenant, including which Conditional Access policies requiring MFA are already configured and which users haven't yet registered for MFA.

:::image type="content" source="../media/m365-lighthouse-users-page-overview/users-mfa-tab.png" alt-text="Screenshot of the Multifactor Authentication page.":::

## Password reset page

The Password reset page shows detailed information on the status of self-service password reset enablement across your tenants. It also provides insights into users who are enabled but still need to register before they can reset their password on their own.

:::image type="content" source="../media/m365-lighthouse-users-page-overview/users-password-reset-tab.png" alt-text="Screenshot of the Password reset page.":::

## Related content

[Microsoft 365 Lighthouse device compliance page overview](m365-lighthouse-device-compliance-page-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
