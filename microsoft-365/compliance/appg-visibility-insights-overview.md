---
title: "Learn about visibility and insights"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Learn about visibility and insights."
---

# Learn about visibility and insights

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

With Microsoft app governance, you can quickly gain visibility and meaningful insights on your Microsoft 365 application ecosystem. You start from the app governance dashboard that provides a high-level summary of the apps in your tenant and from there you can efficiently navigate to top tasks.

With app governance visibility and insights, you can see:

- A list of all the third-party Microsoft 365 platform apps with their compliance status in your tenant on a single dashboard.
- A rich view on app activities so that you can react or respond to them.

>[!Note]
>Azure-only apps that are not granted permissions to access Microsoft 365 resources are not displayed in app governance.
>

Here's a quick review of required administrator roles for visibility and insights.

| Role | Read the dashboard | Read all apps |
|:-------|:-----|:-------|
| Compliance Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Compliance Reader | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Global Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Global Reader  | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Security Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Security Reader  | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Security Operator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
||||

<!--
From messaging doc, page 21:

View M365 App List & Metadata
View M365 App List of Consented Users
View M365 App Permissions
View M365 App Permission Usage
View Over permissioned Apps
Aggregate M365 API Usage Data by Workload (count, download/upload)
Per-App M365 API Usage Data by Workload (count, download/upload)
Per-User M365 API Usage Data by Workload (count, download/upload)
M365 API Usage Data For High-Value/Classified Assets (count, download/upload)
M365 API Error Analysis per App
-->

With app governance, you can see:

- A dashboard of all insights.
- Network insights of single and all apps with workload and user level insights.
- Data insights of single and all apps with workload and user level insights.
- App information and metadata, such as permissions, registration date, and certification.
- Publisher information and metadata, such as name and verification status.
- Insights on:

  - High-privileged apps.
  - Overprivileged apps.
  - High-usage apps.
  - Users whose data a specific app can access.
  - High Value Entity (HVE) users who have data that a specific app can access.

- A cumulative view of users accessing apps.
- Error insights for a single or all apps.
- Alerts insights.
- Policy list insights.
- Policy hit and success rates insight.
- Insights from Microsoft Cloud App Security (MCAS).
- Policies created in MCAS in the app governance portal.
- Alerts for OAuth apps generated in MCAS, in the app governance portal.

You can also:

- Customize the dashboard to select the insights you want to view.
- Drill down to a single app (app page) with all its associated insights.
- Drill-down into users.

<!--
NOTE TO WRITER: Above list was taken from an internal spec. It will need to be scrubbed for the public preview.
-->

## Next step

[Get started with application insights.](mapg-visibility-insights-get-started.md)
