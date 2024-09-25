---
title: "Configure SMS text notifications and reminders in Microsoft Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 02/28/2024
audience: Admin
ms.topic: how-to
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
description: "Learn how to configure SMS text notifications for clients, customers and partners in Microsoft Bookings."
---

# Configure SMS text notifications and reminders in Microsoft Bookings

With Microsoft Bookings, you can send SMS text notifications to the person booking an appointment. You can set up SMS notifications in Bookings in the Bookings web app. Attendees, customers or partners can also opt in or out of getting SMS notifications on the self-serve booking page. They can also opt out of receiving SMS notifications by replying **STOP** to the sender.

The SMS notifications will include the Teams meeting link for virtual booking appointments.

> [!NOTE]
>Virtual Appointments SMS notifications are now part of [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams). Contact your administrator if you need a license for Teams Premium.

## Before you begin

Attendees, customers or partners need a valid United States, Canada or United Kingdom phone number before they can receive SMS notifications.

## Configure SMS notification in Microsoft Bookings

You can configure SMS notification in Bookings in a couple of ways:

- In the Bookings web app, follow the steps to **Enable text message notifications** in the [Define your service offerings in Bookings](define-service-offerings.md) topic.

- In the Booking app in Teams, navigate to **Settings** > **Appointment type** > **Add appointment type** and select **Send them text messages**.

## Tracking and metrics for SMS notifications

> [!NOTE]
> You need to be a Teams admin to see Teams and Bookings data on the Teams admin center.

You can track key data on SMS notifications usage in your organization in the Teams admin center. Usage reports include data such as time and date sent, origin number, message type, event type and delivery status. You can use SMS notification telemetry during the promotional period to help forecast and budget for SMS notifications after April 3, 2023.

1. On the Teams admin center, go to **SMS notifications usage**.

2. On **Analytics & Reports** > **Usage reports**, select SMS notifications usage.

    :::image type="content" source="../media/analytics-reporting.png" alt-text="Screenshot: SMS text notifications Analytics and reporting page in the Teams admin center":::
