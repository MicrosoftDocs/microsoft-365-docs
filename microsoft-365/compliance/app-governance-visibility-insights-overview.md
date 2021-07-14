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

With Microsoft app governance, you can quickly gain visibility and meaningful insights on your Microsoft 365 application ecosystem. You start from the app governance dashboard that provides a high-level summary of the alerts and apps in your tenant that require administrator attention.

With app governance visibility and insights, you can see:

- A list of the OAuth-enabled apps that access Microsoft 365 data via Microsoft Graph APIs.
- A rich view on app activities so that you can react or respond to them.

>[!Note]
>Azure-only apps that are not granted permissions to access Microsoft 365 resources are not displayed in app governance.
>

See [administrator roles](app-governance-get-started.md#administrator-roles) for an overview of required administrator roles for visibility and insights.

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
- Data accessed by single and all apps with workload and user level insights.
- App information and metadata, such as permissions, registration date, and certification.
- Publisher information and metadata, such as name and verification status.
- Usage of top resources (emails and files) across the tenant.
- Insights on:

  - High-privileged apps.
  - Overprivileged apps.
  - High-usage apps.
  - Top consented users whose data a specific app can access.
  - Priority accounts who have data that a specific app can access.

- A cumulative view of users accessing apps.
- Alerts insights.
- Policy list insights.
<!-->
- Policies created in MCAS in the app governance portal.
-->
- Alerts for OAuth apps generated in MCAS, in the app governance portal.

You can also:

- Drill down to a single app (app page) with all its associated insights.
- Drill-down into top users by data, and priority accounts within a single app.

## Next step

[Get started with application insights.](app-governance-visibility-insights-get-started.md)
