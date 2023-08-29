---
author: LanaChin
ms.author: v-lanachin
ms.date: 08/29/2022
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
> [!NOTE]
> The Microsoft 365 system account must be the same for both connections. If it isn't, you'll get a "This designated actor profile doesn't have team ownership privileges" error message.

If you want to unmap a team from one connection and map it to another connection:

1. [Set up your environment](#set-up-your-environment) (if you haven't already).
1. View a list of all team mappings for a connection.

    ```powershell
    Get-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId <ConnectorInstanceId>
    ```

1. Remove a team mapping from the connection.

    ```powershell
    Remove-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId <ConnectorInstanceId> -TeamId <TeamId>
    ```

1. Map the team to another connection.

    ```powershell
    New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId <ConnectorInstanceId> -TeamId <TeamId> -WfmTeamId <SiteId> -TimeZone <TimeZone>
    ```

To learn more, see [Get-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/get-csteamsshiftsconnectionteammap), [Remove-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/remove-csteamsshiftsconnectionteammap), and [New-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/new-csteamsshiftsconnectionteammap).
