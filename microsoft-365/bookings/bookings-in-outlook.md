---
title: "Bookings with me"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
ms.localizationpriority: medium
ROBOTS: NO INDEX, NO FOLLOW
description: "Use Bookings with me to let others schedule meetings with you in Outlook."
---

# Bookings with me

**Bookings with me** in Outlook is a web-based personal scheduling page that integrates with the free/busy information from your Outlook calendar. Bookings with me lets people schedule a meeting or appointment with you. You can create custom meeting types to share with others so they can easily schedule time with you based on your availability and preferences. You both get an email confirmation and attendees can update or cancel scheduled meetings with you from your Bookings with me page.

> [!NOTE]
> Bookings with me is available worldwide in preview. Features included in preview might not be complete and could undergo changes before becoming available in the public release.

Bookings with me has two different views:

- **Organizer view** A personal booking page where you can create meeting types that others can book with you. Custom meeting types give you the ability to customize when you want to meet and how that meeting type is shared with others. You control whether each meeting type is public to your scheduling page or is private and can only be accessed by a select group of people. You can also choose to add a Teams meeting to all meetings booked through your Bookings with me page. You can access your Bookings with me page through Outlook on the web. After you set up your page and publish it, you can share it with others. For example, you can add it to your Outlook signature.

- **Attendee view** When you share your Bookings with me page with others, they will see the attendee view. If the organizer has shared their Bookings with me page link with you, you'll be able to see all of their public meeting types. If the organizer has shared a meeting link, you'll only be able to view that meeting.
  - Public meetings can be viewed and scheduled by anyone that has your Bookings with me page link. You are in control of who you share that link with. All public meeting types will be visible to anyone that has your Bookings with me page link.
  - Private meetings can only be viewed by people who have the link for that meeting type. The difference between public meetings and private meetings is private meetings can have different links and the links expire after 90 days. You can also set private links to expire after a one-time booking. When accessing the scheduling view for a private meeting, only that meeting type will be visible.

## When to use Bookings with me

Bookings with me is an ideal solution for enterprise, small business, and users in education to schedule 1:1 meetings with those outside and inside their organizations. Below are a few examples of how you can use Bookings with me.

- Schedule interviews with external candidates
- Set up customer and client meetings
- Schedule tech support
- Set up office hours
- Set up mentoring hours
- 1:1 meetings with direct reports
- Lunch and coffee breaks

## Before you begin

Bookings with me can be turned on or off for your entire organization or for specific users. When you turn on Bookings for users, they can create a Bookings page, share their page with others, and allow other people to book time with them. This article is for owners and administrators who manage Bookings with me for their organizations.

Bookings with me is available in the following subscriptions:

- Office 365: A3, A5, E1, E3, E5, F1, F3
- Microsoft 365: A3, A5, E1, E3, E5, F1, F3, Business Basic, Business Standard, Business Premium

Bookings with me is on by default for users with these subscriptions.

Bookings with me needs the **Microsoft Bookings App (service plan)** assigned to users for them to be able to access Bookings. This service plan can be enabled/disabled by tenant admins. So, if **Microsoft Bookings** is not assigned to them, Bookings access will be denied to users even if they are in one of the previously listed SKUs.

For more information, see the [Bookings with me Microsoft 365 Roadmap item](https://go.microsoft.com/fwlink/?linkid=328648).

### Prerequisites for using Bookings with me

1. Bookings with me and Bookings share the same licensing model. However, Bookings doesn't have to be turned on for the organization using tenant settings for users to access Bookings with me. The Bookings app must be enabled for users to have access to Bookings with me.

   To turn on Bookings with me without access to Bookings, block access to Microsoft Bookings using the [OWA Mailbox policy PowerShell command](/powershell/module/exchange/set-owamailboxpolicy?view=exchange-ps) or follow the instructions here: [Turn Microsoft Bookings on or off](turn-bookings-on-or-off.md).

2. Calendar FreeBusy Anonymous sharing must be enabled to use Bookings with me. This allows the Bookings page to have access to the free/busy information in your Outlook calendar. Use PowerShell to check the status.

   ```PowerShell
     Get-SharingPolicy -Identity "Default Sharing Policy" | fl Domains 
   ```

    "Anonymous:CalendarSharingFreeBusySimple": Share free/busy hours only.
    "Anonymous:CalendarSharingFreeBusyDetail": Share free/busy hours, subject and location.
    "Anonymous:CalendarSharingFreeBusyReviewer": Share free/busy hours, subject, location and the body of the message or calendar item.
    "Anonymous:ContactsSharing": Share contacts only.
    
   You should have one of the above domains in the response.

   To enable anonymous sharing, use the following command or alter **Add** section with the domain that you would like to add.

   ```PowerShell
     Set-SharingPolicy "Default Sharing Policy" -Domains @{Add="Anonymous:CalendarSharingFreeBusyReviewer"}
   ```

## Turn Bookings with me on or off

Bookings with me can be turned on or off for your entire organization or specific users. When Bookings with me is turned on, users can create a Bookings with me page and share links with others inside or outside your organization.

### Turn Bookings with me on or off for your organization using PowerShell

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To turn Bookings with me on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following commands.

Use the **Get-OrganizationConfig** and **Set-OrganizationConfig** commands to find out the status and turn Bookings with me on or off for your organization.

> [!NOTE]
> It usually takes about 30 to 60 minutes for Set-OrganizationConfig commands to take effect for your users.

1. Check EWS control access by running the following command.

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsEnabled
   ```

    If the command returns “EwsEnabled: **$true**" then proceed to Step 2.

    If the command returns “EwsEnabled:" (empty is default), then enable and proceed to Step 2.

   ```PowerShell
   Set-OrganizationConfig -EwsEnabled: $true
   ```

2. Check your EwsApplicationAccessPolicy by running the following command:

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    **A**. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in **EwsAllowList** are allowed to access EWS and REST.

    - To turn off Bookings with me for your organization, remove **MicrosoftOWSPersonalBookings**, if present, from **EwsAllowList** by running the following command:  

   ```PowerShell
   Set-OrganizationConfig -EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

    - To turn on Bookings with me for your organization, add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:  

   ```PowerShell
   Set-OrganizationConfig -EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    **B**. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList**, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.

    - To turn off Bookings with me for your organization, add **MicrosoftOWSPersonalBookings** by running the following command:

   ```PowerShell
   Set-OrganizationConfig -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    - To turn on Bookings with me if blocked, remove **MicrosoftOWSPersonalBookings** by running the following command:

   ```PowerShell
   Set-OrganizationConfig -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

    **C**. If the value of **EwsApplicationAccessPolicy** is empty, all applications are allowed to access EWS and REST.

    - To turn off Bookings with me for your organization set the **EnforceBlockList** policy and add **MicrosoftOWSPersonalBookings** to the block list by running the following command:

   ```PowerShell
   Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
   ```
   
  > [!NOTE]
  > The EwsApplicationAccessPolicy parameter defines which applications other than Entourage, Outlook, and Outlook for Mac can access EWS.

### Turn Bookings with me off or on for individual users

Use the **Get-CASMailbox** and **Set-CASMailbox** commands to check user status and turn Bookings with me on or off for individual users in your organization.

1. Check the individual’s EWS control access by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsEnabled
   ```

    **A**. If the command returns "**EwsEnabled: $true**", then proceed to Step 2.

2. Check the individual’s **EwsApplicationAccessPolicy** by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    **A**. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in EwsAllowList are allowed to access EWS and REST.

    - To turn off Bookings with me for this user, remove **MicrosoftOWSPersonalBookings**, if present from **EwsAllowList** by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

    - Turn on Bookings with me for this user, add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    **B**. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList**, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.  

    - To turn off Bookings with me for this user, add **MicrosoftOWSPersonalBookings** to **EnforceBlockList** by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    - To turn on Bookings with me for this user, remove **MicrosoftOWSPersonalBookings**, if present from EnforceBlockList by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

    **C**. If the value of EwsApplicationAccessPolicy is empty, all applications are allowed to access EWS and REST.

    - To turn off Bookings with me for this user, set the **EnforceBlockList** policy and add **MicrosoftOWSPersonalBookings** to EWSBlockList by running the following command:

    ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsApplicationAccessPolicy EnforceBlockList -EWSBlockList @{Add="MicrosoftOWSPersonalBookings"}
   ```

## Frequently asked questions

### What is the difference between Bookings and Bookings with me?

Bookings with me integrates with your Outlook calendar and can only be used for 1:1 meetings. Bookings with me is intended for scheduling meeting times with individual users. Bookings is intended for managing scheduling for a group of people.

Also, Bookings with me won't create a new mailbox for each Bookings with me page.

### Why is Bookings with me in preview?

Bookings with me is in preview for all enterprise users worldwide. We're collecting feedback and making improvement while it is being integrated into scheduling experiences in Bookings and Outlook.  

### Who can access my public Bookings page?

Public meeting types can be accessed by anyone that has your Bookings with me page address. You decide who you share your Bookings with me page address with.

### What is the difference between public and private meeting types?

Meeting types can be public or private. Public meeting types are available to anyone that you share your Bookings page link with. Private meeting types are only available to people that you share the individual private meeting type with.  

Private meeting types can also generate single use links. Single use links expire after their first booking.

### Do people need to have a Microsoft account or Bookings license to schedule time with me?

No. Anyone can schedule time with you using your Bookings with me page, even if they don’t have a Microsoft account. You need a Bookings license to create a Bookings with me page.

## Privacy

### Where is Bookings with me data stored?

Bookings with me is a feature of Outlook powered by Bookings. All data is stored within the Microsoft 365 platform and in Exchange. Bookings with me follows data storage policies set by Microsoft, which are the same policies that all Office apps follow. All customer data (including information provided by attendees when booking) is captured in Bookings and is stored within Exchange. For more information, check out [Privacy: It's all about you](https://www.microsoft.com/en-us/trust-center/privacy).
