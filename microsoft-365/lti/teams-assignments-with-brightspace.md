---
title: Integrate Teams Assignments with Brightspace
description: Integrate and use the Microsoft Teams Assignments learning tool interoperability (LTI) app with Desire2Learn Brightspace.
author: DaniEASmith
ms.author: danismith
manager: mimast
ms.date: 02/10/2025
ms.topic: article
ms.service: msteams
ms.subservice: teams-education
---

# Use Teams Assignments LTI with Desire2Learn Brightspace

This guide provides steps for deploying the Microsoft Teams Assignments Learning Tools Interoperability (LTI®) app in Brightspace.

For an overview of all of the Microsoft integrations for learning management systems (LMS), see [Integrating Microsoft products with your Learning Management System](/microsoft-365/lti/).

> [!IMPORTANT]
> The user who performs this integration should have a Super Administrator or Administrator system role in Brightspace with access to manage External Learning Tools.

By installing and using the Teams Assignments LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## One-time setup by an LMS administrator

**To register the application in the Microsoft registration portal:**

1. Sign in with your **Microsoft 365 Education** user account to the [Microsoft Registration Portal](https://lti.microsoft.com/registration).
1. Select **Add new registration**.
1. Select **Microsoft Teams Assignments** and then select **Next**.
1. Enter a friendly **Registration** name like "Teams Assignments for Brightspace" and select **D2L Brightspace** as the LMS platform. Select **Next**.
1. You're given a list of keys that need to be added to your Brightspace LMS site. Copy these names and values; they are needed to complete the next few steps.
1. Leave your browser window open while you complete the tool registration steps. The Microsoft tool registration is completed later.

**To register the new extensibility tool, add a deployment, and add links to the tool to your courses in Brightspace:**

1. Log into Brightspace as an Administrator or Super Administrator with permissions to **Manage Extensibility** and **External Tools**.
1. In Brightspace, navigate to **Admin Tools** **(gear icon)** > **Manage Extensibility** and then select the **Register Tool** button.
1. Select the **Standard** registration radio button and enter the values listed in the table:

| Field in Brightspace         | Value                                                   |
|------------------------------|---------------------------------------------------------|
| Name                         | Microsoft Teams Assignments.                             |
| Domain                       | Copy the **Target Link URL** value from the Microsoft registration. |
| Redirect URLs                | Copy the **Redirect URL** value from the Microsoft registration. |
| OpenID Connect Login URL     | Copy the **Open ID connection URL** value from the Microsoft registration. |
| Target Link URI              | Copy the **Target Link URL** value from the Microsoft registration. |

1.Check the following **Extensions** options, and add the following **Substitution Parameters** to the registration:

:::image type="content" source="./media/brightspace-extensions.png" alt-text="Screenshot of Extensions and Substitution Parameters." border="true":::

1. Select the **Register** button.
1. A modal with Brightspace registration details appears. Copy these names and values as they need to be entered into the Microsoft Registration Portal to complete registration. You can return to the registration to copy the values later if needed.

**To save the values obtained from Brightspace in the Microsoft tool registration portal:**

1. On the **LMS provided registration keys** tab, select **Next** to navigate to **LMS provided registration keys**. Enter the values listed in the table which were copied from Brightspace in the previous steps.

| Microsoft registration field           | Brightspace registration value             |
|----------------------------------------|--------------------------------------------|
| Issuer ID URL                          | Issuer                                     |
| Client ID                              | Client ID                                  |
| Keyset URL                             | Brightspace Keyset URL                     |
| Platform authentication URL            | OpenID Connect Authentication Endpoint     |
| Deployment ID                          | Deployment ID                              |
| Access Token URL                       | Brightspace OAuth2 Access Token URL        |

1. Select **Next**, review the **Review and save** page, and then select **Save and exit** to complete the update.

You now have a tool registration configured in the Microsoft registration portal and both a registration and a deployment of the tool in Brightspace. The next steps create links in Brightspace to add to courses.

**To add a deployment of Microsoft Teams Assignments in your D2L Brightspace courses:**

1. Navigate to **Admin Tools** > **External Learning Tools**.
1. Select **New Deployment**.
1. Select **Microsoft** **Teams Assignments** as the **Tool** and enter **Microsoft** **Teams Assignments** as the **Name**.
1. Select ***all*** Security Settings ***except*** **Anonymous** (including Org Unit information, User Information, Link Information).
1. In Configuration Settings, select **Grades created by LTI will be included in Final Grade** and **Auto Create Grade Items**. Make sure that **Open as External Resource** is **not** checked.
1. Select **Add Org Units**. Select the orgs you wish to deploy to, or the **root org** or **all** units to deploy the app for all orgs.
1. Select **Create Deployment** and confirm the deployment.
1. From the deployments list, select the **Microsoft** **Teams Assignments** deployment, scroll down to **Deployment Id** at the bottom, and save this value and its name, as it also is required in the Microsoft Registration portal.

**To add links to Microsoft Teams Assignments in your D2L Brightspace courses:**

1. In Brightspace, navigate to **Admin Tools** > **External Learning Tools**.
1. Select **Microsoft Teams Assignments**.
1. Scroll down to select **View Links**.

**To create a Basic Launch Link for course navbars:**

1. Select **New Link**.
1. Enter **Teams Assignments** as the **Name**.
1. For the **URL**, enter: **`https://assignments.edu.cloud.microsoft/lti-ui`**.
1. For the **Type**, select **Basic Launch**.
1. Select **Save and Close** to create the link.

**To create a Deep Linking Quicklink for content activities:**

1. Select **New Link**.
1. Enter **Teams Assignments** as the **Name**.
1. For the **URL**, enter: **`https://assignments.edu.cloud.microsoft/lti-ui`**.
1. Select **Deep Linking Quicklink** for the **Type**.
1. Select **Save and Close** to create the link.

**To create a Widget link to add to course homepage layouts:**

1. Select **New Link**.
1. Enter **Teams Assignments** as the **Name**.
1. For the **URL**, enter: **`https://assignments.edu.cloud.microsoft/lti-ui`**.
1. For the **Type**, select **Widget**.
1. Select **Save and Close** to create the link.

**To add links to your Navigation and Themes for instructors to use in their courses:**

1. Navigate to **Admin Tools** > **Navigation and Themes**.
1. Select **Standard Course Navigation** and then **Add Links**.
1. Select **Create Custom Link**.
1. Enter **Teams Assignments** as the **Name**.
1. For the **URL**, select **Insert Quicklink**, and then **Teams Assignments**.
1. Select **Same window** for **Behavior**.
1. Select **Create**.
1. Ensure that the **Teams Assignments** checkbox is selected, and then select **Add**.
1. Drag the Teams Assignments link to your preferred location in the course navigation.
1. Select **Save and Close**.

## Deployment options for Class Teams

A Microsoft Class Team must be connected to a Brightspace course to allow the instructor to link Teams Assignments as content and to sync back grades and feedback. There are a few ways to enable instructors to connect a team to their course.

- **Required**: Brightspace users must have their **Institutional Email** set to their Microsoft Entra UPN as described in our [Supporting Institutional Data Mapping](/microsoft-365/lti/teams-classes-with-blackboard) guidance in order to match users between the LMS course and Class Teams enrollments for grade sync.
- **Recommended**: Use the [Course Connector For Class Teams](https://community.d2l.com/brightspace/kb/articles/23776-brightspace-course-connector-for-microsoft-teams) to create teams in sync with your Brightspace courses.
- [Microsoft School Data Sync](/SchoolDataSync/) can also create teams in sync with your Brightspace courses provided you supply the same rostering details via CSV or OneRoster API.

## Browser settings

- Cookies should be allowed for the Microsoft Assignments app.
- Popups shouldn't be blocked for the Microsoft Assignments app.

> [!NOTE]
>
> - Cookies aren't allowed by default in the Chrome browser incognito mode and need to be allowed.
> - The Microsoft Assignments app also works in the InPrivate mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.

## Ongoing use by course instructors and students

On their first access to the app, course instructors and students need to sign in using their Microsoft 365 / Microsoft Entra ID account to get started.

### Instructors: Connect a Class Team to a course

Instructors must have a Microsoft Class Team connected with their course to link Teams Assignments as content and sync back grades and feedback.

- Follow the instruction in the [Course Connector For Class Teams](https://community.d2l.com/brightspace/kb/articles/23776-brightspace-course-connector-for-microsoft-teams) and then Class Teams are created and connected for you.
- If the Class Team was created manually or by any other process, the instructor is prompted to connect a team on first access to the app. They're presented a list of Class Teams in which they have a Teacher (owner) role and that aren't currently linked to any other course. Instructors can choose the Class Teams they wish to connect and save their selection.

> [!NOTE]
> Only Class Teams that aren't already linked to another LMS course are available to connect to a course. More than one Class Team can be linked to an LMS course. However, only one LMS course can be connected to a Class Team at a time. When multiple Class Teams are connected to an LMS course, instructors and students only are able to see and access the Class Teams they're members of.

### Instructors: Link a Teams Assignment into a course content list

Instructors can link a Teams Assignment into their course content list by selecting **Teams Assignment** in the **Existing Activities** menu and selecting or creating a Teams Assignment to link.

### Instructors: Review and grade Teams assignments in the course content list

Instructors can review and grade Teams Assignment in their course content list.

1. Select the course **Content** tab.
1. Select a Teams Assignment in the content list.
1. Review the assignment details, and select the **Open in Teams** button to [review, grade, and return student work](https://support.microsoft.com/topic/grade-return-and-reassign-assignments-63e5efdd-be09-47f0-87ea-e8e4bcb45aa4).

Instructors can add the Teams Assignments course navbar link or widget to review sync status of grades from linked assignments, diagnose issues, and manage connected teams.

1. Select the **… menu** at the end of the course navbar and choose **Edit This Navbar** option. In the **Edit Navbar Links** section, select the **Add Links** button and choose the Teams Assignments link to add from the list.
1. Choose the **More > Course Tools > All Course Tools** in the course navbar. Select **Homepages** and then select the Active homepage to edit it. In the Widgets section of the homepage editor, select **Add Widgets**, and select the Teams Assignments widget, and then select **Add**.

### Students: Review and launch Teams Assignments from the course content list

Students can review and launch Teams Assignments from the course content list.

1. Select the course **Content** tab.
1. Select a Teams Assignment the instructor added into the content list.
1. Review the assignment details and select the **Open in Teams** button to complete the assignment.
1. Select the **Submit** button.

Students can use the Teams Assignments course navbar link or Widget to see the Class Team connected with the LMS course and open it.

## Getting help for admins and educators

- Canvas and Microsoft 365 admins can contact Microsoft [Education Support](https://aka.ms/edusupport) to help resolve configuration and deployment issues, for themselves or on behalf of users.
- Admins can learn about [other Microsoft 365 and Teams LMS integrations](https://aka.ms/LTIAdminDocs) available.
- Instructors can take the [Teams Assignments LTI® Microsoft Learn course](https://aka.ms/AssignmentsLTICourse) to learn to use the integration and get more help on Microsoft Teams Assignments.
- Educators and Learners can contact support or give feedback directly from the app through the help and feedback menu.

:::image type="content" source="./media/feedback.png" alt-text="Screenshot of link to send feedback for Microsoft Teams Assignments." border="true":::

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. ([www.imsglobal.org](https://www.imsglobal.org/))
