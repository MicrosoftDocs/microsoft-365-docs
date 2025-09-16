---
title: Deploy the Microsoft 365 LTI App in Canvas
description: Learn how to deploy the Microsoft 365 Learning Tool Interoperability (LTI) app in Canvas.
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.date: 07/10/2025
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
# Deploy the Microsoft 365 LTI® app in Canvas

This guide provides steps for deploying the Microsoft 365 Learning Tool Interoperability® (LTI) app in Canvas.

:::image type="content" source="./media/canvas.png" alt-text="Screenshot of Canvas." border="true":::

For an overview of the Microsoft 365 LTI integration for learning management systems (LMS), see [Integrating Microsoft products with your Learning Management System](/microsoft-365/lti/).

> [!IMPORTANT]
> The person who deploys this integration should be an Administrator role in the LMS. A person in your organization who is a Microsoft 365 Global Administrator is also needed to help complete the configuration of the app before first time use.

By installing and using the Microsoft 365 LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## LMS requirements for the integration

### User matching between Microsoft apps and Canvas

To fully integrate with your LMS environment and perform tasks on behalf of users like populating students and co-teachers into OneNote Class Notebooks, setting file permissions, or sending grades from Assignments to the LMS gradebook, the Microsoft 365 LTI app must be able to map Student and Teacher identities between the LMS and the Microsoft Entra ID directory services. It's required to populate the LMS user Email field with the matching Microsoft 365/Microsoft Entra User UPN or Primary Email address. Verify this for people in every course that uses the integration to ensure the Microsoft apps can match LMS users.

## One-time setup by an LMS administrator

Canvas supports multiple tool deployment for the same tool through two different methods in the LMS. You can use either or both deployment methods to control which courses the tool is available in.

**To deploy for all courses in your Canvas top-level organization or a sub-organization account:**

1. Sign into your Canvas instance as an administrator.

1. Select the **Admin** icon in the left side global navigation, and then select the organization account in Canvas that you wish to deploy into.

1. In the left-side navigation, select the **Developer Key** link, and then choose the **Inherited** tab.

1. In the apps list, search for **Microsoft Education.** If the ***Nothing Here Yet*** message is displayed after typing your search, select the **Show All Keys** button.

1. There are three Developer Keys for the Microsoft Education API app: two LTI keys and one API key.
    :::image type="content" source="./media/canvas-developer-keys.png" alt-text="Screenshot of developer keys." border="true":::
    1. Enable the API key **170000000001941** by toggling the **State** switch to **On** and then selecting the **Switch to On** button in the pop up to confirm.
    1. Decide which version of the LTI key you would like to deploy and toggle the **State** switch to **On** and then select the **Switch to On** button in the pop up to confirm. You will need to know which Client ID listed in the Details column for the developer key you chose to enable for a later step.
  
    > [!NOTE]
    > The apps are identical. However the "(Course Nav Disabled)" app has the course navigation placement disabled by default, which might be useful for testing but is less discoverable by instructors since they must locate and enable it in their course menu to leverage the apps and make visible to their students. If you decide to change this default after testing, you can disable the version you have chosen currently, and repeat these instructions for the other app. We strongly recommend using the first key with course nav enabled to help with discoverability and to drive awareness with your instructors.

1. In the left-side navigation, select the **Settings** link, and then choose the **Apps** tab.

1. Select the **View App Configurations** button at the top right, and then select the **+ App** button.

1. In the **Add App** dialog, change the **Configuration Type** dropdown to **By Client ID**.

1. In the **Client ID** textbox, enter the Client ID you chose to enable in step 5:

    - If you enabled the **Microsoft Education** app in step 5, enter Client ID **170000000001935**, and then select **Submit**.
    - If you enabled the **Microsoft Education (Course Nav Disabled)** app in step 5, enter Client ID **170000000001936**, and then select **Submit**.

1. Select **Install** to complete the installation.

1. *Recommended:* Before leaving the app list, locate the app in the installed app list, and toggle the **Add to RCE Toolbar** to ensure the app icon appears in the Rich Content Editor for easy discoverability.

**To deploy for a single course:**

If you choose not to install the app for all courses as described in *Option 1: Deploy for all courses in an organization*, then the LMS Admin or each course teacher must install the app for individual courses.

1. To install the app for an individual course, select the **Settings** link in the course navigation, and then choose the **Apps** tab.

1. Select the **View App Configurations** button, and then select the **+ App** button.

1. In the **Add App** screen, change the **Configuration Type** dropdown to **By Client ID**.

1. In the **Client ID** textbox, enter the Client ID: **170000000001935**, and then select **Submit**.

1. Select **Install** to complete the installation.

1. *Recommended:* Before leaving the app list, locate the app in the installed app list, and toggle the **Add to RCE Toolbar** to ensure the app icon appears in the Rich Content Editor for easy discoverability.

1. A Canvas Administrator must complete the steps for **First-time Configuration by an LMS Administrator.** (This configuration only must be done once for the Canvas and Microsoft 365 tenant).

## First-time configuration by an LMS administrator

You must launch the app for the first time as a user with the **Canvas Administrator** role to complete the configuration for your deployment and activate the tool. Users won't have access until you complete this step!

1. As a Canvas Administrator, select the **Admin** icon on the left bar, and then select the name of the organizational account where the tool was deployed

1. Select the **Microsoft Education** link in the left side navigation to launch the admin setup experience.

    :::image type="content" source="./media/microsoft-education-navigation.png" alt-text="Screenshot of Microsoft Education in the navigation pane." border="true":::

1. Continue with the [**Microsoft 365 LTI first-time configuration steps**](microsoft-365-lti-first-time-configuration.md) to complete the configuration for your organization.

The Microsoft Education app is now deployed, configured, and ready to use in your Canvas courses!

## Ongoing use by educators and students in a course

On first access, users must sign in using their Microsoft 365 (Microsoft Entra) account.

Learn more about Microsoft 365 LTI application scenarios for Instructors and Students.
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
