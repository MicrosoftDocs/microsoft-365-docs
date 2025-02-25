---
title: "Microsoft 365 admin center activity reports"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 06/21/2024
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- adminvideo
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- MET150
- MOE150
- GEA150
ms.assetid: 0d6dfb17-8582-4172-a9a9-aed798150263
description: "Get a periodic report of how people in your organization are using Microsoft 365 services and drill into each chart for more insights."
---

# Microsoft 365 Reports in the admin center

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

You can easily see how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need a Microsoft 365 license at all. Perpetual license model won't be included in the reports.
  
Reports are available for the last 7 days, 30 days, 90 days, and 180 days. Data won't exist for all reporting periods right away. The reports typically become available within 48 hours, but might sometimes take several days
to become available.

## Watch: Act on a usage report in Microsoft 365
  
Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198103).<br><br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=f8007c63-a8a0-44ee-ab5b-0ac799333496]

## How to get to the Reports dashboard

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Reports** \> **Usage** page.

::: moniker-end

2. Select the **View more** button from the at-a-glance activity card for a service (such as email or OneDrive) to see the report detail page. On that page, different reports for the service are provided in tabs.

   :::image type="content" alt-text="The Usage dashboard." source="../../media/activity-usage-analytics3.png" lightbox="../../media/4c0f966d-9d2b-4a6f-a106-a6e2b9a2de07.png":::

## Who can see reports

People who have the following permissions:

- Global admins: We recommend that only a few people in your company have this role. It reduces the risk to your business.

- Exchange admins

- SharePoint admins

- Skype for Business admins

- Global reader (with no user details)

- Usage Summary Reports reader (with no user details): By design, this role has read access to user, groups, and other settings by default in the Microsoft 365 admin center, as the role is based on Microsoft Entra.

- Reports reader

- Teams Administrator

- Teams Communications Administrator

- User Experience Success Manager (with no user details)

To learn more, see [About admin roles](../add-users/about-admin-roles.md) and [Assign admin roles](../add-users/assign-admin-roles.md).

## Which activity reports are available in the admin center

Depending on your subscription, here are the available reports in all environments.

|Report|Public|GCC|GCC-High|DoD|Microsoft 365 operated by 21Vianet|
|:-----|:-----|:-----|:-----|:-----|:-----|
|[Active Users](active-users-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft browser usage](browser-usage-report.md)|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>1</sup>|
|[Microsoft 365 Copilot readiness report](microsoft-365-copilot-readiness.md)|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Microsoft 365 Copilot usage report](microsoft-365-copilot-usage.md)|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Microsoft Copilot usage report](microsoft-copilot-usage.md)|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Email activity](email-activity-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Email apps usage](email-apps-usage-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Mailbox usage](mailbox-usage.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft 365 groups](office-365-groups-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft 365 Apps usage](microsoft365-apps-usage-ww.md)|Yes|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|Yes
|[Office activations](microsoft-office-activations-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[OneDrive for Business user activity](onedrive-for-business-activity-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[OneDrive for Business usage](onedrive-for-business-usage-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[SharePoint site usage](sharepoint-site-usage-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[SharePoint activity](sharepoint-activity-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft Teams user activity](microsoft-teams-user-activity-preview.md)|Yes|Yes|Yes|Yes|N/A<sup>1</sup>|
|[Microsoft Teams device usage](microsoft-teams-device-usage-preview.md)|Yes|Yes|Yes|Yes|N/A<sup>1</sup>|
|[Microsoft Teams team activity](microsoft-teams-usage-activity.md)|Yes|Yes|Yes|Yes|N/A<sup>1</sup>|
|[Viva Engage activity](viva-engage-activity-report-ww.md)|Yes|Yes|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Viva Engage device usage](viva-engage-device-usage-report-ww.md)|Yes|Yes|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Viva Engage groups activity report](viva-engage-groups-activity-report-ww.md)|Yes|Yes|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Forms activity](forms-activity-ww.md)|Yes|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>1</sup>|
|[Dynamics 365 Customer Voice activity](forms-pro-activity-ww.md)|Yes|Yes|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Skype for Business Online activity](/SkypeForBusiness/skype-for-business-online-reporting/activity-report)|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|Yes|
|[Skype for Business Online conference organized activity](/SkypeForBusiness/skype-for-business-online-reporting/conference-organizer-activity-report)|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|Yes|
|[Skype for Business Online conference participant activity](/SkypeForBusiness/skype-for-business-online-reporting/conference-participant-activity-report)|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|Yes|
|[Skype for Business Online peer-to-peer activity](/SkypeForBusiness/skype-for-business-online-reporting/peer-to-peer-activity-report)|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|Yes|
|[Viva Learning activity](viva-learning-activity.md)|Yes|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|
|[Viva Insights activity](viva-insights-activity.md)|Yes|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>2</sup>|
|[Project activity](project-activity.md)|Yes|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>2</sup>|
|[Visio activity](visio-activity.md)|Yes|Yes|N/A<sup>1</sup>|N/A<sup>1</sup>|N/A<sup>2</sup>|
|[Viva Goals activity](viva-goals-activity.md)|Yes|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|N/A<sup>2</sup>|

N/A<sup>1</sup>: The report is planned to be released in the future. The <a href="https://www.microsoft.com/en-us/microsoft-365/roadmap?filters=" target="_blank">Microsoft 365 Roadmap</a> will be updated before the release.

N/A<sup>2</sup>: The service is not available in the environment, so there's no plan to release the report.

## How to view licensing information

- To see how many licenses you have assigned and unassigned, in the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

- To see who is licensed, unlicensed, or guest, in the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

## How to view usage information for a specific user

Use the service reports to research how much a specific user is using the service. For example, to find out how much mailbox storage a specific user has consumed, open the Mailbox usage report, and sort the users by name. If you have thousands of users, export the report to Excel so you filter through the list quickly.

You can't generate a report where you enter a user's account and then get a list of which services they're using and how much.

There are circumstances where new users show up as **unknown**. This is usually due to occasional delays in creating user profiles.

## Show user, group, or site details in the reports

By default, user, group, or site details will be hidden for all reports.

Your user list will look like this:

![Reports - anonymized user list.](../../media/2ed99bce-4978-4ee3-9ea2-4a8db26eef02.png)

If you want to unhide user, group, or site information when you're generating your reports, you can quickly make that change in the admin center.

Reports provide information about your organization's usage data. Starting September 1, 2021, we're hiding user, group, or site information by default for all reports as part of our ongoing commitment to help companies support their local privacy laws.

The org setting applies to:

Properties for user-level in many reports:

- User ids
- Usernames
- User principal names

Properties for OneDrive and SharePoint site usage reports:

- Site ids
- Site URLs

Properties for Microsoft 365 apps Group activity report:

- Group ids
- Group names

Properties for Viva Engage group activity report:

- Group name
- Group admin

Properties for Teams team usage report:

- Team names

There are additional reports that follow this org setting. For example, some reports in Microsoft Teams admin center follow the same.

You can revert this change for their tenant and show identifiable user, group, and site information if their organization's privacy practices allow it. It can be achieved in the Microsoft 365 admin center by following these steps:

1. In the admin center, go to the **Settings** \> **Org Settings** \> **Services** page.

2. Select **Reports**.

3. Uncheck the statement **Display concealed user, group, and site names in all reports**, and then save your changes.

Beginning on June 23, 2022, an API will gradually become available to all environments for admins to change this setting without needing to visit the Microsoft 365 admin center.

For more details, see [adminReportSettings API](/graph/api/resources/adminreportsettings?view=graph-rest-beta&preserve-view=true).

Two methods have been approved for this API:

:::image type="content" source="../../media/api-show-details.png" alt-text="API Methods.":::

The report will only contain a Privacy Setting property. For more information on Graph API, see [Use the Microsoft Graph API](/graph/use-the-api). You can use the Software Development Kit (SDK) or directly call the API using any program language with network ability. We recommend using [Graph Explorer](/graph/graph-explorer/graph-explorer-overview).

It will take a few minutes for these changes to take effect on the reports in the reports dashboard. This setting also applies to the Microsoft 365 usage reports in [Microsoft Graph](/graph/api/resources/report) and [Power BI](/microsoft-365/admin/usage-analytics/usage-analytics) and [the usage reports in Microsoft Teams Admin center](/microsoftteams/teams-analytics-and-reports/teams-reporting-reference). Showing identifiable user information is a logged event in the Microsoft Purview compliance portal audit log.

## What happens to usage data when a user account is deleted?

Whenever you delete a user's account, Microsoft will delete that user's usage data within 30 days. Deleted users will still be included in the Activity chart totals for the periods they were active in, but will not appear in the User Details table.

However, when you select a particular day, up to 28 days from the current date, the report show the user's usage for that day in the User Details table.

## Related content

[Microsoft 365 usage analytics](../usage-analytics/usage-analytics.md) (article)\
[Customize the reports in Microsoft 365 usage analytics](../usage-analytics/customize-reports.md) (article)\
[Working with Microsoft 365 usage reports in Microsoft Graph beta](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true) (article)\
[Working with Microsoft 365 usage reports in Microsoft Graph v1.0](/graph/api/resources/report?view=graph-rest-1.0&preserve-view=true) (article)
