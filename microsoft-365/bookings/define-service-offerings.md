---
title: "Define your service offerings in Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: 4a1c391e-524f-48e0-bef8-185df3a9634b
description: "Instructions for entering service offerings information, including service name, description, location, duration, and pricing. You can also tag the employees who are qualified to provide the service."
---

# Define your service offerings in Bookings

When you define your service offerings in Microsoft Bookings, you set, a service name, description, location (choose whether you want to meet in person or have an online meeting), duration, default reminders to customers and staff, internal notes about the service, and pricing. You can also tag the employees who are qualified to provide the service. Then, when customers come to your business web site to book an appointment, they can see exactly what types of appointments are available, choose the person they want to provide the service, and how much their service will cost.

You can also add customized information and URLs to the email confirmation and reminders that you send when someone books a service through your booking page.

## Create the service details

1. Go to the [Manage services page](https://outlook.office.com/bookings/services) and select **Add a service**.

2. **Service name**: enter the name of your service. This is the name that will appear in the drop-down menu on the Calendar page. This name will also appear when anyone manually adds an appointment on the Calendar page, and it will appear as a tile on the Self-service page.

3. **Description**: The description you enter is what will appear when a user clicks the information icon on the Self-service page.

4. **Default location**: This location is what will be displayed on confirmation and reminder emails for both staff and customers, and it will be displayed on the calendar event created for the booking.

5. **Add online meeting**: This setting enables or disables online meetings for each appointment, either via Teams or Skype, depending on which one you configure as the default client for the staff member.

    - Enabled:

        - A link to a Teams or Skype meeting, unique to the booking, will be added to the calendar event on both the staff's and the customers' calendars, along with dial-in information.
        - The link to join the meeting will be added to all confirmation and reminder emails, as shown in the following example:

        :::image type="content" source="media/bookings-teams-meeting-link.jpg" alt-text="Example of link to join Teams meeting in Bookings":::

        > [!NOTE]
        > Teams meetings can be joined via the Teams mobile app, the Teams desktop app, in a Web browser, or via the phone dial-in. We strongly recommend enabling Teams as the default online meeting service for your tenant, for the best experience booking virtual appointments.

    - Disabled:
        - Appointments will not contain a meeting option, and all of the meeting-related fields that appear when **Add online meeting** is enabled will not be shown.

6. **Default duration**: This is how long all meetings will be booked for. The time is blocked beginning from the start time, which is selected during booking. The full appointment time will be blocked on the staff's calendars.

7. **Buffer time your customer can’t book**: Enabling this setting allows for the addition of extra time to the staff’s calendar every time an appointment is booked.

    The time will be blocked on the staff’s calendar and impact free/busy information. This means if an appointment ends at 3:00 pm and 10 minutes of buffer time has been added to the end of the meeting, the staff’s calendar will show as busy and non-bookable until 3:10pm. This can be useful if your staff needs time before a meeting to prepare, such as a doctor reviewing a patient’s chart, or a financial advisor preparing relevant account information. It can also be useful after a meeting, such as when someone needs time to travel to another location.

8. **Let the customer manage their booking**: This setting determines whether or notthe customer can modify or cancel their booking, provided it was booked through the Calendar tab on the Bookings Web app.

    - Enabled:

        The **Manage Booking** button appears on the customer confirmation email. When this button is selected by the customer, three options appear:
        - **Reschedule** Selecting this option brings the user to a service-specific Self-Service page, where they can select a new time and/or date for the same service and same staff member from the original booking. Note that even though the original staff member is attached to the rescheduled booking by default, the user does have the option of changing the staff member as well.
        - **Cancel booking** This cancels the booking and removes it from the staff's calendar.
        - **New booking** This option brings the user to the Self-Service page with all services and staff listed, for scheduling a new booking.

        :::image type="content" source="media/bookings-manage-booking-button.jpg" alt-text="The Manage Bookings button in Bookings":::

        We only recommend leaving this setting enabled if you are comfortable with customers accessing the Self-Service page.

    - Disabled:

        The user will have no ability to reschedule or cancel their booking when they book through the Calendar tab on the Bookings Web app. When booking through the Self-Service page, however, customers will still have the **Manage Booking** button and all of its options, even when this setting is disabled.

        We recommend disabling this setting if you want to limit access to the Self-Service page. Additionally, we suggest adding text to your confirmation and reminder emails that tells your customers how to make changes to their booking through other means, such as by calling the office or emailing the help desk.

9. **Maximum attendees per event** This setting allows you to create services that require the ability for multiple people to book the same appointment time and the same staff (such as a fitness class). The appointment time slot for the selected service, staff, and time will be available to book until the maximum number of attendees, specified by you, has been reached. Current appointment capacity and attendees can be viewed in the Calendar tab in the Bookings Web app.

    :::image type="content" source="media/bookings-maximum-attendees.jpg" alt-text="Example of setting maximum attendees in Bookings":::

10. **Default price**  This is the price that will display on the Self-Service page. If **Price not set** is selected, then no price or reference to cost or pricing will appear.

11. **Notes** This field appears in the booking event for booked staff, as well as on the event that appears on the Calendar tab in the Bookings web app.

12. **Custom Fields** This section allows questions to be added, or removed, if the customer needs to answer any in order to successfully book.

    - Customer email, phone number, address, and notes are non-removable fields, but you can make them optional by deselecting **Required** beside each field.

    - You can add a multiple choice or text-response question by selecting **Add a question**.

        Custom fields can be useful when collecting information that is needed every time the specific appointment is booked. Examples include insurance provider prior to a clinic visit, loan type for loan consultations, major of study for academic advising, or applicant ID for candidate interviews.

13. **Reminders and Confirmations** Both types of emails are sent out to customers, staff members, or both, at a specified time period before the appointment. Multiple messages can be created for each appointment, according to your preference.

    - The default confirmation and reminder emails include basic information about the appointment, such as the customer/client name, staff member's name, the service or appointment booked, and the time of the appointment. For online meetings, a link to join will also be included. The ability to manage the booking can also be included, if this setting is enabled (as described above in step 8).

        :::image type="content" source="media/bookings-remind-confirm.jpg" alt-text="A confirmation email from Bookings":::

    - Optionally, you can include any additional text you would like here, such as information about rescheduling or what customers should bring for the appointment. The following is an example of customized text added to the original confirmation email, seen in the **Additional information for Email Confirmation** field:

        :::image type="content" source="media/bookings-additional-info.jpg" alt-text="Additional information in a Bookings email":::

14. **Enable text message notifications for your customer** If selected, SMS messages are sent to the customer, but only if they opt-in.

    - Opt-in box on the manual booking and Self-Service Page:

        :::image type="content" source="media/bookings-opt-In-boc.jpg" alt-text="The opt-in box in Bookings":::

    - Text message notifications will look like the following (note that SMS notifications are currently only available in North America):

        :::image type="content" source="media/bookings-text-notifications.jpg" alt-text="A text notification from Bookings":::

15. **Publishing options** Choose whether to have this service appear as bookable on the Self-Service page, or to make the service bookable only on the Calendar tab within the Bookings Web app.

16. **Scheduling Policy** This setting determines how appointment times are viewed, and the time period in which bookings can be made or cancelled.

17. **Email notifications** Sets when emails are sent to organization staff and to customers or clients.

18. **Staff** Selecting this checkbox allows customers or clients to choose a specific staff member for their appointment.

    - Enabled:

        Customers can choose from all staff assigned to the appointment when booking on the Self-Service page. Selecting the option of **Anyone** will make Bookings choose an available staff member at random to assign to the appointment.

    - Disabled:

        Customers booking via the Self-Service page can select a service and a time and date. The available staff will be booked at random. Note that specific staff can still be selected when booked through the Calendar tab in the Bookings Web app.

19. **Availability** The following options determine when the service can be booked:

    - **Bookable when staff are free** The service maintains availability based on when staff are free within business hours, with no extra time restrictions.

    - **Custom hours (recurring weekly)** The service has an added layer of availability that can be further restricted (in addition to restricting by business hours or with staff hours). Use this option when your service can only be provided or performed at a specific time.

    - **Set different availability for a date range** This setting impacts availability at a specific point in time, instead of a recurring basis. For example, this could be used when a machine that is needed for the service is temporarily being serviced and unavailable, or when an organization is closed for a holiday.

20. **Assign Staff** Select the staff (provided you have added staff members to the Staff tab) who will be bookable for that specific service. Selecting no individual staff will result in all staff being assigned to the service.