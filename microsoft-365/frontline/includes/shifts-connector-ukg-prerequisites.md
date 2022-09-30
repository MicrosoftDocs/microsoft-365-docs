---
author: LanaChin
ms.author: v-lanachin
ms.date: 
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
Before you get started, make sure you have the following prerequisites:

- Your UKG Dimensions service account name and password and service URLs:

  - Application program interface URL
  - Application key
  - Client ID
  - Client secret
  - Single Sign On URL

  If you don't have this information, contact UKG Dimensions support.
- Federated single sign-on (SSO) authentication is enabled in your UKG Dimensions environment. </br>Azure Active Directory (Azure AD) is the supported identity provider for SSO. To enable SSO, set up integration between Azure AD and UKG Dimensions. For a step-by-step tutorial, see [Tutorial: Azure AD SSO integration with Kronos Workforce Dimensions](/azure/active-directory/saas-apps/kronos-workforce-dimensions-tutorial). If you need help or more information about setting up SSO, contact UKG Dimensions support.

    After the integration is set up, configure users as federated accounts on their profile page in UKG Dimensions.
- At least one team is set up in Teams.
- You added your Microsoft 365 system account as a team owner to all teams you want to map.</br> [Create this account in Microsoft 365](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner to all teams that you want to map. The Shifts connector uses this account when syncing Shifts changes from UKG Dimensions.

    We recommend that you create an account specifically for this purpose and not use your user account.
