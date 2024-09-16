---
title: Use Microsoft Teams Assignments LTI app with Canvas
description: Integrate and use the Microsoft Teams Assignments learning tool interoperability (LTI) app with Canvas
author: jennplatt
ms.author: avering
manager: mimast
ms.date: 09/12/2024
audience: admin
ms.topic: article
ms.service: microsoft-365-business
---

# Use Microsoft Teams Assignments LTI® app with Canvas

The Microsoft Teams Assignments LTI® app brings the Learning Accelerators, Microsoft Forms, Whiteboard, OneNote pages, and all of the new generative AI features of Teams Assignments to your LTI® v1.3 Advantage compliant learning management system (LMS).

The integration allows you to connect class teams and add Teams Assignments right into your LMS assignments list where students can launch and complete them, and then sync grades automatically back to the LMS.

> [!NOTE]
> This guide provides IT admins steps for registering the Teams Assignments app in Canvas. The person who performs this integration should be an administrator of Canvas.

By installing and using the Assignments integration, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## Canvas and Microsoft 365 requirements for the integration

- **Grading Pass back from Teams Assignments to Canvas** - To send grades from Teams Assignments to the Canvas gradebook, we must map student identities between Canvas and the Microsoft Entra ID directory services. The Canvas user **Email** field must be populated with the matching Microsoft 365 user UPN or primary email address. Verify this field is populated for every student who will use Teams Assignment in Canvas to ensure grades and feedback can sync back to the Canvas gradebook.
- **Rostering Microsoft Class Teams to Connect to Canvas Courses** - There are multiple options that can be used to create and roster Microsoft Class Teams to connect with your Canvas courses and use the Teams Assignments integration. Using the [Canvas integration for Microsoft Teams Sync](/microsoft-365/lti/teams-classes-with-canvas#enable-the-microsoft-teams-app-in-canvas) ensures that teams are created only for educators who enable them and are kept in sync automatically with the Canvas course roster. [Microsoft School Data Sync](/schooldatasync/school-data-sync-overview) can be used for district and school-wide team deployments kept in sync with the SIS/MIS for course or sections. If you enable educators to create their own teams, they can do so and connect those teams to courses for things like labs, cohorts, and other groups.
- **Enabling the Microsoft Teams Assignment App in Class Teams** - The Microsoft Assignments app for Teams must be enabled in the class teams you use with the Teams Assignments LMS integration. Read more about [the Teams Assignments app and how to enable it for users](/microsoftteams/expand-teams-across-your-org/assignments-in-teams).

## Deployment options

### Option 1:  Deployment to all courses in a Canvas Sub-Account with option for left nav placement visible or hidden by default in course menus

This method requires a one-time setup by the administrator.

1. Sign into your Canvas instance as an administrator.
1. Select the **Admin** link in the global navigation, and then select the Sub-Account to which you wish to deploy the app.
1. In the Admin navigation, select the **Developer Keys** link, and then choose the **Inherited** tab.
1. In the apps list, search for **Microsoft Teams Assignments**, and click the **Show All Keys** button to see additional pages of results in the view.
1. Enable the inherited dev key for the **Microsoft Teams Assignments** app in the list.  There will be two versions of the Microsoft Teams Assignments app listed: 
     - To deploy the app visible in the Course Navigation for all courses by default, enable the **"Microsoft Teams Assignments"** app with ID **170000000001876**
     - To deploy the app with the Course Navigation placement hidden by default, enable the **"Microsoft Teams Assignments (Course Nav Disabled)"** app with ID **170000000001877**
1. Toggle the **State** switch to **On** for the app version you wish to deploy.
1. Copy the ID you've enabled to the clipboard: You will need this app ID in step 12 below (or Option 2 step 4).
1. Select the **OK** button to confirm your choice.
1. In the **Admin** navigation, select the **Settings** link, and then choose the **Apps** tab.
1. Select the **View App Configurations** button, and then select the **+ App** button.
1. In the **Add App** screen, change the **Configuration Type** dropdown to **By Client ID**.
1. In the **Client ID** textbox, enter the app ID you enabled in step 6 above and then Click **Submit**
1. Select **Install** to complete the installation.

### Option 2:  Single course installation

If you choose not to install the app for all courses in an Sub-Account as described in steps 9 to 13, then you or each course teacher must install the app for individual courses.

1. To install the app for an individual course, select the **Settings** link in the course navigation, and then choose the **Apps** tab.
1. Select the **View App Configurations** button, and then select the **+ App** button.
1. In the **Add App** screen, change the **Configuration Type** dropdown to **By Client ID**.
1. In the **Client ID** textbox, enter the app ID you enabled in step 6 above (**170000000001876** or **170000000001877**), and then select **Submit**.
1. Select **Install** to complete the installation.

Teams Assignments is now be deployed and ready to use.

## Ongoing use by educators and students in a course

On their first access of any Teams Assignments flow, users must sign in using their Microsoft 365 account.

## Recommended browser settings

- Cookies should be allowed for Microsoft Assignments app.
- Popups shouldn't be blocked for Microsoft Assignments app.

> [!NOTE]
>
> - Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
> - The Microsoft Assignments LTI app also works in the InPrivate mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.

## Getting help for admins and educators

- Canvas and Microsoft 365 admins can contact Microsoft [Education Support](https://aka.ms/edusupport) to help resolve configuration and deployment issues, for themselves or on behalf of users.
- Admins can learn about [other Microsoft 365 and Teams LMS integrations](https://aka.ms/LTIAdminDocs) available.
- Educators can take the [Teams Assignments LTI Microsoft Learn course](https://aka.ms/AssignmentsLTICourse) to learn to use the integration and get more help on Microsoft Teams Assignments.
- Educators and Learners can contact support, or give feedback directly from the app through the help and feedback menu.

![image](https://github.com/user-attachments/assets/157dcee7-141b-47e3-879b-60efa2fb0621)


Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. ([www.imsglobal.org](https://www.imsglobal.org/))
