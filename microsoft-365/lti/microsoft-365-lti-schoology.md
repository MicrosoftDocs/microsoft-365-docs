---
title: Deploy the Microsoft 365 LTI App in Schoology
description: Learn how to deploy the Microsoft 365 Learning Tool Interoperability (LTI) app in PowerSchool Schoology Learning.
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.date: 07/21/2025
audience: admin
ms.topic: how-to
ms.service: msteams
ms.subservice: teams-education
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
ms.localizationpriority: medium
---
# Deploy the Microsoft 365 LTI® app in PowerSchool Schoology Learning

This guide provides steps for deploying the Microsoft 365 Learning Tool Interoperability® (LTI®) app in Schoology.

:::image type="content" source="./media/schoology.png" alt-text="Screenshot of Schoology." border="true":::

> [!IMPORTANT]
> The person who deploys this integration should be an Administrator role in the learning management system (LMS). A person in your organization who is a Microsoft 365 Global Administrator is also needed to help complete the configuration of the app before first time use.

By installing and using the Microsoft Education LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## LMS Requirements for the Integration

### User matching between Microsoft 365/Entra ID and the LMS

To fully integrate with your LMS environment and perform tasks on behalf of users like populating students and co-teachers into OneNote Class Notebooks, setting file permissions, or sending grades from Assignments to the LMS gradebook, the Microsoft 365 LTI app must be able to map Student and Teacher identities between the LMS and the Microsoft 365 Entra ID directory services. It's required to populate the LMS user Email field (which is the same email value returned from the LTI Names and Roles Provisioning Service) with the user's Microsoft 365/Entra User UPN or Primary Email address. Verify this for people in every course that will use the integration to ensure the Microsoft apps can match LMS users.

## One-time setup by an LMS administrator

1. Access the **Teams Assignments** app in the **Schoology** [**App Center**](https://app.schoology.com/apps) by copying this direct link into a browser: `https://_\<apps>_.schoology.com/apps/profile/7876809197` and replacing the _\<apps>_ portion of the URL with your organizations custom subdomain (for example: districtXYZ.schoology.com/apps/profile/7876809197). Then browse the app store profile.

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

## First-time Configuration by an LMS Administrator

You must launch the app for the first time as a user with the **System Admin** role to complete the configuration for your deployment and activate the tool. Users won't have access until you complete this step!

1. As a System Admin, access any Course that has the Microsoft Education link added

1. Continue with the [**Microsoft 365 LTI first-time configuration steps**](microsoft-365-lti-first-time-configuration.md) to complete the configuration for your organization.

## Ongoing use by instructors and students in a course

On first access, users must sign in using their Microsoft 365 (Microsoft Entra) account.

Learn more about Microsoft 365 LTI application scenarios for Instructors and Students
<!-- -->
## Browser settings

- Cookies should be allowed for Microsoft apps.

- Popups shouldn't be blocked for Microsoft apps.

If you receive an error message regarding cookies being blocked, check your browser's address bar for an icon to allow third-party cookies and popups. If this issue persists, review your settings related to cookies and popups to make sure they're allowed for this app.

## Getting help and giving feedback

- LMS and Microsoft 365 admins can contact Microsoft [Education Support](https://aka.ms/edusupport) to help resolve configuration and deployment issues, for themselves or on behalf of users.

- Educators and Learners can contact support or give feedback directly from the app through the help and feedback menu.

:::image type="content" source="./media/help-and-feedback.png" alt-text="Screenshot of link to send feedback for Microsoft 365 LTI." border="true":::

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. (**[**1edtech.org**](https://1edtech.org)**).
