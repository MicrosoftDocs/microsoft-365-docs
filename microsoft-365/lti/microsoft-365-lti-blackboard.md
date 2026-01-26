---
title: Deploy the Microsoft 365 LTI&reg; app in Blackboard by Anthology
description: Learn how to deploy the Microsoft 365 Learning Tool Interoperability (LTI) app in Blackboard by Anthology.
author: jennplatt
ms.author: avering
manager: michal.gideoni
ms.date: 01/15/2026
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
# Deploy the Microsoft 365 LTI&reg; app in Blackboard by Anthology

This guide provides steps for deploying the Microsoft 365 Learning Tool Interoperability&reg; (LTI) app in Blackboard.

  :::image type="content" source="./media/blackboard.png" alt-text="Screenshot of Blackboard." border="true":::

> [!IMPORTANT]
> The person who deploys this integration should be an Administrator role in the learning management system (LMS). A person in your organization who is a Microsoft 365 Global Administrator is also needed to help complete the configuration of the app before first time use. [Learn more about administrator roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).
>
> By installing and using the Microsoft Education LTI app, educators and students can transmit grades to the LMS where the terms of use and privacy policy of that application apply.

## LMS requirements for the integration

### User matching between Microsoft 365/Entra ID and the LMS

To fully integrate with your LMS environment and perform tasks on behalf of users like populating students and co-teachers into OneNote Class Notebooks, setting file permissions, or sending grades from Assignments to the LMS gradebook: the Microsoft 365 LTI app must be able to map Student and Teacher identities between the LMS and the Microsoft Entra ID directory services. It's required to populate the LMS user Email field (which is the same email value returned from the LTI Names and Roles Provisioning Service) with the user's Microsoft 365/Microsoft Entra User UPN or Primary Email address. Verify this for people in every course that will use the integration to ensure the Microsoft apps can match LMS users.

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

Learning Tools Interoperability&reg; (LTI&reg;) is a trademark of the 1EdTech Consortium, Inc. (**[**1edtech.org**](https://1edtech.org)**)

## Migration Guidance

When migrating from any legacy app that is replaced by the functionality in the Microsoft 365 LTI app, it's recommended that **Placements of the classic app are removed, but the app isn't uninstalled until all users are leveraging the new app and content has been migrated to or recreated with the new app**. Because the classic LTI apps have different resource links to files and data, the process of migrating educators and their content to the new apps may be unique.

### Migrating from classic Microsoft Teams Classes and Teams Meetings integration

[The classic Teams Classes and Teams Meetings app has sunset as of September 15, 2025](https://support.microsoft.com/topic/teams-learning-tools-interoperability-lti-sunset-faq-7e071764-f5bf-420a-b4a1-6070cd6b9aa2). There's no required migration of the Teams created by the Blackboard Ultra [Microsoft Teams sync](/microsoft-365/lti/teams-classes-with-blackboard) integration or for any Team connected to a course by the classic Teams Assignments LTI’s Manage Connected Teams feature. The new Teams app that is included in the Microsoft 365 LTI app is backwards compatible and will display any previously connected Teams, as well as any Teams created by the Blackboard Teams Sync or Microsoft 365 LTI Team sync going forward. Review the additional [guidance on choosing a Teams sync option](/microsoft-365/lti/microsoft-365-lti-first-time-configuration?#considerations-for-teams-sync-options).

All meetings created by the classic Teams Meetings LTI will continue to be displayed in Outlook and Teams calendars, but only the previous six months and upcoming six months of meetings scheduled will display in the new Meetings app that is part of Microsoft 365 LTI. Course meetings should be created in the new Meetings app going forward.

We suggest that you remove the classic apps by locating the app in **Admin > (Integrations section) > LTI Tool Providers** and select the drop-down arrow next to **Microsoft Teams** and **Microsoft Teams Meetings** and then choose **Delete** to remove the apps.

### Migrate from classic OneNote Class Notebook LTI 1.1 app

The classic OneNote Class Notebook LTI 1.1 app will be sunset on September 17, 2026. All notebooks created by the classic app will continue to be available directly through the notebook owner’s personal OneDrive and on the OneNote Microsoft 365 [web homepage](https://onenote.cloud.microsoft).

There's no way to automatically migrate a Class Notebook created with the classic OneNote LTI 1.1 to a Microsoft 365 LTI OneNote Class Notebook. However, you can create a new notebook using the Microsoft 365 LTI OneNote app and copy content from a classic Class Notebook in the OneNote app for Windows using the right-click menu option on Sections and Pages to move or copy to another OneNote Notebook. There are also copy options in OneNote for [Mac](https://support.microsoft.com/office/move-or-copy-notes-in-onenote-for-mac-7faf1c7f-d6c6-420e-a65c-5ac7c6f6ec27), [iOS](https://support.microsoft.com/office/move-or-copy-notes-between-notebooks-and-sections-in-onenote-for-ipad-or-iphone-94a516da-35f1-46b4-9ed6-a7c712324bab), or [Android](https://support.microsoft.com/office/move-or-copy-notes-between-notebooks-and-sections-in-onenote-for-ipad-or-iphone-94a516da-35f1-46b4-9ed6-a7c712324bab). Students can also [export a copy of their work from OneNote Class Notebooks](https://support.microsoft.com/topic/students-export-a-copy-of-your-work-from-onenote-class-notebook-teams-and-onedrive-deb62dce-c441-41b0-b2fc-fccd3cc99c1b).

After deploying Microsoft 365 LTI with OneNote Class Notebooks enabled, we recommend that you leave the classic OneNote Class Notebook LTI app installed to keep existing notebooks accessible in active courses but disable the Placements in the classic LTI, so no new links are created using the classic tool.

The classic Microsoft OneNote Class Notebook app can be removed, or placements can be removed by a Blackboard admin with access to manage LTI Tool Providers in **Admin > (Integrations section) > LTI Tool Providers** by selecting the drop-down arrow next to the **OneNote Class Notebook** app name in the list and choosing **Edit Placements**. You can then delete all the placements for the tool so it can no longer be accessed in menus.

### Migrating from classic Microsoft OneDrive LTI

The classic Microsoft OneDrive LTI will be sunset on September 17, 2026. After that date, any content links in courses from the class LTI will stop working. However, files created by the classic app will continue to be accessible through the Microsoft 365 Group and SharePoint site for the course. There are resources for [locating Microsoft 365 Groups associated with LMS courses on GitHub](https://aka.ms/LTIScripts) to assist your Microsoft 365 Administrators in locating these assets.

Currently, there's no automatic migration path or copy available from classic Microsoft OneDrive file links to Microsoft 365 LTI file links used in Blackboard courses. Files can be migrated manually by reselecting and re-linking or embedding the file through the Microsoft 365 LTI in Blackboard course content.

After deploying Microsoft 365 LTI with OneDrive enabled, we recommend that you leave the classic Microsoft OneDrive app installed until all content you wish to keep active or reuse is migrated to keep existing file links accessible in active courses but delete the placements in the classic LTI, so no new links are created using the classic tool.

Placements for the classic Microsoft OneDrive app can be removed by a Blackboard admin with access to manage LTI Tool Providers in **Admin > (Integrations section) > LTI Tool Providers** by selecting the drop-down arrow next to the Microsoft OneDrive name in the list and choosing **Edit Placements**. You can then delete all the placements for the tool so it is no longer accessed in menus.

### Migrating from classic Microsoft Teams Assignments LTI

Teams Assignments created by the classic Teams Assignments LTI app can be reused as Microsoft 365 LTI (Microsoft Education) Assignments. Any Team Assignment created in the LMS or via the assignments app in Microsoft Teams for Education can be copied and reused using the copy **From Existing** functionality in the **Create Assignment** instructor flow.

After deploying the Microsoft 365 LTI, we recommend that you leave the classic Teams Assignments app installed to keep existing files and links accessible in active courses, but disable the Placements, so new assignments are only created using the Microsoft 365 LTI app via Microsoft Education menu items.

The classic Teams Assignments LTI app placements can be disabled by a Blackboard admin with access to manage LTI Tool Providers in **Admin > (Integrations section) > LTI Tool Providers** by selecting the drop-down arrow next to the **Teams Assignments LTI** app  name in the list and choosing **Edit Placements**. You can then delete all the placements for the tool so it is no longer accessed in menus. Once all assignments have been copied into new courses and courses with existing classic Teams Assignments have been archived, the classic Teams Assignments app can be removed.

### Migrating from Reflect LTI

There's no migration required for reflections created in the legacy LTI 1.3 app. The new Reflect app in Microsoft 365 LTI will continue to work with any existing reflections. We suggest that you delete the classic app as soon as you install the new Microsoft 365 LTI.

To remove the classic app before sunset, locate the app in **Admin > (Integrations section) > LTI Tool Providers**, select the drop-down arrow next to the **Microsoft Reflect** app, and then choose **Delete** to remove the app.
