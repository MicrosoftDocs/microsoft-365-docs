---
title: "Turn Microsoft Bookings on or off"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 08/04/2020
audience: Admin
ms.topic: article
ms.service: bookings
ms.custom: admindeeplinkMAC
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
ms.assetid: 5382dc07-aaa5-45c9-8767-502333b214ce
description: "Learn how to get access to Microsoft Bookings in Microsoft 365."
---

# Turn Microsoft Bookings on or off

Bookings can be turned on or off for your entire organization or for specific users. When you turn on Bookings for users, they can create a Bookings page, create a calendar, and allow other people to book time with them. This article is for owners and administrators who manage Bookings for their organizations.

> [!NOTE]
> The admin controls described in these sections are not available for Office 365 Operated by 21Vianet (China) customers.

## Turn Bookings on or off for your organization using the Microsoft 365 admin center

1. Sign in to the Microsoft 365 admin center as a global admin.

2. In the admin center, go to **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Org settings**</a>.

3. Select the checkbox for **Allow your organization to use Bookings** to enable or disable Bookings for your organization.

   > [!NOTE]
   > Turning off Bookings will disable all access to the service including creation and management of Bookings pages.

4. Select **Save Changes**.

### Turn Bookings on or off for your organization using PowerShell

To turn Bookings on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

```PowerShell
   Set-OrganizationConfig -BookingsEnabled $false
```

### Granular controls

Use the settings below to control who can use Bookings, decide on what Bookings information is shared, whether staff need approval before they can be added to a Booking calendar, and enforce naming policy.

:::image type="content" source="../media/bookings-granular-controls.png" alt-text="Screenshot of settings that allow you to control who can use Bookings, decide what Bookings info is shared, staff approval, and naming policy.":::

### Block bookings from outside your organization

You can set up Bookings so only people in your organization can book appointments. Only users in your organization who have signed in and are authenticated can book appointments.

### Block social sharing options

You can control how booking pages are shared on social networks. This setting is available in the Microsoft 365 admin center under **Settings** -> **Org settings** -> **Bookings**.

### Block sharing staff details with customers

Staff details, such as contact information, will never be sent to customers via email or any other communication.

### Require staff approvals before sharing free/busy information

You can require employees in your organization to opt-in before their availability information is shared through Bookings and before they can be bookable through a booking page.

When this setting is enabled, people added as staff in booking calendars will get an email with a link to **Approve/Reject** the request.

### Enforce naming policy for Bookings calendar alias

You can enforce a naming policy in your organization for all calendars. When this setting is enabled, administrators can define Prefix and Suffix. If selected, these rules will be enforced across all calendars.

:::image type="content" source="../media/bookings-enforce-naming.png" alt-text="Screenshot that shows enabling the naming policy to define a Prefix and Suffix for all calendars in your organization.":::

- **Add Custom Prefix**: When this setting is enabled, all new calendars will have the string you defined added as a prefix (for example: "Prfx_ContosoCalendar").
- **Add Custom Suffix**: When this setting is enabled, all new calendars will have the strings you defined added as a suffix (for example: "ContosoCalendar_Sufx").

The screenshot below suggests how the Prefix/Suffix will be enforced while creating a new calendar.

:::image type="content" source="../media/bookings-naming-prefix.png" alt-text="Screenshot of the prefix naming policy enabled for all calendars in Bookings.":::

> [!NOTE]
> The enforcement will not impact Bookings calendars that have already been created unless the business information of these calendars is modified.
> These policies will not impact SMTP addresses of existing calendars. SMTP addresses will not be updated or changed once created.

## Restrict collection of customer data

For compliance reasons, you may not want to collect some customer information. If you select a checkbox for any of these options, these fields won't be included on any forms shown to your clients or customers.

:::image type="content" source="../media/restrict-collection-customer-data.png" alt-text="Screenshot: Select the checkboxes to help prevent customers from sharing sensitive data with you":::

### Turn Bookings on or off for individual users

You can disable Bookings for individual users.

1. Go to the Microsoft 365 admin center, then select **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.

1. Select the desired user, then select **Licenses and Apps**.

1. Expand **Apps** and clear the checkbox for Microsoft Bookings.

## Allow only selected users to create Bookings calendars

By using policy restrictions, you can restrict licensed users from being able to create Bookings calendars. All users in your organization will have Bookings licenses, but only those included in the policy can create Bookings calendars and have full control over who can access the calendars they create.

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

For more information on OWA mailbox policies, check out the following articles:

- [Create an Outlook on the web mailbox policy in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)

- [Apply or remove an Outlook on the web mailbox policy on a mailbox in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)
