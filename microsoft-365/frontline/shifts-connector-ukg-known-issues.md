---
title: Team Shifts connector for UKG Pro Workforce Management known issues
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: troubleshooting
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Lists known issues when using the Team Shifts connector for UKG Pro Workforce Management to integrate Shifts with UKG Pro Workforce Management.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/20/2024
---

# Known issues: Team Shifts connector for UKG Pro Workforce Management

This article lists known issues for the [Microsoft Teams Shifts connector for UKG Pro Workforce Management](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-pro-workforce-management).

## You can map a WFM instance to more than one team using PowerShell or your Microsoft 365 admin center

A WFM instance should only be mapped to one team at any given time in a connection instance.

However, when you use PowerShell or Microsoft 365 admin center to set up a connection instance, it’s possible to map a WFM instance to more than one team. We recommend that you avoid mapping a WFM instance to multiple teams as it can result in syncing issues and unexpected behavior.

## Frontline managers can select a time zone for a schedule in Shifts that's different from the time zone that's set in UKG Pro WFM

The time zone setting of schedules in Shifts is synced from UKG Pro Workforce Management (UKG Pro WFM). However, it's possible for frontline managers to change the time zone of a schedule in Shifts to one that's different from what's configured in UKG Pro WFM. Doing so can result in syncing issues and unexpected behavior.

To work around this issue, keep the time zone setting as is.

## Nothing happens when users try to start a break or manage their time sheet in Shifts

The following time clock capabilities aren't supported in an integration with UKG Pro WFM:

- Start and end a break. Users are unable to clock out or clock in to a break even though the **Start a break** and **End break** buttons are displayed in Shifts.
- Edit and confirm time sheet records. Users are unable to edit and confirm their clock ins and clock outs through their time sheet even though the button is displayed in Shifts.

## Availability settings of users don't apply to the current week

Teams mobile users can set their personal availability in Shifts. However, if a user sets their availability after the day that's established as the start of the week in UKG Pro WFM, their availability applies to the following week onwards and not to the current week. For example, Sunday is set as the start of the week in UKG Pro WFM, and on Monday of the current week, a user changes their availability for Thursday and Friday. In this scenario, their availability settings are applied to the following week.

## Users see a red "X" when a coworker accepts their swap request and the manager declines the request

Currently, if a user creates a swap request with a coworker and the coworker accepts the request but the manager denies it, the user unexpectedly sees a red "X" next to both the coworker's and manager's response.

The correct, expected behavior is a green check mark to indicate that the coworker accepted the request and a red "X" to indicate that the manager denied the request.

## A user can’t perform some actions in Shifts after another user has signed in to Shifts on the same device

This issue can occur if multiple users use the same device to connect to the Teams Shifts app and require a single sign-on (SSO) in UKG Pro WFM.

For example, user A signs in to Teams, submits a time off request, and signs out. To make the request, user A had to enter their Microsoft Entra credentials for SSO. On the same device, user B signs in to Teams and tries to perform another action in Shifts that requires SSO.

In this scenario, an issue occurs in which user B is signed in to Teams and Shifts and user A is still signed in to UKG Pro WFM.

To mitigate this issue, do one of the following actions:

- Close all open browser windows after each user signs out of the Teams web app. This must happen independently of whether the user accessed the Teams web app through the InPrivate window in Microsoft Edge or in Incognito mode in Google Chrome.
- Clear cookies and site data for the mykronos.com site in the browser after each user signs out of the Teams web app. To learn more, see [Delete cookies in Microsoft Edge](https://support.microsoft.com/microsoft-edge/delete-cookies-in-microsoft-edge-63947406-40ac-c3b8-57b9-2a946a29ae09) or [Clear, enable, and manage cookies in Chrome](https://support.google.com/chrome/answer/95647).

## Availability can only be set for one team in Teams

If a user in Shifts belongs to multiple teams and one of those teams has availability syncing enabled, the user is unable to set their availability. Instead, they receive an error message. A user can only set availability in one team even if they belong to multiple teams in Shifts.

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use the Shifts connector wizard to connect Shifts to UKG Pro Workforce Management](shifts-connector-wizard-ukg.md)
- [Use PowerShell to connect Shifts to UKG Pro Workforce Management](shifts-connector-ukg-powershell-setup.md)
- [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-admin-center-manage.md)
- [Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-powershell-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
