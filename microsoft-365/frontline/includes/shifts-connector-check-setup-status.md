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
To check the status of the connection you set up using the operation ID that you received in email, follow these steps:

1. [Set up your environment](#set-up-your-environment) (if you haven't already).
1. Run the following command. This command gives you the overall status of the team mappings for the connection.

    ``` powershell
    Get-CsTeamsShiftsConnectionOperation -OperationId <YourOperationId>
    ```

To learn more, see [Get-CsTeamsShiftsConnectionOperation](/powershell/module/teams/get-csteamsshiftsconnectionoperation).
