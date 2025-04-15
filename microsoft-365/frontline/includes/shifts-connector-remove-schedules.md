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
> [!NOTE]
> Complete this step if you're mapping instances to existing teams that have schedules. If you're mapping to teams that don't have any schedules or if you're creating new teams to map to, you can skip this step.

Use PowerShell to remove schedules from teams.

1. First, install the PowerShell modules and get set up. Follow the steps to [set up your environment](../shifts-connector-powershell-manage.md#set-up-your-environment)
1. Run the following command:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord).
