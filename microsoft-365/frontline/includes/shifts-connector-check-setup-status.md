---
author: LanaChin
ms.author: v-lanachin
ms.date: 08/29/2022
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
To check the status of the connection you set up using the operation ID that you received in email:

1. [Set up your environment](#set-up-your-environment) (if you haven't already).
1. Run the following command. This command gives you the overall status of the team mappings for the connection.

    ``` powershell
    Get-CsTeamsShiftsConnectionOperation -OperationId <YourOperationId>
    ```

To learn more, see [Get-CsTeamsShiftsConnectionOperation](/powershell/module/teams/get-csteamsshiftsconnectionoperation).
