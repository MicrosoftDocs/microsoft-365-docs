---
title: "Microsoft Adoption Score - Privacy"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
monikerRange: 'o365-worldwide'
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
description: "How privacy is protected with the Adoption Score."
---

# Privacy controls for Adoption Score

Adoption Score provides insights into your organization’s digital transformation journey through its use of Microsoft 365 and the technology experiences that support it.  Your organization’s score reflects people and technology experience measurements and can be compared to benchmarks from organizations similar to yours. For more details, view the [Adoption Score overview](adoption-score.md).

Your privacy is important to Microsoft. To learn how we protect your privacy, see [Microsoft's privacy statement](https://privacy.microsoft.com/privacystatement). Adoption Score gives you, as your organization's IT administrator, access to privacy settings to help make sure any Adoption Score information you view is actionable, while not compromising the trust your organization places in Microsoft.

Within the people experiences area, metrics are available at the organizational level only. This area looks at how people use Microsoft 365 by looking at the categories of content collaboration, mobility, meetings, teamwork, and communication. We enable you with several levels of controls to help you meet your internal privacy policy needs.
The controls give you:

- Flexible admin roles to control who can see the information in Adoption Score
- The capability to remove users and groups from people experience calculations
- The capability to opt out of the people experiences area
- The capability to display insights at the group level, such as department or region
- The capabilities to allow general admins to send in-product recommendations to specific users

## Flexible admin roles to control who can see the information in Adoption Score

To view the entire Adoption Score, you need be one of the following admin roles:

- Global Administrator
- Exchange Administrator
- SharePoint Administrator
- Skype for Business Administrator
- Teams Service Administrator
- Teams Communications Administrator
- Global Reader
- Reports Reader
- Usage Summary Reports Reader
- User Experience Success Manager
- Organizational Messages Writer Role

Global admin can assign the Reports Reader role, Usage Summary Reports Reader role, or User Experience Success Manager role to anyone who's responsible for change management and adoption, but not necessarily an IT administrator.

Users with the Reports Reader role can view usage reporting data and the reports dashboard in Microsoft 365 admin center and the adoption context pack in Power BI. Users with Usage Summary Reports Reader role can see only tenant level aggregates and group-level aggregates in Microsoft 365 Usage Analytics and Adoption Score. The User Experience Success Manager role includes the permissions of the Usage Summary Reports Reader role, and can get access to more Adoption-related information such as Message Center, Product Feedback, and Service Health. See [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) to learn more about different roles.

## Capability to choose specific users or certain groups

You can choose the users and groups whose data will be used to determine your org's people experiences insights. Omitting some groups will affect the insights calculations. You have to be a Global admin to opt your organization out of the people experiences reports and to change this setting. It can take up to 24 hours for change to apply.

To omit certain groups:

1. In the admin center, go to **Settings** > **Org Settings** > **Adoption Score**.
2. Select **Exclude specific users via group**.  
3. Choose one or multiple Admin Center Microsoft Entra groups to omit.
4. Select **Save changes**.

:::image type="content" source="../../media/adoption-score-exclude-users.png" alt-text="Screenshot: Option to exclude specific users via group when calculating insights.":::

## Capability to opt out of people experiences

You can also opt out of the people experiences area of Adoption Score. If you opt out, no one from your organization will be able to view these metrics, and your organization will be removed from any calculations that involve communication, meetings, teamwork, content collaboration, and mobility. You have to be a Global admin to opt your organization out of the people experiences reports. It can take up to 24 hours for change to apply. You can revert your change before the end of the day in UTC time to keep historical data.

To opt out:

1. In the admin center, go to **Settings**  >  **Org Settings** > **Adoption Score**.
2. Select **Don't calculate for any users**. 
3. On the **Do you want to remove data from people experiences?** confirmation screen, select **Remove Data**.
4. Select  **Save**.

:::image type="content" source="../../media/adoption-score-calculate-insights.png" alt-text="Screenshot: Org settings option to opt out of people experiences insights":::

## Capability to display insights at the group level

By default, insights are shown in aggregate at the organizational level. You can also display insights at the group level, such as department or region. If you opt out of people experiences, you can't turn on this control. You must be a Global admin to turn on group-level insights, run Microsoft Entra data accuracy evaluation, and approve. [Learn more about Group Level Aggregates](group-level-aggregates.md).

To turn on group-level insights:

1. In the admin center, go to **Settings** \> **Org Settings** \> **Adoption Score**.
1. Select **All users** or **Specific users**.
1. Select **Turn on group-level insights**.

:::image type="content" source="../../media/privacy-turn-on-group-level-insights.png" alt-text="Screenshot: Turn on group-level insights in Adoption Score":::

> [!NOTE]
> You are recommended to run the Microsoft Entra data accuracy evaluation and review your organization's Microsoft Entra profile data a few times a year to ensure the available profiles accurately reflect your org's composition.

:::image type="content" source="../../media/privacy-group-level-data-evaluation.png" alt-text="Screenshot: Run a group-level data evaluation for your organization.":::

## Capabilities to allow admins to send in-product recommendations to specific users

Organizational Messages is a new feature added to Adoption Score that will increase the actionability of admins to reach employees and drive adoption awareness. For example, to improve the content collaboration score, admins can send notifications to encourage employees who weren’t actively using cloud attachments before to use the feature when they're about to attach a physical attachment in Outlook. Currently, we enable admins to send messages to drive the adoption scenarios for OneDrive SharePoint, Teams Chat, using @mention in Outlook, and cloud attachments in Outlook. [Learn more about Adoption Score Organizational Messages](organizational-messages.md).

To schedule, send, and manage an organizational message on Adoption Score, you need be one of the following admin roles:

- Global Administrator
- Organizational Message Writer Role

The Organizational Message Writer Role is a new built-in role that allows assigned admins to view and configure messages. Reach out to the Global admins to get assigned.

To turn on organizational messages:

- In the admin center, go to **Settings** \> **Org Settings** \> **Adoption Score**.
- Under the Organizational Messages tab, select **All approved admins to send in-product recommendations to specific users**.

:::image type="content" source="../../media/privacy-organizational-messages.png" alt-text="Screenshot: Enable Organizational Messages in Adoption Score":::

> [!NOTE]
> Both roles can sign up or opt for a tenant for organizational messages. Other roles can read and see the results of the messages. If you opt out of people experience, you cannot turn on this control.

## Related content

[Microsoft Adoption Score](adoption-score.md) (article)\
[Enable Microsoft 365 usage analytics](../../admin/usage-analytics/enable-usage-analytics.md) (article)\
[Overview of the Microsoft 365 admin center](../admin-overview/admin-center-overview.md) (video)
