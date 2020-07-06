---
title: "Create a classifier (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 6/29/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Learn how to create a classifier"
---

# Create a classifier (Preview)

> [!Note] The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex]().

A classifier is a type of model that automates identification and classification of a document type. For example, you want to identify all *Contract Renewal* documents that are added to your document library.

Creating a classifier model will create a new [SharePoint Content Type](https://docs.microsoft.com/sharepoint/governance/content-type-and-workflow-planning#content-type-overview) that will be associated to the model.

When creating the classifier model, you create explanations that help to define the model by noting common data that you would expect to find consistently for this document type. 

You use examples of the document type ("example files") to help "train" your model to identify files that have the same content type.

To create a classifier, you need to:
1. Name your model
2. Add your example files
3. Label your example files
4. Create an explanation
5. Test your model 

>[!Note] After you create a classifier model, you can optionally [add extractors]() to pull specific pieces of information from each file identified by the model.

## Name your model

The first step is to create your model in your Content Center by giving it a name:

1. In your Content Center, click **New**, and then click **Create a model**.
2. In the **New document understanding model** pane, in the **Name** field, type the name of the model. For example, if we want to identify contract renewal documents, we might name this model *Contract Renewal*.
3. Click **Create**. This will create a home page for the model.

When you create a model, you are creating a new SharePoint content type. A SharePoint content type represents a category of documents that have common characteristics and share a collection of columns or metadata properties for that particular content. SharePoint Content Types are managed through the [Managed MetaData Service](https://docs.microsoft.com/sharepoint/managed-metadata).

Click **Advanced settings** if you want to map this model to an existing content type if you want to use its schema. 

## Add your example files

On the model home page, you can add your examples files you will need to help train the model to identify your document type. 

> [!Note]
> The same files should be used for both classifier and [extractor training](). You always have the option to add more later, but typically you should add a full set of example files. You will label some to train your model, and test the remaining unlabeled ones to evaluate model fitness. 

For your training set, you will want to use both positive examples, and negative examples:
- Positive example: Documents that represent the document type. They contain strings and information that would always be in this type of document.
- Negative example: Documents that do not represent the document type.  They do not contain strings and information that need to be present in this type of document.

You will want to use at least five positive examples and one negative examples to train your model.  You will want to have additional ones to test your model.

To add sample files:

1. On the model home page, in the **Build sample library** tile, click **Add files**.
2. On the **Select sample files for your model** page, select your example files from the Sample files library in the Content Center. If you had not already uploaded them there, you can choose to upload them now by clicking **Upload** to move them the Sample file library.
3. After selecting your example files to use to train the model, click **Add**.


## Label your example files

After adding your example files, you then need to label them as either positive examples or negative examples.

1. On the model home page, on the **Classify files and run training** tile, click **Train Classifier**.
   This will display the label page that shows a listing of your example files, with the first file visible in the viewer.
2. In the viewer, on the top of the first example file, you will see text asking you if the file is an example of the model you just created. If it is a positive example, select **Yes**. If it is a negative example, select **No**.
3. From the **Labeled examples** list on the left, select additional files that you want to use as examples, and label them as well. 

> [!Note]
> Label at least five positive examples, and one negative example. 

## Create an explanation

The next step is to create an explanation on the Train page.  An explanation is a hint or clue to help the model understand how to recognize this document. For example, our Contract Renewal documents always contain a *Request for additional disclosure* text string.

> [!Note]
> When used with extractors, an explanation is use to identify the string that you want to extract from the document. 

To create an explanation:

1. On the model home page, click the **Train** tab to go to the Train page.
2. On the Train page, in the **Trained files** section, you will see a list of the example files that you had labeled previously. Select one of your positive files from the list, and it will display in the viewer.
3. In the Explanation section, click **New**, then click **Blank**.
4. On the **Create an explanation** page:</br>
    a. Type the **Name** (for example, "Disclosure Block").</br>
    b. Select the **Type**. For our example, we'll select **Phrase list**, since we are adding a text string.</br>
    c. In the **Type here** box, type the string.  For our example, we'll add "Request for additional disclosure". You can select **Case sensitive** if the string needs to be case sensitive.</br>
    d. Click **Save**.
5.  The model will now check to see if the explanation you created was good enough to identify your remaining labeled example files correctly as positive and negative examples. In Trained Files section, check the **Evaluation** column after the training has completed to see the results.  The files will show a value of **Match** if the explanation you created was enough to match what you had labeled them as (positive or negative).

If you receive a **Mismatch** on your labeled files, you may need to create an additional explanation to provide the model more information to identify the document type. You can click on the file to get more information about why the mismatch occurred.

## Test your model

If you received a match on your labeled example files, you can now test your model on your remaining unlabeled example files.

1. On the model home page, click the **Test** tab.  This will run the model on your unlabeled example files.
2. In the **Test files** list, your example files will display and will show if the model predicted them to be positive or negative examples. You can use this information to help determine the effectiveness of your classifier in identifying your documents.



## See Also
  




