---
title: Integrate Teams Assignments with Moodle
description: Integrate and use the Microsoft Teams Assignments learning tool interoperability (LTI) app with Moodle.
author: jennplatt
ms.author: avering
manager: mimast
ms.date: 02/12/2025
ms.topic: article
ms.service: microsoft-365-business
---

# Use Teams Assignments LTI with Moodle™

This guide provides steps for deploying the Microsoft Teams Assignments Learning Tools Interoperability (LTI®) app in Moodle.

For an overview of all of the Microsoft integrations for learning management systems (LMS), see [Integrating Microsoft products with your Learning Management System](/microsoft-365/lti/).

> [!IMPORTANT]
>The user who performs this integration should have a **Site Administrator** role in Moodle with access to manage External tools Plugins.

By installing and using the Teams Assignments LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## One-time setup by an LMS administrator

**To register the application in the Microsoft registration portal:**

1. Sign in with a Microsoft 365 Education account to the [Microsoft LTI Registration Portal](https://lti.microsoft.com/registration).
1. Select **Add new registration**.
1. Select **Microsoft Teams Assignments** and then select **Next**.
1. Enter a friendly **Registration** name like "Teams Assignments for Moodle" and select **Moodle** as the LMS platform. Select **Next**.
1. You're given a list of keys that need to be added to your Moodle LMS. Copy these names and values; they're needed to complete the next few steps.
1. Leave your browser window open while you complete the tool registration steps. The Microsoft tool registration is completed later.

**To register the new external tool in Moodle:**

1. Open your Moodle site in a new tab or browser, and log in as a Site Administrator. Tip: **Don't** close the Microsoft LTI portal tab – we return there shortly!
1. Navigate to **Site administration > Plugins** and select **External tool** and then **Manage tools**.
1. Select **Configure a tool manually** and enter the values listed in the table:

    | Field in Moodle         | Value                                                   |
    |-------------------------|---------------------------------------------------------|
    | Tool name               | Teams Assignments                                       |
    | Tool URL                | Copy the **Target Link URL** value from the Microsoft registration |
    | LTI version             | LTI 1.3                                                 |
    | Initiate login URL      | Copy the **Open ID connection URL** value from the Microsoft registration |
    | Redirection URIs        | Copy the Redirect URL value from the Microsoft registration |
    | Custom Parameters       | t=$ResourceLink.title <br> csid=$CourseSection.sourcedId <br> usid=$Person.sourcedId |
    | Secure icon URL         | Copy the **Icon URL** value from the Microsoft registration |

1. Check the **Supports Deep Linking (Content-Item Message)** box.
1. Select the **Save changes** button.
1. In the **Tools** section, on the new **Teams Assignments** tile, select the **View configuration details** (magnifying glass icon) to view a modal with the configuration details required to copy to the Microsoft registration portal.

**To save the values obtained from Moodle into the Microsoft registration portal:**

1. On the Microsoft registration portal tab, select **Next** to navigate to LMS provided registration keys. Enter the values listed in the table:


    | Field in Microsoft registration portal | Value                                                      |
    |----------------------------------------|------------------------------------------------------------|
    | Issuer ID URL                          | Copy the **Platform ID** value from Moodle tool configuration details. |
    | Client ID                              | Copy the **Client ID** value from Moodle tool configuration details. |
    | Keyset URL                             | Copy the **Public keyset URL** value from Moodle tool configuration details. |
    | Platform authentication URL            | Copy the **Authentication request URL** value from Moodle tool configuration details. |
    | Deployment ID                          | Copy the **Deployment ID** value from Moodle tool configuration details. |
    | Access token URL                       | Copy the **Access token URL** value from Moodle tool configuration details. |

1. Select **Next** in the Microsoft registration portal tab.
1. Review the **Review and save** page. If there are no errors, select **Save and exit**. You should see a message indicating successful registration.

Microsoft Teams Assignments is now installed and ready to use on your Moodle site after teachers add it to their courses.

## Add Teams Assignments to a Moodle course as the teacher

After the initial setup of Teams Assignments as an LTI external tool in your Moodle site, course teachers need to add it to their courses to use it with their students.

**To connect a Microsoft Class Team to your course:**

You must have a Microsoft Class Team connected with your Moodle course to link Teams Assignments as activities and to sync grades and feedback.

- It's recommended to [install the Microsoft 365 Moodle plugins](/microsoft-365/lti/moodle-plugin-configuration) to create Class Teams and keep them in sync with your Moodle courses for instructors automatically.
- If the Class Team was created manually or by any other process, the instructor is prompted to connect a team on first access to the Teams Assignments app. They're presented a list of Class Teams in which they have a Teacher (owner) role and that aren't currently linked to any other course. Instructors can choose the Class Teams they wish to connect and save their selection.

> [!NOTE]
> Only Class Teams that aren't already linked to another LMS course are available to connect to a course. More than one Class Team can be linked to an LMS course. However, only one LMS course can be connected to a Class Team at a time. When multiple Class Teams are connected to an LMS course, instructors and students only are able to see and access the Class Teams they're members of.

**To add Teams Assignments to your course as an activity for students:**

1. In Moodle, set your course to **Edit** mode, and navigate to your course and in the course navigation, select **More > LTI External tools**.
1. Find **Teams Assignments** and turn on the **Show in activity chooser** toggle.
1. Navigate back to the course, ensure you are in **Edit** mode, and select **Add an activity or resource** in any of your course section lists.
1. Search for **Teams Assignments** and select it.
    > [!TIP]
    > If you select the star icon and favorite the activity, it appears in your starred list for quick access.
1. Select the **Select Content** button to launch the Teams Assignments linking UI.
    > [!NOTE]
    > If you have popups blocked for our app domain, you can see the indicator in the browser address bar and choose to disable popups for this site (see more on popups later in this article).
1. Select one or more existing assignments from the list or select the **Create** button to [create a new Teams Assignment](https://support.microsoft.com/topic/create-an-assignment-in-microsoft-teams-23c128d0-ec34-4691-9511-661fba8599be).
1. Select the **Link** button to link the assignment into your class activity list for students to complete.
1. Select a Teams Assignment in your activity list to see a summary of submitted and returned assignments and to open in Teams for grading. Grades and feedback entered in Teams are automatically transferred to your Moodle gradebook when an assignment is graded and returned to the student.

**To add a static resource launch to your course for assignment sync management and student teams access:**

1. in Moodle, set your course to **Edit** mode, navigate to your course and in the course navigation, and select **More > LTI External tools**.
1. Find **Teams Assignments** and turn on the **Show in activity chooser** toggle.
1. Navigate back to the course, ensure you are in **Edit** mode, and select **Add an activity or resource** in the **General** section.
1. Search for **Teams Assignments** and select it.
1. Enter **Microsoft Teams** as the **Activity** name.
1. Select **Save** and return to course.

The Teams Assignments resource launch is now available and ready to use in your course by both teachers and students.

## Browser settings

- Cookies should be allowed for the Microsoft Assignments app.
- Popups shouldn't be blocked for the Microsoft Assignments app.

> [!NOTE]
>
> - Third-party cookies are required to use the app. Cookies aren't allowed by default in browser in-private/incognito modes and need to be allowed.
> - The Microsoft Assignments app also works in the InPrivate mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.

## Getting help for admins and end users

- LMS admins can contact [Microsoft Education Support](https://aka.ms/edusupport) to help resolve configuration and deployment issues, for themselves or on behalf of users.
- LMS Admins can learn about [other Microsoft 365 and Teams LMS integrations](https://aka.ms/LTIAdminDocs) available.
- Instructors can take the [Teams Assignments LTI® Microsoft Learn course](https://aka.ms/AssignmentsLTICourse) to learn to use the integration and get more help on Microsoft Teams Assignments.
- Instructors and learners can contact support or give feedback directly from the app through the help and feedback menu.

:::image type="content" source="./media/feedback.png" alt-text="Screenshot of link to send feedback for Microsoft Teams Assignments." border="true":::

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. (`www.imsglobal.org`)

Moodle and the Moodle logo are trademarks of Moodle Pty Ltd.
