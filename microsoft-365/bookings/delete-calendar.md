---
title: "Delete a booking calendar"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 06/18/2020
audience: Admin
ms.topic: article
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
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

   ![Image of Users UI in Microsoft 365 admin center.](../media/bookings-admin-center-users.png)

1. On the **Active Users** page, choose the name of the booking calendar that you want to delete and then select **Delete user**.

   ![Image of Delete User UI in Microsoft 365 admin center.](../media/bookings-delete-user.png)

## Delete a booking calendar using Exchange Online PowerShell

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Run the following command to get a list of the booking mailboxes in your tenant:

   ```powershell
   Get-EXOMailbox -RecipientTypeDetails SchedulingMailbox
   ```

3. Replace \<BookingCalendarToDelete\> with the exact name of the booking mailbox alias that you want to permanently delete, and then run the following command:

   ```powershell
   Remove-Mailbox -Identity <BookingCalendarToDelete>
   ```

   > [!IMPORTANT]
   > Be careful to type the exact name of the booking mailbox alias that you want to permanently delete.

4. To verify that the calendar has been deleted, run the following command:

   ```powershell
    Get-EXOMailbox -RecipientTypeDetails SchedulingMailbox
   ```

   The deleted calendar will not appear in the output.
