--
title: Battery insights
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Battery insights
This view provides power, battery, and usage metrics for your Microsoft Managed Desktop devices. For these purposes, an app is considered "in use" if it is running and in focus.

To view usage data, select the **Battery** tab.

![Battery pane. ](images/power_usage.png)

## Predicted battery life

In the **Predicted battery life** area, we provide predictions for the expected battery life for your devices, organized by device model.

> [!NOTE]
> This data is derived from sampling energy usage, usage time, and battery capacity from a random <em>selection</em> of the devices in your Microsoft Managed Desktop deployment that are also reporting data.

The table provides the predicted battery life (in hours), average battery life for the same models in other Microsoft Managed Desktop deployments, and the number of devices reporting this data in your environment.



## Top energy consumers

In the **Top energy consumers** area you’ll find the apps in your environment that consume the most energy in milliWatt hours (mWh). For each app, colored segments show you distribution of the app's energy use among these categories:

- CPU
- Display
- Network
- Other

You can filter this display to show only foreground apps, background apps, or both by using the menu in the upper right.

## Insights

The **Insights** area shows the top energy consumers in each resource category (CPU, display, network, and other). Select the listings in the **Details** column for more information.
