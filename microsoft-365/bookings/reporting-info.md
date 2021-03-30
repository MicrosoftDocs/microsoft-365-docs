---
title: "Reporting information for Microsoft Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: 03a9acc9-f29c-456b-9fb2-0f49474b2708
description: "Learn how you can see a 4 month view of your Bookings activity"
---

# Reporting info for Bookings

You can now see a 4-month view of your Bookings calendar in a TSV file. This appointment level information can be used to visualize the customer activity around your Bookings calendar. TSV files are tab separated value files. You can view or edit a file like this with any text editor or spreadsheet program, such as Excel.

## See 4 months of Booking activity

1. On the Bookings calendar dashboard, select **Export more data as TSV**.

:::image type="content" source="../media/bookings-activity.png" alt-text="Screenshot: 30 days Booking activities":::

1. Save the file with a new name, and specify .xls or xlsx format.

1. Open the file to see the 4 month view of your Bookings calendar.

1. Choose the date for your report and select **Export**.

1. The downloaded report contains a new set of fields in addition to the existing fields.

The TSV report includes the following fields.

 - **Date & Time**
- **Customer Name**
- **Customer Email**
- **Customer Phone**
- **Customer Address**
- **Staff**
- **Service**
- **Location**
- **Duration (minutes)**
- **Event Type**

The improved report now contains the following additional fields.

- **Pricing Type**   Default pricing type set for a service when creating the service.
- **Price**   Price corresponding to the pricing type chosen.
- **Currency**   Currency type set for a business.
- **Cc Attendees**   The recipients who will be receiving the email notifications for a booking. This can be specified from the Teams app when creating a booking.
- **Signed Up Attendees Count**   How many customers booked a group booking service. This will be always be one for a single booking service.
- **Text Notifications Enabled**   Whether customers can receive SMS text related notifications.
- **Custom Fields**   All the questions and answers related to a single booking are combined in this field.
- **Booking Id**   To uniquely identify a booking. This is helpful to identify the same bookings of a group service.
