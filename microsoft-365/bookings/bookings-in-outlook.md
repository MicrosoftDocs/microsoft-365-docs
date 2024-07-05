---
title: "Turn on or off your Personal Booking page"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 06/05/2024
audience: Admin
ms.topic: how-to
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- essentials-overview
- essentials-get-started
- essentials-manage
- must-keep
description: "Steps to turn your Personal Bookings page on or off"
---

# Turn on or off your Personal Booking page

Bookings is a time management solution that provides a simple and powerful scheduling page with seamless integration with outlook. It lets people schedule a meeting or appointment with you through a booking page that integrates with the free/busy information from your Outlook calendar. You can create custom meeting types to share with others so they can easily schedule time with you based on your availability and preferences. You both get an email confirmation and attendees can update or cancel scheduled meetings with you from your Personal Bookings page.


Note that Bookings with me and Personal Bookings are terms used interchangeably.

Personal Bookings has two different views:

- **Organizer view**: An organizer is someone who creates meeting types and shares the booking page with others so that they can easily schedule meetings with them. A personal booking page is where you can create meeting types that others can book with you. You control whether each meeting type is public to your scheduling page or is private and can only be accessed by a select group of people. After you set up your personal booking page and publish it, you can share it with others. For example, you can add it to your Outlook signature.

- **Attendee view**: An attendee is someone who uses the booking page to create or attend a meeting scheduled by an organizer. After the organizer shares their personal booking page with others, those visitors will see the attendee view.

## When to use Personal Bookings

Personal Bookings is an ideal solution for enterprise, small business, and users in education to schedule 1:1 meetings with those outside and inside their organizations. Below are a few examples of how you can use Bookings with me.

- Schedule interviews with external candidates
- Set up customer and client meetings
- Schedule tech support
- Set up office/consultation hours
- Set up mentoring hours
- 1:1 meetings with direct reports
- Lunch and coffee breaks

## Before you begin

Personal Bookings can be turned on or off for your entire organization or for specific users. When you turn on Bookings for users, they can create a Bookings page, share their page with others, and allow other people to book time with them. This article is for owners and administrators who manage Personal Bookings for their organizations.

Personal Bookings is available in the following subscriptions:

- Office 365: A3, A5, E1, E3, E5, F1, F3
- Microsoft 365: A3, A5, E1, E3, E5, F1, F3, Business Basic, Business Standard, Business Premium
- Personal Bookings is available for G1, G3, G5
Personal Bookings is on by default for users with these subscriptions.

Personal Bookings needs the **Microsoft Bookings App (service plan)** assigned to users for them to be able to access Bookings. This service plan can be enabled/disabled by tenant admins. So, if **Microsoft Bookings** isn't assigned to them, Bookings access will be denied to users even if they are in one of the previously listed SKUs.

For more information, see the [Bookings with me Microsoft 365 Roadmap item](https://go.microsoft.com/fwlink/?linkid=328648).

### Prerequisites for using Personal Bookings

Personal Bookings and Bookings share the same licensing model. However, Bookings doesn't have to be turned on for the organization using tenant settings for users to access Personal Bookings. The Bookings app must be enabled for users to have access to Personal Bookings.

To turn on Personal Bookings without access to Bookings, block access to Microsoft Bookings using the [OWA Mailbox policy PowerShell command](/powershell/module/exchange/set-owamailboxpolicy) or follow the instructions here: [Turn Microsoft Bookings on or off](turn-bookings-on-or-off.md).

## Turn Personal Bookings on or off

Personal Bookings can be turned on or off for your entire organization or specific users. When Personal Bookings is turned on, users can create a Personal Bookings page and share links with others inside or outside your organization.

### Turn Personal Bookings on or off for your organization using PowerShell

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To turn Personal Bookings on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following commands.

Use the **Get-OrganizationConfig** and **Set-OrganizationConfig** commands to find out the status and turn Bookings with me on or off for your organization.

> [!NOTE]
> It usually takes about 4 hours for Set-OrganizationConfig commands to take effect for your users.

1. Check EWS control access by running the following command.

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsEnabled
   ```

    If the command returns "EwsEnabled: **$true**" then proceed to Step 2.

    If the command returns "EwsEnabled:" (empty is default), no further changes are needed, proceed to Step 2.

    If the command returns "EwsEnabled: **$false**" then run the following command and proceed to Step 2.
  
   ```PowerShell
   Set-OrganizationConfig -EwsEnabled: $true
   ```

1. Check your EwsApplicationAccessPolicy by running the following command:

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    **A**. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in **EwsAllowList** are allowed to access EWS and REST.

    - To turn off Personal Bookings for your organization, remove **MicrosoftOWSPersonalBookings**, if present, from **EwsAllowList** by running the following command:  

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceAllowList -EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    - To turn on Personal Bookings for your organization, you must set the **EwsApplicationAccessPolicy** to **EnforceAllowList** and add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:  

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceAllowList -EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    **B**. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList**, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.

    - To turn off Personal Bookings for your organization, add **MicrosoftOWSPersonalBookings** by running the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    - To turn on Personal Bookings if blocked, remove **MicrosoftOWSPersonalBookings** by running the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    **C**. If the value of **EwsApplicationAccessPolicy** is empty, all applications are allowed to access EWS and REST.

    - To turn off Personal Bookings for your organization set the **EnforceBlockList** policy and add **MicrosoftOWSPersonalBookings** to the blocklist by running the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```
  
    - If you want to revert the value of **EwsApplicationAccessPolicy** to empty to allow all applications to access EWS and REST, run the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy $null
      ```
  
  > [!NOTE]
  > The EwsApplicationAccessPolicy parameter defines which applications other than Entourage, Outlook, and Outlook for Mac can access EWS.

### Turn Personal Bookings off or on for individual users

Use the **Get-CASMailbox** and **Set-CASMailbox** commands to check user status and turn Bookings with me on or off for individual users in your organization.

1. Check the individual's EWS control access by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsEnabled
   ```

    **A**. If the command returns "**EwsEnabled: $true**", then proceed to Step 2.

1. Check the individual's **EwsApplicationAccessPolicy** by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    **A**. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in EwsAllowList are allowed to access EWS and REST.

    - To turn off Personal Bookings for this user, remove **MicrosoftOWSPersonalBookings**, if present from **EwsAllowList** by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    - Turn on Personal Bookings for this user, add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    **B**. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList**, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.  

    - To turn off Personal Bookings for this user, add **MicrosoftOWSPersonalBookings** to **EnforceBlockList** by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    - To turn on Personal Bookings for this user, remove **MicrosoftOWSPersonalBookings**, if present from EnforceBlockList by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    **C**. If the value of EwsApplicationAccessPolicy is empty, all applications are allowed to access EWS and REST.

    - To turn off Personal Bookings for this user, set the **EnforceBlockList** policy and add **MicrosoftOWSPersonalBookings** to EWSBlockList by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsApplicationAccessPolicy EnforceBlockList -EWSBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```

## Frequently asked questions

### What is the difference between Shared Bookings and Personal Bookings?

Personal Bookings integrates with your Outlook calendar and can only be used for 1:1 meetings. It is intended for scheduling meeting times with individual users. Shared Bookings is intended for managing scheduling for a group of people. Also, Personal Bookings won't create a new mailbox for each booking page. 

### Who can access my public Bookings page?

Public meeting types can be accessed by anyone that has your personal booking page link. You decide who you share your booking page with.

### What is the difference between public and private meeting types?

Meeting types can be public or private. Public meeting types are available to anyone that you share your Bookings page link with. Private meeting types are only available to people that you share the individual private meeting type with.  Private meeting types can also generate single use links. Single use links expire after their first booking.

### Do people need to have a Microsoft account or Bookings license to schedule time with me?

No. Anyone or any attendee can schedule time with you using your personal booking page, even if they don't have a Microsoft account. You, as an organizer, need a Bookings license to create a personal booking page.

## Privacy

### Where is personal bookings data stored?

All data is stored within the Microsoft 365 platform and in Exchange. Personal Bookings follows data storage policies set by Microsoft, which are the same policies that all apps in Microsoft 365 follow. All customer data (including information provided by attendees when booking) is captured in Bookings and is stored within Exchange. For more information, check out [Privacy: It's all about you](https://www.microsoft.com/trust-center/privacy).
