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
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to create an extractor"
---

# Create an extractor (Preview)
> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CL2G]

</br> 

Either before or after you create a classifier model to automate identification and classification of specific document types, you can optionally choose to add extractors to your model to pull out specific information from these documents. For example, you may want your model not only to identify all *Contract Renewal* documents that are added to your document library, but to also display the *Service Start date* for each document as a column in the document library.

You need to create an extractor for each entity in the document that you want to extract. In our example, we want to extract the *Service Start Date* for each *Contract Renewal* document that is identified by the model. We want to be able to see a view in the document library of all *Contract Renewal* documents, with a column that shows the Service Start date value of each document.

> [!Note]
> Before creating an extractor, you need to [add your example files](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-classifier?view=o365-worldwide#add-your-example-files) you will need to help train the model to identify the information you want to extract. Use the same example files you used to create your classifier.


## Name your extractor

1. On the model home page, in the **Create and train extractors** tile, click **Train extractor**.
2. On the **New entity extractor** screen, type the name of your extractor in the **New extractor name** field. For example, we can name it **Service Start Date** if we want to extract the service start date from each Contract Renewal document.
3. Click **Create**.

## Add a label

The next step is to label the information you want to extract in your example training files.

Creating the extractor will open the extractor page in which you will see a list of your example files, with the first file on the list displayed in the viewer.

1. In the viewer, select the data that you want to extract from the files. For example, if you want to extract the *Start Service Date*, you will highlight the date value for it in the first file (*Monday, October 14, 2019*). Then click **Save**.  You will see the value display for the file in the Labeled examples list under the **Label** column.
2. Select **Next file** to autosave and open the next file in the list in the viewer, or you can select **Save** and select another file from the **Labeled examples** list.
3. In the viewer, repeat steps 1 and 2, and do this until you have saved the label in five files.

    ![Advanced settings](../media/content-understanding/select-service-start-date.png) 


### Add a negative example

Similar to how you would add a negative example file when creating a classifier, you need to add a negative example for the extractor. For our example, it should be a file that does not contain a Service Start Date value.

1. From the **Labeled examples** list, select a negative example.
2. In the viewer, on the top of the article, select **No label present**.
3. Click **Save**.
 
Once you have labeled five files, a notification banner will display informing you to move to training. You can choose to more documents or advance to training. 

## Add an explanation

For our example, we are going to create an explanation that provides a hint about the entity format itself and variations it may have in the example documents. For example,a date value can be in a number of different formats, such as:
- 10/14/2019
- October 14, 2019
- Monday, October 14, 2019
 

To help identify the *Service Start Date* you can create a pattern explanation.

1. In the Explanation section, select **New**, and then type a name (for example, *Date*).
2. For the Type, select **Pattern list**.
3. For the value, you need to provide the date variation as they appear in the sample files. For example, if you have date formats that appear as 0/00/0000, you would enter any variations that might appear in your documents, such as:
    - 0/0/0000
    - 0/00/0000
    - 00/0/0000
    - 00/00/0000
4. Select **Save**.

### Explanation types

(Need to explain explanation types here before getting into the explanation library)

### Use the Explanation library

For creating explanations for things such as dates, it is much easier to use the explanation library than to manually enter all variations. The explanation library is a set of pre-built phrase and pattern explanations. The library tries to provide all formats for common phrase or pattern lists, such as dates, phone numbers, zip code, and many others. 

For our *Service Start Date* example, it is more efficient to use the pre-built explanation for *Date* in the explanation library:

1. In the **Explanation section**,** select **New**, and then select **From explanation library**.
2. From the explanation library, select **Date**. You can view all variations of date that will be recognized.
3. Select **Add**.</br>

    ![Explanation library](../media/content-understanding/explanation-library.png) 

4. On the **Create an explanation** page, the *Date* information from the explanation library will autofill the fields. Select **Save**.</br>

    ![Explanation library](../media/content-understanding/date-explanation-library.png) 

 
## Train the model 

Saving your explanation will start the training. If your model has enough information to extract the data from your labeled example files, you will see each file labeled with **Match**.  

![Explanation library](../media/content-understanding/match2.png) 

If the explanation does not have enough information to find the data you want to extract, each file will be labeled with **Mismatch**. You can click on the Mismatched files to see more information about why there was a mismatch.


## Add another explanation

Often the mismatch is an indication that the explanation we provided did not provide enough information to extract the service start date value to match our labeled files. You may need to edit it, or add another explanation.

For our example, we notice that the text string *Start Service date of* always precedes the actual value. To help identify the Service Start Date we can create a phrase explanation.

1. In the Explanation section, select **New**, and then type a name (for example, *Prefix String*).
2. For the Type, select **Phrase list**.
3. Use *Service Start Date of* as the value.
4. Select **Save**.

    ![Explanation library](../media/content-understanding/prefix-string.png) 


## Train the model

Saving your explanation will start the training again, this time using both explanations in our example. If your model has enough information to extract the data from your labeled example files, you will see each file labeled with **Match**. 

If you again receive a **Mismatch** on your labeled files, you may need to create another explanation to provide the model more information to identify the document type, or look at making changes to your existing ones.

## Test your model

If you received a match on your labeled example files, you can now test your model on your remaining unlabeled example files.

1. On the model home page, click the **Test** tab.  This will run the model on your unlabeled example files.
2. In the **Test files** list, your example files will display and will show if the model is able to extract the information you need from them. You can use this information to help determine the effectiveness of your classifier in identifying your documents.

    ![Test on your files](../media/content-understanding/test-filies-extractor.png) 

## See Also
  




