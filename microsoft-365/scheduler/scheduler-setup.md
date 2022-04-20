---
title: "Setting up Scheduler for Microsoft 365."
ms.author: v-aiyengar
author: AshaIyengar21
manager: serdars
audience: Admin
ms.topic: article
ms.service: scheduler
ms.localizationpriority: medium
description: "Setting up Scheduler for Microsoft 365."
---
# Setting up Scheduler for Microsoft 365

Tenant admins need to set up a Scheduler assistant mailbox and obtain Scheduler licenses for meeting organizers to enable the Scheduler for Microsoft 365 service. 

## Licensing

Learn more:  [Scheduler for Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/meeting-scheduler-pricing)

> [!NOTE]
> Meeting attendees do not need a Scheduler or Microsoft 365 license.
>
> The Scheduler assistant mailbox does not require a Microsoft 365 or a Scheduler license.

## Prerequisites

|Prerequisite|Description|
|---|---|
|A Scheduler assistant mailbox for the tenant |An Exchange equipment type resource mailbox that acts as the Scheduler assistant mailbox for your tenant to send and receive emails to and from Cortana. All emails sent to Cortana are retained in your tenant's Cortana mailbox based on your retention policy. The Scheduler assistant mailbox is typically named "Cortana" or "Cortana Scheduler" since all the emails from the assistant will be signed Cortana. <ul><li>Create an equipment type Exchange resource mailbox</li><li>Name the mailbox's display name and primary SMTP address `Cortana <cortana@yourdomain.com>` or `Cortana Scheduler <cortana.scheduler@yourdomain.com>`.</li></ul> <br/> **Note:** The Scheduler assistant mailbox does not require a Microsoft 365 or a Scheduler license.|
|Exchange Online mailbox |Meeting organizers must have an Exchange Online mailbox and calendar typically as part of their Microsoft 365 license. In addition, meeting organizers must have a Scheduler license. The Scheduler license enables the Scheduler assistant to use the meeting organizer's mailbox and calendar to schedule meetings for them. <br/><br/> See Scheduler for Microsoft 365 for licensing and pricing information. <br/><br/> **Note:** Meeting attendees do not need a Scheduler or Microsoft 365 license. Meeting attendees can be internal or external to the tenant. Meeting attendees only need access to an email address.|

## Setting up the Scheduler assistant mailbox

Scheduler assistant mailbox is an Exchange equipment type mailbox that does not require an additional Microsoft 365 or Scheduler license. The display name and the primary SMTP address of the mailbox should contain Cortana since all the emails from the Scheduler assistant will be signed Cortana (i.e., `Cortana <cortana@yourdomain.com>` or `Cortana Scheduler <cortana.scheduler@yourdomain.com>`). After the Scheduler assistant mailbox has been created, you must designate the mailbox as the Scheduler assistant mailbox. After you designate the Scheduler assistant mailbox, Cortana will be available to schedule meetings on behalf of your users.

- Use the Microsoft 365 admin center to create a user mailbox. A 30-day retention policy is recommended. 
- Use the name Cortana in your mailbox's primary SMTP address. Names such as `Cortana@yourdomain.com`, `CortanaScheduler@contoso.com`, or `Cortana.Scheduler@yourdomain.com` are recommended.

## Designate the mailbox as the Scheduler Assistant

After a unique mailbox for Cortana Scheduler has been created, you must designate the mailbox to Microsoft 365 formally. After you designate the Cortana Scheduler mailbox, it will be available to schedule meetings on behalf of your users.

### Connect to PowerShell

Use the Microsoft 365 admin center to create a user mailbox. A 30-day retention policy is recommended.
Use the name Cortana in your mailbox's primary SMTP address. Names such as `Cortana@yourdomain.com`, `CortanaScheduler@contoso.com`, or `Cortana.Scheduler@yourdomain.com` are recommended.

```PowerShell
$domain="yourdomain.com"
$tenantAdmin="<tenantadmin>@$domain"
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName $tenantAdmin
```

### Create the Scheduler Assistant Mailbox

```PowerShell
New-Mailbox -Name Cortana -Organization $domain -DisplayName "Cortana Scheduler" -Equipment 
Set-CalendarProcessing Cortana@$domain -DeleteNonCalendarItems $false 
```

### Designate the Scheduler Assistant Mailbox

```PowerShell
Set-mailbox cortana@$domain -SchedulerAssistant:$true
```

After running this "set" command on the Cortana Scheduler assistant mailbox, a new "PersistedCapability" is set on the mailbox to note that this mailbox is the "SchedulerAssistant".

> [!NOTE]
> To learn how to connect your organization to PowerShell, see: 
[Connect to Microsoft 365 with PowerShell](/microsoft-365/enterprise/connect-to-microsoft-365-powershell)

### Verifying the Scheduler assistant mailbox

To verify the Scheduler assistant mailbox has been created

```PowerShell
Get-CalendarProcessing cortana@$domain | fl DeleteNonCalendarItems
```

The result should be "false".

```PowerShell
Get-Mailbox -Identity cortana@$domain | fl *type*
```

The result should be

- ResourceType: Equipment
- Remote RecipientType: None
- RecipientType: UserMailbox
- RecipientTypeDetails: EquipmentMailbox

### To discover which mailbox is the Scheduler assistant mailbox

```PowerShell
Get-Mailbox -ResultSize Unlimited | where {$_.PersistedCapabilities -Match "SchedulerAssistant"}
```

> [!IMPORTANT]
> It might take several hours for the Scheduler assistant mailbox to complete full provisioning to set the SchedulerAssistant capability.

## Exchange Online mailbox

A Scheduler license is an add-on to Microsoft 365, which enables the meeting organizer to delegate their meeting scheduling tasks to their Scheduler assistant. In addition to designating a mailbox as a Scheduler assistant mailbox, meeting organizers will also need a Scheduler license and Exchange Online mailbox and calendar, typically through Microsoft 365 license for Scheduler to work. Meeting attendees do not need a Scheduler license or a Microsoft 365 license.

To purchase the Scheduler add-on, you require one of the following licenses:

- Microsoft 365 E3, A3, E5, A5
- Business Basic, Business, Business Standard, Business Premium
- Office 365 E1, A1, E3, A3, E5, A5
- Business Essentials, Business Premium
- Exchange Online Plan 1 or Plan 2 license.

> [!NOTE]
> Scheduler for Microsoft 365 is available in worldwide multi-tenant environments in English only. **Scheduler for Microsoft 365** isn't available to users of:
>
> - Microsoft 365 operated by 21Vianet in China
> - Microsoft 365 with German cloud that uses the data trustee German Telekom
> - Government cloud including GCC, Consumer, GCC High, or DoD
>
> Scheduler does support users in Germany whose data location is not the German datacenter.
