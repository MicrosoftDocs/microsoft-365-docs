---
title: "Define your Bookings service offerings"
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
ms.assetid: 4a1c391e-524f-48e0-bef8-185df3a9634b
description: "Instructions for entering service offerings information, including service name, description, location, duration, and pricing. You can also tag the employees who are qualified to provide the service."
---

# Define your service offerings in Bookings

When you define your service offerings in Microsoft Bookings, you set a service name, description, location (choose whether you want to meet in person or have an online meeting), duration, default reminders to customers and staff, internal notes about the service, and pricing. You can also tag the employees who are qualified to provide the service. Then, when customers come to your business web site to book an appointment, they can see exactly what types of appointments are available, choose the person they want to provide the service, and how much their service will cost.

You can also add customized information and URLs to the email confirmation and reminders that you send when someone books a service through your booking page.

## Watch: Create a new service

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWuKXH]

## Steps

1. In Microsoft 365, select the App launcher, and then select **Bookings**.

2. Go to **Your calendar** > **Services** and select **Add new service**.

3. On the **Basic details** page, add your selections.

   **Service name**: enter the name of your service. This is the name that will appear in the drop-down menu on the Calendar page. This name will also appear when anyone manually adds an appointment on the Calendar page, and it will appear as a tile on the Self-service page.

   **Description**: The description you enter is what will appear when a user selects the information icon on the Self-service page.

   **Default location**: This location is what will be displayed on confirmation and reminder emails for both staff and customers, and it will be displayed on the calendar event created for the booking.

   **Add online meeting**: This setting enables or disables online meetings for each appointment, either via Teams or Skype, depending on which one you configure as the default client for the staff member.

   - Enabled:
     - A link to a Teams or Skype meeting, unique to the booking, will be added to the calendar event on both the staff's and the customers' calendars, along with dial-in information.
     - The link to join the meeting will be added to all confirmation and reminder emails, as shown in the following example:

       :::image type="content" source="media/bookings-teams-meeting-link.jpg" alt-text="Example of link to join Teams meeting in Bookings.":::

       > [!NOTE]
       > Teams meetings can be joined via the Teams mobile app, the Teams desktop app, in a Web browser, or via the phone dial-in. We strongly recommend enabling Teams as the default online meeting service for your tenant, for the best experience booking virtual appointments.

   - Disabled:
     - Appointments will not contain a meeting option, and all of the meeting-related fields that appear when **Add online meeting** is enabled will not be shown.

   **Duration**: This is how long all meetings will be booked for. The time is blocked beginning from the start time, which is selected during booking. The full appointment time will be blocked on the staff's calendars.

   **Buffer time**: Enabling this setting allows for the addition of extra time to the staff’s calendar every time an appointment is booked.

   The time will be blocked on the staff’s calendar and impact free/busy information. This means if an appointment ends at 3:00 pm and 10 minutes of buffer time has been added to the end of the meeting, the staff’s calendar will show as busy and non-bookable until 3:10pm. This can be useful if your staff needs time before a meeting to prepare, such as a doctor reviewing a patient’s chart, or a financial advisor preparing relevant account information. It can also be useful after a meeting, such as when someone needs time to travel to another location.

   **Price not set**: Select the price options that will display on the Self-Service page. If **Price not set** is selected, then no price or reference to cost or pricing will appear.

   **Notes**: This field appears in the booking event for booked staff, and on the event that appears on the Calendar tab in the Bookings web app.

   **Maximum attendees per event**: This setting allows you to create services that require the ability for multiple people to book the same appointment time and the same staff (such as a fitness class). The appointment time slot for the selected service, staff, and time will be available to book until the maximum number of attendees, specified by you, has been reached. Current appointment capacity and attendees can be viewed in the Calendar tab in the Bookings Web app. We refer to this as 1:N booking service.

   :::image type="content" source="media/bookings-maximum-attendees.jpg" alt-text="Example of setting maximum attendees in Bookings":::

   **Let the customer manage their booking**: This setting determines whether or not the customer can modify or cancel their booking, provided it was booked through the Calendar tab on the Bookings Web app.

   - Enabled:

     The **Manage Booking** button appears on the customer confirmation email. When this button is selected by the customer, three options appear:

     - **Reschedule** Selecting this option brings the user to a service-specific Self-Service page, where they can select a new time and/or date for the same service and same staff member from the original booking. Note that even though the original staff member is attached to the rescheduled booking by default, the user does have the option of changing the staff member as well.
     - **Cancel booking** This cancels the booking and removes it from the staff's calendar.
     - **New booking** This option brings the user to the Self-Service page with all services and staff listed, for scheduling a new booking.

        :::image type="content" source="media/bookings-manage-booking-button.jpg" alt-text="The Manage Bookings button in Bookings.":::

      We only recommend leaving this setting enabled if you're comfortable with customers accessing the Self-Service page.

   - Disabled:

     The user will have no ability to reschedule or cancel their booking when they book through the Calendar tab on the Bookings Web app. When booking through the Self-Service page, however, customers will still have the **Manage Booking** button and all of its options, even when this setting is disabled.

     We recommend disabling this setting if you want to limit access to the Self-Service page. Additionally, we suggest adding text to your confirmation and reminder emails that tells your customers how to make changes to their booking through other means, such as by calling the office or emailing the help desk.

4. On the **Availability options** page, you can see the options you've selected from your **Booking page** for your scheduling policy and availability for your staff. For more information, see [Set your scheduling policies](set-scheduling-policies.md).

5. On the revamped **Assign staff** page, you can smoothly assign and remove assigned staff members from a service. There are two more controls added on this page:

    - **Single staff** When this option is selected, the booking will be scheduled with a single staff member.
    - **Multiple staff** This feature allows you to create a service with multiple staff members. The booking will be scheduled with all of the assigned staff members of the service. You can refer to this service as N:1 booking service.

> [!NOTE]
> For Multiple staff, you can only create a booking when all assigned staff members are available to attend.

6. **Custom fields** can be useful when collecting information that is needed every time the specific appointment is booked. Examples include insurance provider prior to a clinic visit, loan type for loan consultations, major of study for academic advising, or applicant ID for candidate interviews. These fields will appear on the Booking page when your customers book appointments with you and your staff.

    - Customer email, phone number, address, and notes are non-removable fields, but you can make them optional by deselecting **Required** beside each field.

7. On the **Notifications** page, you can send SMS messages, set up reminders, and send notifications.

    - **Enable text message notifications for your customer** If selected, SMS messages are sent to the customer, but only if they opt in.
    - **Reminders and notifications** are sent out to customers, staff members, or both, at a specified time before the appointment. Multiple messages can be created for each appointment, according to your preference.

   :::image type="content" source="media/bookings-remind-confirm-2.png" alt-text="A confirmation email from Bookings.":::

   You can include any additional text you would like here, such as information about rescheduling or what customers should bring for the appointment. The following is an example of customized text added to the original confirmation email, seen in the **Additional information for Email Confirmation** field:

   :::image type="content" source="media/bookings-additional-info.jpg" alt-text="Additional information in a Bookings email." lightbox="media/bookings-additional-info.jpg":::
  
  Opt-in box on the manual booking and Self-Service Page:

:::image type="content" source="media/bookings-opt-In-boc.jpg" alt-text="The opt-in box in Bookings.":::

  Text message notifications will look like the following (note that SMS notifications are currently only available in North America):

:::image type="content" source="media/bookings-text-notifications.jpg" alt-text="A text notification from Bookings":::

8. There are two more controls available to ease your Service creation journey:
    - **Default scheduling options** is on by default. Turn the toggle off if you want to customize how customers book a particular staff member.
    - **Publishing options** Choose whether to have this service appear as bookable on the Self-Service page, or to make the service bookable only on the Calendar tab within the Bookings Web app.
