---
title: "Bookings in Outlook"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
ms.localizationpriority: medium
ROBOTS: NO INDEX, NO FOLLOW
description: "Use Bookings in Outlook to let others schedule meetings with you in Outlook."
---

# Bookings in Outlook

Bookings in Outlook lets people schedule a meeting or appointment with you. Bookings in Outlook is a web-based personal scheduling page and integrates with the free/busy information from your Outlook calendar. You can create custom meeting types to share with others so they can easily schedule time with you based on your availability and preferences. You both get an email confirmation and attendees can update or cancel scheduled meetings with you from your Bookings in Outlook page.

Bookings in Outlook has two different views:

- **Organizer view** A personal booking page where you can create meeting types that others can book with you. Custom meeting types give you the ability to customize when you want to meet and how that meeting type is shared with others. You control whether each meeting type is public to your scheduling page or is private and can only be accessed by a select group of people. You can also choose to add a Teams meeting to all meetings booked through your Bookings in Outlook page. You can access your Bookings in Outlook page through Outlook on the web or by going to [https://outlook.office.com/bookwithme/](https://outlook.office.com/bookwithme/). After you set up your page and publish it, you can share it with others. For example, you can add it to your Outlook signature.

- **Scheduling view** When you share your Bookings in Outlook page with others, they will see the scheduling view. Which meetings are shown in the scheduling view depends on if you shared the link to your Bookings in Outlook page with public meetings or you shared a private link for an individual meeting.
    - Public meetings can be viewed and scheduled by anyone that has your Bookings in Outlook page link. You are in control of who you share that link with. All public meeting types will be visible to anyone that has your Bookings in Outlook page link.
    - Private meetings can only be viewed by people who have the link for that meeting type. The difference between public meetings and private meetings is private meetings can have different links and the links expire after 90 days. You can also set private links to expire after a one-time booking. When accessing the scheduling view for a private meeting, only that meeting type will be visible.

## Before you begin

Bookings in Outlook is available in the following subscriptions:

- Office 365: A3, A5, E1, E3, E5, F1, F3
- Microsoft 365: A3, A5, E1, E3, E5, F1, F3, Business Basic, Business Standard, Business Premium

Bookings in Outlook is on by default for users with these subscriptions.

For more information, see [Outlook in Bookings Roadmap item](https://go.microsoft.com/fwlink/?linkid=328648).

## Turn Bookings in Outlook on or off  

Bookings in Outlook can be turned on or off for your entire organization or specific users. When Bookings in Outlook is turned on, users can create a Bookings in Outlook page and share links with others inside or outside your organization.

### Turn Bookings in Outlook on or off for your organization using PowerShell

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To turn Bookings in Outlook on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following commands

> [!NOTE]
> It usually takes about 30 to 60 minutes for Set-OrganizationConfig commands to take effect for your users.

1. Check EWS control access by running the following command.

   ```PowerShell
   Get-Organizationconfig | Format-List EwsEnabled
   ```

If the command returns “EwsEnabled: **$true** then proceed to Step 2.

If the command returns “EwsEnabled: **empty** then enable and proceed to Step 2.

   ```PowerShell
   Set-OrganizationConfig -EwsEnabled: $true
   ```

2. Check your EwsApplicationAccessPolicy by running the following command:

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    A. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in EwsAllowList are allowed to access EWS and REST.

    - To turn off Bookings in Outlook for your organization, remove **MicrosoftOWSPersonalBookings**, if present from **EwsAllowList** by running the following command:  

   ```PowerShell
   Set-OrganizationConfig - EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

    - To turn on Bookings in Outlook for your organization, add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:  

   ```PowerShell
   Set-OrganizationConfig - EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    B. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList** or empty, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.  

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsApplicationAccessPolicy,Ews*List -EwsApplicationAccessPolicy  EnforceBlockList
   ```

    - To turn off Bookings in Outlook for your organization, add **MicrosoftOWSPersonalBookings** by running the following command:

   ```PowerShell
   Set-OrganizationConfig -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    - To turn on Bookings in Outlook if blocked, remove **MicrosoftOWSPersonalBookings** by running the following command:

   ```PowerShell
   Set-OrganizationConfig -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

### Turn Bookings in Outlook off or on for individual users

1. Check individual’s EwsApplicationAccessPolicy by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsEnabled
   ```

    A. If the command returns **EwsEnabled: $true**, then proceed to Step 2.

2. Check the individual’s **EwsApplicationAccessPolicy** by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com| Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    A. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in EwsAllowList are allowed to access EWS and REST.

    - To turn off Bookings in Outlook for this user, remove **MicrosoftOWSPersonalBookings**, if present from **EwsAllowList** by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com - EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
   ```

    - Turn on Bookings in Outlook for this user, add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com - EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    B. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList** or empty, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.  

    - To turn off Bookings in Outlook for this user, add **MicrosoftOWSPersonalBookings** to **EnforceBlockList** by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsApplicationAccessPolicy  EnforceBlockList @{Add="MicrosoftOWSPersonalBookings"}
   ```

    - To turn on Bookings in Outlook for this user, remove **MicrosoftOWSPersonalBookings**, if present from EnforceBlockList by running the following command:

   ```PowerShell
   Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
   ```
