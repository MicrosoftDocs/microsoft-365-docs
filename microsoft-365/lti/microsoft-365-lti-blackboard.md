---
title: Deploy the Microsoft 365 LTI® app in Blackboard by Anthology
description: Learn how to deploy the Microsoft 365 Learning Tool Interoperability (LTI) app in Blackboard by Anthology.
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.date: 07/14/2025
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
# Deploy the Microsoft 365 LTI® app in Blackboard by Anthology

This guide provides steps for deploying the Microsoft 365 Learning Tool Interoperability® (LTI) app in Blackboard.

  :::image type="content" source="./media/blackboard.png" alt-text="Screenshot of Blackboard." border="true":::

> [!IMPORTANT]
> The person who deploys this integration should be an Administrator role in the learning management system (LMS). A person in your organization who is a Microsoft 365 Global Administrator is also needed to help complete the configuration of the app before first time use.
>
> By installing and using the Microsoft Education LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## LMS requirements for the integration

### User matching between Microsoft 365/Entra ID and the LMS

To fully integrate with your LMS environment and perform tasks on behalf of users like populating students and co-teachers into OneNote Class Notebooks, setting file permissions, or sending grades from Assignments to the LMS gradebook: the Microsoft 365 LTI app must be able to map Student and Teacher identities between the LMS and the Microsoft 365 Entra ID directory services. It's required to populate the LMS user Email field (which is the same email value returned from the LTI Names and Roles Provisioning Service) with the user's Microsoft 365/Microsoft Entra User UPN or Primary Email address. Verify this for people in every course that will use the integration to ensure the Microsoft apps can match LMS users.

## One-time setup by an LMS administrator

1. Sign into your Blackboard instance as an administrator.

1. Select the **Admin** link in the left side navigation to access the Administrator Tools Panel.

1. In the Administrator Tools Panel, select the **LTI Tool Providers** link and then select **Register LTI 1.3/Advantage Tool**.

1. In the **Client ID** field, type or copy and paste this ID: **7aaa046f-50d4-4dc3-aac5-ac22e6d4339e**

1. Review the prepopulated settings and make sure the **Tool Status** is **Approved** and everything is enabled in the Institution Policies section:

    :::image type="content" source="./media/blackboard-institution-policies.png" alt-text="Screenshot of Blackboard institution policies." border="true":::

1. Then select **Submit** to complete the registration. It's recommended that you verify the **Placements** created for the tool to ensure the **Allow students access** option is enabled for all placements that include that setting.

The Microsoft 365 LTI is now installed and ready to be used in any course in your Blackboard environment.

> [!IMPORTANT]
> If prepopulated parameters or policies are edited, the app might not function properly. Double-check the enablement status of the app and student access settings for each placement as your Blackboard configuration might disable them by default. Student settings on both the Teams Assignments and Link a Teams Assignment placement should have **Allow students access** enabled and **Launch in new window** disabled.
> :::image type="content" source="./media/blackboard-allow.png" alt-text="Screenshot of Blackboard allow students access property." border="true":::

## First-time configuration by an LMS administrator

You must launch the app for the first time as a user with the **Blackboard System Administrator** role to complete the configuration for your deployment and activate the tool. Users won't have access until you complete this step!

1. As a Blackboard System Administrator, select the **Admin** icon on the left side navigation of Blackboard to launch the **Administrator Tools**.

1. In the **Tools and Utilities** section, select the **Microsoft Education Admin Settings**.

    :::image type="content" source="./media/blackboard-tools.png" alt-text="Screenshot of Blackboard tools and utilities." border="true":::
    :::image type="content" source="./media/blackboard-admin-settings.png" alt-text="Screenshot of Blackboard admin settings." border="true":::

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

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. (**[**1edtech.org**](https://1edtech.org)**)
