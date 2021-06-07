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

|**What do I need?** |**Description** |
|-------------------|-------------|
|Cortana mailbox |Tenant admins will need to set a mailbox to serve as the “Cortana” mailbox (that is, cortana@yourdomain.com).         |
|Exchange Online mailbox |Users must have an Exchange Online mail and calendar         |
|Scheduler license |For licensing and pricing information, see [Scheduler for Microsoft 365](https://www.microsoft.com/microsoft-365/meeting-scheduler-pricing).        |

## Create a mailbox for Cortana
An Exchange mailbox in your tenant acts as the Cortana mailbox for your tenant to send and receive emails to and from Cortana. All emails sent to Cortana are retained in your tenant’s Cortana mailbox based on your retention policy.

- Use the Microsoft 365 admin center to create a user mailbox. A 30-day retention policy is recommended. Use the name Cortana in your mailbox’s primary SMTP address. Names such as “Cortana@yourdomain.com,’ ‘CortanaScheduler@contoso.com,’ or ‘Cortana.Scheduler@yourdomain.com’ are recommended.

## Declare the mailbox as the Scheduler Assistant

After a unique mailbox for Cortana Scheduler has been created, you must formally declare the mailbox to Microsoft 365 formally. After the Cortana Scheduler mailbox is declared, it will be available to schedule meetings on behalf of your users.

To declare the Cortana Scheduler mailbox, an authorized admin must run a one-line PowerShell command. 

1. Connect to Microsoft 365 remote PowerShell run space for your organization.
1. Run the following PowerShell script to declare the mailbox for Scheduler:

   `Set-mailbox cortana@contoso.com - SchedulerAssistant:$true` 

After running this "set" command on the Cortana Scheduler mailbox, a new "PersistedCapability" is set on the mailbox to note that this mailbox is the "SchedulerAssistant".

> [!NOTE]
> To connect to PowerShell for your organization follow these steps if you’ve not done so previously: [Connect to Microsoft 365 with PowerShell - Microsoft 365 Enterprise | Microsoft Docs](../enterprise/connect-to-microsoft-365-powershell.md)

To discover which mailbox in your organization is currently set as the Cortana Scheduler assistant, run the get function:
 
`Get-mailbox -Organization contoso.com | where {($_.PersistedCapabilities -like "SchedulerAssistant")}`

> [!IMPORTANT]
> It might take up to two hours for the Scheduler mailbox to complete full provisioning to set the SchedulerAssistant capability.

## Exchange Online mailbox
Scheduler is an add-on to Microsoft 365. Meeting organizers must have an Exchange Online mailbox and calendar for Scheduler to work.

## Exchange requirements

In addition to licensing Scheduler, you must have one of the following licenses:

- Microsoft 365 E3, A3, E5, A5
- Business Basic, Business, Business Standard, Business Premium
- Office 365 E1, A1, E3, A3, E5, A5
- Business Essentials, Business Premium
- Exchange Online Plan 1 or Plan 2 license. 

> [!Note]
> **Scheduler for Microsoft 365** isn't available for users of Office 365 operated by 21Vianet in China. It's also not available for users of Microsoft 365 with the German cloud that uses the data trustee German Telekom. It is supported for users in Germany whose data location isn't in the German datacenter.
>
>This feature is also not supported for users of the Government Cloud, including GCC, Consumer, GCC High, or DoD.
