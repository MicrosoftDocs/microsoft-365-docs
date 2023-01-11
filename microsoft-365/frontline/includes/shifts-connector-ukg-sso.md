---
author: daisyfell
ms.author: daisyfeller
ms.date: 
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
You'll need to take some additional steps after UKG enables SSO for your organization.

#### Change user accounts to Federated accounts

Each user that will be using the connector will need a Federated account.

1. From the left menu on UKG Dimensions, go to **Maintenance** and select **People information**.
1. Open the user's profile.
1. Under the **Employee** section, expand **Information**.
1. Change the **Authentication Type** to **Federated**.
1. Save your changes and repeat the process for all users that will use the connector.

#### Whitelist Shifts SSO redirection URLs

After UKG enables SSO for your organization, you'll need to whitelist the connector's redirection URL. This will allow UKG Dimensions to redirect the user to the Shifts app in Microsoft Teams as part of the SSO flow.

1. Sign into UKG with an account that has access to Application Setup.
1. From the left menu, go to **Administration**, then **Application Setup**.
1. Then, go to **System Configuration** and choose **System Settings**.
1. Select **Global Values**.
1. In the **global.oAuth.authCode.redirection.uris** field, enter the value: "https://flw.teams.microsoft.com/shifts-web-app/connectorauthenticationdone".
1. In the **global.oAuthToken.redirection.domain.whiteList** field, enter the value: "flw.teams.microsoft.com".
1. Select **Save**.
