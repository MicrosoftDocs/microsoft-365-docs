---
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.date: 10/17/2023
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
ms.collection: m365-frontline 
---
Use this script to change connection settings. Settings that you can change include your WFM service account and password, Microsoft 365 system account, team mappings, and sync settings.

Sync settings include the sync frequency (in minutes) and the schedule data that's synced between your WFM system and Shifts. Schedule data is defined in the following parameters, which you can view by running [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector).

- The **enabledConnectorScenarios** parameter defines data that's synced from your WFM system to Shifts. Options are `Shift`, `SwapRequest`, `UserShiftPreferences`, `OpenShift`, `OpenShiftRequest`, `TimeOff`, `TimeOffRequest`.
- The **enabledWfiScenarios** parameter defines data that's synced from Shifts to your WFM system. Options are `SwapRequest`, `OpenShiftRequest`, `TimeOffRequest`, `UserShiftPreferences`.

    > [!NOTE]
    > If you choose not to sync open shifts, open shift requests, swap requests, or time off requests between Shifts and your WFM system, there's another step you need to do to hide the capability in Shifts. After you run this script, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.

> [!IMPORTANT]
> For settings that you don't want to change, you'll need to re-enter the original settings when you're prompted by the script.
