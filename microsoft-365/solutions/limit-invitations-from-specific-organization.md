---
title: "Limit who can be invited by an organization"
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
description: Learn how to limit which of your users can be invited as a guest or shared channel participant to a specific organization.
---

# Limit who can be invited by an organization


## Create a security group



1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. On the **Active Directory** page, select **Groups** and then select **New group**.
1. Choose **Security** for the **Group type**.
1. Type a **Group name.** 
1. Optionally, add a description for the group.
1. For **Azure AD roles can be assigned to the group**, choose **No**.
1. Select a pre-defined **Membership type (required).** For more information on membership types, see [Group and membership types](#membership-types).
1. Add group owners and members or a dynamic query if you're using dynamic user membership.
1. Select **Create**. Your group is created and ready for you to add members.



## Add an organization


1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list. At this point, all access settings for this organization are inherited from your default settings.

## Choose who can be invited as guests by an organization

both

1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.

To limit who can be invited as a guest
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose **Select external users and groups**.
1. Select the link to add users and groups.
1. Search for and select the security group that you want to use.
1. Choose **Select**.
1. Select **Save** and close the **Outbound access settings** blade.


To limit who can be invited as a shared chanel participant
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose **Select external users and groups**.
1. Select the link to add users and groups.
1. Search for and select the security group that you want to use.
1. Choose **Select**.
1. Select **Save** and close the **Outbound access settings** blade.

## Related topics

