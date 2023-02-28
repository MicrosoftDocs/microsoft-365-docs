---
author: LanaChin
ms.author: v-lanachin
ms.date: 08/29/2022
ms.topic: include
audience: admin
ms.service: microsoft-365-frontline
---
> [!IMPORTANT]
> Follow these steps only if you chose to disable open shifts, open shift requests, swap requests, or time off requests using the script in the [Change connection settings](#change-connection-settings) section earlier in this article or by using the [Set-CsTeamsShiftsConnectionInstance](/powershell/module/teams/set-csteamsshiftsconnectioninstance) cmdlet. Completing this step hides the capability in Shifts. Without this second step, users will still see the capability in Shifts, and will get an "unsupported operation" error message if they try to use it.

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule) to set the following parameters to ```false``` for each team that you mapped to a WFM instance:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.
