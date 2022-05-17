---
title: Scheduling Dynamic Recurring Meetings
ms.author: sarichardson
author: sallyri
manager: serdars
audience: Admin
ms.topic: article
ms.service: scheduler
ms.reviewer: strettin
ms.localizationpriority: medium
description: "Users can learn more about scheduling dynamic recurring meetings."
---

# Scheduling Dynamic Recurring Meetings

Scheduler's dynamic meetings work around the user's busy schedule. Recurring meetings managed by Scheduler behave differently than traditional recurring meetings in Outlook. To keep your future calendar open and minimize conflicts with attendees, Scheduler will schedule one instance of a recurring meeting at a time.

As an example, asking Cortana to "Schedule 30 minutes of focus time every day" will initially create one 30 minute appointment for the next available date on your calendar.  Once that appointment time has passed, Scheduler will proceed to book another instance on the following date. If the original time slot is not currently available, then Scheduler will adjust the time based on your availability.

The same heuristic can be applied to meetings with invitees. You can include attendees in your request and ask Cortana to "Schedule a meeting every two weeks". The first and each successive meeting will get scheduled dynamically based on the current availability of all attendees within your organization. If you or an attendee is unavailable or out of the office on the next date, the meeting time will automatically adjust to when everyone is available, and the desired cadence is preserved for follow-on meeting instances based on the newly scheduled date.

## Booking with attendees outside your organization

When scheduling with attendees outside of your organization, your virtual assistant will send the external attendees time options for the first meeting. All future meetings are automatically scheduled based on the availability of the organizer and internal attendees.

Scheduler supports daily, weekly, and monthly intervals.

## Examples of How to Request Recurring Meetings

Here are some examples of how you can email Cortana to schedule recurring meetings:

- "Cortana, schedule a meeting every 2 weeks."
- "Book 30 minutes monthly for a review."
- "Cortana will find 30 minutes for us to meet every Tuesday."
- "Cortana, schedule 30 minutes every Friday at 3:30pm"

## Changing Recurring Frequency

You can change the frequency of any recurring meeting or a non-recurring meeting that is managed by Scheduler. Reply to Cortana from the last confirmation email in the meeting thread and tell Cortana:

- "Change this to once every month."
- "Cortana, make this meeting biweekly."

## Cancelling Recurring Meetings

You can reply to Cortana's latest confirmation message and ask to "cancel this meeting" to cancel the scheduled instance. However, Scheduler will continue to schedule future meetings at the same frequency. Alternatively, you can just ask Scheduler to reschedule the next instance to the desired date or time. If you wish to cancel the entire recurring series, respond with "cancel this series" and no future instances will be scheduled.

## Recurring Meeting Limitations

Please note that there are some technical limitations on the types of recurrences Scheduler can understand and support:

- Multiple occurrences within the same interval are not supported (for example: "twice a week").
- End dates for recurrence are not supported (for example: "every day until December 20th"). Since each meeting is scheduled upon completion of the previous meeting, simply reply to the latest message from Cortana with "cancel this meeting series".
- Scheduler currently does not support recurrence frequencies greater than 90 days.
