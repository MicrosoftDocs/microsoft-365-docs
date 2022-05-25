---
title: Virtual appointments with Teams - Integration into Cerner EHR
author: LanaChin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: conceptual
ms.service: msteams
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
  - m365solution-healthcare
  - m365solution-scenario
appliesto: 
  - Microsoft Teams
ms.reviewer: ansantam 
description: Learn how to integrate the Teams EHR connector to enable healthcare providers in your organization to conduct virtual appointments with patients or other providers in Teams directly from the Cerner EHR system. 
---

# Virtual appointments with Teams - Integration into Cerner EHR

The Microsoft Teams Electronic Health Record (EHR) connector makes it easy for clinicians to launch a virtual patient appointment or consult with another provider in Microsoft Teams directly from the Cerner EHR system. Built on the Microsoft 365 cloud, Teams enables simple, secure collaboration and communication with chat, video, voice, and healthcare tools in a single hub that supports compliance with HIPAA, HITECH certification, and more.

The communication and collaboration platform of Teams makes it easy for clinicians to cut through the clutter of fragmented systems so they can focus on providing the best possible care. With the Teams EHR connector, you can:

- Conduct Teams virtual appointments from your Cerner EHR system with an integrated clinical workflow.
- Enable patients to join Teams virtual appointments from email or SMS notifications.
- View consumption data reports and customizable Call Quality information for EHR-connected appointments.

This article describes how to set up and configure the Teams EHR connector to integrate with the Cerner platform. It also gives you an overview of the Teams virtual appointments experience from the Cerner EHR system.

## Before you begin

> [!NOTE]
> Make sure you talk to your Cerner representative and review your Cerner integration guide before you enable the integration.

### Prerequisites

Before you integrate the Teams EHR connector in your healthcare organization, you must have the following:

- An active subscription to Microsoft Teams EHR connector standalone offer (only enforced while testing in a production EHR environment).
- Users have an appropriate Microsoft 365 or Office 365 license that includes Teams meetings.
- Teams is adopted and used in your healthcare organization.
- Your systems meet all [software and browser requirements](../../hardware-requirements-for-the-teams-app.md) for Teams.
- Cerner version November 2018 or later

## Set up the Teams EHR connector

The connector setup requires that you:

- [Launch the EHR connector configuration portal](#launch-the-ehr-connector-configuration-portal)
- [Enter configuration information](#enter-configuration-information)
- [Enable SMS notifications (optional)](#enable-sms-notifications-optional)
- [Review and finish the configuration](ehr-admin-cerner.md#review-and-finish-the-configuration)

> [!IMPORTANT]
> These steps must be completed by the Microsoft 365 global admin in your organization.  

### Launch the EHR connector configuration portal

To get started, your Microsoft 365 admin launches the [EHR connector configuration portal](https://ehrconnector.teams.microsoft.com) and signs in using their Microsoft credentials.

Your Microsoft 365 admin can configure a single department or multiple departments to test the integration. Configure the test and production URL in the configuration portal. Make sure to test the integration from the Cerner test environment before moving to production.

### Enter configuration information

Next, to set up the integration, your Microsoft 365 admin adds a Fast Health Interoperability Resources (FHIR) base URL from Cerner and specifies the environment. Configure as many FHIR base URLs as needed, depending on your organization’s needs and the environments you want to test.

:::image type="content" source="media/ehr-admin-cerner-configuration.png" alt-text="Screenshot of the Configuration information page of the Teams EHR connector configuration portal." lightbox="media/ehr-admin-cerner-configuration.png":::

- The FHIR base URL is a static address that corresponds to your server FHIR API endpoint. An example URL is `https://lamnahealthcare.org/fihr/auth/connect-ocurprd-oauth/api/FHDST`.

- You can set up the integration for test and production environments. For initial setup, we encourage you to configure the connector from a test environment before moving to production.

After the FHIR base URL is validated and the environment is selected, choose **Done**. Then, add more FHIR base URLs for other environments, as needed.

Select **Next** to go to the next step.

### Enable SMS notifications (optional)

Complete this step if your organization wants Microsoft to manage SMS notifications for your patients. When you enable SMS notifications, your patients will receive confirmation and reminder messages for scheduled appointments.

To enable SMS notifications, your Microsoft 365 admin does the following:

1. On the SMS notifications page, select both consent checkboxes to:

    - Allow Microsoft to send SMS notifications to patients on behalf of your organization.
    - Acknowledge that you'll ensure attendees have consented to send and receive SMS messages.

    :::image type="content" source="media/ehr-admin-cerner-sms-notifications.png" alt-text="Screenshot of the SMS notifications page, showing consent check boxes and the option to generate a phone number." lightbox="media/ehr-admin-cerner-sms-notifications.png":::

1. Under **Your phone numbers**, select **Generate a new phone number** to generate a phone number for your organization. Doing this starts the process to request and generate a new phone number. This process might take up to 2 minutes to complete.

    After the phone number is generated, it's displayed on the screen. This number will be used to send SMS confirmations and reminders to your patients. The number has been provisioned but isn’t linked to the FHIR base URL yet. You do that in the next step.

    :::image type="content" source="media/ehr-admin-cerner-phone-number.png" alt-text="Screenshot showing an example of the phone number that's generated." lightbox="media/ehr-admin-cerner-phone-number.png":::

    Choose **Done**, and then select **Next**.

1. To link the phone number to a FHIR base URL, under **Phone number** in the **SMS configuration** section, select the number. Do this for each FHIR base URL for which you want to enable SMS notifications.

    :::image type="content" source="media/ehr-admin-cerner-link-phone-number.png" alt-text="Screenshot showing how to link a phone number to a FHIR base URL." lightbox="media/ehr-admin-cerner-link-phone-number.png":::

    If this is the first time you’re configuring the connector, you’ll see the FHIR base URL that was entered in the earlier step. The same phone number can be linked to multiple FHIR base URLs, which means that patients will receive SMS notifications from the same phone number for different organizations and/or departments.

     Select **Next**.

### Review and finish the configuration

You'll be presented with integration records for patient and provider launch. These records are necessary to complete the virtual appointments configuration in Cerner. For more information, see the Cerner-Microsoft Teams Telehealth Integration guide.

> [!NOTE]
> At any time, your Microsoft 365 admin can sign in to the configuration portal to view integration records and change configuration settings, if needed.

## Launch Teams virtual appointments

After completing the EHR connector steps and Cerner configuration steps, your organization is ready to support video appointments with Teams.

### Virtual appointments prerequisites

- Your systems must meet all [software and browser requirements](../../hardware-requirements-for-the-teams-app.md) for Teams.
- You completed the integration setup between the Cerner organization and your Microsoft 365 organization.

### Provider experience

Healthcare providers in your organization can join appointments using Teams from the PowerChart portal. The provider must navigate to the patient board where the Teams option is available.

From there, the provider can view appointment information, join appointments, and send the meeting link. After the one-time sign-in, the provider is taken directly to the virtual appointment in Teams.

Key features of the provider experience:

- Providers can join appointments using supported browsers or the Teams app.
- Providers can use all supported Teams meeting features, including screen sharing, custom background, and recording.
- Providers can see real-time updates of patients connecting to an appointment for a given appointment in PowerChart.
- Provider information isn’t visible to patients during the appointment.

> [!NOTE]
> Any information entered in the meeting chat that’s necessary for medical records continuity or retention purposes should be downloaded, copied, and notated by the healthcare provider. The chat doesn’t constitute a legal medical record or a designated record set. Messages from the chat are stored based on settings created by the Microsoft Teams admin.

### Patient experience

The connector supports patients joining appointments through a link in the SMS text message. At the time of the appointment, patients can start an appointment by tapping the link in the SMS text message.

Key features of the patient experience

- Patients can join appointments from [modern web browsers on desktop and mobile without having to install the Teams app](../browser-join.md).
- Patients can join appointments with a single click and no other account or sign-in is required.
- Patients aren't required to create a Microsoft account or sign in to launch a visit.
- Patients are placed in a lobby until the provider joins and admits them.
- Patients can test their video and microphone in the lobby before joining the appointment.

## Get insight into virtual appointments usage

The [Virtual Visits usage report](../../teams-analytics-and-reports/virtual-visits-usage-report.md) in the Microsoft Teams admin center gives admins an overview of Teams virtual appointments activity in your organization. The report shows detailed analytics for virtual appointments including Teams EHR-integrated meetings conducted from your EHR system.

You can view key metrics such as lobby wait time and appointment duration. Use this information to gain insight into usage trends to help you optimize virtual appointments to deliver better business outcomes.

## Privacy and location of data

Teams integration into EHR systems optimizes the amount of data that’s used and stored during integration and virtual appointment flows. The solution follows the overall Teams privacy and data management principles and guidelines outlined in Teams Privacy.

The Teams EHR connector doesn't store or transfer any identifiable personal data or any health records of patients or healthcare providers from the EHR system. The only data that the EHR connector stores is the EHR user’s unique ID, which is used during Teams meeting setup.

The EHR user’s unique ID is stored in one of the three geographic regions described in [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations). All chats, recordings, and other data shared in Teams by meeting participants are stored according to existing storage policies. To learn more about the location of data in Teams, see [Location of data in Teams](../../location-of-data-in-teams.md).

## Related articles

- [Teams Virtual Visits usage report](../../teams-analytics-and-reports/virtual-visits-usage-report.md)
- [Teams EHR connector admin reports](ehr-admin-reports.md)
- [Get started with Teams for healthcare organizations](teams-in-hc.md)
