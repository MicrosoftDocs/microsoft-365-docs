---
author: LanaChin
ms.author: v-lanachin
ms.date: 08/04/2022
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
Before you get started, make sure you have the following prerequisites:

- Your UKG Dimensions account username and password and service URLs. If you don't have this information, contact UKG Dimensions support.

  - API URL
  - Application key
  - Client ID
  - Client secret
  - Single Sign On (SSO) URL

- Azure Active Directory (Azure AD) is the supported identity provider for SSO. To enable SSO, set up integration between Azure AD and UKG Dimensions. For a step-by-step tutorial, see [Tutorial: Azure AD SSO integration with Kronos Workforce Dimensions](/azure/active-directory/saas-apps/kronos-workforce-dimensions-tutorial). If you need help or more information about setting up SSO, contact UKG Dimensions support.
- Federated SSO authentication is enabled in your UKG Dimensions environment. Follow the steps to [configure UKG Dimensions single sign-on](#configure-single-sign-on).

- At least one team is set up in Teams.
- You added a Microsoft 365 system account as a team owner to all teams you want to map.</br> [Create this account in Microsoft 365](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner to all teams that you want to map. The Shifts connector uses this account when syncing Shifts changes from UKG Dimensions. Therefore, we recommend that you create an account specifically for this purpose and not use your personal user account.
