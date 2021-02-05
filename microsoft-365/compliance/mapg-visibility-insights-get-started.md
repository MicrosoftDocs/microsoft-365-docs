---
title: "Get started with visibility and insights"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Get started with visibility and insights."
---

# Get started with visibility and insights

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

>[!Note]
>REVIEWERS: This content is in progress and not ready for review.
>

Add intro.

## Viewing the dashboard

To see the MAPG dashboard, use **Microsoft 365 Compliance Center > App protection & governance > Overview page**.

## What’s available in the dashboard

The dashboard contains a summary of the components of the Microsoft 365 app ecosystem in the tenant:

- Tenant Summary: The count of key app categories.
- Security and compliance alerts: All active alerts in the tenant
- Data and resource access: Aggregate app usage in the tenant.
- Improve your app protection and governance: Recommendeded actions such as policy creation and a shortcut to view apps in Microsoft Cloud App Security (MCAS).
- Top apps: The top apps in key app categories.


## Viewing top apps by categories

Use **Microsoft 365 Compliance Center > App protection & governance > Overview page >Top apps by categories pane** to see the top apps, which you can sort by these categories:

- All Categories: Sorts across all available categories.
- High privilege: High privilege is an internally determined category based on platform ML and signals.
- Overpermissioned: When MAPG receives telemetry that indicates a permission granted to an application is not being used, that application is “overpermissioned”.  Note this requires MAPG be operating for at least 90 days, as “not being used” here means the permission has not been used in the last 90 days.  
- Unverified: Applications that have not received[ Microsoft 365 certification](https://docs.microsoft.com/en-us/microsoft-365-app-certification/overview#microsoft-365-certification) are considered unverified.
- App only: [Application permissions](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-permissions-and-consent#permission-types) are used by apps that can run without a signed-in user present. Apps with permissions to access data across the tenant, which are potentially a higher risk set of permissions.
- Unused: Applications that have no API activity in the last 90 days.  
- New apps: New Microsoft 365 apps that have been registered in the last 7 days.  

## Next step

[Get detailed insights on a specific app](mapg-visibility-insights-view-apps.md).

