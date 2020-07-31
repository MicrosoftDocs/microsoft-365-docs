---
title: "Create a Form Processing model (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 8/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Create a Form Processing model in Project Cortex."
---

# Create a Form Processing model (Preview)

> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

Using [AI Builder](https://docs.microsoft.com/ai-builder/overview) - a feature in Microsoft PowerApps - Project Cortex users can create a [form processing model](form-processing-overview.md) directly from a SharePoint document library. 

Creating a form processing model involves the following:
 - Step 1: Create the from processing model to create the content type
 - Step 2: Add and analyze example files
 - Step 3: Select your form fields
 - Step 4: Train and test your model
 - Step 5: Publish your model
 - Step 6: Use your model


## Requirements

You can only create a form processing model in SharePoint document libraries in which it is enabled. If form processing is enabled, you will be able to see the **AI Builder** **"Create a form processing model'** under the **Automate** menu in your document library.  If you need from processing enabled on your document library, contact your admin.

 ![Create an AI Builder model](../media/content-understanding/create-ai-builder-model.png)</br>

(Note: Need to add information about who can create form processing models)


## Step 1: Create a Form Processing model

The first step in creating a form processing model is to name it to create the define the new content type and create a new document library view for it.

1. In your document library, select the **Automate** menu, select **AI Builder**, and then select **Create a Form Processing model**.

    ![Create an AI Builder model](../media/content-understanding/create-ai-builder-model.png)</br>
2. In the **New form processing model** pane, in the  **Name** field, type a name for your model (for example, *Purchase Orders*).

    ![New form processing model](../media/content-understanding/new-form-model.png)</br> 

3. When you create a form processing model, you are creating a new SharePoint content type. A SharePoint content type represents a category of documents that have common characteristics and share a collection of columns or metadata properties for that particular content. SharePoint Content Types are managed through the [Content types gallery]().

    Select **Advanced settings** if you want to map this model to an existing content type in the SharePoint Content types gallery to use its schema. 

4. Your model will create a new view in your document library for your extracted data. If you do not want it to the default view, deselect **Set the view as default**.
5. Select **Create**.


## Step 2: Add and analyze documents

After you create your new form processing model, your browser will open a new PowerApps AI Builder forms processing model page. </br>

   ![Power Apps AI Builder](../media/content-understanding/powerapps.png)</br> 
 

1. Click **Add documents** to begin adding example documents that are analyzed to determine what named value pairs can be extracted. You can choose either **Upload from local storage**, **SharePoint**, or **Azure Blob storage**. You will need to use at least five files for training.
2. After adding your files, select **Analyze** to check for any information that is common is all files. Note that this may take several minutes to complete.</br> 
 
    ![Analyze files](../media/content-understanding/analyze.png)</br> 

3. After they have been analyzed, in the **Select the form fields you want to save** page, click the file to see the fields that were detected.</br>

    ![Select form fields](../media/content-understanding/select-form-fields.png)</br> 

## Step 3: Select your form fields

After analyzing your documents for fields, you can now see which fields were found, and which ones you want to save. Saved fields will display as columns in your model's document library view and will show the values extracted from each document.

1. The next page will display one of your sample files and will highlight all common fields that were automatically detected by the system. </br>

    ![Select form fields](../media/content-understanding/select-fields-page.png)</br> 

2. Select the fields you want to save, and select the checkbox to confirm your selection. For example, in the Purchase Order model, you can choose to select the *Date*, *PO*, and *Total* fields.  Note that you can also choose to rename a field if you choose. </br>

    ![Select PO#](../media/content-understanding/po.png)</br> 

3. If a field was not detected by analysis, you can still choose to add it. Highlight the information you want to extract, and in the name box type in the name you want to give it. Then select the check. Note that you will need to confirm undetected fields in your remaining example files.
4. Click **Confirm fields** after you have selected the fields you want to save. </br>
 
    ![Confirm fields](../media/content-understanding/confirm-fields.png)</br> 
 
5. On the **Select the form fields you want to save** page, it will show the number of fields you have selected. Select **Done**.

## Step 4: Train and test your model

After selecting the fields you want to save, the **Model Summary** page will let you train and test your model.

1. On the **Model Summary** page, the saved fields will show in the **Selected fields** section. Select **Train** to begin training on your example files. Note that this may take a few minutes to complete.</br>
    ![Confirm fields](../media/content-understanding/select-fields-train.png)</br> 
2. When you see the notification that training has completed, select **Go to details page**. 
3. On the **Model details** page, you can choose to test how your model works by selecting **Quick test**. This lets you drag and drop files to the page and see if the fields are detected.

## Step 5: Publish your model



1. If you are satisfied with the results of your model, select **Publish** to make it available for use.
2. After the model published, select **Use model**. This creates a PowerAutomate flow that will run in your SharePoint document library and will extract the fields that have been identified in the model. Select **Create Flow**.  
3. When completed, you will see the message **Your flow has been successfully created**.
 
 
## Step 6: Use your model

After publishing your model and creating it's PowerAutomate flow, you can use your model in your SharePoint document library.

1. After publishing your model , select **Go to SharePoint** to go to your document library.
2. On your document library model view, notice that the fields you selected now display as columns.</br>

    ![Document library with model applied](../media/content-understanding/doc-lib-view.png)</br> 

    Also notice that the information link next to **Documents** will note that a forms processing model is applied to this document library.

    ![Extracted](../media/content-understanding/info-button.png)</br>  

3. Upload files to your document library. Any files that the model identifies as it's content type will list the files in your view, and will display the extracted data in the columns.</br>

    ![Extracted](../media/content-understanding/doc-lib-done.png)</br>  



## See Also
  




