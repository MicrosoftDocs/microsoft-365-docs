---
title: Use the Virtual Appointments app in Microsoft Teams
author: lana-chin
ms.author: v-chinlana
manager: serdars
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
  - tier1
ms.reviewer: megano
description: Get an overview of how to use the Virtual Appointments app in Teams to schedule, manage, conduct and view analytics on virtual appointments in your organization. 
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 03/27/2023
---

# Set up the Virtual Appointments app in Microsoft Teams

![Information icon](media/info.png) **Some features described in this article require [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)**.

## Overview

The [Virtual Appointments app](https://support.microsoft.com/topic/22df0079-e6d9-4225-bc65-22747fb2cb5f) provides a central hub for all your virtual appointments needs in Microsoft Teams. The app enables a seamless end-to-end experience for business-to-customer engagements, integrating Bookings schedules, analytics, and management options, all in one place.

You can schedule, view, and manage virtual appointments, get real-time status updates in a queue view, send appointment reminders, view analytics and reports to gain insight into virtual appointments activity, and configure calendar, staff, and booking page settings

Use it to schedule and manage appointments such as financial consultations, healthcare visits, virtual fittings and consultations, interviews, customer support, education office hours, and more. You can also publish an online booking page for your clients, customers, and patients to book appointments with your staff.

The Virtual Appointments app makes it easy to manage the complex scheduling demands of any organization. Schedulers can manage multiple department and staff calendars, as well as communications with internal and external attendees, from a single experience.

The virtual appointments are held through Microsoft Teams meetings, which offer robust video conferencing capabilities. For example, a doctor can share their screen and review test results with a patient. Or, a banking advisor can request electronic signatures on documents, allowing them to close transactions remotely.

You get an experience that's tailored to your industry. Here's a few examples of how you can use it in your organization:

|Industry|Examples|
|---------|---------|
|Financial services|Virtual appointments for remote sales and service<br/>Schedule and manage appointments for bank relationship managers, financial advisors, and claims adjusters, just to name a few, to serve your customers with increased efficiency and convenience.|
|Retail|Virtual fittings and consultations <br/>Schedule and manage appointments for your sales associates, product experts, and design consultants to conduct virtual shopping experiences with customers.|
|Healthcare|Virtual appointments for patient care <br/>Schedule and manage appointments for your care team members to meet with patients or other healthcare providers to discuss medical care.|

With any Microsoft 365 license, you can use basic Virtual Appointments capabilities that make it easy to schedule and join business-to-customer meetings. For example, you can schedule appointments in the Bookings calendar and external attendees can [join through a browser](browser-join.md) without having to download Teams. [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) unlocks advanced Virtual Appointments capabilities to manage and personalize the experience. These include a queue view of scheduled and on-demand appointments, SMS notifications, custom waiting rooms, and analytics.

This article gives you an overview of how to schedule, manage, and conduct virtual appointments using the Virtual Appointments app in Teams.

## Before you get started

If you’re an admin, see [Manage the Virtual Appointments app](/microsoftteams/manage-virtual-appointments-app?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json) to learn about how to control access to the app in your organization.

Users can find the Virtual Appointments app in the Teams app store, or you can share the [installation link](https://teams.microsoft.com/l/app/6e106207-4565-4312-b3ea-bbe9b3ed0a02?source=app-details-dialog) to help them find it. You can use an [app setup policy](/microsoftteams/teams-app-setup-policies) to pin the app for your organization, or your users can [pin the app themselves](https://support.microsoft.com/office/pin-an-app-for-easy-access-3045fd44-6604-4ba7-8ecc-1c0d525e89ec).

## Set up a new booking calendar

You must be a Bookings admin to set up and manage booking calendar settings.

### Create the booking calendar

On the **Home** tab or the **Bookings schedule** tab of the Virtual Appointments app, choose **Create a calendar**. Complete the form and be sure to choose the relevant business type for your organization.

:::image type="content" source="media/virtual-appointments-app-new-booking-calendar.png" alt-text="Screenshot of a new booking calendar screen showing business types." lightbox="media/virtual-appointments-app-new-booking-calendar.png":::

If you’re a larger organization, consider creating separate booking calendars for specific departments within your organization. To learn more, see [Create a Bookings calendar in Virtual Appointments](https://support.microsoft.com/topic/0efc10f6-6152-42db-9cbd-0f939c57d8be).

> [!NOTE]
> If you want to work in an existing booking calendar, choose **Connect a calendar**, and then search for and add an existing booking calendar.

### Add staff

On the **Manage** tab, select **Staff**. Add staff members and assign a role to each person you add. You can add up to 100 staff members to a booking calendar.

After you add staff, you’ll be able to view their availability in the Teams and Outlook calendars and schedule bookings for them. To learn more, see [Add and manage staff to make scheduling a breeze](https://support.microsoft.com/topic/9953defc-509d-4427-a2b9-8a2837495db7).  

### Create appointment types

Create specific appointment types to represent the services offered by your organization and to tailor the booking experience. The appointment type can then be used to book appointments. To learn more, see [Create and edit appointment types](https://support.microsoft.com/topic/5a153902-f5f8-449e-890d-0443db547704).

On the **Manage** tab, select **Appointment types**, and then choose **Add appointment type**. Specify whether the service is for [Scheduled](#scheduled-appointment-type) or [On-demand](#on-demand-appointment-type) appointments.

#### Scheduled appointment type

Enter a name for the service. For example, Account opening, Prescription renewal, Loan consultation, Tax preparation.

Specify any other information and settings you want. Schedulers can then use the appointment type to schedule an appointment. The information that you add is included in the email confirmation that's sent to attendees every time this type of appointment is booked.

You can configure options such as whether attendees can [join from a a desktop or mobile browser](browser-join.md) without having to download Teams, add an email reminder, [set up SMS text notifications](#set-up-sms-text-notifications), and [link forms](#link-forms).

##### Set up SMS text notifications

![Information icon](media/info.png) **This feature is now part of [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

Attendees need a valid United States, Canada, or United Kingdom phone number before they can receive SMS notifications.

To send SMS notifications to attendees by default, turn on **Send them text messages**. Attendees will receive confirmation and reminder text messages that include the Teams meeting link and scheduled appointment details. They can opt out of receiving the messages by replying STOP, or resume receiving them by replying START.

Keep in mind that schedulers can later choose to turn off the setting on an as-needed basis when they use the appointment type to schedule an appointment.

You can use the [SMS notifications usage report](sms-notifications-usage-report.md) to gain insight into how your workforce is using SMS notifications with virtual appointments.

To learn more, see [Use text messages to remind customers of their appointment](https://support.microsoft.com/topic/adda1e2a-03b8-4db2-864d-0a5a3f3a874a).

##### Link forms

You can link up to four forms for attendees to fill out each time this scheduled appointment type is booked. For example, you may require attendees to complete a registration form before they join an appointment. To link a form, choose **Link a form**. Enter the URL of the form, and then choose **Link**. (If it's the first time that you're linking a form, you'll be prompted to create a Microsoft 365 group to store forms. Choose **Create group** to create the group. You only have to do this one time for the booking calendar.)

When working with forms, keep in mind that:

- To make changes to a form that's already linked to an appointment type, select the form in the appointment type or from within the Microsoft 365 group at [https://forms.office.com](https://forms.office.com).
- Uploading files to forms that contain a [file upload question](https://support.microsoft.com/office/add-questions-that-allow-for-file-uploads-6a75a658-c02b-450e-b119-d068f3cba4cf) is supported when all attendees are from the same organization.

When a scheduler uses the appointment type to schedule an appointment, they can then choose to include the form, remove it, or add any other forms that you linked to the appointment type. Attendees must fill out the form before they join the appointment.

> [!NOTE]
> If you're a healthcare provider, any information provided by you or patients in Teams (including the Forms app, Virtual Appointments app, meeting recordings if enabled by you, or any other Teams virtual appointments services) that's necessary for medical records continuity or retention purposes should be downloaded, copied, and/or notated directly in such records by you. This service does not maintain legal medical records or a designated record set.

#### On-demand appointment type

![Information icon](media/info.png) **This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

Enter a name for the service. For example, Drop-in appointment, Account opening, Prescription renewal, Loan consultation, Tax preparation.

Your customers, clients, and patients can then choose the appointment type on your booking page to request an on-demand appointment with your staff.

## Publish a booking page

![Information icon](media/info.png) **The on-demand scheduling feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

Booking admins can publish an online booking page where people can book scheduled and on-demand appointments with your staff.

1. On the **Manage** tab, select **Booking page**.
2. Turn on **Publish booking page**.
    :::image type="content" source="media/virtual-appointments-app-booking-page-settings.png" alt-text="Screenshot of booking page settings." lightbox="media/virtual-appointments-app-booking-page-settings.png":::
3. To enable people to request on-demand appointments on your booking page, turn on **Show option for On-demand scheduling**.

You can customize and manage your booking page settings in the Bookings web app. To learn more, see [Customize and publish your booking page for customers to schedule appointments](https://support.microsoft.com/topic/72fc8c8c-325b-4a16-b7ab-87bc1f324e4f) and [Customize and publish your booking page](/microsoft-365/bookings/customize-booking-page).

## Book an appointment

### Scheduled appointments

Schedulers use scheduled appointment types to book appointments for your staff and attendees. On the **Bookings schedule** tab, select **New booking**. Choose a scheduled appointment type, and then fill out the relevant information.

This includes attendee contact information, the staff member who will be providing the service, internal notes that only staff can see, whether the attendee can join from a browser, email reminders, and whether to send SMS notifications. If a form is linked to the appointment type, you can choose to include it, remove it, or add any other linked forms.

Each scheduled appointment includes a Teams meeting link that’s sent to attendees in email where they can easily join from a web browser (if enabled for the appointment) or in Teams on any device. The email confirmation also includes an attachment so they can add the appointment to their calendar. Staff also receive an email confirmation and meeting invite.

If a form was included in the appointment, Bookings admins and schedulers can see whether the form was completed by the attendee before the appointment, and can view the attendee's response.

### On-demand appointments

Your customers, clients, and patients can go to your online booking page to request an appointment with your staff.

## Conduct an appointment

For scheduled appointments, do one of the following actions:

- In your Teams or Outlook calendar, go to the booking, and then select **Join** or the Teams meeting link.  
- In the Virtual Appointments app, go to the **Queue** tab, and then under **Scheduled**, select **Join** next to the appointment.

For on-demand appointments, in the Virtual Appointments app, go to the **Queue** tab, and then under **On-demand**, select **Join** next to the appointment.

To learn more, see [Conduct a virtual appointment (organizer)](https://support.microsoft.com/topic/c5ec4285-154c-491c-9525-d517c621c7f9).

## Monitor appointments and get real-time status updates in the queue view

![Information icon](media/info.png) **This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

The queue view on the **Queue** tab provides your staff with a dashboard to monitor all scheduled and on-demand virtual appointments for the day, with updates in real time.

:::image type="content" source="media/virtual-appointments-app-queue.png" alt-text="Screenshot of the queue view in the Virtual Appointments app in Teams." lightbox="media/virtual-appointments-app-queue.png":::

From the queue, schedulers can add a new booking, view relevant appointment details, and see appointment statuses throughout the day. They can also send email reminders to assigned staff and attendees and send SMS notifications to attendees for scheduled appointments. Staff can join and manage appointments directly from the queue.

When an attendee joins the waiting room, the status changes, and their wait time is displayed and tracked. The view automatically refreshes with color-coded updates so that changes can easily be identified.

## Get insight into Virtual Appointments usage

The Virtual Appointments usage report in the **Analytics** tab gives you an overview of virtual appointments activity in your organization. The report provides key metrics such as total number of appointments, appointment duration, lobby wait time, and no shows. You can view detailed activity for virtual appointments scheduled and conducted through multiple scheduling entry points and drill down into individual appointment data.

:::image type="content" source="media/virtual-appointments-app-analytics-org.png" alt-text="Screenshot of the Analytics tab in the Virtual Appointments app, showing the organizational-level Virtual Appointments usage report for admins." lightbox="media/virtual-appointments-app-analytics-org.png":::

The analytics experience depends on user role:

- Admins get organizational analytics. If you're an admin, you'll see an org-level report showing aggregated analytics across all departments in your organization. To learn more, see [Virtual Appointments usage report](virtual-appointments-usage-report.md).
- Non-admins get either departmental or individual analytics. Staff members who are associated with a department see a report that shows data for the given department. If a person isn’t associated with a department, the report shows data for the appointments that they conducted. To learn more, see [Analyze your Virtual Appointment usage](https://support.microsoft.com/topic/3214fd14-a860-4870-b30c-e8f87e182ce0).

## Related articles

- [Virtual Appointments with Teams](virtual-appointments.md)
- [Manage the join experience for Teams Virtual Appointments on browsers](browser-join.md)
- [Teams Premium licensing](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)
