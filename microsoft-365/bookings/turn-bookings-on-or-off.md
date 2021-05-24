---
title: "Turn Microsoft Bookings on or off"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: 5382dc07-aaa5-45c9-8767-502333b214ce
description: "Learn how to get access to Microsoft Bookings in Microsoft 365."
---

# Turn Microsoft Bookings on or off

Bookings can be turned on or off for your entire organization or for specific users. When you turn on Bookings for users, they can create a Bookings page, create a calendar, and allow other people to book time with them.

> [!NOTE]
> The admin controls described in these sections are not available for Office 365 Operated by 21Vianet (China) customers.

## Turn Bookings on or off for your organization using the Microsoft 365 admin center

1. Sign in to the Microsoft 365 admin center as a global admin.

2. In the admin center, go to **Settings** \> **Org Settings** and select **Bookings**.

3. Select the checkbox for **Allow your organization to use Bookings** to enable or disable Bookings for your organization.

   > [!NOTE]
   > Turning off Bookings will disable all access to the service including creation and management of Bookings pages.

4. Select **Save Changes**.

## Turn Bookings on or off for your organization using PowerShell

To turn Bookings on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

```PowerShell
   Set-OrganizationConfig -BookingsEnabled $false
```

### Turn Bookings on or off for individual users

You can disable Bookings for individual users.

1. Go to the Microsoft 365 admin center, then select **Users** \> **Active users**.

1. Select the desired user, then select **Licenses and Apps**.

1. Expand **Apps** and clear the checkbox for Microsoft Bookings.

## Require staff approvals before sharing free/busy information

Admins can require employees in their organization to opt-in before their availability information is shared through Bookings and before they can be bookable through a booking page. This setting is available in the Microsoft 365 admin center under **Settings** \> **Settings** \> **Bookings**.

When this setting is enabled, employees added as staff in booking calendars will find an Approve/Reject link in the email notification they receive.

This feature is gradually rolling out world wide to Microsoft 365 customers. If you don't see this option in the Microsoft 365 admin center, check back soon.

## Block social sharing options

Admins can control how booking pages are shared on social networks. This setting is available in the Microsoft 365 admin center under **Settings** \> **Settings** \> **Bookings**.

This feature is gradually rolling out world wide to Microsoft 365 customers. If you don't see this option in the Microsoft 365 admin center, check back soon.

## Allow only selected users to create Bookings calendars

By using policy restrictions, you can restrict licensed users from being able to create Bookings calendars. You must first enable Bookings for your entire organization. All users in you organization will have Bookings licenses, but only those included in the policy can create Bookings calendars and have full control over who can access the calendars they create.

Users who are included in this policy can create new Bookings calendars and can be added as staff in any capacity (including the administrator role) to existing Bookings calendars. Users who aren't included in this policy won't be able to create new Bookings calendars and will receive an error message if they try to do so.

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

> [!IMPORTANT]
> The steps below assume that no other Outlook Web App (OWA) mailbox policies have been created in your organization.

1. Create a new mailbox policy for users that should be allowed to create Bookings calendars. (Bookings calendar creation is allowed by default by new mailbox policies.)

   ```PowerShell
   New-OwaMailboxPolicy -Name "BookingsCreators"
   ```

   For more information, see [New-OwaMailboxPolicy](/powershell/module/exchange/new-owamailboxpolicy).

2. Assign this policy to the relevant users by running this command for each user you want to grant permission to create Bookings calendars.

   ```PowerShell
   Set-CASMailbox -Identity <someCreator@emailaddress> -OwaMailboxPolicy "BookingsCreators"
   ```

   For more information, see [Set-CASMailbox](/powershell/module/exchange/set-casmailbox).

3. Optional: Run this command if you want to disable Bookings for all other users in your organization.

   ```PowerShell
   Set-OwaMailboxPolicy "OwaMailboxPolicy-Default" -BookingsMailboxCreationEnabled:$false
   ```

   For more information, see [Set-OwaMailboxPolicy](/powershell/module/exchange/set-owamailboxpolicy).

For more information on OWA mailbox policies, check out the following topics:

- [Create an Outlook on the web mailbox policy in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)

- [Apply or remove an Outlook on the web mailbox policy on a mailbox in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)