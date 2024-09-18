---
title: Manage sections in the SharePoint Agreements AI solution
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 09/18/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about the approval notifications in the SharePoint Agreements AI solution.
---

# Manage sections in the SharePoint Agreements AI solution

Sections are reusable blocks of content that can be inserted in a template. They can form one of the core building blocks of your templates. You can create sections once and use them across multiple templates.

Sections could be any standardized content section such as clauses (for example, payment terms or confidentiality clause) or phrases that are written in organization approved language. Sections are saved as Microsoft Word documents in the section library on your Agreements site.

## Create a new section

To create a section in Microsoft Word, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

    ![](media/image1.png)

2. To create a section from blank Word document, select **Create a section** from the right panel.

3. To create a section from an existing Word document, open the document, and then **Convert this document to a section** from the right panel.

    ![](media/image2.png)

4. Provide the following details to create a section and save it in the section library.

    ![](media/image3.png)

    - **Name** – Enter a name for the section.
    - **Description** – Enter a description of the section.
    - **Workspace** – Choose the workspace where to save the section. This section, once published, -s only available to be inserted in templates for this workspace. You can't change the Workspace after creating the section.
    - **Category** – Choose a category from the list of categories that are configured for the selected workspace.
    - **Language** – Choose the language in which the section will be or is written.
    - **Countries or regions** – Select the country or region where the section is applicable.
    - **Tags** – Enter keywords to better identify or search sections.

These field values help in filtering and searching the sections faster during template configuration or section management.

1. Select **Save** to create and save the section in the Draft state. A separate copy of the document is created and saved in the section library. The original file is unaffected.

2. After you save the section, the newly created section is opened in a new Word window and the section management panel opens up on the right-hand side of the Word canvas.

    ![](media/image4.png)

3. You can edit **Description**, **Category**, **Language**, **Countries or regions**, or **Tags** values from the **Edit details** option after you create the section.

> [!NOTE]
> You cannot change the workspace after the section is created.

## Insert fields

You can create and insert fields into sections just like you do with templates. Follow the same steps to set up fields in your section.

## Configure section settings

Sections have configurable settings that allow the section creator to add control to what agreements authors can do when creating an agreement from a template containing the section. 

To configure the settings, follow these steps:

1. Go to the **Agreements** tab in Word, select **Manage sections**.

2. Edit the section to configure or [create a new section](agreements-manage-sections.md#create-a-new-section).

3. Select **Settings** to set edit permissions and other behavior of the section for document generation.

4. Under **Settings**, choose the section edit permissions for document authors:

   - **Editable** (default selection) – Document authors can edit the section content during document generation flow.

   - **Read-only** – Document authors can't modify the content of the section. It's locked for further edits.

   ![A screenshot of the Agreements tab in Word showing the Manage sections panel.](../../media/content-understanding/agreements-manage-sections.png)

> [!NOTE]
> These settings don't apply when a section gets inserted into a template. Template authors can modify or format content of any inserted section. The changes will stay only in the scope of the template and will not get updated in the published section.

## Publish the section
Once you are done setting up the section, you must publish it. Only published sections can be inserted into templates.

## Request approval before publishing the section
Once you have made the relevant changes to section and configured section settings, you can optionally choose to send a draft section for approval before publishing the section.

The Agreements AI solution uses the Approvals app in Microsoft Teams to send approval requests. For more information, see [Approvals in Microsoft Teams](/power-automate/teams/native-approvals-in-teams).

To request approval before publishing the section, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

2. Select the section to send for approval or [create a new section](agreements-manage-sections.md#create-a-new-section).

3. Select **Request approval before publishing** to set up an approval flow before publishing the section.

4. Create the approval request.

   ![A screenshot of the Agreements tab in Word showing the Manage sections panel.](../../media/content-understanding/agreements-approval-request.png)

5. Configure the approval request and send it. The section document is marked as read-only once the approval request starts. Approvers who don't have access to the section will be granted view permissions.

6. Once the approval request is sent, you can track the request status (**Approval in progress**, **Approval completed**) through the Word pane by reloading the **Manage sections** panel or selecting **Refresh**. Optionally, you can also track the request by selecting the **Sent** tab in the Approvals app in Microsoft Teams.

7. If you need to make changes in the section after it has been sent for approval, you can cancel the sent approval request. To do so, select **Cancel request** or select **Edit section**. On the **Cancel approval request?** confirmation screen, select **Cancel**.

   ![A screenshot of the Cancel approval request confirmation screen.](../../media/content-understanding/agreements-cancel-approval-confirmation.png)

    This will cancel the current approval request and unlock the section for further edits. The section returns to **Draft** state.

## Updating sections
If you need to update the content of a published section due to changes in organizational standards, policy updates, or other business needs, you can do so by editing the published section. You can also resume editing a draft section by choosing the Edit section option.

To edit a section, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

2. Select **Edit a section**.

3. If a draft section is selected, you can change the content and configure settings, and then choose to publish the section.

4. If a published section is selected, and you choose to edit the section, and then a new draft version of the same section is created. The published version is still available to use by template authors during template configuration.

5. When you have made all the changes to the draft version, you can choose to [republish the section](agreements-manage-sections.md#publish-a-section), which replaces the current published version of the section with the latest one.

> [!NOTE]
> Once the draft section is republished, an email notification is sent to all template creators who have used the previous published version of the section. This is to inform them of the latest published version so that they can choose to pull in the latest changes in their template. Documents already generated from those templates will have no effect on the update.

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
