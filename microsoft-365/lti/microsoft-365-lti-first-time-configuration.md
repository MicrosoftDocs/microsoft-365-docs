---
title: Microsoft 365 LTI First Time Configuration
description: Learn about the first time configuration of Microsoft 365 LTI
ms.date: 07/21/2025
author: jennplatt
ms.author: avering
manager: michal.gideoni
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
# Microsoft 365 LTI® First-Time Configuration

> [!IMPORTANT]
> For the initial preview release of the Microsoft 365 LTI, the included experiences are Assignments, OneNote Class Notebooks, OneDrive, Reflect, Teams, and Teams Meetings. See [tips on migrating](#tips-on-migrating-from-the-legacy-instructure-office-365-or-other-microsoft-lti-apps) to these new experiences from existing Microsoft LTI tools you have deployed today.

## First-time configuration by an LMS Administrator

Once the Microsoft 365 tool is installed, an LMS Administrator must complete the first-time configuration for the app. Any user with an **LMS** **administrator role** can launch the **Microsoft Education** tool in any course or from the admin panel and the first-time configuration experience will run.  

> [!NOTE]
> You need help from your Microsoft 365 Administrator for the 2nd step to consent for required app privileges in your Microsoft 365 / Microsoft Entra tenant.

1. Review and agree to the Microsoft Online Terms of service (including Preview terms of service) for the Microsoft 365 LTI application.

   :::image type="content" source="./media/terms.png" alt-text="Screenshot of terms of service." border="true":::

1. Provide consent as the Microsoft 365 Administrator.

    - If you're an Microsoft 365 Global Administrator, then you are able to provide consent for the app by clicking the **Admin Consent** button.
    - If you aren't an Microsoft 365 Administrator, then you can copy and paste the Admin consent URL for the app and sent it to a Microsoft 365 Global Administrator to complete this step.

    The button and messaging will change to "Reconsent" after this step is completed.

    :::image type="content" source="./media/consent.png" alt-text="Screenshot of admin setting consent." border="true":::

    > [!NOTE]
    > You can share the following instructions with your Microsoft admin to complete this step. The URL they'll need is: https://m365lti.edu.cloud.microsoft/Consent

    Selecting the **Admin Consent** button or visiting the consent link will trigger a login and then the **Permissions requested** dialog. Login with a Microsoft 365 Global Administrator user role, and then select **Accept** on the dialog to complete this step.

    :::image type="content" source="./media/pick-account.png" alt-text="Screenshot of the account dialog box." border="true":::

    :::image type="content" source="./media/permissions-requested.png" alt-text="Screenshot of permissions requested." border="true":::

1. As the LMS Administrator, you can choose to enable or disable the Microsoft Education experiences available to your instructors. The **Enabled** toggle switch controls the enabled state of the application for the deployment, and the **On by default** toggle switch controls the default state of visibility for the app in a course. Instructors can change the visibility of any enabled app in their course.
      > [!IMPORTANT]
      > For Preview, we recommend you test OneDrive and Class Notebook in courses that don't have the other versions deployed. Both current and new apps can exist and create assets in the same course, but files won't be able to be copied or accessed between versions at the moment.

     :::image type="content" source="./media/applications.png" alt-text="Screenshot of applications." border="true":::

1. Choose to allow instructors to create Teams for their classes via the Microsoft 365 LTI. This enables the Create Team switch for instructors where they can choose to create a Team for their course in any LMS that doesn't have its own integration with Microsoft Teams. We suggest you leave this disabled if you're leveraging the built-in sync integration for your LMS, or other Teams sync mechanisms like Microsoft School Data Sync. Enabling/disabling this setting won't affect the functionality of other Microsoft Education tools in the LTI app like Assignments, OneDrive, or OneNote Class Notebooks.

     :::image type="content" source="./media/teams-creation.png" alt-text="Screenshot of Microsoft Teams creation." border="true":::

> [!IMPORTANT]
> Canvas, Blackboard, Moodle, and other LMSs have robust integrations to create and sync Microsoft Teams for a course. If you have one of those sync mechanisms already enabled, we recommend that you continue to use that integration and leave this setting disabled so your users don't unexpectantly end up with multiple Teams. At the current time, those integrations are more robust and are the preferred way to create and sync a Team for their courses. Allowing your instructors to create Teams via the Microsoft 365 integration results in a separate Team being created for the course.

## Considerations for Teams Sync Options

As mentioned, if you choose to allow your instructors to create teams for your use by your LMS courses, or automatically create them, you'll want to ensure that only one primary Teams sync mechanism is enabled per LMS course. Here are some considerations in choosing the right mechanism for your organizations:

**LMS Integrated Teams sync:**

- Creates a Class Team that by default has the Microsoft Teams Assignments, Gradebook, Classwork, and other apps enabled by default. These apps can be disabled by Teams App Policy in the Teams Admin Center by your Microsoft 365 administrator.
- Syncs the Team roster periodically in the background and/or based on real-time changes in the LMS. Consult the documentation for the specific sync you're using for exact information on sync timing and behavior.
- Depending on the LMS, there may be options for only instructor-led action (instructor must choose to create the Team), or admin-led (will automatically create a Team for every course).

**The Microsoft 365 Teams sync:**

- Creates a Unified Group and Team which isn't an Education Class Team type and won't include any of the Microsoft Teams apps like assignments, gradebook, classwork, and insights.
- Teams are active immediately and both owners and members have instant access.
- You can either let each instructor choose whether a Team is created for their class or enable automatic Team creation for each course on their behalf. If you have enabled automatic Team creation, the Team will be created initially after the instructor has completed their first-time configuration of the LTI app.

## Compliance and Regulatory Resources

Visit the [Microsoft Service Trust Portal](https://aka.ms/STP) for more information on certifications, regulations, and standards compliance information for Microsoft products and services.

## Tips on migrating from the legacy Instructure Office 365, or other Microsoft LTI apps

When migrating from any legacy app that is replaced by the Microsoft Education LTI app, it's recommended that Placements of the legacy app are disabled, but the app isn't uninstalled until all users are leveraging the new app, and content has been recreated, migrated, or copied to leverage the new LTI apps. Because the apps have different functionalities and data (flows, files etc.) the process of migrating educators and their content to the new apps may be unique.

### Migrating from Teams Classes LTI 1.3 app

[The legacy Teams Classes app will sunset on September 15, 2025](https://support.microsoft.com/topic/teams-learning-tools-interoperability-lti-sunset-faq-7e071764-f5bf-420a-b4a1-6070cd6b9aa2). There's no required migration of the Teams created by the Canvas Teams sync or any Teams connected to a course via the Teams Assignments LTI. The new Teams app that is included in the Microsoft Education LTI app is backwards compatible and will display any previously connected Teams. We suggest that you uninstall the legacy app before sunset by locating the app in **Admin > Settings > Apps > View App Configurations** and use the Gear icon drop-down to delete the app deployment.

### Migrating from Teams Meetings LTI 1.3 app

[The legacy Teams Meetings app will sunset on September 15, 2025](https://support.microsoft.com/topic/teams-learning-tools-interoperability-lti-sunset-faq-7e071764-f5bf-420a-b4a1-6070cd6b9aa2). There's no required migration of the meetings created by Teams Meetings LTI. The new Teams Meetings app that is included in the Microsoft Education LTI app is backwards compatible and will display any previously created meetings. We suggest that you uninstall the legacy app before sunset by locating the app in **Admin > Settings > Apps > View App Configurations** and use the Gear icon drop-down to delete the app deployment.

### OneNote Class Notebook LTI 1.1 app

There's no way to migrate a OneNote LTI 1.1 Class Notebook to a Microsoft Education OneNote Class Notebook directly. However, you can copy content from one Class Notebook to another in the OneNote app for Windows using the right-click menu option on Sections and Pages to move or copy to another OneNote Notebook. There are also copy options in OneNote for [Mac](https://support.microsoft.com/office/move-or-copy-notes-in-onenote-for-mac-7faf1c7f-d6c6-420e-a65c-5ac7c6f6ec27), [iOS](https://support.microsoft.com/office/move-or-copy-notes-between-notebooks-and-sections-in-onenote-for-ipad-or-iphone-94a516da-35f1-46b4-9ed6-a7c712324bab), or [Android](https://support.microsoft.com/office/move-or-copy-notes-between-notebooks-and-sections-in-onenote-for-ipad-or-iphone-94a516da-35f1-46b4-9ed6-a7c712324bab). Students can also [export a copy of their work from OneNote Class Notebooks](https://support.microsoft.com/topic/students-export-a-copy-of-your-work-from-onenote-class-notebook-teams-and-onedrive-deb62dce-c441-41b0-b2fc-fccd3cc99c1b). We suggest that after deploying Microsoft Education with OneNote Class Notebooks enabled, you leave the Microsoft OneNote Class Notebook legacy app installed to keep existing files and links accessible but disable the Placements so no new links are created using the legacy tool. The Microsoft OneNote Class Notebook placements can be disabled by an **Admin > Settings > Apps > View App Configurations** by selecting the Gear icon drop-down associated with the app and toggling off all of the placements listed.

### Migrating from Microsoft Office 365 LTI 1.1 app (Instructure legacy app)

There's no direct migration path or copy available from [Microsoft Office 365](https://community.canvaslms.com/t5/Canvas-Releases-Board/Canvas-Release-Microsoft-Office-365-LTI-2016-12-10/td-p/249358) files to Microsoft Education files used in the RCE, as assignment templates, or in collaborations. We suggest that after deploying Microsoft Education with OneDrive enabled you leave the Microsoft Office 365 app installed to keep existing files and links accessible but disable the Placements so no new links are created using the legacy tool. The Microsoft Office 365 placements can be disabled by an Admin in **Admin > Settings > Apps > View App Configurations** by selecting the Gear icon drop-down associated with the app and toggling off all of the placements listed. It's also recommended that you toggle on the Add to RCE Toolbar switch for the new Microsoft Education app so that it's featured in the Canvas Rich Text Editors for users to discover.

### Migrating from Microsoft OneDrive LTI 1.3 app

   :::image type="content" source="./media/app-placement.png" alt-text="Screenshot of app placement." border="true":::

Currently, there's no direct migration path or copy available from Microsoft OneDrive files to new Microsoft 365 LTI OneDrive files used in the RCE, as assignment templates, or in collaborations - Copy isn't supported currently for files linked or assigned via the Microsoft OneDrive LTI. We expect to have functionality soon to support copy of files and will update this documentation when available.

If you choose to preview the new OneDrive experience while still supporting the old tool in existing courses, we suggest that after deploying Microsoft Education with OneDrive enabled, you leave the Microsoft OneDrive app installed to keep existing files and links accessible but disable the Placements in any newly created course menus so no new links are created using the legacy tool.  

**For Canvas LMS:** The Microsoft OneDrive placements can be disabled by an Admin in **Settings > Apps > View App Configurations** by selecting the Gear icon drop-down associated with the app and toggling off all of the placements listed. It's also recommended that you toggle on the Add to RCE Toolbar switch for the new Microsoft Education app so that it's featured in the Canvas Rich Text Editors for users to discover.

### Migrating from Microsoft Teams Assignments LTI 1.3 app

Teams Assignments created by the legacy LTI 1.3 app can be reused as Microsoft Education Assignments. Any Team Assignment created in the LMS or via the assignments app in Microsoft Teams can be copied and reused using the Copy functionality in the Microsoft Education Assignment instructor flow. We suggest that you hide the placements of the legacy Teams Assignments LTI app as soon as you install the new Microsoft Education LTI and enable the Assignments app by locating the legacy Microsoft Teams Assignments in **Settings > Apps > View App Configurations** and selecting the Gear icon drop-down associated with the app and toggling off all of the placements listed.

### Migrating from Reflect LTI 1.3 app

There's no migration required for reflections created in the legacy LTI 1.3 app. The new Microsoft Education Reflect app will continue to work with any existing reflections. We suggest that you uninstall the legacy app as soon as you install the new Microsoft Education LTI and enable the Reflect app by locating the legacy Microsoft Reflect app in **Admin > Settings > Apps > View App Configurations** and use the Gear icon drop-down to delete the app deployment.

Learning Tools Interoperability® (LTI®) is a trademark of the 1EdTech Consortium, Inc. (**[**1edtech.org**](https://1edtech.org)**)
