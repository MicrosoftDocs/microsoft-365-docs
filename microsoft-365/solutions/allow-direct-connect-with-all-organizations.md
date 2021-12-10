---
title: "Enable shared channels with all external organizations"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
- SPO_Content
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to enable shared channels with all other Microsoft 365 and Azure Active Directory organizations.
---

# Enable shared channels with all external organizations



## Allow users to invite people in other organizations to participate in shared channels


1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. On the **Default settings** tab, under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **B2B direct connect** tab.
1. On the **Users and groups** tab, under **Access status**, choose **Allow access**.
1. On the **External applications** tab, under **Access status**, choose **Allow access**.
1. Select **Save**.
1. Select the **Trust settings** tab.
1. Choose if you want to trust multifactor authentication, compliant devices, or hybrid Azure AD joined devices from other organizations.
1. Select **Save**.
1. Close the **Default settings** blade.


## Allow users to participate in shared channels in other organizations


1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. On the **Default settings** tab, under **Outbound access settings**, select **Edit outbound defaults**.
1. Select the **B2B direct connect** tab.
1. On the **Users and groups** tab, under **Access status**, choose **Allow access**.
1. On the **External applications** tab, under **Access status**, choose **Allow access**.
1. Select **Save**.
1. Close the **Default settings** blade.





## Related topics

