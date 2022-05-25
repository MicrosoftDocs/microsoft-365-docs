---
title: Manage the join experience for Teams virtual appointments on browsers
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
ms.reviewer: hafarmer
description: Learn about the join experience for Teams virtual appointments on browsers. 
---

# Manage the join experience for Teams virtual appointments on browsers

Microsoft Teams makes it easy for people to join virtual appointments without having to download Teams. For a more seamless experience, attendees can join appointments such as healthcare visits and financial consultations from a desktop or mobile browser. Attendees don't need to install the Teams app on their device.

With browser join, when an attendee joins an appointment, they aren't prompted to download Teams. Instead, Teams opens in a browser, where the attendee can select **Join now** to join. With this feature, keep in mind that if Teams is already installed on the device, Teams will open in a browser and not in the app.

Currently, browser join is available for appointments that are scheduled through the following:

- [The Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5)
- Microsoft Teams Electronic Health Record (EHR) connector

  - Integration with [Cerner EHR](healthcare/ehr-admin-cerner.md)
  - Integration with [Epic EHR](healthcare/ehr-admin.md)

## Set up browser join

### Appointments scheduled through the Bookings app

Schedulers in your organization can turn on this feature for specific appointment types and for individual appointments in the Bookings app.

After this feature is turned on, the confirmation email or SMS text that’s sent to attendees will contain a meeting join link that opens Teams in a desktop or mobile browser. For a list of supported browsers, see [Supported browsers](#supported-browsers).

#### Turn on browser join for an appointment type

In Bookings, go to **Settings** > **Appointment types**, select an [appointment type](https://support.microsoft.com/office/create-an-appointment-type-810eac77-6a65-4dc8-964d-c00eadf43887), and then turn on **Allow attendees to join from a browser**. Doing this enables browser join for all appointments of this type.

:::image type="content" source="../media/browser-join-bookings-appointment-type.png" alt-text="Screenshot of the Allow attendees to join from a browser setting for appointment types in the Bookings app":::

#### Turn on browser join for an individual appointment

In Bookings, select **New booking**, and then turn on **Allow attendees to join from a browser**.

:::image type="content" source="../media/browser-join-bookings-form.png" alt-text="Screenshot of the Allow attendees to join from a browser setting on the new booking form in the Bookings app":::

### Appointments scheduled through the Teams EHR connector

No setup is needed by you or your staff!

**Integration with Cerner EHR**: The Teams EHR connector supports patients joining virtual appointments through a link in the SMS text message. At the time of the appointment, patients can join by tapping the link in the SMS text message, and Teams opens in a browser.

**Integration with Epic EHR**: The Teams EHR connector supports patients joining virtual appointments through MyChart web and mobile. At the time of the appointment, patients can start the appointment from MyChart by using the **Begin virtual visit** button, and Teams opens in a browser.

## Supported browsers

Here are the browsers that are currently supported. We support the latest version plus two previous versions, unless otherwise indicated.

|Platform  |Chrome |Safari |Edge (Chromium)|
|---------|:---|:---|:---:|
|Android   | &#x2714; &sup1;      |         |         |
|iOS    |         | &#x2714; &sup1; &sup2; |         |
|macOS     | &#x2714; | &#x2714;|         |
|Windows    | &#x2714; |   | &#x2714; |
|Ubuntu/Linux     | &#x2714;         |     |         |

&sup1; Outgoing screen sharing isn't supported on iOS or Android.

&sup2; iOS apps on Safari can't select microphone and speaker devices. For example, Bluetooth devices. This is a limitation of the operating system, which controls the default device selection.

## Things to consider

The staff member who conducts the appointment can share their screen from their Teams desktop, mobile, or web client with an attendee who joins from a desktop or mobile browser. However, attendees can't share their screen from a desktop or mobile browser.

## Related articles

- [Virtual appointments with Teams and the Bookings app](bookings-virtual-visits.md)
- [Create an Bookings appointment type](https://support.microsoft.com/office/create-an-appointment-type-810eac77-6a65-4dc8-964d-c00eadf43887)
- [Join a Bookings appointment as an attendee](https://support.microsoft.com/office/join-a-bookings-appointment-as-an-attendee-95cea12d-2220-421f-a663-6efb20913c7f)
- [Virtual appointments with Teams - Integration into Cerner EHR](healthcare/ehr-admin-cerner.md)
- [Virtual appointments with Teams - Integration into Epic EHR](healthcare/ehr-admin.md)
