---
title: "Delete a booking calendar"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: 8c3a913c-2247-4519-894d-b6263eeb9920
description: "Use the Microsoft 365 admin center or Windows PowerShell to delete Bookings calendars."
---

# Delete a booking calendar in Bookings

This article explains how you can delete an unwanted booking calendar. You can delete the booking calendar in the Microsoft 365 admin center or you can use PowerShell. The Bookings calendar is a mailbox in Exchange Online so you delete the corresponding user account to delete the booking calendar.

> [!IMPORTANT]
> All booking calendars that you created in 2017 or before must be deleted using the PowerShell instructions on this topic. All booking calendars created in 2018 or after can be deleted in the Microsoft 365 admin center.

The booking calendar is where all relevant information about that booking calendar and data are stored, including:

- Business information, logo, and working hours added when the booking calendar was created
- Relevant staff and services added when the booking calendar was created
- All bookings and time off appointments added to the booking calendar once it was created.

> [!WARNING]
> Once a booking calendar is deleted, this additional information is also permanently deleted and can't be recovered.

## Delete a booking calendar in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center.

1. In the Admin center, select **Users**.

   ![Image of Users UI in Microsoft 365 admin center](../media/bookings-admin-center-users.png)

1. On the **Active Users** page, choose the names of the users that you want to delete, and then select **Delete user**.

   ![Image of Delete User UI in Microsoft 365 admin center](../media/bookings-delete-user.png)

## Delete a booking calendar using Exchange Online PowerShell

See [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell-v2?view=exchange-ps) for prerequisites and guidance for connecting to Exchange Online PowerShell.

To perform these steps, you must be using an active Microsoft PowerShell command window that you ran by choosing the “Run as administrator” option.

1. Enter the following command:

   ```PowerShell
    $user = get-credential
   ```

1. When you are prompted, log on with tenant administrator credentials to the Microsoft 365 tenant that hosts the booking calendar you want to permanently delete.

1. At the PowerShell command prompt, enter this command:

   ```PowerShell
    $s = New-Pssession -ConnectionUri https://outlook.office365.com/powershell-liveid -Credential $user -Authentication basic -AllowRedirection -ConfigurationName Microsoft.Exchange
   ```

1. Enter the following command:

   ```PowerShell
    Import-PSSession $s
   ```

1. Once this command is done processing, enter the following command to get a list of the booking mailboxes in your tenant:

   ```PowerShell
    get-mailbox -RecipientTypeDetails Scheduling
   ```

1. Type the following command:

   ```PowerShell
   remove-mailbox [BookingCalendarToDelete]
   ```

   > [!IMPORTANT]
   > Be careful to type the exact name of the booking mailbox alias that you want to permanently delete.

1. To verify that the calendar has been deleted, enter the following command:

   ```PowerShell
    get-mailbox -RecipientTypeDetails Scheduling
   ```

   The deleted calendar will not appear in the output.
