---
title: Manage sections in the SharePoint Agreements AI solution
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 09/01/2024
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

Sections could be any standardized content section such as clauses (e.g. payment terms, confidentiality clause etc.) or phrases that is written in organization approved language. Sections are saved as Word documents in section library in your Agreements site.

## Create a new section

Follow these steps to create a section in Microsoft Word

1. Navigate to _Agreements_ tab in Word, select _Manage_ _Sections_. 

![](media/image1.png)

1. _You can_ _create a_ _section from blank Word document by_ _clicking on_ _Create a_ _section_ _option from the right panel_
1. _If you already have an existing word document open_ _in Word_ _that you would like to convert to a_ _section, click on_ _Convert this document to a_ _section_ _option_ _from the right panel._ 

![](media/image2.png)

1. Provide the following details to create a section and save it in the section library

![](media/image3.png)

- _Name_ - Name of the section
- _Description_ - Description of the section
- _Workspace_ - Choose the workspace where to save the section. This section, once published, will only be available to be inserted in templates for this workspace. You cannot change the _Workspace_ after creating the section.
- _Category_ - Choose a category from the list of categories that are configured for the selected workspace
- _Language_ - Choose the language in which the section will be/is written
- _Countries or regions_ - Select country/region (s) where the section will be applicable
- _Tags_ - Enter keyword(s) to better identify/search sections.

These field values will help in filtering and searching the sections faster during template configuration and/or section management.

1. Click on _Save_ to create and save the section in the _Draft_ state. A separate copy of the document is created and saved in the section library. The original file will be unaffected.
1. On Saving the section, the newly created section is opened in a new Word window and the section management panel opens up in the right side of the Word canvas.

![](media/image4.png)

1. You can edit _Description, Category, Language, Countries or regions, Tags_ values from the _Edit details_ option after creating the section. 

> [!NOTE]
> You cannot change the _Workspace_ after creating the section.

# Insert fields

1. In the _Manage Sections_ panel, select _Add fields._
1. In the _Set up fields_ panel_,_ enter the name of the field in the search box_._ 

   _To understand how to create a new field that is not present in the list. Refer to the "Setup Fields" section in the Template management section._

- ![](media/image5.png)

1. Once the field is added, select the content of the section (any text in the document) that you want to associate with a field, or place the cursor at a specific location in the template where you want to insert the field.

1. To insert the field only at the specified selection, click **Insert**. To insert the field at all similar places in the document, click the down arrow icon next to the **Insert** button and select **Insert at all similar places**. This will insert the field at all locations with text that exactly matches the selected text.

   ![](media/image6.png)

1. To identify or review the multiple field insertions in the template, click on left and right arrows at the bottom of the field card.

![](media/image7.png)

1. To delete the field or view more details and perform additional actions, click the three dots button on the field card. 

## Edit an existing section

In case you have published a section, but because of change in organization standard, policy update or any other business need you would like to update the section content, you can do so by editing a published section. You can also resume editing a _draft_ section by choosing the Edit section option. Follow these steps to edit a section:

1. Navigate to _Agreements_ tab in Word, select _Manage_ _Sections_. 
1. Choose _Edit a_ _section_ option
1. If a draft section is selected, then you can change the content, and configure settings and then choose to publish the section
1. If a published section is selected, and you choose to edit the section then a new draft version of the same section will be created. The published version will still be available to use by template authors during template configuration.
1. Once you have made all the changes to the draft version, you can choose to re-publish the section using \<link_to_publish_section>, that will replace the current published version of the section with the latest one.

_Note:_ _Once_ _the draft section is re-published, then an email notification is sent to all template creators who have used the previous published version of the section. This is to inform them of the latest published version so that they can choose to pull in the latest changes in their template. Documents already generated from those templates will have no effect on the update._

## Configure section settings

Once you have created a section, you can choose to configure settings that will control how document authors can modify the content of the section. To configure the settings, do the following steps:

1. Navigate to _Agreements_ tab in Word, select _Manage_ _Sections_. 
1. Edit the section to configure or create a new one using \<link_to_the_create_section_section>
1. Select the _Settings_ option to choose section edit permissions for document authors. There are two options:
   - Editable (Default selection): Document authors can edit the section content during document generation flow
   - Read-only: Document authors cannot modify the content of the section. It is locked for further edits.

_Note: This setting_ _does not apply when_ _this section_ _gets inserted into a template. Template author can_ _modify and/or format content of any inserted section. The changes will stay only in the_ _scope of the_ _template and will not get updated in the published section._

![](media/image8.png)

# Request Approval before publishing section

Once you have made the relevant changes to section and configured section settings, you can optionally choose to send a_ draft_ section for approval before publishing the section. Agreements Solution leverages Approvals in Microsoft Teams to send approval request. Learn more: [Approvals in Microsoft Teams - Power Automate | Microsoft Learn](/power-automate/teams/native-approvals-in-teams).

Once the section state is _Published_, it becomes available for template creators to insert it during template configuration flow \<link_to_insert_section_in_template_configuration_flow>. 

Follow these steps to request approval before publishing the section:

1. Navigate to _Agreements_ tab in Word, select _Manage_ _Sections_. 
1. Select the section to send for approval or create a new one using \<link_to_the_create_section_section>
1. Select the _Request approval before publishing_ option to set up an approval flow before publishing the section
1. Create the approval request

![](media/image9.png)

Fill in the _Name of the request_, _Approvers_ (who needs to approve it), _decide approval order_, any additional information, and choose _Notify via email_ if you want to send email notifications along with Teams notification.

1. After configuring the approval request, click on _Send_. The section document will be marked as read-only once approval request starts. Approvers who do not have access to the section will be granted view permissions.

![A screenshot of a computer  Description automatically generated](media/image10.png)

1. Once approval request is sent, you can track the request status (_Approval in progress, Approval completed_) through the Word pane by reloading the section management pane or hitting Refresh button. Optionally, you can also track the request by selecting _Sent_ tab in the Approvals app in Microsoft Teams.

![A screenshot of a computer  Description automatically generated](media/image11.png)

1. If you need to make changes in the section after it has been sent for approval - you can cancel the sent approval request by clicking on _Cancel request_ or click on _Edit_ _section_, which will cancel the current approval request and unlock the section for further edits. The section will return to _Draft_ state.

   ![](media/image12.png)

# Publish a section

When you have completed adding all relevant fields to the section, making configurations and you want to make it available for use by other users, you can publish the section.

Select _Publish_ to publish the section to be used by other users in the organization to configure templates. Only published sections can be inserted in templates.

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
