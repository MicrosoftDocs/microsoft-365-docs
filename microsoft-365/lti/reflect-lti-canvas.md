---
title: Integrate Microsoft Reflect LTI with Canvas
author: DaniEASmith
ms.author: danismith
manager: jacktremper
ms.reviewer: eladgr
ms.date: 12/07/2023
audience: admin
ms.topic: integration
ms.service: msteams
ms.subservice: teams-education
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
ms.localizationpriority: medium
description: Create impactful check-ins to gain wellbeing insights and build a happier, healthier learning community with the Microsoft Reflect Learning Tools Interoperability App for Canvas LMS.
---

# Integrate Microsoft Reflect LTI with Canvas

[Microsoft Reflect](https://reflect.microsoft.com) is a wellbeing app designed to foster connection, expression, and learning by promoting self-awareness, empathy, and emotional growth.
    
Reflect LTI integration with Canvas is designed in compliance with the latest Learning Tools Interoperability (LTI) standards, ensuring strong security and straightforward installation within your Canvas environment.

Integrate Reflect into Canvas to create impactful check-ins, gain wellbeing insights, and build a happier, healthier learning community.

> [!NOTE]
> This guide provides IT admins steps for registering the Reflect LTI app for Canvas LMS.
> 
> The person who performs this integration should be an administrator of Canvas.

## One-time setup by administrator

> [!TIP]
> Microsoft Reflect LTI Client ID for Canvas is **170000000000823**. You will use it when installing the app at the account level (for all courses in an account) or for individual courses.

1. Sign into your Canvas instance as an administrator.
1. Select the **Admin** link in the global navigation, and then select your account.
1. In the Admin navigation, select the **Developer Keys** link, and then choose the **Inherited** tab.
1. In the apps list, search for **Microsoft Reflect**, and then toggle the **State** switch to **On**.
1. Select the **OK** button to confirm your choice.
1. In the Admin navigation, select the **Settings** link, and then choose the **Apps** tab.
1. Select the **View App Configurations** button, and then select the **+ App** button.
1. In the **Add App** screen, change the **Configuration Type** dropdown to **By Client ID**.
1. In the **Client ID** textbox, enter the Microsoft Reflect LTI Client ID for Canvas: **170000000000823**, and then select **Submit**.
1. Select **Install** to complete the installation.

Reflect is now installed and ready to use in any course in your Canvas account.

> [!NOTE]
> If you choose not to install the app for all courses as described in steps 6 to 10, then you or each course teacher must install the app for individual courses.
> 
> 1. To install the app for an individual course, select the **Settings** link in the course navigation, and then choose the **Apps** tab.
> 1. Select the **View App Configurations** button, and then select the **+ App** button.
> 1. In the **Add App** screen, change the **Configuration Type** dropdown to **By Client ID**.
> 1. In the **Client ID** textbox, enter the Microsoft Reflect LTI Client ID for Canvas: **170000000000823**, and then select **Submit**.
> 1. Select **Install** to complete the installation.

## Ongoing use by course owners and members

After the initial setup, course owners and members will find a tab of **Reflect** in every course.

1. On their first access, they need to sign in using their Microsoft account to get started.
1. Course owners can [create and share check-ins](https://support.microsoft.com/topic/c6cbbacc-5655-450e-bca9-988ddc506017).
1. Once check-ins are created, course members can access and respond to them in their Reflect tab.

> [!TIP]
> [Explore the Educator Toolkit](https://reflect.microsoft.com/home/resources) for resources that can help educators bring the magic of Reflect to students and share it with peers. 

## Recommended browser settings

- Cookies should be allowed for Microsoft Reflect.
- Popups shouldn't be blocked for Microsoft Reflect.

> [!NOTE]
> Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
>
> Microsoft Reflect LTI works in the private mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.
