---
title: "Setting up Scheduler for Microsoft 365."
ms.author: v-aiyengar
author: AshaIyengar21
manager: serdars
audience: Admin
ms.topic: article
ms.service: scheduler
localization_priority: Normal
description: "Setting up Scheduler for Microsoft 365."
---
# Setting up Scheduler for Microsoft 365


To set up the Scheduler for Microsoft 365, following are the prerequisites:

| What do I need? | Description |
|-------------------|-------------|
|Cortana mailbox |Tenant admins will need to set a mailbox to serve as the “Cortana” mailbox (that is, cortana@yourdomain.com).         |
|Exchange Online mailbox |Users must have an Exchange Online mail and calendar         |
|Scheduler license |For licensing and pricing information, see [Scheduler for Microsoft 365](https://www.microsoft.com/en-us/microsoft-365/meeting-scheduler-pricing).        |

## Create a mailbox for Cortana

An Exchange mailbox in your tenant acts as the Cortana mailbox for your tenant to send and receive emails to and from Cortana. All emails sent to Cortana are retained in your tenant’s Cortana mailbox based on your retention policy.

- Use the Microsoft 365 admin center to create a user mailbox. A 30-day retention policy is recommended. 
- Use the name Cortana in your mailbox’s primary SMTP address. Names such as “Cortana@yourdomain.com,’ ‘CortanaScheduler@contoso.com,’ or ‘Cortana.Scheduler@yourdomain.com’ are recommended.

## Designate the mailbox as the Scheduler Assistant

After a unique mailbox for Cortana Scheduler has been created, you must designate the mailbox to Microsoft 365 formally. After you designate the Cortana Scheduler mailbox, it will be available to schedule meetings on behalf of your users.

To designate the Cortana Scheduler mailbox, an authorized admin must run a one-line PowerShell command. 

1. Connect to Microsoft 365 remote PowerShell run space for your organization.

2. Run the following PowerShell script to designate the mailbox for Scheduler:

    ```powershell
    Set-mailbox cortana@contoso.com -SchedulerAssistant:$true
    ```
    
    After running this "set" command on the Cortana Scheduler mailbox, a new "PersistedCapability" is set on the mailbox to note that this mailbox is the "SchedulerAssistant".

> [!NOTE]
> Follow these steps to connect your organization to PowerShell if you’ve not done so previously: [Connect to Microsoft 365 with PowerShell](../enterprise/connect-to-microsoft-365-powershell.md).

To discover which mailbox in your organization is currently set as the Cortana Scheduler assistant, run the get function:

```powershell
Get-mailbox | where {$_.PersistedCapabilities -Match "SchedulerAssistant"}
```

> [!IMPORTANT]
> It might take up to two hours for the Scheduler mailbox to complete full provisioning to set the SchedulerAssistant capability.

## Exchange Online mailbox
A Scheduler license is an add-on to Microsoft 365, that enables the meeting organizer to delegate their meeting scheduling tasks to their Scheduler assistant. For the Scheduler to work, typically through Microsoft 365 license, meeting organizers require the following components:

- A mailbox designated as Scheduler assistant mailbox
- Scheduler license
- Exchange Online mailbox and calendar

The meeting attendees do not require Scheduler or Microsoft 365 license.

## Scheduler end-user license requirements

A Scheduler license requires one of the following licenses:

- Microsoft 365 E3, A3, E5, A5
- Business Basic, Business, Business Standard, Business Premium
- Office 365 E1, A1, E3, A3, E5, A5
- Business Essentials, Business Premium
- Exchange Online Plan 1 or Plan 2 license. 

> [!Note]

> Scheduler for Microsoft 365 is available in worldwide multi-tenant environments in English only. **Scheduler for Microsoft 365** isn't available to users of:

- Microsoft 365 operated by 21Vianet in China
- Microsoft 365 with German cloud that uses the data trustee German Telekom
- Government cloud including GCC, Consumer, GCC High, or DoD

Scheduler does support users in Germany whose data location is not in the German datacenter.
