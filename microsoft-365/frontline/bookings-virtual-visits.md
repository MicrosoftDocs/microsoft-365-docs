---
title: Virtual Visits with Microsoft Teams and the Bookings app
author: lanachin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: article 
ms.service: msteams 
search.appverid: 
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
  - Microsoft Cloud for Retail
f1.keywords:
- NOCSH
ms.localizationpriority: medium
ms.collection: 
  - microsoftcloud-healthcare
  - microsoftcloud-retail
  - m365solution-healthcare
  - m365solution-scenario
ms.reviewer: 
description: Learn how to schedule, manage, and conduct Virtual Visits using the Bookings app in Teams. 
---

# Virtual Visits with Microsoft Teams and the Bookings app

## Overview

The [Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5) in Microsoft Teams gives organizations a simple way to schedule and manage virtual appointments for staff and attendees. Use it to schedule appointments such as healthcare visits, financial consultations, interviews, customer support, virtual fittings and consultations, education office hours, and more.

The Bookings app makes it easy to manage complex scheduling demands of any organization. Schedulers can manage multiple department and staff calendars, as well as communications with internal and external attendees, from a single experience.

The virtual appointments are held through Microsoft Teams meetings, which offer robust video conferencing capabilities. For example, a doctor can share their screen and review test results with a patient. Or, a banking advisor can request electronic signatures on documents, allowing them to close transactions remotely.

Each virtual appointment includes a Teams meeting link that’s sent to attendees in email where they can easily join from a web browser or in Teams on any device. Automated email reminders help reduce no-shows and enhance customer and client engagement.

With Bookings, you get an experience that's tailored to your industry. Here's a few examples of how you can use it in your organization:

|Industry | Examples |
|---------|---------|
|Financial services    |  Virtual Visits for remote sales and service<br/>Schedule and manage appointments for bank relationship managers, financial advisors, and claims adjusters, just to name a few, to serve your customers with increased efficiency and convenience.  |
|Retail   | Virtual fittings and consultations <br/>Schedule and manage appointments for your sales associates, product experts, and design consultants to conduct virtual fittings and consultations with customers.   |
|Healthcare   |  Virtual Visits for patient care <br/>Schedule and manage appointments for your care team members to meet with patients or other healthcare providers to discuss medical care.   |

This article gives you an overview of how to schedule, manage, and conduct Virtual Visits using the Bookings app in Teams.

## Before you get started

If you’re an admin, see [Manage the Bookings app in Teams](../bookings-app-admin.md) to learn about the prerequisites for using the Bookings app in Teams, how to control access to Bookings in your organization, and recommended policy and admin settings.

Remember that only schedulers in your organization need to have the Bookings app installed in Teams. Staff who conduct or participate in virtual appointments don't need the app. They join appointments from their Teams or Outlook calendar or by using the meeting link in their booking confirmation email.

## Set up a new booking calendar

### Create the booking calendar

In Teams, go to **Bookings** > **Get started**, and then select **New booking calendar**. Complete the form and be sure to choose the relevant business type for your organization.

:::image type="content" source="../media/bookings-virtual-visits-new-booking-calendar.png" alt-text="Screenshot of new booking calendar screen showing business types":::

If you’re a larger organization, consider creating more than one booking calendar if you want attendees to receive a booking email from a specific department rather than your overall organization.
To learn more, see [Create a Bookings calendar](https://support.microsoft.com//office/create-a-bookings-calendar-921cfd26-a24d-4aca-9004-561594112148).

> [!NOTE]
> If this isn't your first time in the Bookings app or if you want to work in an existing booking calendar, in Bookings, select the dropdown arrow next to your organization name, and then choose **Existing booking calendar**. From here, you can search for the one you want.

### Add staff

In the booking calendar, go to **More options** (...) > **Settings**, and then select **Staff**. Add staff members and assign a role to each person you add. You can add up to 100 staff members to a booking calendar.

The Bookings app integrates with Outlook. After you add staff, you’ll be able to view that person’s calendar availability and schedule bookings for them. To learn more, see [Add staff and view a Bookings calendar](https://support.microsoft.com/office/add-staff-and-view-a-bookings-calendar-6c579f61-8adb-4514-9458-021de2023fa0).  

### Create appointment types

Create specific appointment types to represent the services offered by your organization and to tailor the booking experience.

In the booking calendar, go to **More options** (...) > **Appointment types**, and then select **New appointment type**. Enter a name&mdash;for example, Account opening, Prescription renewal, Loan consultation, Tax preparation&mdash;and any other information and settings you want.

The information and links that you add are included in the email confirmation that's sent to attendees every time this type of appointment is booked. You can even set email reminders and other options such as whether attendees can [join from a mobile browser](mobile-browser-join.md) without having to download Teams. To learn more, see [Create an appointment type](https://support.microsoft.com/office/create-an-appointment-type-810eac77-6a65-4dc8-964d-c00eadf43887).

## Schedule a visit

In the booking calendar, select **New booking**. Select an appointment type, and then fill out the relevant information.

This includes attendee contact information, the staff member who will be providing the service, internal notes that only staff can see, email reminders, and whether the attendee can join from a mobile browser. To learn more, see [Schedule a booking in the Teams Bookings app](https://support.microsoft.com/office/schedule-a-booking-in-the-teams-bookings-app-e275049d-0d0f-4161-8526-461a9f29439f).

The email confirmation sent to the attendee includes the meeting link and an attachment so that they can add the virtual appointment to their calendar. Staff also receive an email confirmation and meeting invite.

## Conduct a visit

In your Teams or Outlook calendar, go to the booking, and then select **Join** or the Teams meeting link. Check your audio and video settings, and then select **Join now**. To learn more, see [Conduct a Bookings appointment](https://support.microsoft.com/office/conduct-a-bookings-appointment-a86a4007-e26c-4909-9893-f7036e2747cd).

## Monitor visits and get real-time status updates

The [queue view](https://support.microsoft.com/office/queue-view-in-bookings-3eea2840-a1e0-4bcd-8e09-d3cf51c184d6) in Bookings provides your staff with a dashboard to monitor all virtual appointments for the day, with updates in real time. To see the queue, go to the **Queue** tab in Bookings.

:::image type="content" source="../media/bookings-virtual-visits-queue.png" alt-text="Screenshot of the queue view in the Bookings app in Teams" lightbox="../media/bookings-virtual-visits-queue.png":::

From the queue, schedulers can add a new booking, view relevant appointment details, and see appointment statuses throughout the day. When a patient joins the waiting room, the status changes, and their wait time is displayed and tracked. The view automatically refreshes with color-coded updates so that changes can easily be identified.

Staff can even join and manage appointments directly from the queue.

> [!NOTE]
> Currently, the Bookings app supports adding up to 100 staff per booking calendar. If you used Graph APIs to set up and add staff to a booking calendar, this limit may not be enforced. In this scenario, the **Queue** tab won't be able to render content for calendars that have more than 100 staff. For an optimal experience, we recommend that you add no more than 100 staff to a booking calendar. We're working to resolve this limitation in future releases.

## Additional capabilities with the Bookings web app

The Bookings web app gives you additional capabilities. For example, you can publish a self-serve online booking page where people can schedule appointments with your staff. To access the Bookings web app, go to **More options** (...) > **Open Bookings web app**.

To learn more, see [Microsoft Bookings](/microsoft-365/bookings/bookings-overview).

## Get insight into Virtual Visits usage

The [Virtual Visits usage report](../teams-analytics-and-reports/virtual-visits-usage-report.md) in the Microsoft Teams admin center gives admins an overview of Teams Virtual Visits activity in your organization. The report shows detailed analytics for virtual appointments including Bookings visits.

You can view key metrics such as lobby wait time and visit duration. Use this information to gain insight into usage trends to help you optimize Virtual Visits to deliver better business outcomes.

## Related articles

- [Manage the join experience for Teams Virtual Visits on mobile browsers](mobile-browser-join.md)

- [Teams Virtual Visits usage report](../teams-analytics-and-reports/virtual-visits-usage-report.md)

- [Get started with Teams for healthcare organizations](healthcare/teams-in-hc.md)

- [Bookings app in Teams help documentation](https://support.office.com/article/apps-and-services-cc1fba57-9900-4634-8306-2360a40c665b?#PickTab=Bookings)
