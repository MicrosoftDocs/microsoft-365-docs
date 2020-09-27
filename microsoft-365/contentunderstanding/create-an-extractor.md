---
title: "Create an extractor (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 8/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to create an extractor"
---

# Create an extractor (Preview)

The content in this article is for the Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CL2G]

</br> 

Before or after you create a classifier model to automate identification and classification of specific document types, you can optionally choose to add extractors to your model to pull out specific information from these documents. For example, you may want your model not only to identify all *Contract Renewal* documents added to your document library, but also to display the *Service Start date* for each document as a column in the document library.

You need to create an extractor for each entity in the document that you want to extract. In the sample, you want to extract the *Service Start Date* for each *Contract Renewal* document that is identified by the model. This must happen when you want to see a view in the document library of all the *Contract Renewal* documents with a column showing the Service Start date value for each document.

> [!NOTE]
> Before creating an extractor, you need to [add your example files](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-classifier?view=o365-worldwide#add-your-example-files) to help train the model to identify the information you want to extract. Use the same sample files you used to create your classifier.

## Name your extractor

1. From the model home page, in the **Create and train extractors** tile, click **Train extractor**.
2. On the **New entity extractor** screen, type the name of your extractor in the **New extractor name** field. For example, name it **Service Start Date** if you want to extract the service start date from each Contract Renewal document.
3. Click **Create**.

## Add a label

The next step is to label the information you want to extract in your sample training files.

Creating the extractor opens the extractor page. Here you see a list of your sample files, with the first file on the list displayed in the viewer.

1. From the viewer, select the data that you want to extract from the files. For example, if you want to extract the *Start Service Date*, you highlight the date value in the first file (*Monday, October 14, 2019*). and then click **Save**.  You should see the value display from the file in the Labeled examples list, under the **Label** column.
2. Select **Next file** to auto save and open the next file in the list in the viewer. Or select **Save** and then select another file from the **Labeled examples** list.
3. In the viewer, repeat steps 1 and 2, then repeat until you saved the label in all five files.

    ![Advanced settings](../media/content-understanding/select-service-start-date.png) 

### Add a negative example

Similar to how you add a negative sample file when creating a classifier, you need to add a negative sample for the extractor. It should be a file that does not contain a "Service Start" date value.

1. From the **Labeled examples** list, select a negative example.
2. In the viewer on the top of the article, select **No label present**.
3. Click **Save**.
 
Once you labeled five files, a notification banner displays informing you to move to training. You can choose to more documents or advance to training. 

## Add an explanation

For the example, you create an explanation that provides a hint about the entity format itself and variations it may have in the sample documents. For example, a date value can be in a number of different formats, such as:
- 10/14/2019
- October 14, 2019
- Monday, October 14, 2019
 

To help identify the *Service Start Date* you create a pattern explanation.

1. In the Explanation section, select **New** and type a name (for example, *Date*).
2. For Type, select **Pattern list**.
3. For Value, provide the date variation as they appear in the sample files. For example, if you have date formats that appear as 0/00/0000, you enter any variations that appear in your documents, such as:
    - 0/0/0000
    - 0/00/0000
    - 00/0/0000
    - 00/00/0000
4. Select **Save**.

### Use the Explanation library

For creating explanations for items such as dates, it is easier to use the explanation library than to manually enter all variations. The explanation library is a set of pre-built phrase and pattern explanations. The library provides all formats for common phrase or pattern lists, such as dates, phone numbers, zip code, etc. 

For the *Service Start Date* sample, it is more efficient to use the pre-built explanation for *Date* in the explanation library:

1. In the **Explanation section**, select **New**, and then select **From explanation library**.
2. From the explanation library, select **Date**. You can view all variations of date that are recognized.
3. Select **Add**.</br>

    ![Explanation library](../media/content-understanding/explanation-library.png) 

4. On the **Create an explanation** page, the *Date* information from the explanation library auto fills the fields. Select **Save**.</br>

    ![Explanation library](../media/content-understanding/date-explanation-library.png) 

## Train the model 

Saving your explanation start the training. If your model has enough information to extract the data from your labeled example files, you will see each file labeled with **Match**.  

![Explanation library](../media/content-understanding/match2.png) 

If the explanation does not have enough information to find the data you want to extract, each file will be labeled with **Mismatch**. You can click on the **Mismatched** files to see more information about why there was a mismatch.


## Add another explanation

Often the mismatch is an indication that the explanation we provided did not provide enough information to extract the service start date value to match our labeled files. You may need to edit it, or add another explanation.

For the sample, notice that the text string *Start Service date of* always precedes the actual value. To help identify the Service Start Date, you need ot create a phrase explanation.

1. In the Explanation section, select **New**, and then type a name (for example, *Prefix String*).
2. For the Type, select **Phrase list**.
3. Use *Service Start Date of* as the value.
4. Select **Save**.

    ![Explanation library](../media/content-understanding/prefix-string.png) 

## Train the model

Saving the explanation starts the training again, this time using both explanations in the sample. If your model has enough information to extract the data from the labeled sample files, you see each file labeled with **Match**. 

If you again receive a **Mismatch** on your labeled files, you likely need to create another explanation to provide the model more information to identify the document type, or consider making changes to your sample model.

## Test your model

If you receive a match on your labeled sample files, you can now test your model on the remaining unlabeled sample files.

1. From the model home page, click the **Test** tab.  This runs the model on your unlabeled sample files.
2. In the **Test files** list, your example files display to show if the model is able to extract the information you need. Use this information to help determine the effectiveness of your classifier in identifying your documents.

    ![Test on your files](../media/content-understanding/test-filies-extractor.png) 
