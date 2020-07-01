---
title: "Create an extractor"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 6/29/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Learn how to create an extractor"
---

# Create an extractor
After you create a classifier for your model to automate identification and classification of specific document types, you can optionally choose to add extractors to your model to pull out specific information from these documents. For example, you want your model not only to identify all Contract Renewal documents that are added to your document library, but to also display the Service Start date for each document as a column in the document library.

You need to create an extractor for each entity in the document that you want to extract. 


## Name your extractor

1. On the model home page, in the **Create and train extractors** tile, click **Train extractor**.
2. On the **New entity extractor** screen, type the name of your extractor in the **New extractor name** field. For example, we can name it **Service Start Date** if we want to extract the service start date from each Contract Renewal document.
3. Click **Create**.

## Add a label

The next step is to label the information ou want to extract in your example training files.

Creating the extractor will open the extractor page in which you will see a list of your example files, with the first file on the list displayed in the viewer.

1. In the viewer, select the data that you want to extract from the files. For example, if you want to extract the *Start Service Date*, you will highlight the date value for it in the first file (*Monday, October 14, 2019*). Then click **Save**.  You will see the value display for the file in the Labeled examples list under the **Label** column.
2. Select **Next file** if you want to open the next file in the list in the viewer, or select the file from the **Labeled examples** list.
3. In the viewer, select the Service Start Date value for that file, and then click **Save**. Do this to at least five example files.

### Add a negative example

Similar to how you would add a negative example file when creating a classifier, you need to add a negative example for the extractor. For this example, it should be a file that does not contain a Service Start Date value.

1. From the **Labeled examples** list, select a negative example.
2. In the viewer, on the top of the article, select **No label present**.
3. Click **Save**.

## Train the model



## Create an explanation

The next step is to create an explanation on the Train page.  An explanation is a hint or clue to help the model understand how to recognize this document. For example, our Contract Renewal documents always contain a **Request for additional disclosure** text string.

When used with extractors, an explanation is use to identify the string that you want to extract from the document. 

1. On the model home page, click the **Train** tab to go to the Train page.
2. On the Train page, in the **Trained files** section, you will see a list of the example files that you had labeled previously. Select one of your positive files from the list, and it will display in the viewer.
3. In the Explanation section, click **New**, then click **Blank**.
4. On the **Create an explanation** page:</br>
    a. Type the **Name** (for example, "Disclosure Block").</br>
    b. Select the **Type**. For our example, we'll select **Phrase list**, since we are adding a text string.</br>
    c. In the **Type here** box, type the string.  For our example, we'll add "Request for additional disclosure". You can select **Case sensitive** if the string needs to be case sensitive.</br>
    d. Click **Save**.
5.  The model will now check to see if the explanation you created was good enough to identify your remaining labeled example files correctly as positive and negative examples. In Trained Files section, check the **Evaluation** column after the training has completed to see the results.  The files will show a value of **Match** if the explanation you created was enough to match what you had labeled them as (positive or negative).

If you receive a **Mismatch** on your labeled files, you may need to create an additional explanation to provide the model more information to identify the document type.

## Test your model

If you received a match on your labeled example files, you can now test your model on your remaining unlabeled example files.

1. On the model home page, click the **Test** tab.  This will run the model on your unlabeled example files.
2. In the **Test files** list, your example files will display and will show if the model predicted them to be positive or negative examples. You can use this information to help determine the effectiveness of your classifier in identifying your documents.



## See Also
  




