---
title: Integrate Microsoft Reflect LTI with Moodle
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: eladgr
ms.date: 11/28/2023
audience: admin
ms.topic: article
ms.service: o365-administration
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
ms.localizationpriority: medium
description: Create impactful check-ins to gain wellbeing insights and build a happier, healthier learning community with the Microsoft Reflect Learning Tools Interoperability App for Moodle.
---

# Integrate Microsoft Reflect LTI with Moodle

[Microsoft Reflect](https://reflect.microsoft.com) is a wellbeing app designed to foster connection, expression, and learning by promoting self-awareness, empathy, and emotional growth.
    
Reflect LTI integration with Moodle is designed in compliance with the latest Learning Tools Interoperability (LTI) standards, ensuring strong security and straightforward installation within your Moodle site.

Integrate Reflect into Moodle to create impactful check-ins, gain wellbeing insights, and build a happier, healthier learning community.

## One-time setup by administrator

> [!NOTE]
> This section provides IT admins steps for registering the Reflect LTI app for Moodle.
> 
> The person performing this initial registration should be an administrator of the Moodle site and Microsoft 365 tenant.

1. Sign in with a *Microsoft 365 administrator account* to the [Microsoft LTI Registration Portal](https://lti.microsoft.com/registration). 
1. Select **Add new registration**.
1. Select **Microsoft Reflect** and then select **Next**.
1. Enter a friendly **Registration** name like *Reflect for Moodle* and select **Moodle** as the LMS platform. Select **Next**.
1. You're given a list of keys that need to be added to your Moodle site.
1. Open your Moodle site in another tab. ***Don't*** close the Microsoft LTI portal tab.
1. On Moodle, navigate to **Site administration** > **Plugins** and select **External tool** then **Manage tools**.
1. Select **Configure a tool manually** and enter the values listed in the table:

    | Field on Moodle                        | Value                                |
    | -------------------------------------- | ------------------------------------ |
    | Tool name                              | Microsoft Reflect                    |   
    | Tool URL                               | https://reflect.microsoft.com/app        |
    | LTI version                            | LTI 1.3        |
    | Initiate login URL                     | Copy the **Open ID connection URL** value from Microsoft LTI keys.                           |   
    | Redirection URI(s)                    | Copy the **Redirect URL** value from Microsoft LTI keys.|   
1. Select the **Save changes** button.
1. In the **Tools** section, on the new **Microsoft Reflect** tile, select the **View configuration details** icon to view a modal with the configuration details for the Microsoft LTI portal.
1. On the **Microsoft LTI portal** tab, select **Next** to navigate to **LMS provided registration keys**. Enter the values listed in the table:

    | Field on Microsoft LTI registration portal | Value                            |
    | -------------------------------------- | ------------------------------------ |
    | Issuer ID URL                          | Copy the **Platform ID** value from Moodle tool configuration details.                                   |
    | Client ID                              | Copy the **Client ID** value from Moodle tool configuration details.                                |
    | Keyset URL                             | Copy the **Public keyset URL** value from Moodle tool configuration details.                   |
    | Platform authentication URL            | Copy the **Authentication request URL** value from Moodle tool configuration details.   |
    | Deployment ID                          | Copy the **Deployment ID** value from Moodle tool configuration details.   |
    | Access token URL                       | Copy the **Access token URL** value from Moodle tool configuration details.   |

1. Select **Next** in the Microsoft LTI registration portal tab.
2. Review the **Review and save** page. If there are no errors, select **Save and exit**. You should see a message indicating successful registration.

Reflect is now installed and ready to use on your Moodle site after teachers add it to their courses.

## Add Reflect to a course as the course teacher

> [!IMPORTANT]
> After the initial setup of Reflect as an LTI external tool in your Moodle site, course teachers need to add it to their courses to use it with their students.

1. On Moodle, navigate to your course and in the course navigation, select **More** > **LTI External tools**.
1. Find **Microsoft Reflect** and turn on the **Show in activity chooser** toggle.
1. Navigate back to the course, ensure you are in **Edit mode**, and select **Add an activity or resource** in the **General** section.
1. Search for **Microsoft Reflect** and select it.
1. Enter **Microsoft Reflect** as the **Activity name**.
1. Select **Save and return to course**.

Reflect is now installed and ready to use in your course by both teachers and students.

## Ongoing use by course teachers and students

1. After the initial course setup, teachers and students will find a link to Reflect in the **General** section.
1. On their first access, they need to sign in using their Microsoft account to get started.
1. Course teachers can [create and share check-ins](https://support.microsoft.com/topic/c6cbbacc-5655-450e-bca9-988ddc506017).
1. Once check-ins are created, course students can access and respond to them by navigating to their Reflect link.

> [!TIP]
> [Explore the Educator Toolkit](https://reflect.microsoft.com/home/resources) for resources that can help educators bring the magic of Reflect to students and share it with peers. 

## Recommended browser settings

- Cookies should be allowed for Microsoft Reflect.
- Popups shouldn't be blocked for Microsoft Reflect.

> [!NOTE]
> Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
>
> Microsoft Reflect LTI works in the private mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.
