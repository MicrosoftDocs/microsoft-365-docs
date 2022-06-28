---
title: Adjust scheduling preferences for Scheduler for Microsoft 365 Overview
ms.author: shivb
author: shivbijlani
manager: charlle
audience: Admin
ms.topic: article
ms.service: scheduler
ms.localizationpriority: medium
description: Learn how to adjust scheduling preferences for Scheduler for Microsoft 365.
---

# Scheduling preferences used by Scheduler

Scheduler uses several Outlook preferences to schedule a meeting for an organizer. Any changes to the preference settings in Outlook clients will affect how Scheduler handles requests sent to Cortana. For instance, if an organizer changes the time zone preference on the settings page in Outlook Web, all requests by the organizer that follow will default to the new time zone.

## Supported settings

- **Time zone**. The time zone Scheduler uses to determine an appropriate time for meetings. See [Add, remove, or change time zones](https://support.microsoft.com/en-us/office/add-remove-or-change-time-zones-5ab3e10e-5a6c-46af-ab48-156fedf70c04) for information.

- **Work hours and days**. For most meeting types, Scheduler selects a time according to the organizer's work week and meeting hours preferences. See [Change your work hours and days in Outlook](https://support.microsoft.com/en-us/office/change-your-work-hours-and-days-in-outlook-a27f261d-0681-415f-8ac1-388ab21e833f) for information.

- **Online meetings**. You can turn on a Calendar option so that all the meetings you schedule from Outlook and Scheduler will be held online with conference details. Scheduler currently supports Teams and Skype as meeting providers. See [Make all meetings Teams meetings](https://support.microsoft.com/en-us/office/schedule-a-teams-meeting-from-outlook-883cc15c-580f-441a-92ea-0992c00a9b0f#bkmk_makeallteamsmtngs) for information.

- **Default meeting duration**. If the organizer doesn't specify the desired meeting duration in the request, Scheduler will use the preferred meeting duration for the request. This setting is only available in the Windows Outlook client.

   1. Select **File** > **Options** to see the Outlook Options dialog.

   2. Select **Calendar** from the list on the left of the dialog.

   3. In Calendar options settings on the right of the dialog, select **Default duration for new appointments and meetings**.

      :::image type="content" source="../media/OutlookOptions.png" alt-text="Outlook Calendar options dialog in Windows where you can set up work time, default meeting duration, and select shorten meetings for Scheduler to use.":::

- **Avoid back-to-back meetings**. An Outlook setting can start meetings late or end meetings early to avoid back-to-back meetings. Also, Scheduler can shorten the meeting duration according to the preference you set. See [Change default meeting length](https://techcommunity.microsoft.com/t5/hybrid-work/change-default-meeting-length-in-outlook-avoid-back-to-back/m-p/1247361) for information.

> [!NOTE]
> If you use the Windows client, you must select **Store my Outlook settings in the cloud** to sync your preferences across Scheduler and other Outlook clients.
> :::image type="content" source="../media/OutlookOptions2.png" alt-text="Outlook Calendar options dialog in Windows. Select Store my Outlook settings in the cloud to sync scheduling preferences across clients.":::
