---
title: "Microsoft Productivity Score - Privacy"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
monikerRange: 'o365-worldwide'
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
ROBOTS: NOINDEX, NOFOLLOW
description: "How privacy is protected with the Productivity Score."
---

# Privacy controls for Productivity Score

Productivity Score helps organizations transform how work gets done with insights about how people use Microsoft 365 and the technology experiences that support them. The score reflects your organization&#39;s performance against employee and technology experience measures and compares your score with organizations like yours. For more details, check out the [Productivity Score overview](productivity-score.md) topic.

Your privacy is important to us and you can view Microsoft's privacy statement [here](https://privacy.microsoft.com/privacystatement). In Productivity Score, there is vital information that we provide on how people in your organizations work. Thus, we also aim to provide you controls to make sure the information is actionable in a meaningful way while not compromising the trust you place in us.

We provide the following controls to allow for safer handling of data:

- Flexible admin roles to control who can see the information in Productivity Score.
- Anonymization of user level metrics.
- Capability to opt out of Employee experience.

## Flexible admin roles to control who can see the information in Productivity Score

To view the entire Productivity Score experience with an admin role, including tenant level insights and per-user level details, your role should be one of the following:

- Global admin
- Exchange admins
- SharePoint admin
- Skype for Business admin
- Teams admin
- Global Reader
- Reports Reader

To invite people who are responsible for change management and adoption but are not IT administrators into the experience, while giving them access to the complete experience including tenant level insights and per-user level details, you can give them Report Reader role.

Within Employee experience, we provide per-user level activity details in grid format for each category detail page. As this level of detail is not suitable for all potential visitors of Productivity Score, we have created a custom role within Azure AD – Usage Summary Reports Reader role – to enable access to a wider set of visitors within your org to only the aggregate metrics and no per-level details within the experience.

:::image type="content" source="../../media/communicationspage.jpg" alt-text="Communications page in Productivity reports.":::

## Anonymization of user level metrics

To make the data that is collected for all reports anonymous, you must be a global administrator. This will hide identifiable information such as user, group, and site names in all reports – including Productivity Score and Microsoft 365 Usage.

1. In the admin center, go to the  **Settings**  >  **Org Settings** , and under  **Services**  tab, choose  **Reports**.
2. Select  **Reports** , and then choose to  **Display anonymous identifiers for user, group and site names in Productivity Score and Usage Reports**. This setting gets applied both to the usage reports as well as to the template app.
3. Select  **Save changes**.

:::image type="content" source="../../media/orgsettings_anonymous.jpg" alt-text="Make user info anonymous for reports.":::

## Capability to opt out of Employee experience

We will also provide the capability to opt out of the Employee experience area of Productivity Score at general availability. Turning this setting on will prevent anyone from your organization being able to view these metrics and remove your organization from any calculations involving categories of Communication, Meetings, Teamwork, Content collaboration and Mobility.

1. In the admin center, go to the  **Settings**  >  **Org Settings** , and under  **Services**  tab, choose  **Reports**.
2. Select  **Reports** , and then un-check the box that says  **Share your org&#39;s data with Productivity Score Employee Experience insights**. To understand how to modify data-sharing settings for Endpoint Analytics in the Intune configuration manager, click on **Learn More**.
3. Select  **Save changes**.

:::image type="content" source="../../media/orgsettingspageoptout.jpg" alt-text="Org settings page where you can opt out from employee experience.":::