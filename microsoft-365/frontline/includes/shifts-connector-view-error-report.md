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
You can run a report that shows error details for a connection. The report lists team and user mappings that succeeded and failed. It also provides information about any issues related to the accounts associated with the connection.

1. [Set up your environment](#set-up-your-environment) (if you haven't already).
1. Get a list of error reports for a connection.

    ``` powershell
    Get-CsTeamsShiftsConnectionErrorReport -ConnectorInstanceId <ConnectorInstanceId>
    ```

1. To view a specific error report, run the following command:

    ``` powershell
    Get-CsTeamsShiftsConnectionErrorReport -ErrorReportId <ErrorReportId>
    ```

To learn more, see [Get-CsTeamsShiftsConnectionErrorReport](/powershell/module/teams/get-csteamsshiftsconnectionerrorreport).
