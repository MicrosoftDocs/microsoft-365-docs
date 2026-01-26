---
title: Manage template sections in SharePoint Agreements
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 03/22/2025
audience: admin
ms.topic: how-to
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to create, publish, and manage template sections in the SharePoint Agreements solution.
---

# Manage template sections in SharePoint Agreements

Sections are reusable blocks of content that ensure the use of consistent language across your agreements. You can define a section and use it across multiple templates. For example, you might have a section for privacy clause or payment terms for your purchase agreements, while you can have a section for relocation package for your full-time employee templates. Sections are saved as Microsoft Word documents in the section library on your Agreements site.

Sections can also have fields, set up in the same manner as [fields for templates](agreements-create-template.md#add-fields-to-a-template).

Once a section is inserted into a template, all documents generated from that template will have the content of this section included in it. You can also choose to keep the sections read-only or editable in generated documents.  

## Create a new section

To create a section in Microsoft Word, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

2. To create a section from blank Word document, select **Create a section** from the right panel.

3. To create a section from an existing Word document, open the document, and then **Convert this document to a section** from the right panel.

4. On the **Enter section details** panel, enter the required details to create a section and save it in the section library.

    - **Name** – Enter a name for the section.
    - **Workspace** – Choose the workspace where to save the section. Once published, this section will only be available to be inserted in templates in the workspace you choose. You can't change the workspace after creating the section.
    - **Description** – Enter a description of the section.
    - **Category** – Choose a category from the list of categories that are configured for the selected workspace.
    - **Language** – Choose the language in which the section is or will be written.
    - **Countries or regions** – Select the country or region where the section is applicable.
    - **Tags** – Enter keywords to better identify or search sections.

   These details help in filtering and searching the sections faster during template configuration or section management.

5. Select **Save** to create and save the section as **Draft**. A separate copy of the document is created and saved in the section library.

6. After you save the section, the newly created section is opened in a new Word window and the **Manage sections** panel opens up on the right-hand side of the Word canvas.

7. You can edit **Description**, **Category**, **Language**, **Countries or regions**, or **Tags** values from the **Edit details** option after you create the section.

> [!NOTE]
> You cannot change the workspace after the section is created.

## Insert fields

You can create and insert fields into sections just like you do with templates. Follow the same steps to set up fields in your section.

To insert fields in a section, follow these steps:

1. On the **Manage sections** panel, select **Add fields**.

2. In the **Set up fields** panel, enter the name of the field in the search box.

    To understand how to create a new field that isn't present in the list, see [Add fields](agreements-create-template.md#add-fields-to-a-template).

3. After you add the field, either highlight the text in the document that you want to link to the field, or place the cursor at the exact spot in the template where you want the field to be inserted.

4. To insert the field only at the specified selection, select **Insert**. To insert the field at all similar places in the document, use the down arrow icon next to the **Insert** button, and then select **Insert at all similar places**. This inserts the field at all locations with text that exactly matches the selected text.

5. To identify or review the multiple field insertions in the template, use the left and right arrows at the bottom of the field card.

6. To delete the field or to view more details and perform other actions, select **More options** (***...***) on the field card.

## Configure section settings

Sections have configurable settings that allow the section creator to add control to what document authors can do when creating an agreement from a template containing the section.

To configure the settings, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

2. Edit the section to configure or [create a new section](agreements-manage-sections.md#create-a-new-section).

3. Select **Settings** to set edit permissions and other behavior of the section for document generation.

4. Under **Settings**, choose the section edit permissions for document authors:

   - **Editable** (selected by default) – Document authors can edit the section in the generated document.

   - **Read-only** – Document authors can't modify the content of the section in the generated document.

> [!NOTE]
> These settings don't apply when a section gets inserted into a template. Template authors can modify or format content of any inserted section. The changes will stay only in the scope of the template and will not get updated in the published section.

## Publish the section

Once you're done setting up the section, you must publish it. Only published sections can be inserted into templates.

### Request approval before publishing the section

Once you have made the relevant changes to section and configured section settings, you can choose to send a draft section for approval before publishing the section.

SharePoint Agreements uses the Approvals app in Microsoft Teams to send approval requests. For more information, see [Approvals in Microsoft Teams](/power-automate/teams/native-approvals-in-teams).

To request approval before publishing the section, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

2. Select the section to send for approval or [create a new section](agreements-manage-sections.md#create-a-new-section).

3. Select **Request approval before publishing** to set up an approval flow before publishing the section.

4. Create the approval request.

5. Fill in the name of the request, the approvers (who needs to approve it), the approval order, any additional information, and choose **Notify approvers via email** if you want to send email notifications along with Teams notification.

6. After you configure the approval request, select **Send**. The section document is marked as read-only once the approval request starts. Approvers who don't have access to the section will be granted view permissions.

7. On the **Send for approval** confirmation screen, select **Send for approval**.

8. Once the approval request is sent, you can track the request status (**Approval in progress**, **Approval completed**) through the Word pane by reloading the **Manage sections** panel or selecting **Refresh**. Optionally, you can also track the request by selecting the **Sent** tab in the Approvals app in Microsoft Teams.

9. If you need to make changes in the section after it has been sent for approval, you can cancel the sent approval request. To do so, select **Cancel request** or select **Edit section**. On the **Cancel approval request** confirmation screen, select **Cancel**.

## Update a published section

If you need to update the content of a published section due to changes in organizational standards, policy updates, or other business needs, you can do so by editing the published section. You can also resume editing a draft section by choosing the **Edit a section** option.

To edit a section, follow these steps:

1. Go to the **Agreements** tab in Word, and select **Manage sections**.

2. Select **Edit a section**.

3. If a draft section is selected, you can change the content and configure settings, and then choose to publish the section. Once you add all the relevant fields and made the necessary configurations, you can publish the section to make it available for other users.

4. If a published section is selected, and you choose to edit the section, and then a new draft version of the same section is created. The published version is still available to use by template authors during template configuration.

5. When you have made all the changes to the draft version, you can choose to [republish the section](agreements-manage-sections.md#publish-the-section), which replaces the current published version of the section with the latest one.

> [!NOTE]
> Once the draft section is republished, an email notification is sent to all template creators who have used the previous published version of the section. This is to inform them of the latest published version so that they can choose to pull in the latest changes in their template. Documents already generated from those templates will have no effect on the update.

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
