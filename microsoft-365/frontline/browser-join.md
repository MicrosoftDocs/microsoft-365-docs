---
title: Manage the join experience for Teams Virtual Appointments on browsers
author: lanachin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: how-to
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
ms.reviewer: hafarmer
description: Learn about the join experience for Teams Virtual Appointments on browsers. 
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Manage the join experience for Teams Virtual Appointments on browsers

Microsoft Teams makes it easy for people to join [virtual appointments](virtual-appointments.md) without having to download Teams. For a more seamless experience, attendees can join appointments such as healthcare visits and financial consultations from a desktop or mobile browser. Attendees don't need to install the Teams app on their device.

With browser join, when an attendee joins an appointment, they aren't prompted to download Teams. Instead, Teams opens in a browser, where the attendee can select **Join now** to join. With this feature, keep in mind that if Teams is already installed on the device, Teams will open in a browser and not in the app.

Currently, browser join is available for appointments that are scheduled through the following:

- [The Virtual Appointments app](https://review.learn.microsoft.com/microsoftteams/manage-virtual-appointments-app?branch=v-lanachin-va-app) (preview)
- [The Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5)
- Microsoft Teams Electronic Health Record (EHR) connector

  - Integration with [Cerner EHR](ehr-admin-cerner.md)
  - Integration with [Epic EHR](ehr-admin-epic.md)

## Set up browser join

### Appointments scheduled through the Virtual Appointments app or the Bookings app

Schedulers in your organization can turn on this feature for specific appointment types and for scheduled individual appointments.

After this feature is turned on, the confirmation email or SMS text that’s sent to attendees will contain a meeting join link that opens Teams in a desktop or mobile browser. For a list of supported browsers, see [Supported browsers](#supported-browsers).

#### Turn on browser join for an appointment type

1. Do one of the following:
    1. In the Virtual Appointments app, go to the **Manage** tab > **Appointment types**, and then under **Scheduled**, select an appointment type.
    1. In the Bookings app, go to **Settings** > **Appointment types**, and then under **Scheduled**, select an appointment type.
1. Turn on **Have attendees join from a web browser**.

Doing this enables browser join for all appointments of this type.

:::image type="content" source="media/browser-join-appointment-type.png" alt-text="Screenshot of the Have attendees join from a browser setting for appointment types" lightbox="media/browser-join-appointment-type.png":::

#### Turn on browser join for an individual appointment

On the **Bookings schedule** tab of the Virtual Appointments app or in the Bookings app, select **New booking**, and then turn on **Have attendees join from a browser**.

:::image type="content" source="media/browser-join-bookings-form.png" alt-text="Screenshot of the Have attendees join from a browser setting on the new booking form" lightbox="media/browser-join-bookings-form.png":::

### Appointments scheduled through the Teams EHR connector

No setup is needed by you or your staff!

**Integration with Cerner EHR**: The Teams EHR connector supports patients joining virtual appointments through a link in the SMS text message. At the time of the appointment, patients can join by tapping the link in the SMS text message, and Teams opens in a browser.

**Integration with Epic EHR**: The Teams EHR connector supports patients joining virtual appointments through MyChart web and mobile. At the time of the appointment, patients can start the appointment from MyChart by using the **Begin virtual visit** button, and Teams opens in a browser.

## Customize the waiting room experience with your company branding

![Information icon](media/info.png) **This feature is part of [Teams Premium]() (preview). To use this feature during the preview period, admins and users in your organization who schedule appointments need a Teams Premium trial license.**

You can configure a custom waiting room experience for attendees with your company branding and content. As an admin, you use Teams meeting customization policies in the Teams admin center to define your branding by creating a meeting theme. A meeting theme can include your company's logo, a custom image, and more.

After you create the policy, assign it to the users in your organization who schedule appointments. Users who are assigned the policy can create branding-enabled virtual appointments. The appointments are branded by default, and anyone who joins gets a custom-branded waiting room experience.

To learn more, see [Custom organization branding for Teams meetings](https://review.learn.microsoft.com/en-us/MicrosoftTeams/custom-branding-meetings?branch=heidip-branded-meetings-2022).

## Supported browsers

Here are the browsers that are currently supported. We support the latest version plus two previous versions, unless otherwise indicated.

|Platform  |Google Chrome |Apple Safari |Microsoft Edge (Chromium)|
|---------|:---|:---|:---:|
|Android   | &#x2714; &sup1;      |         |         |
|iOS    |         | &#x2714; &sup1; &sup2; |         |
|macOS     | &#x2714; | &#x2714;|         |
|Windows    | &#x2714; |   | &#x2714; |
|Ubuntu/Linux     | &#x2714;         |     |         |

&sup1; Outgoing screen sharing isn't supported on iOS or Android.

&sup2; iOS apps on Safari can't select microphone and speaker devices. For example, Bluetooth devices. This is a limitation of the operating system, which controls the default device selection.

## User experience

Here are some things about the user experience to know about with browser join.

#### Screen sharing

The staff member who conducts the appointment can share their screen from their Teams desktop, mobile, or web client with an attendee who joins from a desktop or mobile browser. However, attendees can't share their screen from a desktop or mobile browser.

#### Live captions

Teams can detect what's said during an appointment and display real-time captions.

To use captions, a staff member must first turn on live captions in Teams. Then, any attendee who wants to see captions can turn them on in Teams from their browser.

To turn on live captions, in the meeting controls in Teams, go to **More** (**...**) > **Turn on live captions**. Captions are only visible for attendees who turn them on and are permanently deleted when the appointment is over.

Staff members can also change the language of the captions. The default language is English (US). The language that's set applies to everyone who has captions turned on in the appointment.

#### Protected meetings

Currently, browser join doesn't support protected meeting capabilities, such as watermarks and sensitivity labels, that are part of [Teams Premium]() (preview).

If you've configured any of these settings in your organization, attendees won't be able to join the appointment from a desktop or mobile browser. Instead, they're prompted to install Teams and the meeting link they receive opens Teams in the desktop, mobile, or web app.

## Related articles

- [Virtual Appointments with Teams and the Bookings app](bookings-virtual-appointments.md)
- [Create an Bookings appointment type](https://support.microsoft.com/office/create-an-appointment-type-810eac77-6a65-4dc8-964d-c00eadf43887)
- [Join a Bookings appointment as an attendee](https://support.microsoft.com/office/join-a-bookings-appointment-as-an-attendee-95cea12d-2220-421f-a663-6efb20913c7f)
- [Teams Premium]()
 