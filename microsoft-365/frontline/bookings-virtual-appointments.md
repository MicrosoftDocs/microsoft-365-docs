---
title: Virtual Appointments with Microsoft Teams and the Bookings app
author: lanachin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: conceptual
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
  - m365initiative-meetings
ms.reviewer: 
description: Learn how to schedule, manage, and conduct virtual appointments using the Bookings app in Teams.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/05/2022
---

# Virtual Appointments with Microsoft Teams and the Bookings app

![Information icon](media/info.png) **Some features described in this article require [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview)**.

## Overview

The [Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5) in Microsoft Teams gives organizations a simple way to schedule and manage virtual appointments for staff and attendees. Use it to schedule and manage appointments such as healthcare visits, financial consultations, interviews, customer support, virtual fittings and consultations, education office hours, and more. You can also publish an online booking page for your clients, customers, and patients to book appointments with your staff.

The Bookings app makes it easy to manage complex scheduling demands of any organization. Schedulers can manage multiple department and staff calendars, as well as communications with internal and external attendees, from a single experience.

The virtual appointments are held through Microsoft Teams meetings, which offer robust video conferencing capabilities. For example, a doctor can share their screen and review test results with a patient. Or, a banking advisor can request electronic signatures on documents, allowing them to close transactions remotely.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4TQop]

With Bookings, you get an experience that's tailored to your industry. Here's a few examples of how you can use it in your organization:

|Industry|Examples|
|---------|---------|
|Financial services|Virtual appointments for remote sales and service<br/>Schedule and manage appointments for bank relationship managers, financial advisors, and claims adjusters, just to name a few, to serve your customers with increased efficiency and convenience.|
|Retail|Virtual fittings and consultations <br/>Schedule and manage appointments for your sales associates, product experts, and design consultants to conduct virtual fittings and consultations with customers.|
|Healthcare|Virtual appointments for patient care <br/>Schedule and manage appointments for your care team members to meet with patients or other healthcare providers to discuss medical care.|

With any Microsoft 365 license, you can use basic Virtual Appointments capabilities that make it easy to schedule and join business-to-customer meetings. For example, attendees can wait in a pre-appointment waiting room and join through a browser without having to download Teams. With [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview), your organization gets advanced Virtual Appointments capabilities on top of Bookings to manage and personalize the experience. These include a queue view of scheduled and on-demand appointments, SMS notifications, custom waiting rooms, and analytics.

This article gives you an overview of how to schedule, manage, and conduct virtual appointments using the Bookings app in Teams.

## Before you get started

If you’re an admin, see [Manage the Bookings app in Teams](/microsoftteams/bookings-app-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json) to learn about the prerequisites for using the Bookings app in Teams, how to control access to Bookings in your organization, and recommended policy and admin settings.

## Set up a new booking calendar

You must be a Bookings admin to set up and manage booking calendar settings.

### Create the booking calendar

In Teams, go to **Bookings** > **Get started**, and then select **New booking calendar**. Complete the form and be sure to choose the relevant business type for your organization.

:::image type="content" source="media/bookings-virtual-appointments-new-booking-calendar.png" alt-text="Screenshot of a new booking calendar screen showing business types." lightbox="media/bookings-virtual-appointments-new-booking-calendar.png":::

If you’re a larger organization, consider creating separate booking calendars for specific departments within your organization. To learn more, see [Create a Bookings calendar](https://support.microsoft.com//office/create-a-bookings-calendar-921cfd26-a24d-4aca-9004-561594112148).

> [!NOTE]
> If this isn't your first time in the Bookings app or if you want to work in an existing booking calendar, in Bookings, select the dropdown arrow next to your organization name, and then choose **Existing booking calendar**. From here, you can search for the one you want.

### Add staff

In the booking calendar, go to **More options** (...) > **Settings**, and then select **Staff**. Add staff members and assign a role to each person you add. You can add up to 100 staff members to a booking calendar.

The Bookings app integrates with Outlook. After you add staff, you’ll be able to view their calendar availability and schedule bookings for them. To learn more, see [Add staff and view a Bookings calendar](https://support.microsoft.com/office/add-staff-and-view-a-bookings-calendar-6c579f61-8adb-4514-9458-021de2023fa0).  

### Create appointment types

Create specific appointment types to represent the services offered by your organization and to tailor the booking experience. The appointment type can then be used to book appointments.

In the booking calendar, go to **More options** (**...**) > **Settings**, select **Appointment types**, and then select **Add appointment type**. Specify whether the service is for [Scheduled](#scheduled-appointment-type) or [On-demand](#on-demand-appointment-type) appointments.

To learn more, see [Create an appointment type](https://support.microsoft.com/office/create-an-appointment-type-810eac77-6a65-4dc8-964d-c00eadf43887).

#### Scheduled appointment type

Enter a name for the service. For example, Account opening, Prescription renewal, Loan consultation, Tax preparation.

Specify any other information and settings you want. Schedulers can then use the appointment type to schedule an appointment. The information that you add is included in the email confirmation that's sent to attendees every time this type of appointment is booked.

You can configure options such as whether attendees can [join from a a desktop or mobile browser](browser-join.md) without having to download Teams, add an email reminder, [set up SMS text notifications](#set-up-sms-text-notifications), and [link forms](#link-forms).

##### Set up SMS text notifications

![Information icon](media/info.png) **This feature is moving to [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview). Users can continue using this feature during the preview period. After the preview, users need a Teams Premium license.**

Attendees need a valid United States, Canada, or United Kingdom phone number before they can receive SMS notifications.

To send SMS notifications to attendees by default, turn on **Send them text messages**. Attendees will receive confirmation and reminder text messages that include the Teams meeting link and scheduled appointment details. They can opt out of receiving the messages by replying STOP, or resume receiving them by replying START.

Keep in mind that schedulers can later choose to turn off the setting on an as-needed basis when they use the appointment type to schedule an appointment.

To learn more, see [Send text message notifications](https://support.microsoft.com/office/send-text-message-notifications-f4e6aa74-2ee9-4b12-9105-0e9271d4b244).

##### Link forms

You can link up to four forms for attendees to fill out each time this scheduled appointment type is booked. For example, you may require attendees to complete a registration form before they join an appointment. To link a form, choose **Link a form**. Enter the URL of the form, and then choose **Link**. (If this is the first time that you're linking a form, you'll be prompted to create a Microsoft 365 group to store forms. Choose **Create group** to create the group. You only have to do this one time for the booking calendar.)

When working with forms, keep in mind that:

- To make changes to a form that's already linked to an appointment type, select the form in the appointment type or from within the Microsoft 365 group at [https://forms.office.com](https://forms.office.com).
- Uploading files to forms that contain a [file upload question](https://support.microsoft.com/office/add-questions-that-allow-for-file-uploads-6a75a658-c02b-450e-b119-d068f3cba4cf) is supported when all attendees are from the same organization.

When a scheduler uses the appointment type to schedule an appointment, they can then choose to include the form, remove it, or add any other forms that you linked to the appointment type. Attendees must fill out the form before they join the appointment.

> [!NOTE]
> If you're a healthcare provider, any information provided by you or patients in Teams (including the Forms app, Bookings app, meeting recordings if enabled by you, or any other Teams virtual appointments services) that's necessary for medical records continuity or retention purposes should be downloaded, copied, and/or notated directly in such records by you. This service does not maintain legal medical records or a designated record set.

#### On-demand appointment type

![Information icon](media/info.png) **To access this feature during the preview period, users need a Teams Premium trial license.**

Enter a name for the service. For example, Drop-in appointment, Account opening, Prescription renewal, Loan consultation, Tax preparation.

Your customers, clients, and patients can then choose the appointment type on your booking page to request an on-demand appointment with your staff.

## Publish a booking page

![Information icon](media/info.png) **To access the on-demand scheduling feature during the preview period, users need a Teams Premium trial license.**

Booking admins can publish an online booking page where people can book scheduled and on-demand appointments with your staff.

1. In the booking calendar, go to **More options** (**...**) > **Settings**, and then select **Booking page**.
2. Turn on **Publish booking page**.
    :::image type="content" source="media/bookings-virtual-appointments-booking-page-settings.png" alt-text="Screenshot of booking page settings." lightbox="media/bookings-virtual-appointments-booking-page-settings.png":::
3. To enable people to request on-demand appointments on your booking page, turn on **Show option for On-demand scheduling**.

You can customize and manage your booking page settings in the Bookings web app. To learn more, see [Customize and publish your booking page](/microsoft-365/bookings/customize-booking-page).

## Book an appointment

### Scheduled appointments

Schedulers use scheduled appointment types to book appointments for your staff and attendees. In the booking calendar, select **New booking**. Choose a scheduled appointment type, and then fill out the relevant information.

This includes attendee contact information, the staff member who will be providing the service, internal notes that only staff can see, whether the attendee can join from a browser, email reminders, and whether to send SMS notifications. If a form is linked to the appointment type, you can choose to include it, remove it, or add any other linked forms.

Each scheduled appointment includes a Teams meeting link that’s sent to attendees in email where they can easily join from a web browser (if enabled for the appointment) or in Teams on any device. The email confirmation also includes an attachment so they can add the appointment to their calendar. Staff also receive an email confirmation and meeting invite. 

If a form was included in the appointment, Bookings admins and schedulers can see whether the form was completed by the attendee before the appointment, and can view the attendee's response.

To learn more, see [Schedule a booking in the Teams Bookings app](https://support.microsoft.com/office/schedule-a-booking-in-the-teams-bookings-app-e275049d-0d0f-4161-8526-461a9f29439f).

### On-demand appointments

Your customers, clients, and patients can go to your online booking page to request an appointment with your staff.

## Conduct an appointment

For scheduled appointments, do one of the following:

- In your Teams or Outlook calendar, go to the booking, and then select **Join** or the Teams meeting link.  
- In Bookings, go to the **Queue** tab, and then under **Scheduled**, select **Join** next to the appointment.

For on-demand appointments, in Bookings, go to the **Queue** tab, and then under **On-demand**, select **Join** next to the appointment.

To learn more, see [Conduct a Bookings appointment](https://support.microsoft.com/office/conduct-a-bookings-appointment-a86a4007-e26c-4909-9893-f7036e2747cd).

## Monitor appointments and get real-time status updates in the queue view

![Information icon](media/info.png) **The scheduled queue view is moving to [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview). Users can continue using this feature during the preview period. After the preview, users need a Teams Premium license. To access the on-demand queue during the preview period, users need a Teams Premium trial license.**

The queue view provides your staff with a dashboard to monitor all scheduled and on-demand virtual appointments for the day, with updates in real time. To see the queue, go to the **Queue** tab.

:::image type="content" source="media/bookings-virtual-appointments-queue.png" alt-text="Screenshot of the queue view in the Bookings app in Teams." lightbox="media/bookings-virtual-appointments-queue.png":::

From the queue, schedulers can add a new booking, view relevant appointment details, and see appointment statuses throughout the day. They can also send email reminders to assigned staff and attendees and send SMS notifications to attendees for scheduled appointments.

When an attendee joins the waiting room, the status changes, and their wait time is displayed and tracked. The view automatically refreshes with color-coded updates so that changes can easily be identified.

Staff can even join and manage appointments directly from the queue.

To learn more, see [Queue view in Bookings](https://support.microsoft.com/office/queue-view-in-bookings-3eea2840-a1e0-4bcd-8e09-d3cf51c184d6)

> [!NOTE]
> Currently, the Bookings app supports adding up to 100 staff per booking calendar. If you used Graph APIs to set up and add staff to a booking calendar, this limit may not be enforced. In this scenario, the **Queue** tab won't be able to render content for calendars that have more than 100 staff. For an optimal experience, we recommend that you add no more than 100 staff to a booking calendar. We're working to resolve this limitation in future releases.

## Get insight into Virtual Appointments usage

![Information icon](media/info.png) **The Virtual Appointments usage report is moving to [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview). The report will continue to be available during the preview period. After the preview, a Teams Premium license is required. To access the Advanced Virtual Appointments activity report during the preview period, a Teams Premium trial license is required.**

Admins can use the following reports in the Teams admin center to gain insight into usage activity and trends in your organization. Use this information to help optimize Virtual Appointments to deliver better business outcomes.

- The [Virtual Appointments usage report](virtual-appointments-usage-report.md) gives you an overview of Teams Virtual Appointments activity in your organization. The report shows detailed analytics for virtual appointments including Bookings appointments. You can view key metrics such as total number of appointments, appointment duration, lobby wait time, and no shows.
- The [Advanced Virtual Appointments activity report](advanced-virtual-appointments-activity-report.md) provides usage information for advanced Virtual Appointments capabilities that are available with Teams Premium (Preview).

## Related articles

- [Manage the join experience for Teams Virtual Appointments on browsers](browser-join.md)
- [Bookings app in Teams help documentation](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5)
- [Teams Premium licensing](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)
