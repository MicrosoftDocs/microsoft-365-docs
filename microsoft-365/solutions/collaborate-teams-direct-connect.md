---
title: "Collaborate with external participants in a channel"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
ms.custom: 
localization_priority: Priority
f1.keywords: NOCSH
recommendations: false
description: Learn how to use shared channels with people outside your organization.
---

# Collaborate with external participants in a channel


## Enable shared channels in Teams

1. In the [Teams admin center](https://admin.teams.microsoft.com/), expand **Teams**, and then select **Teams policies**.
1. Select the policy for which you want to enable shared channels, and then select **Edit**.
1. Select the options you want to enable:
    - To allow team owners to create shared channels, turn **Create shared channels** on.
    - To allow team owners to share shared channels with people outside the organization, turn **Share shared channels externally** on.
    - To allow users to be invited to shared channels in other organizations, turn **Can be invited to external shared channels** on.
1. Select **Apply**.

## Add an organization


1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list. At this point, all access settings for this organization are inherited from your default settings.


## Configure inbound settings



## Configure outbound settings



## See also

[Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)

[Limit accidental exposure to files when sharing with guests](share-limit-accidental-exposure.md)

[Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)

[Create a B2B extranet with managed guests](b2b-extranet.md)

[SharePoint and OneDrive integration with Azure AD B2B](/sharepoint/sharepoint-azureb2b-integration-preview)

[Sharing options are greyed out when sharing from SharePoint or OneDrive](/sharepoint/troubleshoot/administration/sharing-options-grayed-out-when-sharing-from-sharepoint-online-or-onedrive)
