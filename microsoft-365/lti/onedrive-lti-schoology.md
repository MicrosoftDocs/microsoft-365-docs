---
title: Integrate Microsoft OneDrive LTI with Schoology Learning
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: amitman 
ms.date: 08/08/2022
audience: admin
ms.topic: integration
ms.service: o365-administration
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
ms.localizationpriority: medium
description: Create and grade assignments, build and curate course content, and collaborate on files in real time with the new Microsoft OneDrive Learning Tools Interoperability App for PowerSchool Unified Classroom® Schoology Learning.
---

# Integrate Microsoft OneDrive LTI with Schoology Learning

This guide provides IT admins steps for registering the OneDrive LTI app for PowerSchool Unified Classroom® Schoology Learning.

For an overview of Microsoft LTI, see [Integrating Microsoft products with your Learning Management System (LMS)](index.md).

The person who performs this integration should be an administrator of Schoology Learning and an administrator of the Microsoft 365 tenant.

## Recommended browser settings

- Cookies should be allowed for Microsoft OneDrive.
- Popups shouldn't be blocked for Microsoft OneDrive.

> [!NOTE]
> Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
>
> Microsoft OneDrive LTI works in the private mode in Microsoft Edge browser. Ensure that you haven't blocked cookies (which are allowed by default).

## Register a new Microsoft OneDrive LTI app for your Microsoft 365 tenant

1. Sign into the [Microsoft OneDrive LTI Registration Portal](https://onedrivelti.microsoft.com/admin) using an Office 365 Global Admin credential.
1. Select the **Admin Consent** button and accept the permissions.
    1. If this step isn't completed successfully, the following step will give you an error, and you may not be able to take this step for an hour once you've gotten the error. If the consent fails, ensure you're signed in as a Global Admin and repeat this step.
1. Select the **Create new LTI Tenant** button.
1. In the **LTI Consumer Platform** list, select **Schoology**.
1. In the **Schoology Base URL** field, enter your Schoology Learning base URL, like `https://testschool.schoology.com`.
1. Select the **Next** button. The **Register LTI 1.3 App** page will load.

## Deploy the OneDrive LTI app in Schoology Learning

1. Sign into your Schoology Learning instance as an administrator with access to install and configure apps.
1. Access the **Microsoft OneDrive** app in the [**App Center**](https://app.schoology.com/apps) by opening this direct link [Microsoft OneDrive on Schoology Learning](https://app.schoology.com/apps/profile/5910037138).
1. Select the **Install LTI 1.3 App** button to begin the installation process.
1. Select the **I agree** button.
1. You'll be prompted to share required information with the app and to confirm access to *LTI Advantage services*, like **Deep Linking**, **Names and Roles**, and **Assignments and Grading**. Select the **Continue** button.
1. You'll be asked if this should be installed for your entire organization, or just for you. Select **Add to Organization**, and you'll be redirected to the **Organization Apps** page to complete the configuration.
1. From the [**Organization Apps list**](https://app.schoology.com/apps/school_apps), locate the **Microsoft OneDrive** app and select the **Configure** button.
    1. Copy the **Deployment ID** assigned to your deployment of the app.
        1. This ID will be used in the **Microsoft LMS Gateway's** configuration process.
1. From the [**Organization Apps list**](https://app.schoology.com/apps/school_apps), locate the **Microsoft OneDrive** app and select the **Install/Remove** button.
    1. To install the app for all courses, choose the **All Courses** checkbox.
        1. Don't check the **Course Admins Only** option to ensure the app is available to all members of the course.

> [!NOTE]
> If you choose not to install the app for all courses, then *Course Admins* must install the app for themselves by either:
>
> 1. Going to the [Organization Apps list](https://app.schoology.com/apps/school_apps), selecting the **Install/Remove** button, and choosing the courses in which to install the app.
> 1. Or, they can select the **Install Your App(s)** link at the bottom of the course left rail navigation menu, and then select the **Microsoft OneDrive** app to install.
