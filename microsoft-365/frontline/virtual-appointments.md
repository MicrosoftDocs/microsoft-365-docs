---
title: Virtual Appointments with Microsoft Teams
author: LanaChin
ms.author: v-lanachin
ms.reviewer: 
manager: samanro
ms.topic: conceptual
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
  - tier1
  - m365initiative-meetings
f1.keywords:
- NOCSH
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/21/2022
---

# Virtual Appointments with Microsoft Teams

With Virtual Appointments in Microsoft Teams, you have a complete meeting platform to schedule, manage, and conduct business-to-customer engagements. For example:

- Financial advisors, claims adjusters, and other financial professionals can meet with clients remotely.
- Sales associates, product experts, and design consultants can conduct virtual fittings and consultations.
- Clinicians can meet with patients or other healthcare providers to discuss medical care.
- Human resources departments can conduct virtual interviews with job candidates.

This article gives you an overview of the capabilities available in Teams for scheduling and managing virtual appointments.

- [The Virtual Appointments app](#the-virtual-appointments-app), for every organization
- [The Bookings app](#the-bookings-app), for every organization
- [The Teams Electronic Health Record (EHR) connector](#teams-electronic-health-record-ehr-connector), for healthcare organizations who use an EHR system
- [Virtual appointment meeting template](#virtual-appointment-meeting-template), for every organization
- [Virtual Appointment Graph API](#virtual-appointment-graph-api), for developers in your organization

## The Virtual Appointments app

[!INCLUDE [preview-feature](includes/preview-feature.md)]

The Virtual Appointments app provides a central hub for all your virtual appointment needs. The app enables a seamless end-to-end experience for business-to-customer engagements, integrating schedules from the Bookings app, analytics, and management options, all in one place.

You can schedule, view, and manage virtual appointments, get real-time status updates in a queue view, send appointment reminders, view analytics and reports to gain insight into virtual appointments activity, and configure calendar, staff, and booking page settings.

With any Microsoft 365 license, you can use basic Virtual Appointments capabilities that make it easy to schedule and join business-to-customer meetings. For example, you can schedule appointments in the Bookings calendar and external attendees can [join through a browser](browser-join.md) without having to download Teams. [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview) unlocks advanced Virtual Appointments capabilities that your organization can use to manage and personalize the experience. These include a queue view of scheduled and on-demand appointments, SMS text notifications, custom waiting rooms, and analytics.

To learn more, see:

- [Manage the Virtual Appointments app](/microsoftteams/manage-virtual-appointments-app?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Virtual Appointments guided tour](https://guidedtour.microsoft.com/guidedtour/industry-longform/virtual-appointments/1/1)

## The Bookings app

The [Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5) in Teams offers a simple way to schedule and manage virtual appointments. Use it to schedule virtual appointments such as financial consultations, healthcare visits, interviews, customer support, virtual fittings and consultations, and education office hours.

Schedulers can manage multiple department and staff calendars, as well as communications with internal and external attendees.

Each scheduled virtual appointment contains a Teams meeting link that’s sent to attendees in email where they can easily join from a browser or in Teams on any device.

With any Microsoft 365 license, you can use basic Virtual Appointments capabilities that make it easy to schedule and join business-to-customer meetings. For example, attendees can wait in a pre-appointment waiting room and [join through a browser](browser-join.md) without having to download Teams. With [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (Preview), your organization gets advanced Virtual Appointments capabilities on top of Bookings to manage and personalize the experience. These include a queue view of scheduled and on-demand appointments, SMS text notifications, custom waiting rooms, and analytics.

To learn more, see:

- [Manage the Bookings app](/microsoftteams/bookings-app-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Virtual Appointments with Teams and the Bookings app](bookings-virtual-appointments.md)
- [Help your clients and customers use virtual appointments](virtual-appointments-toolkit.md)

## Teams Electronic Health Record (EHR) connector

If your healthcare organization uses an EHR system, you can use the Teams EHR connector to integrate Teams for a more seamless virtual care experience. The Teams EHR connector requires an active subscription to Microsoft Cloud for Healthcare or a subscription to Microsoft Teams EHR connector standalone offer.

After you set up the Teams EHR connector, clinicians can launch visits with patients and consultations with other providers in Teams directly from the EHR system.

Currently, the Teams EHR connector supports integration with the Cerner EHR system and Epic EHR system. To learn more, see:

- [Virtual appointments with Teams - Integration into Cerner EHR](ehr-admin-cerner.md)
- [Virtual appointments with Teams - Integration into Epic EHR](ehr-admin-epic.md)

## Virtual appointment meeting template

The Virtual appointment template is a default meeting template in Teams that your users can use to schedule virtual appointments with customers, clients and other people outside your organization. The template allows you to specify values for meeting settings that meeting organizers typically control. Use it to apply default settings and enforce settings.

With this template, you can enable a consistent experience across your organization for virtual appointments scheduled directly within Teams and help enforce compliance requirements. 

To learn more, see [Virtual appointment meeting template in Teams](/microsoftteams/virtual-appointment-meeting-template).

## Virtual Appointment Graph API

Developers can programmatically create and manage Virtual Appointments using Microsoft Graph. With the Virtual Appointment Graph API, virtual appointment join links can be embedded in any app, with features that include a waiting room and browser join experience for external attendees.

To learn more, see [virtualAppointment resource type](/graph/api/resources/virtualappointment?view=graph-rest-beta).

## Related articles

- [Manage the join experience for Teams Virtual Appointments on browsers](browser-join.md)