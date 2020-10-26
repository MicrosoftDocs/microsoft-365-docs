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

Productivity Score uses metrics about how people use Microsoft 365 apps and services to help you transform how work gets done. The score reflects your organization&#39;s performance against employee and technology experience measures and compares your score with organizations like yours. For more details, check out [Productivity Score overview](productivity-score.md).

Your privacy is important To us. To learn how we protect your privacy, see [Microsoft's privacy statement](https://privacy.microsoft.com/privacystatement). Productivity Score provides vital information on how people in your organizations work along with controls to make sure the information is actionable while not compromising the trust you place in Microsoft.

We provide the following controls to allow for safer handling of data:

- Flexible admin roles to control who can see the information in Productivity Score.
- Anonymization of user level metrics.
- Capability to opt out of Employee experience.

## Flexible admin roles to control who can see the information in Productivity Score

To view the entire Productivity Score, including tenant-level metrics and per-user details, your role should be one of the following admin roles:

- Global admin
- Exchange admins
- SharePoint admin
- Skype for Business admin
- Teams admin
- Global Reader
- Reports Reader

Assign the Reports Reader role to anyone who's responsible for change management and adoption. This role gives them access to the complete experience including tenant level metrics and per-user level details.

Employee experience report contains per-user activity details for each category detail page. Assign a custom role called Usage Summary Reports Reader to enable access to only the aggregate metrics of the Employee experience.

:::image type="content" source="../../media/communicationspage.jpg" alt-text="Communications page in Productivity reports.":::

## De-identification of user level metrics

To make the data that is collected for all reports anonymous, you must be a global administrator. This action will hide identifiable information such as user, group, and site names in all reports – including Productivity Score and Microsoft 365 Usage.

1. In the admin center, go to the  **Settings**  >  **Org Settings**, and under  **Services**  tab, choose  **Reports**.
2. Select  **Reports**, and then choose to  **Display anonymous identifiers for user, group and site names in Productivity Score and Usage Reports**. This setting is applied both to the usage reports and to the template app.
3. Select  **Save changes**.

:::image type="content" source="../../media/orgsettings_anonymous.jpg" alt-text="Make user info anonymous for reports.":::

## Capability to opt out of people experiences

When Productivity Score is generally available, you will also be able to opt out of the people experiences area of Productivity Score. If you opt out, no one from  organization will be able to view these metrics and your organization is removed from any calculations that involve communication, meetings, teamwork, content collaboration, and mobility.

1. In the admin center, go to the  **Settings**  >  **Org Settings**, and under  **Services**  tab, choose  **Reports**.
2. Select  **Reports** , and then un-check the box that says  **Allow Microsoft 365 usage data to be used for people experiences insights.**. To understand how to modify data-sharing settings for Endpoint Analytics in the Intune configuration manager, click on **Learn More**.
3. Select  **Save changes**.

:::image type="content" source="../../media/orgsettingspageoptout.jpg" alt-text="Org settings page where you can opt out from employee experience.":::