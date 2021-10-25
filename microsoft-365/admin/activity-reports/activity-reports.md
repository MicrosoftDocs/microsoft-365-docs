---
title: "Activity Reports in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
ms.localizationpriority: high
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: 
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

You can easily see how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need a Microsoft 365 license at all. Perpetual license model will not be included in the reports. 
  
Reports are available for the last 7 days, 30 days, 90 days, and 180 days. Data won't exist for all reporting periods right away. The reports become available within 48 hours.
  
## Watch: Act on a usage report in Office 365
  
> [!VIDEO https://www.microsoft.com/videoplayer/embed/fb726f8e-aead-43b2-ba0f-53ba5b886bf7?autoplay=false]
  
## How to get to the Reports dashboard

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Reports** \> **Usage** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Reports** \> **Usage** page.

::: moniker-end

2. Click the **View more** button from the at-a-glance activity card for a service (such as email or OneDrive) to see the report detail page. In there different reports for the service are provided in tabs.

   :::image type="content" alt-text="The Usage dashboard." source="../../media/4c0f966d-9d2b-4a6f-a106-a6e2b9a2de07.png" lightbox="../../media/4c0f966d-9d2b-4a6f-a106-a6e2b9a2de07.png":::

## Who can see reports

People who have the following permissions:
  
- Global admins: We recommend that only a few people in your company have this role. It reduces the risk to your business.
    
- Exchange admins
    
- SharePoint admins
    
- Skype for Business admins

- Global reader (with no user details)

- Usage Summary Reports reader (with no user details)

- Reports reader

- Teams Service Administrator

- Teams Communications Administrator
    
To learn more, see [About admin roles](../add-users/about-admin-roles.md) and [Assign admin roles](../add-users/assign-admin-roles.md).
  
## Which activity reports are available in the admin center

Depending on your subscription, here are the available reports in all environments.

|**Report**|**Public**|**GCC**|**GCC-High**|**DoD**|**Gallatin**|
|:-----|:-----|:-----|:-----|:-----|:-----|
|[Microsoft browser usage](browser-usage-report.md)|Yes|No[^1]|No[^1]|No[^1]|No[^1]|
|[Email activity](email-activity-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Email apps usage](email-apps-usage-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Mailbox usage](mailbox-usage.md)|Yes|Yes|Yes|Yes|Yes|
|[Office activations](microsoft-office-activations-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Active Users](active-users-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft 365 groups](office-365-groups-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft 365 Apps usage](microsoft365-apps-usage-ww.md)|Yes|Yes|No[^1]|No[^1]|No[^1]|
|[OneDrive for Business user activity](onedrive-for-business-activity-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[OneDrive for Business usage](onedrive-for-business-usage-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[SharePoint site usage](sharepoint-site-usage-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[SharePoint activity](sharepoint-activity-ww.md)|Yes|Yes|Yes|Yes|Yes|
|[Microsoft Teams user activity](microsoft-teams-user-activity-preview.md)|Yes|Yes|Yes|Yes|N/A[^2]|
|[Microsoft Teams device usage](microsoft-teams-device-usage-preview.md)|Yes|Yes|Yes|Yes|N/A[^2]|
|[Yammer activity](yammer-activity-report-ww.md)|Yes|Yes|N/A[^2]|N/A[^2]|N/A[^2]|
|[Yammer device usage](yammer-device-usage-report-ww.md)|Yes|Yes|N/A[^2]|N/A[^2]|N/A[^2]|
|[Yammer groups activity report](yammer-groups-activity-report-ww.md)|Yes|Yes|N/A[^2]|N/A[^2]|N/A[^2]|
|[Forms activity](forms-activity-ww.md)|Yes|Yes|No[^1]|No[^1]|No[^1]|
|[Dynamics 365 Customer Voice activity](forms-pro-activity-ww.md)|Yes|Yes|N/A[^2]|N/A[^2]|N/A[^2]|
|[Skype for Business Online activity](/SkypeForBusiness/skype-for-business-online-reporting/activity-report)|Yes|Yes|No[^1]|No[^1]|Yes|
|[Skype for Business Online conference organized activity](/SkypeForBusiness/skype-for-business-online-reporting/conference-organizer-activity-report)|Yes|Yes|No[^1]|No[^1]|Yes|
|[Skype for Business Online conference participant activity](/SkypeForBusiness/skype-for-business-online-reporting/conference-participant-activity-report)|Yes|Yes|No[^1]|No[^1]|Yes|
|[Skype for Business Online peer-to-peer activity](/SkypeForBusiness/skype-for-business-online-reporting/peer-to-peer-activity-report)|Yes|Yes|No[^1]|No[^1]|Yes|

[^1]: The report is in plan to be released in the future. The <a href="https://www.microsoft.com/en-us/microsoft-365/roadmap?filters=" target="_blank">Microsoft 365 Roadmap</a> will be updated before the release.
[^2]: The service is not available in the environment so no plan to release the report.

## How to view licensing information

- To see how many licenses you have assigned and unassigned, in the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
    
- To see who is licensed, unlicensed, or guest, in the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page. 
  
## How to view usage information for a specific user

Use the service reports to research how much a specific user is using the service. For example, to find out how much mailbox storage a specific user has consumed, open the Mailbox usage report, and sort the users by name. If you have thousands of users, export the report to Excel so you filter through the list quickly.
  
You can't generate a report where you enter a user's account and then get a list of which services they are using and how much.

There are circumstances where new users show up as **unknown**. This is usually due to occasional delays in creating user profiles.  
  
## Show user details in the reports

By default, user details will be hidden for all reports.
  
Your user list will look like this:
 
![Reports - anonymized user list.](../../media/2ed99bce-4978-4ee3-9ea2-4a8db26eef02.png)


If you want to unhide user-level information when you're generating your reports, a **global administrator** can quickly make that change in the admin center.

Reports provide information about your organization’s usage data. By default, reports display information with identifiable names for users, groups, and sites. Starting September 1, 2021, we are hiding user information by default for all reports as part of our ongoing commitment to help companies support their local privacy laws.

Global administrators can revert this change for their tenant and show identifiable user information if their organization's privacy practices allow it. It can be achieved in the Microsoft 365 admin center by following these steps:
  
1. In the admin center, go to the **Settings** \> **Org Settings** \> **Services** page.

2. Select **Reports**. 
  
3. Uncheck the statement **Display concealed user, group, and site names in all reports**, and then save your changes.  
  
It'll take a few minutes for these changes to take effect on the reports in the reports dashboard. This setting also applies to the Microsoft 365 usage reports in [Microsoft Graph](/graph/api/resources/report?view=graph-rest-1.0) and [Power BI](/microsoft-365/admin/usage-analytics/usage-analytics?view=o365-worldwide) and [the usage reports in Microsoft Teams Admin center](/microsoftteams/teams-analytics-and-reports/teams-reporting-reference). Showing identifiable user information is a logged event in the Microsoft 365 compliance center audit log.   

  
## What happens to usage data when a user account is closed?

Whenever you close a user's account, Microsoft will delete that user's usage data within 30 days. That user will still be included in the Activity chart totals for the periods she was active in, but will not appear in the User Details table.
  
However, when you select a particular day, up to 28 days from the current date, the report show the user's usage for that day in the User Details table.
  
## Related content

[Reports in the Security &amp; Compliance Center](../../compliance/reports-in-security-and-compliance.md) (article)\
[Microsoft 365 usage analytics](../usage-analytics/usage-analytics.md) (article)\
[Customize the reports in Microsoft 365 usage analytics](../usage-analytics/customize-reports.md) (article)
