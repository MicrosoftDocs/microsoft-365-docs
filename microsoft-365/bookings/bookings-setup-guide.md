---
title: "Setting up Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
description: "How to get Microsoft Bookings set up in your organization."
---


# Setting up Microsoft Bookings

This article describes how to get started with Microsoft Bookings and how to roll out Bookings in your organization.


## Create your Bookings page

Begin by creating a Bookings page for your organization.

1. Navigate to Microsoft Bookings
    
    :::image type="content" source="media/bookings-microsoft-365-apps.jpg" alt-text="Microsoft 365 apps page":::

2. Create a new Bookings calendar and fill out the business name and business category fields.
    
    - Business name: This is what your Bookings calendar will be titled. This can be your actual business name, the name of your business department, the high-level service you are providing, or another name that fits your scenario. For large enterprises, we recommend creating a Bookings calendar at the department level.
    
    - Business category: Select the category that best fits your business or organization.

    :::image type="content" source="media/bookings-create-new-calendar.jpg" alt-text="Creating a calendar in Microsoft Bookings":::

## Business information

1. On the Business Information page, fill out the following fields. The information you enter will appear on all confirmations and reminder emails.

    - Business name, Business address, Business phone
    - Web site URL, which will appear as a link in the footer of confirmations and reminder emails
    - Privacy policy URL, which is the location that the **Privacy Policy** link in the footer will point to
    - Terms and conditions URL, which is the location that the **Terms of Sale** link in the footer will point to
    - Business logo, which is an image that will appear in the header of confirmations and reminder emails

    The following image is an example confirmation after the above fields are filled out.

    :::image type="content" source="media/bookings-business -info.jpg" alt-text="Example of a Bookings confirmation":::

2.  **Currency type**. If your service has a set price, it will be shown in the currency you select on the main Self-Service page. If no services have prices, this field is not relevant.

3.  **Business hours**. The hours you set here are the only hours in which bookings can be made. Additional appointment time restrictions can be set for each service (on the Services page) and for each staff member (on the Staff page).

## Add staff to your Bookings page

Next, add staff from your Microsoft 365 tenant, or add staff external to your organization, to your Bookings page.

1.  Select the **Add Staff** button.
2.  When adding staff from within your tenant, type their name in the **Add people** field and select them when they appear in the drop-down menu. The other fields will automatically populate.

    Once a staff member is added, you can edit the name that appears on all Bookings communications by selecting the **x** next to their name and editing the **Add people** field. This can be useful if you would like staff members to have a specific title or name displayed for customers, such as listing Adele Vance as “Dr. Vance, MD.”

3.  To add staff from outside of your tenant, manually fill in their email and other information. 

    > [!NOTE]
    > Staff from outside your tenant will not be able to share free/busy information with Bookings..

4.  For each staff member, select a role: Administrator, Viewer, or Guest.
    - **Administrators** can edit all settings, add and remove staff, and create, edit, or delete bookings.
    - **Viewers** can see all the bookings on the calendar, but they can’t modify or delete them. They have read-only access to settings.
    - **Guests** can be assigned to bookings, but they can’t open the booking mailbox.

5.  Select **Notify all staff via email when a booking assigned to them is created or changed** to enable staff emails. The following is an example email:

    :::image type="content" source="media/bookings-notify-all-email.jpg" alt-text="A notification email from Bookings":::

6.  Select **Events on Office 365 calendar affect availability** if you want the free/busy information from staff members’ calendars to impact availability for bookings services through Bookings.
    
    For example, if a staff member has a team meeting or a personal appointment scheduled for 3pm on a Wednesday, Bookings will show that staff member as unavailable to be booked in that time slot. That time will appear as busy or tentative in the Bookings calendar view, as shown in the below example.

    :::image type="content" source="media/bookings-busy-tentative-view.jpg" alt-text="A view of a Bookings calendar":::

> [!IMPORTANT]
> We highly recommend leaving this setting on (it is turned on by default) to avoid double-bookings and to optimize the availability of your staff members.

7.  Select **Use business hours** to set all bookable times for your staff members to be only within the business hours you defined in the **Business hours** section on the Business Information page.

    By deselecting this box, staff can be given custom hours that further limit when they can be booked. This is helpful for scenarios where a staff member may only be on site Tuesdays and Wednesdays, or they dedicate their mornings for one type of appointments and their afternoons for other types.


## Define services and appointment types to be booked

Define the services that your organization provides, which customers will book through Bookings.

1.  Select the **Add a service** button.

2.  **Service name**: enter the name of your service. This is the name that will appear in the drop-down menu on the Calendar page. This name will also appear when anyone manually adds an appointment on the Calendar page, and it will appear as a tile on the Self-service page.

3.  **Description**: The description you enter is what will appear when a user clicks the information icon on the Self-service page.

4.  **Default location**: This location is what will be displayed on confirmation and reminder emails for both staff and customers, and it will be displayed on the calendar event created for the booking.

5.  **Add online meeting**: This setting enables or disables online meetings for each appointment, either via Teams or Skype, depending on which one you configure as the default client for the staff member.
    
    - Enabled:
        - A link to a Teams or Skype meeting, unique to the booking, will be added to the calendar event on both the staff's and the customers' calendars, along with dial-in information.
        - The link to join the meeting will be added to all confirmation and reminder emails, as shown in the following example:
        
        :::image type="content" source="media/bookings-teams-meeting-link.jpg" alt-text="Example of link to join Teams meeting in Bookings"::: 
        
        > [!NOTE]
        > Teams meetings can be joined via the Teams mobile app, the Teams desktop app, in a Web browser, or via the phone dial-in. We strongly recommend enabling Teams as the default online meeting service for your tenant, for the best experience booking virtual appointments.
    
    - Disabled: 
        - Appointments will not contain a meeting option, and all of the meeting-related fields that appear when **Add online meeting** is enabled will not be shown.

6.  **Default duration**: This is how long all meetings will be booked for. The time is blocked beginning from the start time, which is selected during booking. The full appointment time will be blocked on the staff's calendars.

7.  **Buffer time your customer can’t book**: Enabling this setting allows for the addition of extra time to the staff’s calendar every time an appointment is booked.
    
    The time will be blocked on the staff’s calendar and impact free/busy information. This means if an appointment ends at 3:00 pm and 10 minutes of buffer time has been added to the end of the meeting, the staff’s calendar will show as busy and non-bookable until 3:10pm. This can be useful if your staff needs time before a meeting to prepare, such as a doctor reviewing a patient’s chart, or a financial advisor preparing relevant account information. It can also be useful after a meeting, such as when someone needs time to travel to another location.

8.  **Let the customer manage their booking**: This setting determines whether or notthe customer can modify or cancel their booking, provided it was booked through the Calendar tab on the Bookings Web app.
    
    - Enabled: 
    
        The **Manage Booking** button appears on the customer confirmation email. When this button is selected by the customer, three options appear:
        - **Reschedule** Selecting this option brings the user to a service-specific self-service page, where they can select a new time and/or date for the same service and same staff member from the original booking. Note that even though the original staff member is attached to the rescheduled booking by default, the user does have the option of changing the staff member as well.
        - **Cancel booking** This cancels the booking and removes it from the staff's calendar.
        - **New booking** This option brings the user to the Self-Service page with all services and staff listed, for scheduling a new booking.

        :::image type="content" source="media/bookings-manage-booking-button.jpg" alt-text="The Manage Bookings button in Bookings":::

        We only recommend leaving this setting enabled if you are comfortable with customers accessing the Self-Service page.

    - Disabled:
    
        The user will have no ability to reschedule or cancel their booking when they book through the Calendar tab on the Bookings Web app. When booking through the Self-Service page, however, customers will still have the **Manage Booking** button and all of its options, even when this setting is disabled.
    
        We recommend disabling this setting if you want to limit access to the Self-Service page. Additionally, we suggest adding text to your confirmation and reminder emails that tells your customers how to make changes to their booking through other means, such as by calling the office or emailing the help desk.

9. **Maximum attendees per event** This setting allows you to create services that require the ability for multiple people to book the same appointment time and the same staff (such as a fitness class). The appointment time slot for the selected service, staff, and time will be available to book until the maximum number of attendees, specified by you, has been reached. Current appointment capacity and attendees can be viewed in the Calendar tab in the Bookings Web app.

:::image type="content" source="media/bookings-maximum-attendees.jpg" alt-text="Example of setting maximum attendees in Bookings":::

10. **Default price**  This is the price will display on the Self-Service page. If **Price not set** is selected, then no price or reference to cost or pricing will appear.

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

    - Text message notifications will look like this (Note: SMS notifications are currently only available in North America):
    
:::image type="content" source="media/bookings-text-notifications.jpg" alt-text="A text notification from Bookings":::

15. Publishing options – Choose whether or not to have this service appear as bookable on the Self-Service Page, or keep it to only bookable on the Calendar tab within the Bookings web app.

16. Scheduling Policy – Determine how appointment times are viewed and the time period in which bookings can be made or cancelled.

17. Email notifications – Determine when emails are sent to organization staff and customers.

19. Staff checkbox – Allow customers to choose a specific staff member for their appointment.
    
    14. Checked/selected – Customers can choose between all staff assigned to the apointment when booking on the Self-Service Page. “Anyone” can be chosen and an available staff member will be chosen at random and assigned the appointment.
    
    15. Unchecked/deselected – Customers booking via the Self-Service Page select a service and time/date, and the available staff will be booked at random. Specific staff can still be selected when booked through the Calendar tab in the Bookings web app.

20. Availability – Choose when the service can be booked
    
    16. Bookable when staff are free – Service maintains availability based on when staff are free within business hours, with no extra time restrictions.
    
    17. Custom hours (recurring weekly) – Service has an added layer of availability that can be further restricted (in addition to business hours or staff hours). This should be used when a service can only be done at a specific time.
    
    18. “+ Set different availability for a date range” – This impacts availability at a specific point in time, instead of a recurring basis. For example, this could be used when a machine that is needed for the service is temporarily being serviced and unavailable, or when an organization is closed for the holidays.

21. Assign Staff – Select which staff (that have been added to the Staff tab) will be bookable for that specific service. Selecting no staff will result in all staff being assigned to the service.

**<span class="underline">BOOKING PAGE – Self-Service Page</span>**

Page outside of the Bookings web app where appointments can be scheduled.

1.  Booking page status – Publish your calendar and make it live to be bookable. Options to share the link via email, Twitter, and even add as a “Book Now” button to a Facebook page. The link can also be embedded into your organization’s website. The Self-Service page looks like this:

> ![A screenshot of a cell phone
> Description automatically generated](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\bookings/media/image13.png)

2.  Booking page access control: Require an Office 365 account from my organization to book – Only allow those within your organization to view your page and book services. Access to the page is authorized via credential checks to ensure the visitor belongs to an account within the tenant.

3.  Booking page access control: Disable direct search engine indexing of booking page – Ensure your page is not shown in Google, Bing, or other search engine results. Deselecting this box will ensure access to the page is limited to the generated page link.

4.  Customer data usage consent – When this is selected, the text will appear on the Self-Service Page and must be checked by the user to complete the booking.

5.  Scheduling policy, Email notifications, and Staff – Similar settings to those that appear in each service on the Services tab.

6.  Availability – This defaults to business hours but can be changed for page-wide availability for bookings. Option to set specific date ranges for different availability, such as holidays or extended hours.

7.  Customize your page – Choose colors and logos that appear on the Self-Service Page for brand consistency.

8.  Region and time zone settings – Set the time zone and language preferences for what is displayed on the Self-Service Page. We recommend having these settings reflect the time zone in which your business operates. The Self-Service Page will automatically detect the visitor’s time zone and show availability in the native time zone without any extra work. For example, if an appointment is available at 1:00pm PST, someone in CST will see the available timeslot displayed as available at 3:00pm CST.

**<span class="underline">CALENDAR</span>**

A calendar view of all staff with respective free/busy and appointments that have been scheduled via Bookings. New appointments can be booked directly from this page.

1.  Create a new booking two different ways:
    
    1.  Select the “+ New booking” button on the top left of the page
        
        1.  Select the service you would like to book from the drop-down menu. These are the services that have been created in the Services tab.
        
        2.  Fill out customer information, choose a time for the service, and select an available staff member.
    
    2.  Click directly within the calendar
        
        3.  The time and staff member will auto-populate based on where the calendar was clicked but can be changed.
        
        4.  Fill out customer information and select the service from the drop-down menu in “Service details”
    
    3.  Note: All fields and settings will populate based on what was set as the default service experience in the Services page, but edits to these field can still be made in the booking window when creating a booking within the Calendar tab.

2.  View/edit an existing booking – Select the event from the calendar and click “Edit” or “Open Booking” in the top right corner of the event window.

3.  View calendar by day, work week, week, or month. Bookings are differentiated by staff member via color (as chosen in the Staff tab), and staff calendars can be view side-by-side in the “Day” view.

4.  Time off can be added directly to the calendar to easily block staff calendars and ensure they are not bookable specific days. This can be used for time off, vacation, sick days, etc.

5.  Agenda and calendar-view of the schedule can be printed using the Print button in the top ribbon.

**<span class="underline">CUSTOMERS</span>**

Those that book an appointment will have their information stored in this tab. Contact information and relevant notes can be added and edited here.

**<span class="underline">HOME</span>**

Easy navigation to tabs and sections within the Bookings web app. Data from bookings made can be exported here via a TSV file.
