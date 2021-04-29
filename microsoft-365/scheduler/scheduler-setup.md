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
|Exchange Online Mailbox |Users must have an Exchange Online mail and calendar         |
|Scheduler License |For licensing information see here: <need this link>        |
|Mailbox for Cortana |Your tenant admin needs to set up a “Cortana” mailbox for their company. For example:Cortana@yourdomain.com           |

## Create a mailbox for Cortana
An Exchange mailbox in your tenant will serve as the Cortana mailbox for your tenant to send and receive emails to and from Cortana. All emails sent to Cortana are retained in your tenant’s Cortana mailbox based on your retention policy.

Use the Microsoft 365 admin center to create a new mailbox. A 30-day retention policy is recommended. Use the name Cortana in your mailbox’s primary SMTP address. Names such as “Cortana@yourdomain.com,’ ‘CortanaScheduler@contoso.com,’ or ‘Cortana.Scheduler@yourdomain.com’ are recommended.

> [!IMPORTANT]
> You must contact Microsoft to configure your Cortana mailbox to use the Scheduler service by emailing scheduler_m365@microsoft.com. Enabling your Cortana mailbox may take up to two weeks.

## Supported
Exchange online only
**Requires**: Microsoft 365 E3, A3, E5, A5, Business Basic, Business, Business Standard, Business Premium, Office 365 E1, A1, E3, A3, E5, A5, Business Essentials, Business Premium, or Exchange Online Plan 1 or Plan 2 license.

## Not supported
Government Cloud and Office365 operated by 21Vianet (China)
