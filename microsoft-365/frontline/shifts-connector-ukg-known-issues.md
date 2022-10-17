---
title: Team Shifts connector for UKG Dimensions known issues
author: LanaChin
ms.author: v-lanachin
ms.reviewer:
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Lists known issues when using the Team Shifts connector for UKG Dimensions to integrate Shifts with UKG Dimensions.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Known issues: Team Shifts connector for UKG Dimensions

[!INCLUDE [preview-feature](includes/preview-feature.md)]

This article lists known issues for the [Microsoft Teams Shifts connector for UKG Dimensions](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-dimensions).

## You can map an instance to more than one team using PowerShell or Microsoft Graph

A UKG Dimensions instance should only be mapped to one team at any given time in a connection.

However, when you use PowerShell or Microsoft Graph to set up a connection, it’s possible to map an instance to more than one team. We recommend that you avoid mapping an instance to multiple teams as it can result in syncing issues and unexpected behavior.

## Frontline managers can select a time zone for a schedule in Shifts that's different from the time zone that's set in UKG Dimensions

The time zone setting of schedules in Shifts is synced from UKG Dimensions. However, it's possible for frontline managers to change the time zone of a schedule in Shifts to one that's different from what's configured in UKG Dimensions. Doing so can result in syncing issues and unexpected behavior.

To work around this issue, keep the time zone setting as is.

## Nothing happens when users select the "Start a break" and "End break" buttons in Shifts to start or end a break

The start and end break capability of the time clock feature isn't supported in an integration with UKG Dimensions. Users won't be able to clock out or clock in to a break, even though the buttons are displayed in Shifts.

## Availability settings of users don't apply to the current week

Teams mobile users can set their personal availability in Shifts. However, if a user sets their availability after the day that's established as the start of the week in UKG Dimensions, their availability applies to the following week onwards and not to the current week. For example, Sunday is set as the start of the week in UKG Dimensions, and on Monday of the current week, a user changes their availability for Thursday and Friday. In this scenario, their availability settings are applied to the following week.

## Users see a red "X" when a coworker accepts their swap request and the manager declines the request

Currently, if a user creates a swap request with a coworker and the coworker accepts the request but the manager denies it, the user unexpectedly sees a red "X" next to both the coworker's and manager's response.

The correct, expected behavior is a green check mark to indicate that the coworker accepted the request and a red "X" to indicate that the manager denied the request.

## A user can’t perform some actions in Shifts in the Teams web app after signing in with a different account

This issue can occur if a user who has multiple accounts in Teams performs actions in Shifts that require single sign-on (SSO) in UKG Dimensions and that user switches accounts in the Teams web app in the same browser.

For example, a user signs in to Teams, approves a time off request, and then signs out. The user then signs in to Teams using a different account and tries to perform another action in Shifts that requires SSO in UKG Dimensions.

In this scenario, a caching issue occurs in which the user is signed in to Teams and Shifts on one account and signed in to UKG Dimensions on the other account.

To work around this issue, do one of the following actions:

- Clear cookies and site data for the mykronos.com site in the browser. To learn more, see [Delete cookies in Microsoft Edge](https://support.microsoft.com/microsoft-edge/delete-cookies-in-microsoft-edge-63947406-40ac-c3b8-57b9-2a946a29ae09) or [Clear, enable, and manage cookies in Chrome](https://support.google.com/chrome/answer/95647).
- Use the Teams web app in an InPrivate window in Microsoft Edge or in Incognito mode in Google Chrome.

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use the Shifts connector wizard to connect Shifts to UKG Dimensions](shifts-connector-wizard-ukg.md)
- [Use PowerShell to connect Shifts to UKG Dimensions](shifts-connector-ukg-powershell-setup.md)
- [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-admin-center-manage.md)
- [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
