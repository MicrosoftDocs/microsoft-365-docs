---
title: "Create an extractor"
ms.author: efrene
author: efrene
manager: pamgreen
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
localization_priority: Priority
description: "Learn how to create an extractor in Microsoft SharePoint Syntex."
---

# Create an extractor in Microsoft SharePoint Syntex


</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CL2G]

</br> 

Before or after you create a classifier model to automate identification and classification of specific document types, you can optionally choose to add extractors to your model to pull out specific information from these documents. For example, you may want your model not only to identify all *Contract Renewal* documents added to your document library, but also to display the *Service Start date* for each document as a column value in the document library.

You need to create an extractor for each entity in the document that you want to extract. In our example, we want to extract the **Service Start Date** for each **Contract Renewal** document that is identified by the model. We want to be able to see a view in the document library of all **Contract Renewal** documents, with a column that shows the **Service Start** date value of each document. 

> [!NOTE]
> In order to create an extractor, you use the same files you previously uploaded to train the classifier. 

## Name your extractor

1. From the model home page, in the **Create and train extractors** tile, click **Train extractor**.
2. On the **New entity extractor** screen, type the name of your extractor in the **New extractor name** field. For example, name it **Service Start Date** if you want to extract the service start date from each Contract Renewal document. You can also choose to reuse a previously created column (for example, a managed metadata column).
> [!NOTE]
> If you create a new extractor, then select **New column type** and choose **Single line of text**, the maximum character limit is 255. Any characters that you type exceeding the limit get truncated. 
3. When you're done, click **Create**.

## Add a label

The next step is to label the entity you want to extract in your example training files.

Creating the extractor opens the extractor page. Here you see a list of your sample files, with the first file on the list displayed in the viewer.

1. From the viewer, select the data that you want to extract from the files. For example, if you want to extract the *Start Service Date*, you highlight the date value in the first file (*Monday, October 14, 2019*). and then click **Save**.  You should see the value display from the file in the Labeled examples list, under the **Label** column.
2. Select **Next file** to auto save and open the next file in the list in the viewer. Or select **Save** and then select another file from the **Labeled examples** list.
3. In the viewer, repeat steps 1 and 2, then repeat until you saved the label in all five files.

    ![Advanced settings](../media/content-understanding/select-service-start-date.png) 

 
Once you labeled five files, a notification banner displays informing you to move to training. You can choose to more label more documents or advance to training. 

### Use Find to search your file
You can use the <b>Find</b> feature to search for an entity in your document that you want to label.

   ![Find in file](../media/content-understanding/find-feature.png) 

The Find feature is useful if you are searching a large document or if there are multiple instances of the entity in the document. If you find multiple instances, you can select the one you need in the search results to go to that location in the viewer to label it.


## Add an explanation

For our example, we are going to create an explanation that provides a hint about the entity format itself and variations it may have in the sample documents. For example, a date value can be in a number of different formats, such as:
- 10/14/2019
- October 14, 2019
- Monday, October 14, 2019
 

To help identify the *Service Start Date* you can create a pattern explanation.

1. In the Explanation section, select **New** and type a name (for example, *Date*).
2. For Type, select **Pattern list**.
3. For Value, provide the date variation as they appear in the sample files. For example, if you have date formats that appear as 0/00/0000, you enter any variations that appear in your documents, such as:
    - 0/0/0000
    - 0/00/0000
    - 00/0/0000
    - 00/00/0000
4. Select **Save**.

> [!NOTE]
> For more learn more about explanation types, see [Explanation types](./explanation-types-overview.md).  


### Use the Explanation library

For creating explanations for items such as dates, it is easier to [use the explanation library](./explanation-types-overview.md) than to manually enter all variations. The explanation library is a set of pre-built phrase and pattern explanations. The library tries to provides all formats for common phrase or pattern lists, such as dates, phone numbers, zip codes, and many others. 

For the *Service Start Date* sample, it is more efficient to use the pre-built explanation for *Date* in the explanation library:

1. In the **Explanation section**, select **New**, and then select **From explanation library**.
2. From the explanation library, select **Date**. You can view all variations of date that are recognized.
3. Select **Add**.</br>

    ![Explanation library](../media/content-understanding/explanation-library.png) 

4. On the **Create an explanation** page, the *Date* information from the explanation library auto fills the fields. Select **Save**.</br>

    ![Date](../media/content-understanding/date-explanation-library.png) 

## Train the model 

Saving your explanation start the training. If your model has enough information to extract the data from your labeled example files, you will see each file labeled with **Match**.  

![Match](../media/content-understanding/match2.png) 

If the explanation does not have enough information to find the data you want to extract, each file will be labeled with **Mismatch**. You can click on the **Mismatched** files to see more information about why there was a mismatch.


## Add another explanation

Often the mismatch is an indication that the explanation we provided did not provide enough information to extract the service start date value to match our labeled files. You may need to edit it, or add another explanation.

For our example, notice that the text string *Start Service date of* always precedes the actual value. To help identify the Service Start Date, you need to create a phrase explanation.

1. In the Explanation section, select **New**, and then type a name (for example, *Prefix String*).
2. For the Type, select **Phrase list**.
3. Use *Service Start Date of* as the value.
4. Select **Save**.

    ![Prefix string](../media/content-understanding/prefix-string.png) 

## Train the model again

Saving the explanation starts the training again, this time using both explanations in the example. If your model has enough information to extract the data from the labeled example files, you see each file labeled with **Match**. 

If you again receive a **Mismatch** on your labeled files, you likely need to create another explanation to provide the model more information to identify the document type, or consider making changes to your existing ones.

## Test your model

If you receive a match on your labeled sample files, you can now test your model on the remaining unlabeled example files. This is optional, but a useful step to evaluate the “fitness” or readiness of the model before using it, by testing it on files the model hasn’t seen before.

1. From the model home page, click the **Test** tab.  This runs the model on your unlabeled sample files.
2. In the **Test files** list, your example files display to show if the model is able to extract the information you need. Use this information to help determine the effectiveness of your classifier in identifying your documents.

    ![Test on your files](../media/content-understanding/test-filies-extractor.png) 

## See Also
[Create a classifier](create-a-classifier.md)

[Explanation types](explanation-types-overview.md)

[Leverage term store taxonomy when creating an extractor](leverage-term-store-taxonomy.md)

[Document Understanding overview](document-understanding-overview.md)

[Apply a model](apply-a-model.md) 

[SharePoint Syntex Accessibility Mode](accessibility-mode.md)