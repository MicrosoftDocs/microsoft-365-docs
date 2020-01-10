---
title: Battery insights
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Battery insights
This view provides power, battery, and app usage metrics for your Microsoft Managed Desktop devices. For these purposes, an app is considered "in use" if it is running and in focus.

To view usage data, select the **Battery** tab.

![Battery pane. ](images/power_usage.png)

## Predicted battery life

In the **Predicted battery life** area, we provide predictions for the expected battery life for your devices, organized by device model.

> [!NOTE]
> This data is derived from sampling energy usage, usage time, and battery capacity from a random <em>selection</em> of the devices in your Microsoft Managed Desktop deployment that are also reporting data.

The table provides the predicted battery life (in hours), average battery life for the same models in other Microsoft Managed Desktop deployments, and the number of devices reporting this data in your environment. Sort the data by selecting the column headings.



## Top energy consumers

In the **Top energy consumers** area you’ll find the apps in your environment that consume the most energy in milliWatt-hours (mWh). The apps shown are per specific device, which you select in the **Predicted battery life** section to the left. For example, to see the per-app consumption for your Microsft Surface Book 2 devices, select that row in the battery life area. If you don't select any model, the app consumption data shown is for all apps that we have data for collectively.

 For each app, colored segments show you the distribution of the app's energy use among these categories:

- CPU
- Display
- Network
- Other

"Other" could include energy consumption by a variety of sources, such as disk activity or mobile broadband usage. {why wouldn't that last go under "network"? Is "network" only wired network adapters or something? Also is "mobile broadband usage" including wifi? Or does that mean only like cell networks?}

The apps displayed in **Top energy consumers"

You can filter this view to show only foreground apps, background apps, or both by using the menu in the upper right. Foreground apps are those that involve user interaction, such as selecting something with a mouse. {that COULD have user interaction? Or that have had user interaction? And if the latter, on what time scale? Like if I open Word and then immediately switch focus to a different app and don't use Word, is it still "foreground" for these purposes?}

## Insights

The **Insights** area shows the top three energy consumers in the CPU and network categories. These items are consuming higher than average energy compared to all Microsoft Managed Desktop deployments. We don't show the display resource because it depends heavily on device usage time and screen brightness settings. {OK? I don't get why this a reason to not show it? Isn't that useful information too? Also, what about Other?}

Select the listings in the **Details** column for more information.

## Battery optimization

Windows 10 offers numerous [device settings](https://support.microsoft.com/help/20443/windows-10-battery-saving-tips) to improve power usage and increase the battery life of your Microsoft Managed Desktop devices. Some of these settings can decrease other Windows functionality, so you'll also have to consider other factors such as the role of the device in your organization. Windows support maintains a list of these settings found here (https://support.microsoft.com/help/20443/windows-10-battery-saving-tips).

Users can adjust these settings on their own without the need for admin elevation or support. {what if the admin wants to impose particular policies across the org? Or block users from messing with the settings?}
