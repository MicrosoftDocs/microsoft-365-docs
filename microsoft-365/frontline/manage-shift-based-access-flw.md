---
title: Manage shift-based access for frontline workers in Teams
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to manage shift-based access in Teams for frontline workers in your organization.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/28/2022
---

# Manage shift-based access for frontline workers in Teams

> [!IMPORTANT]
> This feature has been deprecated.

## Overview

Presence in Microsoft Teams indicates a user's current availability and status to other users. The presence of frontline workers is often less predictable than other staff as their working hours are typically not the same each day. As an admin, you can configure Teams to show a set of shift-based presence states for the frontline workers in your organization to indicate when they are on and off shift.

These shift-based presence states&mdash;![Solid green check mark, indicates On shift.](media/flw-presence-on-shift.png) **On shift**, ![Gray circle with x, indicates Off shift.](media/flw-presence-off-shift.png) **Off shift**, ![Solid red circle, indicates Busy](media/flw-presence-busy.png) **Busy**&mdash;are separate from the [default set of presence states](/microsoftteams/presence-admins) in Teams. With these two sets of presence states, you can configure different experiences for people in your organization based on their role.

With shift-based access, you can manage access to Teams when frontline workers are off shift. For example, you can set Teams to display a message that frontline workers must acknowledge before they can use Teams when they're not on a scheduled shift.  

## Scenario

Here's an example of how your organization can manage shift-based access.

You have frontline workers in your organization that should only be paid for hours they work on a shift that their manager scheduled and approved. They shouldn't be paid for time spent working outside a scheduled shift, which includes using the Teams app. You set up a custom message that says "Your time on Teams when on off shift won't count toward payable hours", which is displayed when frontline workers try to access Teams when off shift. If they choose to use Teams, they click **I accept** with the understanding that they won't be paid for this time.

You also have information workers in your organization who are salaried and who don't work shifts. You configure your information workers to use the default presence states in Teams while giving your frontline workers shift-based presence.

## Shift-based presence states

Here are the shift-based presence states.

|App configured |User configured  |More information  |
|---------|---------|---------|
|![Solid green check mark, indicates On shift.](media/flw-presence-on-shift.png) On shift     |         |Automatically set at the start of a shift         |
|![Gray circle with x, indicates Off shift](media/flw-presence-off-shift.png) Off shift     |         |Automatically set at the end of a shift         |
|![Solid red circle, indicates Busy.](media/flw-presence-busy.png) Busy      | ![Solid red circle, indicates Busy](media/flw-presence-busy.png) Busy         |Automatically set. Can also be manually set when the frontline worker is on shift.|

## Off shift access to Teams

This feature lets you manage access to Teams when frontline workers are off shift. You can set Teams to display a message to frontline workers if they access Teams when off shift. Frontline workers must click **I accept** to acknowledge the message before they can use Teams.

You can use the default message, choose from a set of pre-defined messages, or customize the message to display any text that you want. Here's the default message:

![Screenshot of default message.](media/shifts-presence-message.png)

You can also set the frequency when the message is displayed and set a grace period between when the first shift starts or last shift ends and when access to Teams is restricted.

## Manage shift-based access

As an admin, you use policies to control shift-based presence for frontline workers in your organization. You manage these policies by using the following PowerShell cmdlets:

- [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy)
- [Get-CsTeamsShiftsPolicy](/powershell/module/teams/get-csteamsshiftspolicy)
- [Set-CsTeamsShiftsPolicy](/powershell/module/teams/set-csteamsshiftspolicy)
- [Grant-CsTeamsShiftsPolicy](/powershell/module/teams/grant-csteamsshiftspolicy)
- [Remove-CsTeamsShiftsPolicy](/powershell/module/teams/remove-csteamsshiftspolicy)

Use the New-CsTeamsShiftsPolicy cmdlet to create a new policy, set the policy settings that you want, and then use the Grant-CsTeamsShiftsPolicy cmdlet to assign the policy to users.

Here's some examples. For detailed information about each policy setting and parameter, including the list of predefined off shift messages that you can choose from, see [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy).

### Example 1

In this example, we create a new policy named Off Shift Teams Access Default Message. In this policy, shift-based presence is turned on and the default message is displayed every time a user who is assigned this policy accesses Teams when off shift. The user can use Teams when off shift if they accept the message, and the grace period between when the first shift starts or last shift ends and when access is restricted is 10 minutes.  

```powershell
New-CsTeamsShiftsPolicy -Identity "Off Shift Teams Access Default Message" -EnableShiftPresence $true -ShiftNoticeFrequency always -ShiftNoticeMessageType DefaultMessage -AccessType UnrestrictedAccess_TeamsApp -AccessGracePeriodMinutes 10
```

> [!NOTE]
> Use the **ShiftNoticeMessageType** parameter to set the message that you want to display. To see a list of the pre-defined messages that you can choose from for this parameter, see [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy).

### Example 2 

In this example, we create a new policy named Off Shift Teams Access Custom Message. In this policy, shift-based presence is turned on and a custom message is displayed every time a user who is assigned this policy accesses Teams when off shift. The user can use Teams when off shift if they accept the message, and the grace period between when the first shift starts or last shift ends and when access is restricted is 15 minutes.  

```powershell
New-CsTeamsShiftsPolicy -Identity "Off Shift Teams Access Custom Message" -EnableShiftPresence $true -ShiftNoticeFrequency always -ShiftNoticeMessageType CustomMessage -ShiftNoticeMessageCustom "Your time on Teams when on off shift won't count toward payable hours" -AccessType UnrestrictedAccess_TeamsApp -AccessGracePeriodMinutes 15
```

> [!NOTE]
> Use the **ShiftNoticeMessageType** parameter to set the message that you want to display. To learn more, see [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy).

### Example 3

In this example, we create a new policy named Off Shift Teams Access Message1. In this policy, shift-based presence is turned on and the following predefined message is displayed every time a user who is assigned this policy accesses Teams when off shift.

  "Your employer does not authorize or approve of the use of its network, applications, systems, or tools by non-exempt or hourly employees during their non-working hours. By accepting, you acknowledge that your use of Teams while off shift is not authorized and you will not be compensated." 

The user can use Teams when off shift if they accept the message, and the grace period between when the first shift starts or last shift ends and when access is restricted is three minutes.  

```powershell
New-CsTeamsShiftsPolicy -Identity "Off Shift Teams Access Message1" -EnableShiftPresence $true -ShiftNoticeFrequency always -ShiftNoticeMessageType Message1 -AccessType  UnrestrictedAccess_TeamsApp -AccessGracePeriodMinutes 3
```

> [!NOTE]
> Use the **ShiftNoticeMessageType** parameter to set the message that you want to display. To see a list of the pre-defined messages that you can choose from for this parameter, see [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy).

### Example 4

In this example, we assign a policy named Off Shift Teams Access Custom Message to a user named remy@contoso.com.

```powershell
Grant-CsTeamsShiftsPolicy -Identity remy@contoso.com -PolicyName "Off Shift Teams Access Custom Message"
```

## Related articles

- [Manage the Shifts app for your organization in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Teams PowerShell overview](/microsoftteams/teams-powershell-overview)