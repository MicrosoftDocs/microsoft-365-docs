---
title: Use Microsoft Teams Assignments LTI app with Blackboard by Anthology
description: Integrate and use the Microsoft Teams Assignments learning tool interoperability (LTI) app with Blackboard by Anthology.
author: jennplatt
ms.author: avering
manager: mimast
ms.date: 02/05/2025
ms.topic: article
ms.service: microsoft-365-business
---

# Use Microsoft Teams Assignments LTI® with Blackboard by Anthology

This guide provides steps for deploying the Microsoft Teams Assignments learning tool interoperability® (LTI®) app in Blackboard.

For an overview of all of the Microsoft integrations for learning management systems (LMS), see [Integrating Microsoft products with your Learning Management System](/microsoft-365/lti/).

> [!NOTE]
> This guide provides steps for registering the Teams Assignments app for Blackboard.
>
>The user who performs this integration should have a System Administrator system role in Blackboard.

> [!IMPORTANT]
> If you previously deployed the preview version of the integration, you need to re-deploy the tool in Blackboard following the new deployment steps included in this article. Our URLs changed and cannot currently be syncronized into your current preview deployment. The preview deployment should be deleted or hidden as the old URLs will not be supported in the near future and the old deployment will stop working.

> [!IMPORTANT]
>By installing and using the Teams Assignments LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## One-time setup by an LMS administrator

1. Sign into your Blackboard instance as an administrator.
1. Select the **Admin** link in the left side navigation to access the Administrator Tools Panel.
1. In the Administrator Tools Panel, select the **LTI Tool Providers** link and then select **Register LTI 1.3/Advantage Tool**.
1. In the **Client ID** field, type or copy and paste this ID: **38e448f9-eec9-48c7-a7e8-9b771711d843**
1. Review the prepopulated settings and make sure the **Tool Status** is **Approved** and then select **Submit** to complete the registration. It's recommended that you verify the **Placements** created for the tool to ensure the **Allow students access** option is enabled for both placements.
1. Teams Assignments is now installed and ready to be used as a tool in any course in your Blackboard environment.

> [!IMPORTANT]
> If prepopulated parameters or policies are edited, the app might not function properly. Double-check the enablement status of the app  and student access settings for each placement as your Blackboard configuration might disable them by default. Student settings on both the Teams Assignments and Link a Teams Assignment placement should have **Allow students access** enabled and **Launch in new window** disabled.
> 
> :::image type="content" source="media/teams-assignment-settings.png" alt-text="Screenshot of Teams Assignment settings." border="true":::

## Deployment options for class teams

A Microsoft class team must be connected to a Blackboard course to allow the instructor to link Teams Assignments as content and to sync back grades and feedback. There are a few ways to enable instructors to connect a team to their course.

- Required: Blackboard users must have their **Institutional Email** set to their Microsoft Entra UPN as described in our [Supporting Institutional Data Mapping](/microsoft-365/lti/teams-classes-with-blackboard) guidance in order to match users between the LMS course and class teams enrollments for grade sync.
- For the **Ultra experience for Blackboard** courses: It's recommended that the Microsoft Teams classes integration be used with Blackboard Ultra to enable automatic creation and linking of class teams. LMS administrators can enable the integration by following the [Use Microsoft Teams classes with Blackboard Ultra deployment guide](/microsoft-365/lti/teams-classes-with-blackboard).
- For the **Ultra or Original experience for Blackboard** courses:  Class teams can be created and rostered using [Microsoft School Data Sync](/schooldatasync/school-data-sync-overview), manually by instructors, or other methods. It's important that class team enrollments match the LMS course enrollment so that instructors can connect their teams to their courses and students assigned Teams Assignments can access their assignments and have grades in sync with the LMS gradebook.

## Browser settings

- Cookies should be allowed for Microsoft Assignments app.
- Popups shouldn't be blocked for Microsoft Assignments app.

> [!NOTE]
>
> - Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
> - The Microsoft Assignments app also works in the InPrivate mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.

## Ongoing use by course instructors and students

On their first access to the app, course instructors and students need to sign in using their Microsoft account to get started.

### Connect a class team to a course

**Instructors** must have a Microsoft class team connected with their Blackboard course to link Teams Assignments as content and sync back grades and feedback. There are a few ways to connect a team to a course:

- For the **Ultra experience for Blackboard** courses with Teams classes integration enabled:

    1. Select the **Enable Microsoft Teams** link in the **Details & Actions** right-side menu.

    :::image type="content" source="media/enable-teams.png" alt-text="Screenshot of the link for enabling Microsoft Teams." border="true":::

- For the **Ultra experience for Blackboard** courses without Teams classes integration enabled:

     1. Select the **View course and institution tools** link in the **Details & Actions** menu under the **Books & Tools** header in the right-side menu.
     1. Select the **Teams Assignments** link in the **Instructor Tools** menu.
     1. Follow the wizard prompts to connect one or more class teams to your course.
     1. If there's already a Team connected to your course, select the **Connect class teams** link in the upper-right to connect or disconnect Teams from the LMS course.

- For the **Original experience for Blackboard** courses:

    1. Select the **Tools** link in the left-side menu.
    1. Select the **Tools** dropdown to insert a new content item into the list and then choose **Link a Teams Assignment** from the list.

### Link Teams Assignments to course content list

**Instructors** can link a Teams Assignment into their course content list.

- For the **Ultra experience for Blackboard** courses:

    1. Select the **Content** tab in the top menu.
    1. Select the **+ (plus)** symbol to insert a new content item into the list and then choose **Content Market.**
    1. Select the **Link a Teams Assignment** tile in the Institution Tools list.

- For the **Original experience for Blackboard** courses:

    1. Select **Content** link in the left-side menu.
    1. Select the **Build Content** dropdown to insert a new content item into the list and then choose **Link a Teams Assignment** from the list.

In the Teams Assignments linking UX, instructors can choose to create a new or link one or more existing Teams Assignments from the list, and the linked assignments will display in the course content list.

### Create and link a Teams Assignment into the course content list

**Instructors** can create and link a Teams Assignment into their course content list.

- For the **Ultra experience for Blackboard** courses:

    1. Select the **Content** tab in the top menu.
    1. Select the **+ (plus)** symbol to insert a new content item into the list and then choose **Content Market.**
    1. Select the **Link a Teams Assignment** tile in the **Institution Tools** list.

- For the **Original experience for Blackboard** courses:

    1. Select the **Content** link in the left-side menu.
    1. Select the **Build Content** dropdown to insert a new content item into the list and then choose **Link a Teams Assignment** from the list.

In the Teams Assignments linking UX, instructors can choose to [Create a new Teams Assignment](https://support.microsoft.com/topic/create-an-assignment-in-microsoft-teams-23c128d0-ec34-4691-9511-661fba8599be) or link one or more existing Teams Assignments from the list, and the linked assignments will display in the course content list.

### Review and grade Teams Assignments

**Instructors** can review and grade Teams Assignment in their course content list.

1. Select the course **Content** tab.
1. Select a Teams Assignment in the content list.
1. Review the assignment details, and select the **Open in Teams** button to [review, grade, and return student work](https://support.microsoft.com/topic/grade-return-and-reassign-assignments-63e5efdd-be09-47f0-87ea-e8e4bcb45aa4).

### Review sync status

**Instructors** can review the sync status of grades from linked assignments, diagnose issues, and manage connected teams.

- For the **the Ultra experience for Blackboard** courses:

    1. Select the **View course and institution tools** link in  **Details & Actions** menu under the **Books & Tools** header in the right-side menu.
    1. Select the **Teams Assignments** link in the Instructor Tools menu.

- For the **Original experience for Blackboard** courses:

    1. Select the **Tools** link in the left-side menu.
    1. Select the **Tools** dropdown to insert a new content item into the list and then choose **Link a Teams Assignment** from the list.
  
In the Teams Assignments status UX, instructors can see all their linked Teams Assignments in one place and understand the sync status of grades and feedback from those assignments to the LMS gradebook.

### Review and launch Teams Assignments from the course content list

**Students** can review and launch Teams Assignments from the course content list.

1. Select the course content tab.
1. Select a Teams assignment the instructor added into the content list.
1. Review the assignment details and select the **Open in Teams** button to complete the assignment.
1. Select the **Submit** button.

## Getting help for admins and educators

- Canvas and Microsoft 365 admins can contact Microsoft [Education Support](https://aka.ms/edusupport) to help resolve configuration and deployment issues, for themselves or on behalf of users.
- Admins can learn about [other Microsoft 365 and Teams LMS integrations](https://aka.ms/LTIAdminDocs) available.
- Instructors can take the [Teams Assignments LTI® Microsoft Learn course](https://aka.ms/AssignmentsLTICourse) to learn to use the integration and get more help on Microsoft Teams Assignments.
- Educators and Learners can contact support or give feedback directly from the app through the help and feedback menu.

:::image type="content" source="./media/feedback.png" alt-text="Screenshot of link to send feedback for Microsoft Teams Assignments." border="true":::

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. ([www.imsglobal.org](https://www.imsglobal.org/))
