---
title: Create a form processing model in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.service: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.custom: admindeeplinkSPO
ms.localizationpriority:  medium
description: Learn how to create a form processing model in SharePoint Syntex.
---

# Create a form processing model in Microsoft SharePoint Syntex

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4GnhN]  

</br>

Using [AI Builder](/ai-builder/overview) - a feature in Microsoft Power Apps - SharePoint Syntex users can create a [form processing model](form-processing-overview.md) directly from a SharePoint document library. 

Creating a form processing model involves the following steps:

 - [Step 1: Create a form processing model](create-a-form-processing-model.md#step-1-create-a-form-processing-model)
 - [Step 2: Add and analyze documents](create-a-form-processing-model.md#step-2-add-and-analyze-documents)
 - [Step 3: Tag fields and tables](create-a-form-processing-model.md#step-3-tag-fields-and-tables)
 - [Step 4: Train and publish your model](create-a-form-processing-model.md#step-4-train-and-publish-your-model)
 - [Step 5: Use your model](create-a-form-processing-model.md#step-5-use-your-model)

## Requirements

You can only create a form processing model in SharePoint document libraries for which it's enabled. If form processing is enabled, you're able to see the **Automate** > **AI Builder** > **Create a model to process forms** menu in your document library. If you need processing enabled on your document library, you must contact your SharePoint administrator.

![Screenshot showing the AI Builder model.](../media/content-understanding/create-ai-builder-model2.png)

## Step 1: Create a form processing model

The first step in creating a form processing model is to name the model, define the new content type, and create a new document library view for it.

1. From the document library, select the **Automate** menu, select **AI Builder**, and then select **Create a model to process forms**.

    ![Screenshot showing the Automate menu and the Create a model to process forms option.](../media/content-understanding/create-ai-builder-model2.png)

2. In the **Create a model to process forms** panel, in the **Name** field, type a name for your model (for example, *Purchase Orders*).

    ![Screenshot showing the Create a model to process forms panel.](../media/content-understanding/new-form-model2.png) 

3. You can now automatically extract and save information from a *collection* of structured files that share a similar layout—such as invoices or tax documents—that are in a SharePoint document library. This lets you compose several models into a single model and extract specific table item information.

   The collection name is saved to a dedicated column in the document library where the model is applied, which allows you to distinguish different file layouts processed by the same model.

   In addition, the extracted table information is saved to a specified list and associated with the uploaded file for easy viewing or for additional business process automation.

   To extract table information to an associated list:<br><br>

     1. In the **Extract info from tables?** section, select **Yes**.

      ![Screenshot showing the Extract info from tables section on the Create a model to process forms panel.](../media/content-understanding/extract-info-from-tables.png) 

     2. In the **Where should we save table info?** section:
 
        - If you select **A new list** (the default setting), a suggested name is automatically provided in the **New list name** box. You can modify the name if you want to. If you want to show the list in the site navigation, select the **Show in site navigation** checkbox.

        - If you select **An existing list**, in the **Selected list** box, choose the list you want to use.

4. When you create a form processing model, you create a new SharePoint content type. A SharePoint content type represents a category of documents that have common characteristics and share a collection of columns or metadata properties for that particular content. SharePoint content types are managed through the <a href="https://go.microsoft.com/fwlink/?linkid=2185219" target="_blank">SharePoint admin center</a>.

   To map this model to an existing content type in the SharePoint content types gallery, select **Advanced settings**.

    ![Screenshot showing the Advanced settings in the Create a model to process forms panel.](../media/content-understanding/new-form-model-advanced-settings.png) 

   1. In the <a href="https://go.microsoft.com/fwlink/?linkid=2185074" target="_blank">Content type gallery</a>, choose whether to create a new content type or to use an existing one. 

   2. To use an existing content type, select **Select one**, and choose a content type from the list.

   3. Your model creates a new view in your document library for your extracted data. If you don't want it to be the default view, in the **Library view for this model** section, clear the **Set the view as default** checkbox.

   4. To apply a retention label to your files, in the **Retention label** section, select the retention label you want to use.

5. Select **Create**.

## Step 2: Add and analyze documents

After you create your new form processing model, your browser opens a new Power Apps AI Builder forms processing model page. On this page, you can add and analyze your example documents. 

> [!NOTE]
> When you look for example files to use, see the [form processing model input document requirements and optimization tips](/ai-builder/form-processing-model-requirements). 
 
1. You first define the fields and tables you want to teach your model to extract on the **Choose information to extract** page. For detailed steps, see [Define fields and tables to extract](/ai-builder/create-form-processing-model#define-fields-and-tables-to-extract). 

2.  You can create as many collections of document layouts you want your model to process. For detailed steps, see [Group documents by collections](/ai-builder/create-form-processing-model#group-documents-by-collections). 

3. After you create your collections and add the example files for each, AI Builder will examine the uploaded documents to detect the fields and tables. This usually takes a few minutes. When the analysis is complete, you can proceed with tagging the documents.

## Step 3: Tag fields and tables

You need to tag the documents to teach the model to understand the fields and table data you want to extract. For detailed steps, see [Tag documents](/ai-builder/create-form-processing-model#tag-documents).

## Step 4: Train and publish your model

1. After you create and train your model, you're ready to publish it and use it in SharePoint. For detailed steps, see [Train and publish your form processing model](/ai-builder/form-processing-train). 

2. After the model is published, select **Use model**, and then select **Create flow**. This creates a Power Automate flow that can run in your SharePoint document library and that extracts the fields that have been identified in the model.

    ![Screenshot in AI Builder showing the Create a flow panel.](../media/content-understanding/ai-builder-create-a-flow-1.png)
 
3. When completed, you'll see the message: *Your flow was successfully created*.

4. Select the **Go to SharePoint** button to see the document library updated with your model.

## Step 5: Use your model

1. In the document library model view, notice that the fields you selected now display as columns.

    ![Document library model applied.](../media/content-understanding/doc-lib-view.png)

2. Notice that the information link next to **Documents** notes that a forms processing model is applied to this document library.

    ![Info button.](../media/content-understanding/info-button.png)  

3. Upload files to your document library. Any files that the model identifies as its content type lists the files in your view and displays the extracted data in the columns.

    ![Done.](../media/content-understanding/doc-lib-done.png) 

> [!NOTE]
> If a custom form processing model and document understanding model are applied to the same library, the file is classified using the document understanding model and any trained extractors for that model. If there are any empty columns that match the form processing model, the columns will be populated using those extracted values.

### Use flows to extract information

Two flows are available to process a selected file or batch of files in a library where a form processing model has been applied.

- **Extract info from an image or PDF file with a form processing model** — Use to extract text from a selected image or PDF file by running a form processing model. Supports a single selected file at a time, and supports only PDF files and image files (PNG, JPG, and JPEG). To run the flow, select a file, and then select **Automate** > **Extract info**.

    ![Screenshot showing the Automate menu with Extract info highlighted.](../media/content-understanding/automate-extract-info.png)  

- **Extract info from files with a form processing model** — Use with form processing models to read and extract information from a batch of files. Processes up to 5,000 SharePoint files at a time. When you run this flow, there are certain parameters you can set. You can:

    - Choose whether to include previously processed files (the default is not to include previously processed files).
    - Select the number of files to process (the default is 100 files).
    - Specify the order in which to process the files (choices are by file ID, file name, file created time, or last modified time).
    - Specify how you want the order sorted (ascending or descending order).

    ![Screenshot showing the Run flow panel with parameter options highlighted.](../media/content-understanding/run-flow-panel.png)  
    
> [!NOTE]
> The **Extract info from an image or PDF file with a form processing model** flow is automatically available for a library with a form processing model associated. The **Extract info from files with a form processing model** flow is a template that must be added to the library if required.

### Classification Date field

When a SharePoint Syntex form processing model (or a document understanding model) is applied to a document library, the **Classification Date** field is included in the library schema. By default, this field is empty. However, when documents are processed and classified by a model, this field is updated with a date-time stamp of completion. 

When a model is stamped with the **Classification Date**, you can use the **Send an email after SharePoint Syntex processes a file** flow to notify users that a new file has been processed and classified by a model in the SharePoint document library.

To run the flow:

1. Select a file, and then select **Integrate** > **Power Automate** > **Create a flow**.

2. On the **Create a flow** panel, select **Send an email after SharePoint Syntex processes a file**.

    ![Screenshot showing the Create a flow panel and flow option highlighted.](../media/content-understanding/integrate-create-flow.png) 

## See also
  
[Power Automate documentation](/power-automate/)

[Training: Improve business performance with AI Builder](/training/paths/improve-business-performance-ai-builder/?source=learn)
