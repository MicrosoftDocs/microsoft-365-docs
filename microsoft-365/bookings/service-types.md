---  
title: "How to create personalized and group services in Microsoft Bookings"  
ms.author: camillepack
author: pritikar
manager: scotv
ms.date: 07/11/2024  
ms.topic: article
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- scotvorg
ms.custom: QuickDraft  
ms.reviewer: kwekua  
search.appverid: MET150  
description: "Learn how to create 1:N and N:N services in Microsoft 365 Business Basic using Microsoft Bookings." 
---

# Creating personalized and group services in Microsoft Bookings

Microsoft Bookings is a powerful scheduling tool in Microsoft 365 Business Basic that allows you to create and manage online appointments for your customers. Depending on your business needs, you might want to offer services that involve multiple staff members and customers. In this article, we'll guide you through the process of creating personalized (1:N) and group (N:N) services in Microsoft Bookings.

## Service types in Microsoft Bookings

- **1:1 service** One staff member meets with one customer (default service type).
- **1:N service** One staff member meets with multiple customers at the same time.
- **N:N service** Multiple staff members meet with multiple customers at the same time.

>[!NOTE]
> To create a service, you must be added as an administrator (staff role). For more information, see [Understanding staff roles](staff-roles.md).

## Creating a 1:N Service

1. On the Bookings page, select **Services** from the left-hand menu.
2. Select **Add a service**.
3. In the **Maximum number of attendees** field, set the desired number of customers who can join the appointment. The default value is 1, which creates a 1:1 service.
4. Go to the **Assign staff** tab and select the radio button **Assign any of your selected staff for an appointment**. This ensures that only one staff member is assigned per booking, even if multiple staff members are available for the service.

## Creating a N:N Service

You can select the maximum number of attendees for a service. This decides the number of customers who can join the appointment. Once this step is complete, the service type (multi customer or single) can't be edited further. The default value of **Maximum number of attendees** is set as 1. This means, by default, Microsoft Bookings creates a 1:1 service.

:::image type="content" source="media/booking-basic-details.png" alt-text="Screenshot showing the maximum number of attendees selected for a service." lightbox="media/booking-basic-details.png":::

To create a N:N service, follow these steps:

1. On the Bookings page, select **Services** from the left-hand menu.
2. Select **Add a service**.
3. In the **Maximum number of attendees** field, set the desired number of customers who can join the appointment.
4. Go to the **Assign staff** tab and select the radio button **Assign all of your selected staff for an appointment**. This ensures that all selected staff members are assigned to the appointment.
5. Complete the rest of the service details, such as name, description, location, duration, price, and availability, then select **Save**.

Your new service will now be visible on your Services list and Booking page. Customers can book the service according to the staff and customer capacity you have set. You can also edit or delete the service at any time.
