---
title: Deploy the Microsoft 365 LTI&reg; app in Moodle
description: Learn how to deploy the Microsoft 365 Learning Tool Interoperability (LTI) app in Moodle.
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.date: 08/14/2025
audience: admin
ms.topic: how-to
ms.service: microsoft-365-education
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
- m365-education
- all-education
ms.localizationpriority: medium
---

# Deploy the Microsoft 365 LTI&reg; app in Moodle&trade;

This guide provides steps for deploying the Microsoft 365 Learning Tool Interoperability&reg; (LTI) app in Moodle.

:::image type="content" source="./media/moodle.png" alt-text="Screenshot of Moodle." border="true":::

For an overview of the Microsoft 365 LTI integration for learning management systems (LMS), see [Integrating Microsoft products with your Learning Management System](/microsoft-365/lti/).

> [!IMPORTANT]
> The person who deploys this integration should be a **Site Administrator role in Moodle**. A person in your organization who is a **Microsoft 365 Global Administrator** is also needed to help complete the configuration of the app before first time use. [Learn more about administrator roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

By installing and using the Microsoft Education LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## LMS requirements for the integration

### User matching between Microsoft 365/Entra ID and the LMS

To fully integrate with your LMS environment and perform tasks on behalf of users like populating students and co-teachers into OneNote Class Notebooks, setting file permissions, or sending grades from Assignments to the LMS gradebook, the Microsoft 365 LTI app must be able to map Student and Teacher identities between the LMS and the Microsoft 365 Entra ID directory services. It's required to populate the LMS user Email field (which is the same email value returned from the LTI Names and Roles Provisioning Service) with the user's Microsoft 365/Microsoft Entra User UPN or Primary Email address. Verify this for people in every course that will use the integration to ensure the Microsoft apps can match LMS users.

## One-time setup by an LMS administrator

**To register the application in the Microsoft registration portal:**

1. Sign in to the [Microsoft LTI Registration Portal](https://lti.microsoft.com/registration) with any **Microsoft 365 account** in the Microsoft 365 tenant you'll be using with Moodle.

1. Select **Add new registration**.

1. Select **Microsoft 365 LTI** and then select **Next**.

1. Enter a friendly **Registration name** like "Microsoft Education for Moodle" and select **Moodle** as the LMS platform. Select **Next**.

1. You're given a list of keys that need to be added to your Moodle LMS. **Copy these names and values somewhere; they're needed to complete the next few steps.**

1. Leave your browser window open while you complete the tool registration steps. The Microsoft tool registration is completed later by entering values you'll get from Moodle.

**To register the new external tool in Moodle:**

1. Open your Moodle site in a new tab or browser and log in as a **Site Administrator**. Tip: Don't close the Microsoft LTI portal tab - we return there shortly!

1. Navigate to **Site administration > Plugins** and select **External tool** and then **Manage tools**.

1. Select **Configure a tool manually** and enter the values listed in the table:

   | **Field in Moodle** | **Value** |
   |---|---|
   | **Tool name** | Microsoft 365 LTI |
   | **Tool URL** | Copy the Target Link URL value from the Microsoft registration |
   | **LTI version** | LTI 1.3 |
   | **Initiate login URL** | Copy the Open ID connection URL value from the Microsoft registration |
   | **Redirection URIs** | Copy the Redirect URL value from the Microsoft registration |
   | **Custom Parameters** | t=$ResourceLink.title<br>csid=$CourseSection.sourcedId<br>usid=$Person.sourcedId |
   | **Content Selection URL** | `https://lti.edu.cloud.microsoft/tool?launchType=courseAssignmentsUpload` |
   | **Secure icon URL** | `https://res.cdn.office.net/onedrivelti/public/favicon-32x32.png` |

1. Check the **Supports Deep Linking (Content-Item Message)** box.

1. Set the Services and Privacy configurations as follows:

   | **Field in Moodle** |  **Value**      |
   |---------------------|-----------------|
   | IMS LTI Assignment and Grade Services  | Use this service for grade sync and column management  |
   | IMS LTI Names and Roles Provisioning   | Use this service to retrieve members' information as per privacy settings |
   | Share launcher's name with tool        | Always  |
   | Share launcher's email with tool       | Always  |
   | Accept grades from the tool            | Always  |

   Your final selections should look like this:

   :::image type="content" source="./media/moodle-services.png" alt-text="Screenshot of Moodle Services." border="true" lightbox="./media/moodle-services.png":::

1. Check the **Force SSL** box.

1. Select the **Save changes** button.

1. In the **Tools** section, on the new Microsoft Education tile, select the **View configuration** **details** (magnifying glass icon) to view a modal with the configuration details required to copy to the Microsoft registration portal.

**To save the values obtained from Moodle into the Microsoft registration portal:**

1. On the **Microsoft registration portal** tab, select **Next** to navigate to LMS provided registration keys. Enter the values listed in the table:

   | **Field in Microsoft registration portal** | **Value** |
   |---|---|
   | **Issuer ID URL** | Copy the Platform ID value from Moodle tool configuration details. |
   | **Client ID** | Copy the Client ID value from Moodle tool configuration details. |
   | **Keyset URL** | Copy the Public keyset URL value from Moodle tool configuration details. |
   | **Platform authentication URL** | Copy the Authentication request URL value from Moodle tool configuration details. |
   | **Deployment ID** | Copy the Deployment ID value from Moodle tool configuration details. |
   | **Access token URL** | Copy the Access token URL value from Moodle tool configuration details. |

1. Select **Next** in the **Microsoft registration portal** tab.

1. Review the **Review and save** page. If there are no errors, select **Save** and **Exit**. You should see a message indicating successful registration.

The Microsoft 365 LTI is now installed and ready for teachers to add to their courses.

**To add a static resource launch to a course for access to all Microsoft Education resource apps:**

1. Toggle your course to **Edit mode** and select **More > LTI External tools**.

1. Find Microsoft Education and turn on the **Show in activity chooser** toggle.

1. Navigate back to the course, ensure you're still in **Edit mode**, and select +**Add an activity** **or resource** at the bottom of the section you wish to add the activity.

1. Search for **Microsoft Education** and select it.

1. Enter **Microsoft Education** as the Activity name.

1. Select **Save** to add the activity to the course.

The Teams Education resources are now available and ready to use in your course by both teachers and students.

**To add Microsoft Education resources to your courses:**

After the initial setup of the Microsoft Education external tool app, course teachers will need to add it to their courses to use it with their students.

1. With your course toggled to **Edit Mode**, select **+ Add an activity or resource** at the bottom of the section you wish to add the activity.

1. In the Activity chooser, select **Microsoft Education** as the activity type.

1. Select the **Select Content** button to launch the Microsoft Education dialog and choose or create the activity you wish to add.

1. Select **Save** to add the activity to the course.

> [!TIP]
>If you select the star icon and favorite the activity, it appears in your **starred** list for quick access.

**To connect a Microsoft Team to your course:**

You must have a Microsoft Team connected with your Moodle course to use the Teams app in Microsoft 365 LTI.

It's recommended to [install the Microsoft 365 Moodle plugins](/microsoft-365/lti/moodle-plugin-configuration) to create Class Teams and keep them in sync with your Moodle courses for instructors automatically.

## First-time configuration by an LMS administrator

You must launch the app for the first time as a user with the **Moodle System Administrator** role to complete the configuration for your deployment and activate the tool. Users won't have access until you complete this step!

1. As a Moodle System Administrator, access any course that has the Microsoft Education link added.

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

Learning Tools Interoperability&reg; (LTI&reg;) is a trademark of the 1EdTech Consortium, Inc. (**[**1edtech.org**](https://1edtech.org)**).
