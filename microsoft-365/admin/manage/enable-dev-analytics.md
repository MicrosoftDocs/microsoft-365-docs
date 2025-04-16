---
title: "Enable developers to use app analytics in the Developer Portal for Teams"
f1.keywords:
- CSH
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 04/14/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.reviewer: luywang
ms.collection: 
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_O365_Setup
- must-keep
ms.custom: 
- admindeeplinkMAC
search.appverid:
- MET150
description: "Enable developers to view and use app analytics for company apps in the Developer Portal using the Developer Portal for Teams setting."
---

# Enable developers to use app analytics in the Developer Portal for Teams

In the Microsoft 365 admin center, the **App usage for custom app** setting allows enterprise app developers to view and use app analytics for company apps in the Developer Portal. Developer Portal is a tool for managing apps and agents built for Copilot and Microsoft 365 apps. By viewing custom app usage, enterprise developers can see the number of active users and get other insights. Admins can allow app usage for your custom apps to be shown in the Developer Portal.

:::image type="content" source="../../media/enable-dev-analytics/enable-dev-analytics.png" alt-text="Image of the UI for enabling dev analytics" lightbox="../../media/enable-dev-analytics/enable-dev-analytics.png":::

To enable the setting, in the Microsoft 365 Admin Center, sign in with the **Teams admin** role, and under **Org settings**, select **Developer Portal for Teams** and then enable the setting in the flyout pane as shown in the following image:

:::image type="content" source="../../media/enable-dev-analytics/enable-dev-analytics-flyout.png" alt-text="Image of the flyout pane where you can enable the setting":::

## How will this setting affect admins and their organization?

By default, the **App usage for custom apps** setting is disabled. When you enable this setting, enterprise developers are provided with better insights into the performance and user engagement of custom apps, helping them make informed decisions about app improvements. If this setting is disabled, developers may be prevented from understanding app usage and other insights, causing disruptive change to their workflow.

## What actions are needed from admins?

To enable enterprise developers to view app usage, enable the setting in **Microsoft 365 admin center -> Settings -> Org settings -> Services -> Developer Portal for Teams**. Developers should be able to take advantage of the new experience right away.

## What do developers need to do?

Developers can configure access to analytics for company apps by following the guidance in [Analyze app usage in Developer Portal](/microsoftteams/platform/concepts/build-and-test/analyze-your-apps-usage-in-developer-portal?tabs=custom-apps-built-for-your-org#tabpanel_1_custom-apps-built-for-your-org).

## Related articles

- [Analyze App Usage in Developer Portal](/microsoftteams/platform/concepts/build-and-test/analyze-your-apps-usage-in-developer-portal?tabs=custom-apps-built-for-your-org)
- [Microsoft Teams app usage report](/microsoftteams/teams-analytics-and-reports/app-usage-report)
