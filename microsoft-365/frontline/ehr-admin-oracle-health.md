---
title: Virtual Appointments with Teams - Integration into Oracle Health EHR
author: lana-chin
ms.author: v-chinlana
manager: jtremper
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-frontline
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
  - m365solution-healthcare
  - m365solution-scenario
  - m365-frontline
  - highpri
  - m365-virtual-appointments 
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: beolson 
description: Learn how to integrate the Teams EHR connector to enable healthcare providers in your organization to conduct virtual appointments with patients or other providers in Teams directly from the Oracle Health EHR system.
ms.date: 06/26/2024
---

# Virtual Appointments with Teams - Integration into Oracle Health EHR

The Microsoft Teams Electronic Health Record (EHR) connector makes it easy for clinicians to launch a virtual patient appointment or consult with another provider in Microsoft Teams directly from the Oracle Health EHR system. Built on the Microsoft 365 cloud, Teams enables simple, secure collaboration and communication with chat, video, voice, and healthcare tools in a single hub that supports compliance with HIPAA, HITECH certification, and more.

The communication and collaboration platform of Teams makes it easy for clinicians to cut through the clutter of fragmented systems so they can focus on providing the best possible care. With the Teams EHR connector, you can:

- Conduct Teams Virtual Appointments from your Oracle Health EHR system with an integrated clinical workflow.
- Enable patients to join Teams Virtual Appointments from email or SMS notifications.
- View consumption data reports and customizable Call Quality information for EHR-connected appointments.

This article describes how to set up and configure the Teams EHR connector to integrate with the Oracle Health platform. It also gives you an overview of the Teams Virtual Appointments experience from the Oracle Health EHR system.

> [!NOTE]
> Cerner has been renamed to Oracle Health. The following video refers to Oracle Health as Cerner.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=150a83b3-76f0-4c83-b83d-1c6176b17fcd]

## Before you begin

> [!NOTE]
> Make sure you talk to your Oracle Health representative and review your Oracle Health integration guide before you enable the integration.

Oracle Health integration is currently only available in the United States.

### Prerequisites

- An active subscription to Microsoft Cloud for Healthcare or a subscription to Microsoft Teams EHR connector standalone offer.
- Users have an appropriate Microsoft 365 or Office 365 license that includes Teams meetings.
- Teams is adopted and used in your healthcare organization.
- Identified a person in your organization who is a Microsoft 365 Global Administrator with access to the [Teams admin center](https://admin.teams.microsoft.com).
- Your systems meet all [software and browser requirements](/microsoftteams/hardware-requirements-for-the-teams-app) for Teams.
- Oracle Health version November 2018 or later
- Contact Microsoft at teamsforhealthcare@service.microsoft.com to get enrolled in the Oracle Cerner Code program.

> [!IMPORTANT]
> PowerChart is only available in Microsoft Edge. Internet Explorer is no longer supported.

## Set up the Teams EHR connector

The connector setup requires that you:

- [Launch the EHR connector configuration portal](#launch-the-ehr-connector-configuration-portal)
- [Enter configuration information](#enter-configuration-information)
- [Enable SMS notifications (optional)](#enable-sms-notifications-optional)
- [Review and finish the configuration](ehr-admin-cerner.md#review-and-finish-the-configuration)

> [!IMPORTANT]
> These steps must be completed by the Microsoft 365 Global Administrator in your organization.  

### Launch the EHR connector configuration portal

To get started, your Microsoft 365 admin launches the [EHR connector configuration portal](https://ehrconnector.teams.microsoft.com) and signs in using their Microsoft credentials.

Your Microsoft 365 admin can configure a single department or multiple departments to test the integration. Configure the test and production URL in the configuration portal. Make sure to test the integration from the Oracle Health test environment before moving to production.

### Enter configuration information

Next, to set up the integration, your Microsoft 365 admin adds a Fast Health Interoperability Resources (FHIR) base URL from Oracle Health and specifies the environment. Configure as many FHIR base URLs as needed, depending on your organization’s needs and the environments you want to test.

:::image type="content" source="media/ehr-admin-cerner-configuration.png" alt-text="Screenshot of the Configuration information page of the Teams EHR connector configuration portal." lightbox="media/ehr-admin-cerner-configuration.png":::

- The FHIR base URL is a static address that corresponds to your server FHIR API endpoint. An example URL is `https://lamnahealthcare.com/fhir/auth/connect-ocurprd-oauth/api/FHDST`.

- You can set up the integration for test and production environments. For initial setup, we encourage you to configure the connector from a test environment before moving to production.

After the FHIR base URL is validated and the environment is selected, choose **Done**. Then, add more FHIR base URLs for other environments, as needed.

Select **Next** to go to the next step.

### Enable SMS notifications (optional)

Complete this step if your organization wants Microsoft to manage SMS notifications for your patients. When you enable SMS notifications, your patients will receive confirmation and reminder messages for scheduled appointments.

To enable SMS notifications, your Microsoft 365 admin completes the following steps:

1. On the SMS notifications page, select both consent checkboxes to:

    - Allow Microsoft to send SMS notifications to patients on behalf of your organization.
    - Acknowledge that you'll ensure attendees have consented to send and receive SMS messages.

    :::image type="content" source="media/ehr-admin-cerner-sms-notifications.png" alt-text="Screenshot of the SMS notifications page, showing consent check boxes and the option to generate a phone number." lightbox="media/ehr-admin-cerner-sms-notifications.png":::

1. Under **Your phone numbers**, select **Generate a new phone number** to generate a phone number for your organization. Doing this starts the process to request and generate a new phone number. This process might take up to 2 minutes to complete.

    After the phone number is generated, it's displayed on the screen. This number is used to send SMS confirmations and reminders to your patients. The number has been provisioned but isn’t linked to the FHIR base URL yet. You do that in the next step.

    :::image type="content" source="media/ehr-admin-cerner-phone-number.png" alt-text="Screenshot showing an example of the phone number that's generated." lightbox="media/ehr-admin-cerner-phone-number.png":::

    Choose **Done**, and then select **Next**.

1. To link the phone number to a FHIR base URL, under **Phone number** in the **SMS configuration** section, select the number. Do this for each FHIR base URL for which you want to enable SMS notifications.

    :::image type="content" source="media/ehr-admin-cerner-link-phone-number.png" alt-text="Screenshot showing how to link a phone number to a FHIR base URL." lightbox="media/ehr-admin-cerner-link-phone-number.png":::

    If you’re configuring the connector for the first time, you’ll see the FHIR base URL that was entered in the earlier step. The same phone number can be linked to multiple FHIR base URLs, which means that patients will receive SMS notifications from the same phone number for different organizations and/or departments.

     Select **Next**.

1. Some telephone carriers now [require unverified toll numbers to be verified](/azure/communication-services/concepts/sms/sms-faq#sms-to-us-phone-numbers). This requirement became effective October 1, 2022. Some carriers are following this more strictly than others.

You'll need to [register your generated phone number in this form](https://forms.office.com/pages/responsepage.aspx?id=v4j5cvGGr0GRqy180BHbR0NW3g8C-tRNlyVpwWkCiS1UOEFCVTRHSFMwRk9BVTg3MVdZQlVCNEI4SS4u). This ensures none of your SMS messages will be blocked when sent to US phone numbers.

### Review and finish the configuration

You'll be presented with integration records for patient and provider launch. These records are necessary to complete the virtual appointments configuration in Oracle Health. For more information, see the Oracle Health-Microsoft Teams Telehealth Integration guide.

> [!NOTE]
> At any time, your Microsoft 365 admin can sign in to the configuration portal to view integration records and change configuration settings, if needed.

## Launch Teams Virtual Appointments

After completing the EHR connector steps and Oracle Health configuration steps, your organization is ready to support video appointments with Teams.

### Virtual Appointments prerequisites

- Your systems must meet all [software and browser requirements](/microsoftteams/hardware-requirements-for-the-teams-app) for Teams.
- You completed the integration setup between the Oracle Health organization and your Microsoft 365 organization.

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

- Patients can join appointments from [modern web browsers on desktop and mobile without having to install the Teams app](browser-join.md).
- Patients can join appointments with a single click and no other account or sign-in is required.
- Patients aren't required to create a Microsoft account or sign in to launch a visit.
- Patients are placed in a lobby until the provider joins and admits them.
- Patients can test their video and microphone in the lobby before joining the appointment.

## Troubleshoot Teams EHR connector setup and integration

If you're experiencing issues when setting up the integration, see [Troubleshoot Teams EHR connector setup and configuration](ehr-connector-troubleshoot-setup-configuration.md) for guidance on how to resolve common setup and configuration issues.

## Get insight into Virtual Appointments usage

The [EHR connector Virtual Appointments report](ehr-connector-report.md) in the Teams admin center gives you an overview of EHR-integrated virtual appointment activity in your organization. You can view a breakdown of data for each appointment that took place for a given date range. The data includes the staff member who conducted the appointment, duration, the number of attendees, department, and whether the appointment was within the allocation limit.

## Privacy and location of data

Teams integration into EHR systems optimizes the amount of data used and stored during integration and virtual appointment flows. The solution follows the overall Teams privacy and data management principles and guidelines outlined in Teams Privacy.

The Teams EHR connector doesn't store or transfer any identifiable personal data or any health records of patients or healthcare providers from the EHR system. The only data that the EHR connector stores is the EHR user’s unique ID, which is used during Teams meeting setup.

The EHR user’s unique ID is stored in one of the three geographic regions described in [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations). All chats, recordings, and other data shared in Teams by meeting participants are stored according to existing storage policies. To learn more about the location of data in Teams, see [Location of data in Teams](/microsoftteams/location-of-data-in-teams).

## Related articles

- [Teams Virtual Appointments usage report](virtual-appointments-usage-report.md)
- [Teams EHR connector Virtual Appointments report](ehr-connector-report.md)
- [Get started with Teams for healthcare organizations](teams-in-hc.md)
