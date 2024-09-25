---
title: "Turn on or off Shared Bookings for organization"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 07/30/2024
audience: Admin
ms.topic: how-to
ms.service: bookings
ms.custom: admindeeplinkMAC
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- essentials-manage
description: "Turn on or off Shared Bookings for organization"
---

# Turn on or off Shared Bookings for organization

Shared Bookings can be turned on or off for your entire organization or for specific users. When you turn on Shared Bookings for users, they can create a shared booking page, create a calendar, and allow other people to book time with them. This article is for owners and administrators who manage shared bookings for their organizations.

> [!NOTE]
> The admin controls described in these sections aren't available for Microsoft 365 Operated by 21Vianet (China) customers.

## Turn Shared Bookings on or off for your organization using the Microsoft 365 admin center

1. Sign in to the Microsoft 365 admin center as a global admin.

2. In the admin center, go to **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Org settings**</a>.

3. Select Shared Bookings and choose the checkbox for **Allow your organization to use Bookings** to turn on or turn off Shared Bookings for your organization.

   > [!NOTE]
   > Turning off Shared Bookings will disable all access to the service including creation and management of Bookings pages.

4. Select **Save Changes**.

### Turn Shared Bookings on or off for your organization using PowerShell

To turn Shared Bookings on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

```PowerShell
Set-OrganizationConfig -BookingsEnabled $false
```

### Turn Shared Bookings on or off for individual users

You can disable shared bookings for individual users. This section discusses removing licenses for individual users.

1. Go to the Microsoft 365 admin center, then select **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.

1. Select the desired user, then select **Licenses and Apps**.

1. Expand **Apps** and clear the checkbox for Microsoft Bookings.

## Allow only selected users to create shared booking pages

By using policy restrictions, you can restrict licensed users from being able to create shared booking pages. All users in your organization will have shared bookings licenses, but only those included in the policy can create shared booking pages and have full control over who can access the shared booking pages they create.

Users who are included in this policy can create new shared booking pages and can be added as staff in any capacity (including the administrator role) to existing shared booking pages. Users who aren't included in this policy won't be able to create new shared booking pages and will receive an error message if they try to do so.

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

> [!IMPORTANT]
> The steps below assume that no other Outlook Web App (OWA) mailbox policies have been created in your organization.

1. Create a new mailbox policy for users that should be allowed to create shared booking pages. (Shared booking pages creation is allowed by default by new mailbox policies.)

   ```PowerShell
   New-OwaMailboxPolicy -Name "BookingsCreators"
   ```

   For more information, see [New-OwaMailboxPolicy](/powershell/module/exchange/new-owamailboxpolicy).

2. Assign this policy to the relevant users by running this command for each user you want to grant permission to create Bookings calendars.

   ```PowerShell
   Set-CASMailbox -Identity <someCreator@emailaddress> -OwaMailboxPolicy "BookingsCreators"
   ```

   For more information, see [Set-CASMailbox](/powershell/module/exchange/set-casmailbox).

3. Optional: Run this command if you want to disable creation of shared booking pages for all other users in your organization.

   ```PowerShell
   Set-OwaMailboxPolicy "OwaMailboxPolicy-Default" -BookingsMailboxCreationEnabled:$false
   ```

   For more information, see [Set-OwaMailboxPolicy](/powershell/module/exchange/set-owamailboxpolicy).

For more information on OWA mailbox policies, check out the following articles:

- [Create an Outlook on the web mailbox policy in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)

- [Apply or remove an Outlook on the web mailbox policy on a mailbox in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)
