---
title: "Get started with visibility and insights"
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
description: "Get started with visibility and insights."
---

# Get started with visibility and insights

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

The first place to get started is the Microsoft App Governance dashboard at [https://compliance.microsoft.com/m365appprotection](https://compliance.microsoft.com/m365appprotection). Note that your sign-in account must have one of [these app governance administrator roles](manage-app-protection-governance.md#administrator-roles) to view any app governance data.

![The App Governance overview page in the Microsoft 365 Compliance Center](..\media\manage-app-protection-governance\mapg-cc-overview.png)

You can also access the App Governance dashboard from **Microsoft 365 admin center > Microsoft 365 Compliance Center > App protection & governance > Overview page**.

## What’s available on the dashboard

The dashboard contains a summary of the components of the Microsoft 365 app ecosystem in the tenant:

- **Tenant summary**: The count of key app and alert categories.
- **Detection and policy alerts**: The most recent active alerts in the tenant
- **Data and resources access**: Aggregate application API access and overall usage of top resources in the tenant. Mouse over each month column in the graph to see the corresponding value.
- **Improve your app protection and governance**: Recommended actions such as creating an app usage or permissions policy.
- **Top apps by categories**: The top apps sorted by these categories:
  
  - **All categories**: Sorts across all available categories.
  - **High privilege**: High privilege is an internally determined category based on platform machine learning and signals.
  - **Overprivileged**: When app governance receives telemetry that indicates that a permission granted to an application has not been used in the last 90 days, that application is overpermissioned. App governance must be operating for at least 90 days to determine if any app is overpermissioned.  
  - **Unverified**: Applications that have not received [publisher certification](https://docs.microsoft.com/azure/active-directory/develop/publisher-verification-overview) are considered unverified.
  - **App only**: [Application permissions](https://docs.microsoft.com/azure/active-directory/develop/v2-permissions-and-consent#permission-types) are used by apps that can run without a signed-in user present. Apps with permissions to access data across the tenant are potentially a higher risk.
  - **New apps**: New Microsoft 365 apps that have been registered in the last seven days.  

## Next step

[Get detailed insights on a specific app](mapg-visibility-insights-view-apps.md).
