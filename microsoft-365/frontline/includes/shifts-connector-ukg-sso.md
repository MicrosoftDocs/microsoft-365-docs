---
author: daisyfell
ms.author: daisyfeller
ms.date: 
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
After you make sure you meet all the prerequisites above, follow these steps to have UKG enable SSO for your organization.

#### Change user accounts to federated accounts

Each person who uses the Shifts connector will need a federated account in UKG Dimensions.

1. From the left menu in UKG Dimensions, go to **Maintenance** and select **People information**.
1. Open the user's profile.
1. Under the **Employee** section, expand **Information**.
1. Change the **Authentication Type** to **Federated**.
1. Save your changes and repeat the process for all users that will use the connector.

#### Allow Shifts SSO redirection URLs

After UKG enables SSO for your organization, configure the connector's redirection URL. This will allow UKG Dimensions to redirect the user to the Shifts app in Microsoft Teams as part of the SSO flow.

1. Sign into UKG with an account that has access to Application Setup.
1. From the left menu, go to **Administration**, then **Application Setup**.
1. Then, go to **System Configuration** and choose **System Settings**.
1. Select **Global Values**.
1. In the **global.oAuth.authCode.redirection.uris** field, enter the value: "https://aka.ms/shifts/connector/ukgdimensions/auth".
1. In the **global.oAuthToken.redirection.domain.whiteList** field, enter the value: "aka.ms".
1. Select **Save**.
