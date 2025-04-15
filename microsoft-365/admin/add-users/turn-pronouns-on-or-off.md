---
title: "Turn pronouns on or off for your organization in the Microsoft 365 admin center"
f1.keywords: CSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
audience: Admin
ms.topic: how-to 
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- M365-subscription-management
- scotvorg
- Adm_O365
- Adm_TOC
- GAUpdates
ms.custom:
- okr_smb
- AdminTemplateSet
search.appverid: MET150
description: "Learn how to turn the pronouns feature on or off in the Microsoft 365 admin center."
ms.date: 10/20/2023
---

# Turn pronouns on or off for your organization in the Microsoft 365 admin center

As a Microsoft 365 administrator, you can turn on a feature that lets all users in your organization add their pronouns on their profile cards in Microsoft 365. The pronouns feature is off by default and requires configuration to turn on. Before you decide to turn the feature on or off, see [Pronouns on your profile in Microsoft 365](https://support.microsoft.com/topic/232c3bfb-a947-4310-86db-b22d63663d85), [Frequently asked questions about pronouns in Microsoft 365](https://support.microsoft.com/topic/48135f04-e822-49b5-ba6b-e9bae2ce503a), and [Pronouns best practices](https://support.microsoft.com/topic/ef1701ad-711d-4c6e-b664-64c3ee188d68).

Pronouns are stored with other data in the user's Exchange mailbox. For more information, see [Data Residency for Exchange Online](../../enterprise/m365-dr-workload-exo.md#how-can-i-determine-customer-data-location).

> [!IMPORTANT]
>
>- Knowing someone's pronouns doesn't always equate to knowing their gender identity. We encourage you to understand any applicable local laws, regulations, and cultural norms that might pose extra risk to employees should their pronouns be publicly displayed and take this into consideration when you decide whether to turn on this feature.
>- If you decide to use the pronouns feature, we recommend that you engage with internal and/or external subject matter experts in transgender inclusion to consider how pronoun display can complement, not substitute, more comprehensive efforts to support transgender communities in your organization.

## Before you begin

You must be a Global Administrator to do the task in this article. For more information, see [About admin roles](about-admin-roles.md).

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

Before you decide to turn the pronouns feature on or off, consider the following:

- When you turn the pronouns feature on or off, it can take up to seven hours for users to see changes. For example, if you turn on the pronouns feature, users can't see the option to add pronouns on their profile for up to seven hours. If you turn off the pronouns feature, any previously set pronouns might stay visible in Microsoft 365 (for example, on profiles) for up to seven hours.
- When you turn the pronouns feature off, all the pronouns data created by users is deleted. The data deletion process could take up to 30 days to complete. If you turn the pronouns feature back on within that period, any hidden pronouns that haven't yet been deleted from Microsoft servers become visible in Microsoft 365 experiences, such as profiles.
- After a user adds pronouns to their profile, the pronouns are visible to everyone in your organization. Users can't control who can see their pronouns in Microsoft 365 in your organization. However, pronouns aren't visible to people outside the organization.

## Turn the pronouns feature on or off

Use the following steps to turn the pronouns feature on or off in the Microsoft 365 admin center.

1. In the admin center, go to the **Settings** > **Org settings** page, and select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2072756" target="_blank">Security & privacy</a> tab.
2. Select **Pronouns**.
3. To turn on the pronouns feature, in the **Pronouns** pane, select the **Turn on and allow pronouns** checkbox. To turn off the pronouns feature, clear the checkbox.
4. Select **Save**.

To turn the pronouns feature on or off for your organization using Microsoft Graph, see [Manage pronouns settings for an organization using the Microsoft Graph API](/graph/pronouns-configure-pronouns-availability).

## Next steps

Consider notifying your users about the availability of the pronouns feature. We suggest that you share the following article with your users: [Pronouns on your profile in Microsoft 365](https://support.microsoft.com/topic/232c3bfb-a947-4310-86db-b22d63663d85).

## Related content

[Pronouns best practices](https://support.microsoft.com/office/pronouns-best-practices-ef1701ad-711d-4c6e-b664-64c3ee188d68) (article)\
[Frequently asked questions about pronouns in Microsoft 365](https://support.microsoft.com/office/frequently-asked-questions-about-pronouns-in-microsoft-365-48135f04-e822-49b5-ba6b-e9bae2ce503a) (article)\
[Profile cards in Microsoft 365](https://support.microsoft.com/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501) (article)\
[Pronouns on your profile in Microsoft 365](https://support.microsoft.com/topic/232c3bfb-a947-4310-86db-b22d63663d85) (article)
