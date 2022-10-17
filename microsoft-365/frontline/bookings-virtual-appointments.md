---
title: Virtual appointments with Microsoft Teams and the Bookings app
author: lanachin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: article 
ms.service: microsoft-365-frontline 
search.appverid: 
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
  - Microsoft Cloud for Retail
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
  - microsoftcloud-healthcare
  - microsoftcloud-retail
  - m365solution-healthcare
  - m365solution-scenario
  - m365-frontline
  - highpri
  - EngageScoreSep2022
ms.reviewer: 
description: Learn how to schedule, manage, and conduct virtual appointments using the Bookings app in Teams.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Virtual appointments with Microsoft Teams and the Bookings app

## Overview

The [Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5) in Microsoft Teams gives organizations a simple way to schedule and manage virtual appointments for staff and attendees. Use it to schedule and manage appointments such as healthcare visits, financial consultations, interviews, customer support, virtual fittings and consultations, education office hours, and more.

The Bookings app makes it easy to manage complex scheduling demands of any organization. Schedulers can manage multiple department and staff calendars, as well as communications with internal and external attendees, from a single experience.

The virtual appointments are held through Microsoft Teams meetings, which offer robust video conferencing capabilities. For example, a doctor can share their screen and review test results with a patient. Or, a banking advisor can request electronic signatures on documents, allowing them to close transactions remotely.

Each scheduled virtual appointment includes a Teams meeting link that’s sent to attendees in email where they can easily join from a web browser or in Teams on any device. Automated email reminders help reduce no-shows and enhance customer and client engagement.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4TQop]

With Bookings, you get an experience that's tailored to your industry. Here's a few examples of how you can use it in your organization:

|Industry | Examples |
|---------|---------|
|Financial services    |  Virtual appointments for remote sales and service<br/>Schedule and manage appointments for bank relationship managers, financial advisors, and claims adjusters, just to name a few, to serve your customers with increased efficiency and convenience.  |
|Retail   | Virtual fittings and consultations <br/>Schedule and manage appointments for your sales associates, product experts, and design consultants to conduct virtual fittings and consultations with customers.   |
|Healthcare   |  Virtual appointments for patient care <br/>Schedule and manage appointments for your care team members to meet with patients or other healthcare providers to discuss medical care.   |

This article gives you an overview of how to schedule, manage, and conduct virtual appointments using the Bookings app in Teams.

## Before you get started

If you’re an admin, see [Manage the Bookings app in Teams](/microsoftteams/bookings-app-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json) to learn about the prerequisites for using the Bookings app in Teams, how to control access to Bookings in your organization, and recommended policy and admin settings.

Remember that only schedulers in your organization need to have the Bookings app installed in Teams. Staff that conduct or participate in virtual appointments don't need the app. They join appointments from their Teams or Outlook calendar or by using the meeting link in their booking confirmation email.

## Set up a new booking calendar

### Create the booking calendar

In Teams, go to **Bookings** > **Get started**, and then select **New booking calendar**. Complete the form and be sure to choose the relevant business type for your organization.

:::image type="content" source="media/bookings-virtual-visits-new-booking-calendar.png" alt-text="Screenshot of new booking calendar screen showing business types":::

If you’re a larger organization, consider creating more than one booking calendar if you want attendees to receive a booking email from a specific department rather than your overall organization.
To learn more, see [Create a Bookings calendar](https://support.microsoft.com//office/create-a-bookings-calendar-921cfd26-a24d-4aca-9004-561594112148).

> [!NOTE]
> If this isn't your first time in the Bookings app or if you want to work in an existing booking calendar, in Bookings, select the dropdown arrow next to your organization name, and then choose **Existing booking calendar**. From here, you can search for the one you want.

### Add staff

In the booking calendar, go to **More options** (...) > **Settings**, and then select **Staff**. Add staff members and assign a role to each person you add. You can add up to 100 staff members to a booking calendar.

The Bookings app integrates with Outlook. After you add staff, you’ll be able to view their calendar availability and schedule bookings for them. To learn more, see [Add staff and view a Bookings calendar](https://support.microsoft.com/office/add-staff-and-view-a-bookings-calendar-6c579f61-8adb-4514-9458-021de2023fa0).  

### Create appointment types

Create specific appointment types to represent the services offered by your organization and to tailor the booking experience. The appointment type can then be used to schedule appointments.

In the booking calendar, go to **More options** (...) > **Settings**, select **Appointment types**, and then select **Add appointment type**. Specify whether the service is for [**Scheduled**](#scheduled-appointment-types) or [**On-demand**](#on-demand-appointment-types) appointments.

To learn more, see [Create an appointment type](https://support.microsoft.com/office/create-an-appointment-type-810eac77-6a65-4dc8-964d-c00eadf43887).

#### Scheduled appointment types

Enter a name for the service. For example, Account opening, Prescription renewal, Loan consultation, Tax preparation.

Then, specify any other information and settings you want. Schedulers can use the appointment type to schedule an appointment. The information that you add is included in the email confirmation that's sent to attendees every time this type of appointment is booked.

You can configure options such as whether attendees can [join from a a desktop or mobile browser](browser-join.md) without having to download Teams, add an email reminder, set up SMS text notifications, and link forms.

##### Set up SMS text notifications

> [!NOTE]
> ADD promo and Premium messaging

Attendees need a valid United States, Canada, or United Kingdom phone number before they can receive SMS notifications.

To send SMS notifications to attendees by default, turn on **Send them text messages**. Attendees will receive confirmation and reminder text messages that include the Teams meeting link for the appointment. They can opt out of receiving the messages by replying STOP, or resume receiving them by replying START.

Keep in mind that schedulers can later choose to turn off the setting on an as-needed basis when they use the appointment type to schedule an appointment.

To learn more, see [Send text message notifications](https://support.microsoft.com/office/send-text-message-notifications-f4e6aa74-2ee9-4b12-9105-0e9271d4b244).

##### Using forms

If you're a Bookings admin, you can link up to four forms for attendees to fill out each time this appointment type is booked. For example, you may require attendees to complete a registration form before they join an appointment. To link a form, choose **Link a form**. Enter the URL of the form, and then choose **Link**. (If this is the first time that you're linking a form, you'll be prompted to create a Microsoft 365 group to store forms. Choose **Create group** to create the group. You only have to do this one time for the booking calendar.)

When working with forms, keep in mind that:

- To make changes to a form that's already linked to an appointment type, select the form in the appointment type or from within the Microsoft 365 group at [https://forms.office.com](https://forms.office.com).
- Uploading files to forms that contain a [file upload question](https://support.microsoft.com/office/add-questions-that-allow-for-file-uploads-6a75a658-c02b-450e-b119-d068f3cba4cf) is supported when all attendees are from the same organization.

When a scheduler uses the appointment type to schedule an appointment, they can then choose to include the form, remove it, or add any other forms that you linked to the appointment type. Attendees must fill out the form before they join the appointment.

> [!NOTE]
> If you're a healthcare provider, any information provided by you or patients in Teams (including the Forms app, Bookings app, meeting recordings if enabled by you, or any other Teams virtual appointments services) that's necessary for medical records continuity or retention purposes should be downloaded, copied, and/or notated directly in such records by you. This service does not maintain legal medical records or a designated record set.

#### On-demand appointment types

> [!NOTE]
> Add Premium messaging

Enter a name for the service. For example, Drop-in appointment, Account opening, Prescription renewal, Loan consultation, Tax preparation.

Your customers and clients can choose this appointment type on your booking page to request an on-demand appointment with your staff.

+++++++++++++++++++++++++++++++++

## Schedule an appointment

In the booking calendar, select **New booking**. Select a scheduled appointment type, and then fill out the relevant information.

This includes attendee contact information, the staff member who will be providing the service, internal notes that only staff can see, whether the attendee can join from a browser, email reminders, and whether to send SMS notifications. If a form is linked to the appointment type, you can choose to include it, remove it, or add any other linked forms.

The email confirmation sent to the attendee includes the meeting link and an attachment so that they can add the virtual appointment to their calendar. Staff also receive an email confirmation and meeting invite. If a form was included in the appointment, Bookings admins and schedulers can see whether the form was completed by the attendee before the appointment, and can view the attendee's response.

To learn more, see [Schedule a booking in the Teams Bookings app](https://support.microsoft.com/office/schedule-a-booking-in-the-teams-bookings-app-e275049d-0d0f-4161-8526-461a9f29439f).

## Conduct an appointment

In your Teams or Outlook calendar, go to the booking, and then select **Join** or the Teams meeting link. Check your audio and video settings, and then select **Join now**. To learn more, see [Conduct a Bookings appointment](https://support.microsoft.com/office/conduct-a-bookings-appointment-a86a4007-e26c-4909-9893-f7036e2747cd).

## Monitor appointments and get real-time status updates in the queue view

> [!NOTE]
> Add take-back/Premium (scheduled queue) and Premium (on-demand) messaging 

The queue view provides your staff with a dashboard to monitor all scheduled and on-demand virtual appointments for the day, with updates in real time. To see the queue, go to the **Queue** tab.

[NEED NEW SCREENSHOT]<br>
:::image type="content" source="media/bookings-virtual-visits-queue.png" alt-text="Screenshot of the queue view in the Bookings app in Teams" lightbox="media/bookings-virtual-visits-queue.png":::

From the queue, schedulers can add a new booking, view relevant appointment details, see appointment statuses throughout the day, send email reminders to assigned staff and attendees, and send SMS notifications to attendees.

When an attendee joins the waiting room, the status changes, and their wait time is displayed and tracked. The view automatically refreshes with color-coded updates so that changes can easily be identified.

Staff can even join and manage appointments directly from the queue.

To learn more, see [Queue view in Bookings](https://support.microsoft.com/office/queue-view-in-bookings-3eea2840-a1e0-4bcd-8e09-d3cf51c184d6)

> [!NOTE]
> Currently, the Bookings app supports adding up to 100 staff per booking calendar. If you used Graph APIs to set up and add staff to a booking calendar, this limit may not be enforced. In this scenario, the **Queue** tab won't be able to render content for calendars that have more than 100 staff. For an optimal experience, we recommend that you add no more than 100 staff to a booking calendar. We're working to resolve this limitation in future releases.

## Additional capabilities with the Bookings web app

The Bookings web app gives you additional capabilities. For example, you can publish a self-serve online booking page where people can schedule appointments with your staff. To access the Bookings web app, go to **More options** (...) > **Open Bookings web app**.

To learn more, see [Microsoft Bookings](/microsoft-365/bookings/bookings-overview).

## Get insight into virtual appointments usage

> [!NOTE]
> Update and add take-back and Premium messaging

The [Virtual Appointments usage report](virtual-visits-usage-report.md) in the Microsoft Teams admin center gives admins an overview of Teams virtual appointment activity in your organization. The report shows detailed analytics for virtual appointments including Bookings appointments.

You can view key metrics such as lobby wait time and appointment duration. Use this information to gain insight into usage trends to help you optimize virtual appointments to deliver better business outcomes.

## Related articles

- [Manage the join experience for Teams virtual appointments on browsers](browser-join.md)
- [Get started with Teams for healthcare organizations](teams-in-hc.md)
- [Bookings app in Teams help documentation](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5)
