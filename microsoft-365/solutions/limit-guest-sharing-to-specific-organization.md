---
title: "Limit guest sharing to specific organizations"
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
description: 
---

# Limit guest sharing to specific organizations



1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Default settings** tab.
1. Under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **B2B collaboration** tab and the **Users and groups** tab.
1. Under **Access status**, choose **Block access**.
1. Select the **External access** tab.
1. Under **Access status**, choose **Block access**.
1. Select **Save**.
1. Close the **Default settings** blade.



## Add an organization


1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list. At this point, all access settings for this organization are inherited from your default settings.



## Configure inbound to allow all users

1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the inbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose to allow all users.
1. Select **Save** and close the **Outbound access settings** blade.


## Related topics

