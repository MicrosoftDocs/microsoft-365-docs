---
title: Use Microsoft Teams Assignments with Powerschool Schoology
description: Integrate and use the Microsoft Teams Assignments learning tool interoperability (LTI) app with Powerschool Schoology
author: jennplatt
ms.author: avering
manager: mimast
ms.date: 09/12/2024
audience: admin
ms.topic: article
ms.service: microsoft-365-business
---
# Use Microsoft Teams Assignments with PowerSchool Schoology Learning

This guide provides the IT admin steps for deploying the Microsoft Teams Assignments learning tool interoperability (LTI) app in PowerSchool Schoology Learning.

For an overview of all of the Microsoft integrations for learning management systems (LMS), see [Integrating Microsoft products with your Learning Management System](/microsoft-365/lti/).

> [!IMPORTANT]
> The person who performs this integration should be an administrator of Schoology Learning. However, Schoology Learning users with access to the Schoology Learning **App Center** can also install the Teams Assignments app.

By installing and using the Teams Assignments LTI, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## Deploy the Teams Assignments app in Schoology Learning

1. Access the **Teams Assignments** app in the [**App Center**](https://app.schoology.com/apps) by copying this direct link into a browser: 'https://_\<apps\>_.schoology.com/apps/profile/7314774244' and replacing the _\<apps\>_ portion of the URL with your organizations custom subdomain (for example: districtXYZ.schoology.com/apps/profile/7314774244). Then browse to the app store profile.

1. Select **Login** in the upper right to log into your Schoology Learning instance as an administrator with access to install and configure the app.

1. Select the **Install LTI 1.3 App** button to begin the installation process.

1. Select the **I agree** button.

1. When asked if this app should be installed for your entire organization or just for you, select **Add to Organization**, and you're redirected to the **Organization Apps** page to complete the configuration.

1. From the [**Organization Apps list**](https://app.schoology.com/apps/school_apps), locate the **Teams Assignments** app and select the **Install/Remove** button.

1. To install the app for all courses, choose the **All Courses** checkbox and the **Course Admins Only** checkbox.

> [!NOTE]
> If you choose not to install the app for all courses, then Course Admins must install the app for themselves by either:
>
> - Selecting the **Install Your App(s)** link at the bottom of the course left rail navigation menu, and then selecting the **Teams Assignments** app to install.
> - Going to the [**Organization Apps list**](https://app.schoology.com/apps/school_apps), selecting the **Install/Remove** button, and choosing the courses in which to install the app.

## Use Teams Assignments in Schoology Learning
- On their first access of any Teams Assignments flow, users must sign in using their Microsoft 365 account.
- Users in Schoology Learning should have their email address populated with the UPN or primary email address from Microsoft 365/Microsoft Entra. This is required for grades to sync from Teams Assignments to the students in the Schoology Learning gradebook.
- A Microsoft class team needs to be connected to the Schoology Learning course section that uses Teams Assignments. The class team should have the same users and roles as the course section, with teachers as owners of the team and students as members in the team.

> [!IMPORTANT]
> For grading and feedback sync via LTI to the Schoology gradebook to work, the assignment needs to have a Category specified.

> [!TIP]
> Defining categories in Grade Setup and marking a category as the default (yellow star icon) ensures that Teams Assignments linked in Schoology have a category assigned automatically.

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
- Educators and Learners can contact support, or give feedback directly from the app through the help and feedback menu

![image](https://github.com/user-attachments/assets/157dcee7-141b-47e3-879b-60efa2fb0621)


Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. ([www.imsglobal.org](https://www.imsglobal.org/))
