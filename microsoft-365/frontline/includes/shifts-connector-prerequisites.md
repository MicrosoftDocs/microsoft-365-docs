---
author: LanaChin
ms.author: v-lanachin
ms.date: 03/31/2022 
ms.topic: include
audience: admin
ms.service: msteams
---
Before you get started, make sure you have the following prerequisites:

- Blue Yonder WFM version 2020.3, 2021.1, or 2021.2.

    > [!NOTE]
    > If you have Blue Yonder WFM 2020.3 or 2021.1, apply the 2020.3.0.4 or 2021.1.0.3 patch. This patch fixes an issue where users get a persistent error message in Shifts. It also fixes an issue that prevents users from updating their availability in Shifts.

- Your Blue Yonder WFM service account name and password and service URLs:

    - Federated authentication URL
    - Cookie authentication URL
    - Employee self-service URL
    - Retail web API URL
    - Site manager API URL
    - Administration API URL

    If you don’t have this information, contact Blue Yonder support. The account is created at the root enterprise level by a Blue Yonder enterprise administrator. It must have API Access, Client Admin, and Store Manager access. The account and password are required to create a connection.
- Federated SSO authentication is enabled in your Blue Yonder WFM environment. Contact Blue Yonder support to make sure federated SSO is enabled. They'll need the following information:

    - federatedSSOValidationService: `https://wfmconnector.teams.microsoft.com/api/v1/fedauth/{tenantId}/6A51B888-FF44-4FEA-82E1-839401E9CD74/authorize` where {tenantId} is your tenantId
     - proxyHeader: X-MS-AuthToken

- At least one team is set up in Teams.
- You added your Microsoft 365 system account as a team owner to all teams you want to map.</br> [Create this account in Microsoft 365](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner to all teams that you want to map. The Shifts connector uses this account when syncing Shifts changes from Blue Yonder WFM.

    We recommend that you create an account specifically for this purpose and not use your user account.