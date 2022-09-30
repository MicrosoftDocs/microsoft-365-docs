---
title: Overview of content assembly in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: anrasto, shrganguly
ms.topic: article
ms.service: microsoft-365-enterprise
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to automatically create documents and other content using a modern template in Microsoft SharePoint Syntex.
---

# Overview of content assembly in Microsoft SharePoint Syntex

You can use SharePoint Syntex to help you automatically generate standard repetitive business documents, such as contracts, statements of work, service agreements, letters of consent, sales pitches, and correspondence. You can do all this quicker, more consistently, and with fewer errors by using content assembly in SharePoint Syntex.

With content assembly, you can use an existing document to create a *modern template*, and then use that template to automatically generate new content using SharePoint lists or manual entries as a data source.

> [!NOTE]
> You must be a licensed SharePoint Syntex user to access and use content assembly capabilities. You also must have permissions to manage SharePoint lists.

## Supported file types

Only Microsoft Word documents (.docx/.doc extension) are currently supported for creating a template.

## File limitations

- The Word document you want to use as a modern template should not include comments or have Track Changes enabled.

- Because content controls are used in Word to create fields for the modern template, make sure any text placeholders for images are not text-wrapped. If the document already contains content controls, remove them before you use it to create a modern template.

## Current release limitations

- The template and the document are associated with one document library. To use the template in another document library, you will need to create the template again in that document library.

- The uploaded document that is used to create the modern template will be saved as a separate copy and placed in the /forms directory of the document library. The original file on the disk will be unaffected.

- You can create fields for text, and also fields for text within cells in a table. However, images, smart art, complete tables, and bulleted lists are currently not supported.

- Once a document is created from a template, it's not associated with the template.

## Differences between modern templates and other document templates

|Feature  |Modern templates  |Other templates  |
|---------|---------|---------|
|Licensing		|Syntex license needed to access this offering.  |Offered as a part of Microsoft E3/E5 license.  |
|When to use each		     | You should use for generating standard transactional documents such as service agreements and statements of work when only specific parts of the document changes. Documents generated from modern templates ensure consistency and less chances of manual error and typos that occur when users change sections of the document in free flow.  |You should use this when you want to set a document as a sample for other users to refer. You can consider using regular templates for non-transactional documents such as sales pitches or executive summaries.  |
|Standardizing content generation |You can add fields and then associate with various data sources for only specific sections of the content to make it easy for users to generate documents once template is published.  |Once uploaded, the file is kept as-is in the template. Any user using the template have to change the content accordingly.   |
|Data sources supported		|You can associate fields with SharePoint lists and term store while creating templates.   |Not applicable   |
|Document types supported	 |Only Microsoft Word documents (.docx/.doc extension) are currently supported for creating a template.  |You can use any file to upload as template.   |
|Management of templates	|Once template is created, you can edit or manage the template fields, rename the template, and republish for use.  |You can r [to be provided].   |
|Draft version of templates	|You can create draft versions of templates before finally publishing it for use by other users.   |There is no capability to create drafts of regular templates.  |
|Workflows   |You can automate document generation from templates by [setting up Power Automate workflows](automate-document-generation.md).  |Workflows cannot be configured with regular templates.  |



<!---
## Create a modern template

Follow these steps to create a modern template.

1. From a SharePoint document library, select **New** > **Create modern template**.

   ![Screenshot of document library with the Create modern template option highlighted.](../media/content-understanding/content-assembly-create-template-1.png)

2. Choose an existing Word document that you want to use as a basis for creating a modern template, and then select **Open**.

   ![Screenshot of upload page where you select a document.](../media/content-understanding/content-assembly-create-template-2.png)

   > [!NOTE]
   > Currently, you can upload only Word documents (.docx extension) to create templates. Upload Word documents from your local storage or desktop.

3. After you upload the document, the document is displayed in the template studio where you can convert the document to a template.

   ![Screenshot of the document in the template viewer.](../media/content-understanding/content-assembly-create-template-3.png)

4. At the upper-left corner of the template studio, select the name for the template. The default name is the name of the document used to create the template. If you want to rename the template, select the default name or the pencil icon next to the name, type the new name, and then select **Enter**.

   ![Screenshot of the template viewer showing the name of the document to select to rename.](../media/content-understanding/content-assembly-create-template-3a.png)

5. Create placeholders for all dynamic text in the document that users might want to change from one document to another. For example, you might want to create a placeholder for input such as company name, client name, address, phone number, or date.

    To create a placeholder, select the text (such as the date). The **All placeholders** panel will open, where you'll give the placeholder a relevant name and choose the type of input you want to associate with the placeholder.
 
   ![Screenshot of the template viewer showing a field highlighted and the All placeholders panel.](../media/content-understanding/content-assembly-create-template-4b.png)

   Currently, there are three ways for users to fill in a placeholder:

   - [Enter text or select a date](#associate-a-placeholder-by-entering-text-or-selecting-a-date)
   - [Select from choices in a column of a list or library](#associate-a-placeholder-by-selecting-from-choices-in-a-column-of-a-list-or-library)
   - [Select from managed metadata term set or term](#associate-a-placeholder-by-selecting-from-managed-metadata-term-set-or-term)

   > [!NOTE]
   > You can create placeholders for text, and also placeholders for text within cells in a table. However, images, smart art, complete tables, and bulleted lists are currently not supported.   

### Associate a placeholder by entering text or selecting a date

On the **All placeholders** panel:

1. In the **Name** field, enter a relevant name for the placeholder.

   ![Screenshot of the template viewer showing the All placeholders panel for manual input.](../media/content-understanding/content-assembly-create-template-5a.png)

2. In the **How authors fill in this placeholder** section, select **Enter text or select a date**.

3. In the **Type of info** field, select the data type you want to associate with the placeholder. Currently, there are six options available: **Single line of text**, **Multiple lines of text**, **Number**, **Date and time**, **Email**, and **Hyperlink**.

4. Select **Add**.

   > [!NOTE]
   > You can configure multiple date formatters such as MM/DD/YYYY, DD/MM/YYYY, YYYY/MM/DD, and Month DD, including setting time in both 12-hour and 24-hour format. 

### Associate a placeholder by selecting from choices in a column of a list or library

On the **All placeholders** panel:

1. In the **Name** field, enter a relevant name for the placeholder.

   ![Screenshot of the template viewer showing the All placeholders panel for input from a SharePoint list.](../media/content-understanding/content-assembly-create-template-6a.png)

2. In the **How authors fill in this placeholder** section, choose **Select from choices in a column of a list or library**, and then choose **Select**.

3. On the **Select a list for adding a source column** page, select the list you want to use, and then select **Next**.

   ![Screenshot of the Select a list for adding a source column page showing lists.](../media/content-understanding/content-assembly-create-template-7.png)

4. On the **Select a source column from the existing list** page, select the column name you want to associate with the placeholder, and then select **Save**.

   ![Screenshot of the Select a source column from the existing list page showing column names.](../media/content-understanding/content-assembly-create-template-8.png)

    If you want to see the original page of lists again, select **Go to (list name)** link at the bottom of the list.

5. When you're done, you'll see that the list field has been associated with the placeholder.

   ![Screenshot of the All placeholders panel showing the list field associated with the placeholder.](../media/content-understanding/content-assembly-create-template-9.png)

6. If you want users to be able to add inputs manually, in addition to choosing from a list, select **Allow authors to add new choices**. In this case, the default for the manual input data type is *Single line of text*. Also the values input by the authors will only be used to generate the document. They won't be added to the SharePoint list.

### Associate a placeholder by selecting from managed metadata term set or term

On the **All placeholders** panel:

1. In the **Name** field, enter a relevant name for the placeholder.

   ![Screenshot of the template viewer showing the All placeholders panel for input from a term or term set.](../media/content-understanding/content-assembly-create-template-term.png)

2. In the **How authors fill in this placeholder** section, choose **Select from managed metadata term set or term**, and then choose **Select**.

3. On the **Select term sets or terms** page, search for or select the term set or term to associate with the placeholder, and then select **Save**.

   ![Screenshot of the Select term sets or terms page.](../media/content-understanding/content-assembly-select-term.png)

4. When you’re done, you’ll see that the selected term set or term has been associated with the placeholder. 

   ![Screenshot of the All placeholders panel showing the associated term set or term.](../media/content-understanding/content-assembly-associated-term.png)

5. If you want users to be able to add multiple values corresponding to the term set or term, select **Allow multiple values**. Also, if the term set is configured as an open term set, you can select **Allow new values**. If you enable this option, users who generate documents from the modern template can add new terms to the term set and add those terms as placeholder values.

   > [!TIP]
   > When you enable the **Allow new values** option (only allowed for open term sets), users are more likely to add redundant terms in the term store. Redundant terms can make it difficult for admins to manage a term set.

You can create as many placeholders as you think are necessary. When you're done, you can choose to save the template as a draft or publish the template.

   - **Save draft** – Saves the template as a draft and you can access it later. You can view, edit, or publish saved drafts from the **Modern templates** section by selecting **New** > **Edit New menu** from the document library.
 
   - **Publish** – Publishes the template to be used by other users in the organization to create documents. You can view, edit, or unpublish *published* templates from the **Modern templates** section by selecting **New** > **Edit New menu** from the document library. 

## Edit a modern template

If you need to edit an existing template or to delete or unpublish a template, follow these steps.

1. From a SharePoint document library, select **New** > **Edit New menu**.

   ![Screenshot of document library with the Edit New menu option highlighted.](../media/content-understanding/content-assembly-edit-template-1.png)

2. On the **Edit New menu** panel, in the **Modern templates** section, select the published or draft template you want to edit.

   ![Screenshot of the Edit New menu panel showing the Modern templates section.](../media/content-understanding/content-assembly-edit-template-2.png)

3. To edit a published template or a draft template:

   - For **Published templates**, select **Edit** to open the template studio where you can edit the published template. You can also choose to delete or unpublish the template.

      ![Screenshot of the Modern templates section showing the published templates.](../media/content-understanding/content-assembly-edit-published.png)

   - For **Draft templates**, select **Edit** to open the template studio where you can edit the draft template. You can also choose to delete or publish the template.

      ![Screenshot of the Modern templates section showing the draft templates.](../media/content-understanding/content-assembly-edit-draft.png)

## Create a document from a modern template

You can use a *published* modern template to quickly create similar documents without having to start from scratch. To create a document using a published template, follow these steps:

1. From a SharePoint document library, select **New**, and then select the modern template you want to use.

   ![Screenshot of document library showing the modern template choices on the New menu.](../media/content-understanding/content-assembly-create-document-1.png)

2. The template opens in the template studio.

3. On the **Create a document from a template** panel, enter the information, and then select **Create document**.

   ![Screenshot of document library showing the Create a document from a template panel.](../media/content-understanding/content-assembly-create-document-2b.png)

   To help reduce time and effort involved in filling values for placeholders, SharePoint Syntex provides:

      - Suggestions to help you easily pick values when selecting values from a list.
      - Autofill placeholder values if able to uniquely identify a record for placeholders associated with the same list.

> [!NOTE]
> **Current release limitations**
>- Only Microsoft Word documents (.docx extension) are currently supported for creating a template. Before uploading a Word document, ensure that it doesn't include comments or have **Track changes** enabled. If the document contains text placeholders for images, ensure that they are not text-wrapped. Content controls in Word are currently not supported. If you want to create a template from a Word document with content controls, remove them before you create a modern template.
>- The template and the document are associated with one document library. To use the template in another document library, you will need to create the template again in that document library.
>- The uploaded document that is used to create the modern template will be saved as a separate copy and placed in the /forms directory of the document library. The original file on the disk will be unaffected.
>- You can create placeholders for text, and also placeholders for text within cells in a table. However, images, smart art, complete tables, and bulleted lists are currently not supported.
>- Once a document is created from a template, it's not associated with the template.
--->


 
