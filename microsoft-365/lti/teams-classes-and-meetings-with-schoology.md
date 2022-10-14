---
title: Integrate Microsoft Teams meetings with Schoology LMS
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: microsoft-365-business
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
ms.localizationpriority: medium
description: Create and manage Teams meetings with Microsoft Learning Tools Interoperability (LTI) for Schoology LMS.
---

# Integrate Microsoft Teams meetings with Schoology LMS

This guide provides the IT admin steps for registering the Teams Meetings LTI app on Schoology.

For an overview of Microsoft LTI, see [Integrating Microsoft products with your Learning Management System (LMS)](index.md).

> [!NOTE]
> The person who performs this integration should be an administrator of Schoology. However, Schoology users with access to the Schoology **App Center** can also install the Microsoft Teams Meetings LTI app.

## Deploy the Teams Meetings LTI app in Schoology

1. Sign into your Schoology instance as an administrator with access to install and configure apps.
1. Access the **Microsoft Teams Meetings** app in the [**App Center**](https://app.schoology.com/apps) by opening this direct link [Microsoft Teams Meetings on Schoology](https://app.schoology.com/apps/profile/6017478062).
1. Select the **Install LTI 1.3 App** button to begin the installation process.
1. Select the **I agree** button.
1. You'll be asked if this app should be installed for your entire organization, or just for you. Select **Add to Organization**, and you'll be redirected to the **Organization Apps** page to complete the configuration.
1. From the [**Organization Apps list**](https://app.schoology.com/apps/school_apps), locate the **Microsoft Teams Meetings** app and select the **Configure** button.
    1. Copy the **Deployment ID** assigned to your deployment of the app.
        1. This ID will be used in the **Microsoft LMS Gateway** configuration process.
1. From the [**Organization Apps list**](https://app.schoology.com/apps/school_apps), locate the **Microsoft Teams Meetings** app and select the **Install/Remove** button.
    1. To install the app for all users, choose the **All Users** checkbox.
        1. Select only the roles that will have access to Microsoft Teams in your organization, like teachers, students, or system administrators.
    1. To install the app for all courses, choose the **All Courses** checkbox.
        1. Don't check the **Course Admins Only** option to ensure the app is available to all members of the course.
    1. To install the app for all groups, choose the **All Groups** checkbox.

> [!NOTE]
> If you choose not to install the app for all courses, then *Course Admins* must install the app for themselves by either:
>
> 1. Going to the [Organization Apps list](https://app.schoology.com/apps/school_apps), selecting the **Install/Remove** button, and choosing the courses in which to install the app.
> 1. Or, they can select the **Install Your App(s)** link at the bottom of the course left rail navigation menu, and then select the **Microsoft Teams Meetings** app to install.
