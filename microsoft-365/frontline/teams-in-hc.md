---
title: "Get started with Teams for healthcare organizations"
author: dstrome
ms.author: dstrome
manager: serdars
audience: ITPro
ms.topic: article
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
  - m365solution-overview
appliesto: 
  - Microsoft Teams
ms.reviewer: 
description: Learn about health care features like Microsoft Teams telehealth, EHR integration, Frontline worker system integration, and the Patients app.
ms.custom: 
- seo-marvel-apr2020
- seo-marvel-jun2020
---

# Get started with Teams for healthcare organizations

Microsoft Teams offers a number of telemedicine features useful for hospitals and other Healthcare organizations. Teams features are under development to aid hospitals with:

- Virtual appointments and Electronic Healthcare Record (EHR) integration
- Teams policy packages
- Secure messaging
- Teams templates
- Care coordination and collaboration

This functionality is part of Microsoft Cloud for Healthcare. Learn more about using this solution, which brings together capabilities from Azure, Dynamics 365, and Microsoft 365 at [Microsoft Cloud for Healthcare](/industry/healthcare).

Watch the following video to learn more about using the healthcare collection to enhance health team collaboration in Teams.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Hqan]

> [!NOTE]
> The content in this section assumes that you've already deployed Teams in your organization. If you haven't yet rolled out Teams, start by reading [How to roll out Microsoft Teams](../../deploy-overview.md).

The following scenarios are available for healthcare organizations:

| Scenario | Description | Requirements |
| -------- | -------- | -------- |
| [Virtual appointments with Electronic Healthcare Record (EHR) integration](#virtual-appointments-and-electronic-healthcare-record-ehr-integration) | Schedule, manage, and conduct virtual appointments with patients. This scenario connects Teams and the Cerner or Epic platform to support virtual appointments. | Active subscription to Microsoft Cloud for Healthcare or subscription to Microsoft Teams EHR connector standalone offer. <br> Users must have an appropriate Microsoft 365 or Office 365 license that includes Teams meetings*. <br> Organizations must have Cerner version November 2018 or later or Epic version November 2018 or later. <br>Details for [Cerner EHR](ehr-admin-cerner.md#before-you-begin) and [Epic EHR](ehr-admin.md#before-you-begin) requirements |
| [Virtual appointments with Microsoft Bookings and the Bookings app](#virtual-appointments-and-electronic-healthcare-record-ehr-integration) | Schedule, manage, and conduct virtual appointments with patients. This scenario relies on Microsoft Bookings to support virtual appointments. | Microsoft Bookings must be turned on for the organization. <br> All users of the Bookings app and all staff participating in meetings must have a license that supports Teams Meeting scheduling*. <br>[Details for Bookings requirements](../../bookings-app-admin.md#prerequisites-to-use-the-bookings-app-in-teams)|
| [Teams policy packages](#teams-policy-packages)| Ensure that clinical workers, information workers, and patient room devices have the appropriate access to Teams functionality.| Users must have an appropriate license*. |
| [Secure messaging](#secure-messaging) | Get quicker attention to urgent messages and have confidence that the message was received and read. | Users must have an appropriate license*.  |
| [Teams templates](#teams-templates-for-healthcare-organizations) | Create teams that include a predefined template of settings, channels, and pre-installed apps for communication and collaboration within a ward, pod, or department, or between multiple wards, pods, and departments within a hospital. | Users must have an appropriate license*.  |
| [Care coordination and collaboration](#care-coordination-and-collaboration) | Clinicians and staff can collaborate internally on schedules, documents, tasks, and so on.| Users must have an appropriate license*. |

*Office 365 A3, A5, E3, E5, F1, F3, Microsoft 365 A3, A5, E3, and E5, Business Standard are supported. For more information about general Teams licensing, see [Manage user access to Teams](../../user-access.md).

## Virtual appointments and Electronic Healthcare Record (EHR) integration

Use the complete meetings platform in Teams to schedule, manage, and conduct virtual appointments with patients.

- If your organization already uses Electronic Health Records, or EHR, you can integrate Teams for a more seamless experience. Teams Electronic Health Record (EHR) connector makes it easy for clinicians to launch a virtual patient appointment or consultation with another provider in Teams directly from the EHR system. To learn more, see [Virtual appointments with Teams - Integration into Cerner EHR](ehr-admin-cerner.md) and [Virtual appointments with Teams - Integration into Epic EHR](ehr-admin.md).
- If you aren't using a supported EHR, you can use Microsoft Bookings and the Bookings app in Teams. To learn more, see [Virtual appointments with Teams and the Bookings app](../bookings-virtual-visits.md).

![Virtual appointments with Microsoft Teams.](../../media/virtual-visits-teams.png)

## Teams policy packages

Apply Teams policy packages to define what different roles can do in Teams. For example, specify policies for:

- Clinical workers, such as registered nurses, charge nurses, physicians, and social workers, so that they can have full access to chat, calling, shift management, and meetings.
- Information workers in your healthcare organization, such as IT personnel, informatics staff, finance personnel, and compliance officers, can have full access to chat, calling, and meetings.
- Patient rooms, to control settings for patient room devices.

To learn more, see [Teams policy packages for healthcare](../../policy-packages-healthcare.md).

## Secure messaging

Secure messaging supports collaboration within health teams, including several new features:

- A message sender can set a special priority for their message, so the recipient is repeatedly notified until they read the message.
- A message sender can request a read receipt, so they are notified when a message they sent was read by the message recipient.

Together, these features allow quicker attention to urgent messages and confidence that the message was received and read. New health teams using these features can be created on a per-patient basis. These features are policy-based, and can be assigned to individuals or entire Teams.

To learn more, see [Get started with Secure Messaging policies for Healthcare organizations](messaging-policies-hc.md).

Also related to secure messaging is the ability to have other tenants federated by Healthcare organizations, allowing richer inter-tenant communication. (See [Manage external access (federation) in Microsoft Teams](../../manage-external-access.md)).

## Teams templates for healthcare organizations

New templates for creating Teams were developed to apply to a Hospital setting, and more are expected soon. This makes it easier to create teams that Healthcare workers use to coordinate care for patients in various departments or wards. To learn more, see [Get started with Teams templates for Healthcare organizations](./healthcare-templates-admin-console.md). Teams can be started for internal departments such as cardiology, or for care wards, and more templates are in development.

## Care coordination and collaboration

Bring your health team together to coordinate care and collaborate with Teams.

![Healthcare: Collaborate with your health team in Teams.](../../media/teams-healthcare-collaborate-in-teams.png)

Teams enables physicians, clinicians, nurses, and other staff to collaborate efficiently with included collaboration features in Teams, such as:

- Set up teams and channels for your health teams and information workers. Use channels with tabs as a way to structure their work, with additional help from tabs to which they can pin information sources.
- Chat, post messages, and communicate. Your team can have persistent conversations about different patients needing attention.
- Call and meet with members of the health team. Set up individual meetings, or use channel meetings to manage daily meetings, both with the power of Teams audio, video, screen sharing, recording, and transcription features.
- Store and share files and documents. Your health team is part of a single virtualized team that works and collaborates on Office documents.

In addition, your team can use apps in Teams to:

- Share lists and track information with the Lists app
- Track and monitor tasks with the Tasks app
- Streamline approvals with the Approvals app
- Create, manage, and share schedules with the Shifts app

### Share lists and track information with the Lists app

> [!NOTE]
> Effective October 30, 2020, the Patients app has been retired and replaced by the [Lists app](https://support.microsoft.com/office/get-started-with-lists-in-teams-c971e46b-b36c-491b-9c35-efeddd0297db) in Teams. With Lists, care teams in your healthcare organization can create patient lists for scenarios ranging from rounds and interdisciplinary team meetings to general patient monitoring.

The Lists app in Teams helps teams track information and organize work. The app is pre-installed for all Teams users and is available as a tab in every team and channel. Lists can be created from scratch, from predefined templates, or by importing data to Excel.

Health teams can use the Patients template to get started. They can create lists to track the needs and status of patients. Existing patient data on Excel spreadsheets can be brought in to create a list in Teams. These lists can be used for scenarios such as rounds and patient monitoring to coordinate care.

For example, a charge nurse creates a patient list in a team that includes all health team members. During rounds, the health team access Teams on their mobile devices and update patient information in the list, which everyone on the team can view to stay in sync. At rounding sessions where the health team gathers to discuss and evaluate key health performance metrics to ensure a patient is on the right glide path to discharge, they can share this information using Teams on a large display screen. health team members who aren't on site can join remotely.

Here's an example list which was set up for patient rounding.

:::image type="content" source="../../media/lists-patients-example.png" alt-text="Screenshot of example list for patient rounding.":::

To learn more, see [Manage the Lists app for your organization in Teams](../../manage-lists-app.md).

### Track and monitor tasks with the Tasks app

Use [Tasks](https://support.microsoft.com/office/use-the-tasks-app-in-teams-e32639f3-2e07-4b62-9a8c-fd706c12c070) in Teams to track to do items for your whole health team. Your health team can create, assign, and schedule tasks, categorize tasks, and update status at any time, from any device running Teams. IT pros and admins can also publish tasks to specific teams for your organization. For example, you could publish a set of tasks for new safety protocols or a new intake step to be used across a hospital.

To learn more, see [Manage the Tasks app for your organization in Microsoft Teams](../../manage-tasks-app.md)

### Streamline approvals with the Approvals app

Use [Approvals](https://support.microsoft.com/office/what-is-approvals-a9a01c95-e0bf-4d20-9ada-f7be3fc283d3) to streamline all of your requests and processes with your team. Create, manage, and share approvals directly from your hub for teamwork. Start an approval flow from the same place you send a chat, in a channel conversation, or from the Approvals app itself. Just select an approval type, add details, attach files, and choose approvers. Once submitted, approvers are notified and can review and act on the request.

You can allow the Approvals app for your organization and add it to your teams. To learn more, see [Teams Approvals app availability](../../approval-admin.md).

### Create, manage, and share schedules with the Shifts app and Frontline Worker integration

Teams integrates with the Shifts app and Frontline Worker, which can be used to coordinate shift staffing features and more. For example, in Shifts, Nurse managers can set up and coordinate schedules for their staff, and nurses can check schedules and swap shifts. Teams includes a built-in Frontline Worker app setup policy that you can assign to Frontline Workers in your organization. By default, the policy includes the Activity, Shifts, Chat, and Calling apps. This policy controls behavior for these apps, for example, pinning the Shifts app to the app bar so the team can quickly access it.

To learn more, see [Manage the Shifts app for your organization in Microsoft Teams](../shifts/manage-the-shifts-app-for-your-organization-in-teams.md).

## Help your clinical and information workers get going with Teams

There are many resources available to help all of the users in your organization get comfortable with using Teams:

- Visit the [Teams adoption center](https://adoption.microsoft.com/microsoft-teams/) for advice on rolling out Teams if you are just starting your organization's journey with Teams, or expanding Teams into more areas of your organization.
- Consider setting up custom [learning pathways](https://adoption.microsoft.com/microsoft-365-learning-pathways/) for your users to cover just the tasks they need to do.
- Get help and training for your users on how to perform basic tasks in Teams on the [Teams support site](https://support.microsoft.com/teams), including [quick training videos](https://support.microsoft.com/office/microsoft-teams-video-training-4f108e54-240b-4351-8084-b1089f0d21d7). This site also has help and training for the Teams apps, including [Lists](https://support.microsoft.com/office/get-started-with-lists-in-teams-c971e46b-b36c-491b-9c35-efeddd0297db), [Tasks](https://support.microsoft.com/office/use-the-tasks-app-in-teams-e32639f3-2e07-4b62-9a8c-fd706c12c070), [Approvals](https://support.microsoft.com/office/what-is-approvals-a9a01c95-e0bf-4d20-9ada-f7be3fc283d3), [Bookings](https://support.microsoft.com/office/overview-of-the-bookings-app-in-teams-7b8569e1-0c8a-444e-b712-d9968b05110b), and [Shifts](https://support.microsoft.com/office/what-is-shifts-f8efe6e4-ddb3-4d23-b81b-bb812296b821).
