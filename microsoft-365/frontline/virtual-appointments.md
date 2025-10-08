---
title: Appointments with Microsoft Teams
author: lana-chin
ms.author: jtremper
manager: jtremper
ms.reviewer: revathim
ms.topic: solution-overview
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about the capabilities in Microsoft Teams for scheduling and managing virtual appointments.
ms.localizationpriority: high
ms.collection: 
  - m365-frontline
  - highpri
  - m365solution-frontline
  - m365solution-scenario
  - m365-virtual-appointments 
  - m365initiative-meetings
f1.keywords:
- NOCSH
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/26/2023
---

# Appointments with Microsoft Teams

> [!IMPORTANT]
> The Virtual Appointments app in Microsoft Teams is no longer available.
>
> To schedule and manage appointments, your users can use Microsoft Bookings. As part of Microsoft 365, Microsoft Bookings is an online scheduling tool that enables users to create customizable booking pages where customers, clients, and colleagues can easily schedule appointments.
>
> - For advanced scheduling features in Microsoft Bookings, like SMS notifications and the queue for scheduled appointments, users also need a [Teams Premium license](/microsoftteams/enhanced-teams-experience).
>
> For existing Virtual Appointment app users, we recommend using Microsoft Bookings, licensed through a Microsoft 365 subscription plan, together with a Teams Premium license for a more comprehensive solution.
>
> To prepare for this change, notify your users, update relevant documentation as appropriate, and share details on Microsoft Bookings.
>
> [Learn more about Microsoft Bookings](/microsoft-365/bookings/bookings-overview) and the [advanced experience in Bookings with Teams Premium](https://techcommunity.microsoft.com/blog/microsoftteamsblog/teams-premium-enhances-scheduling-in-microsoft-bookings/4292193).

With Bookings in Microsoft Teams, you have a complete platform to schedule, manage, and conduct business-to-customer engagements. For example:

- Financial advisors, claims adjusters, and other financial professionals can meet with clients remotely.
- Sales associates, product experts, and design consultants can conduct virtual fittings and consultations.
- Clinicians can meet with patients or other healthcare providers to discuss medical care.
- Human resources departments can conduct virtual interviews with job candidates.

> [!VIDEO https://www.youtube.com/embed/-tBAeWXutoM?si=a_T0UEE8EuIZov4k]

This article gives you an overview of the capabilities available in Teams for scheduling and managing appointments.

- [Bookings](#bookings), for every organization
- [The Teams Electronic Health Record (EHR) connector](#teams-electronic-health-record-ehr-connector), for healthcare organizations who use an EHR system
- [Virtual appointment meeting template](#virtual-appointment-meeting-template), for every organization
- [Virtual Appointment Graph API](#virtual-appointment-graph-api), for developers in your organization

## Bookings

Use Bookings for all your appointment needs. The app enables a seamless end-to-end experience for business-to-customer engagements, integrating schedules, analytics, and management options, all in one place.

You can schedule, view, and manage appointments, get real-time status updates in a queue view, send appointment reminders, configure calendar, staff, and booking page settings.

In Bookings, you can use basic capabilities that make it easy to schedule and join business-to-customer meetings. For example, you can schedule appointments in the Bookings calendar and external attendees can [join through a browser](browser-join.md) without having to download Teams. [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) unlocks advanced Bookings and virtual appointments capabilities that your organization can use to manage and customize the experience. These include a queue view of scheduled and on-demand appointments, SMS text notifications, and usage reports for admins.

To learn more, see [Microsoft Bookings](/microsoft-365/bookings/bookings-overview).

## Teams Electronic Health Record (EHR) connector

If your healthcare organization uses an EHR system, you can use the Teams EHR connector to integrate Teams for a more seamless virtual care experience. The Teams EHR connector requires an active subscription to Microsoft Cloud for Healthcare or a subscription to Microsoft Teams EHR connector standalone offer.

After you set up the Teams EHR connector, clinicians can launch visits with patients and consultations with other providers in Teams directly from the EHR system.

Currently, the Teams EHR connector supports integration with the Oracle Health EHR system and Epic EHR system. To learn more, see:

- [Virtual Appointments with Teams - Integration into Oracle Health EHR](ehr-admin-oracle-health.md)
- [Virtual Appointments with Teams - Integration into Epic EHR](ehr-admin-epic.md)

## Virtual appointment meeting template

The virtual appointment template is a default meeting template in Teams that your users can use to schedule virtual appointments with external guests, such as customers, clients, and other people outside your organization.

To learn more, see [Manage the Virtual appointment meeting template in Teams](/microsoftteams/virtual-appointment-meeting-template).

## Virtual appointment Graph API

With the virtual appointment Graph API, virtual appointment join links can be embedded in any app, with features that include a waiting room and browser join experience for external attendees.

To learn more, see [virtualAppointment: getVirtualAppointmentJoinWebUrl](/graph/api/virtualappointment-getvirtualappointmentjoinweburl).

## Related articles

- [Microsoft Bookings](/microsoft-365/bookings/bookings-overview)
- [Manage the join experience for Teams Virtual Appointments on browsers](browser-join.md)
- [Microsoft Teams Virtual Appointments usage report](virtual-appointments-usage-report.md)
- [Microsoft Teams Advanced Virtual Appointments activity report](advanced-virtual-appointments-activity-report.md)
