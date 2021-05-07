---
title: "Step 1. Use SharePoint Syntex to identify contract files and extract data"
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.date: 05/10/2021
ms.prod: microsoft-365-enterprise
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to use SharePoint Syntex to identify contract files and extract data by using a Microsoft 365 solution."
---

# Step 1. Use SharePoint Syntex to identify contract files and extract data

Your organization needs a way to identify and classify all contract documents from the many files you receive. You also want to be able to quickly view several key elements in each of the contract files identified (for example, *Client*, *Contractor*, and *Fee amount*). You can do this by using [SharePoint Syntex](index.md) to create a document understanding model and applying it to a document library.

## Process overview

[Document understanding](document-understanding-overview.md) uses artificial intelligence (AI) models to automate classification of files and extraction of information. Document understanding models are also optimal in extracting information from unstructured and semi-structured documents where the information you need isn't contained in tables or forms, such as contracts.

1. First, you need to find at least five example files that you can use to "train" the model to search for characteristics that are specific to the content type you're trying to identify (a contract). 

2. Using SharePoint Syntex, create a new document understanding model. Using your example files, you need to [create a classifier](create-a-classifier.md). By training the classifier with your example files, you teach it to search for characteristics that are specific to what you would see in your company's contracts. For example, [create an "explanation"](create-a-classifier.md#create-an-explanation) that searches for specific strings that are in your contracts, such as *Service Agreement*, *Terms of Agreement*, and *Compensation*. You can even train your explanation to look for these strings in specific sections of the document, or located next to other strings. When you think you have trained your classifier with the information it needs, you can test your model on a sample set of example files to see how efficient it is. After testing, if needed you can choose to make changes to your explanations to make them more efficient. 

3. In your model, you can [create an extractor](create-an-extractor.md) to pull out specific pieces of data from each contract. For example, for each contract, the information you're most concerned about is who the client is, the name of the contractor, and the total cost.

4. After you successfully create your model, [apply it to a SharePoint document library](apply-a-model.md). As you upload documents to the document library, your document understanding model will run and will identify and classify all files that match the contracts content type you defined in your model. All files that are classified as contracts will display in a custom library view. The files will also display the values from each contract that you defined in your extractor.

   ![Contracts in document library](../media/content-understanding/doc-lib-solution.png)

5. Additionally, if you have retention requirements for your contracts, you can also use your model to [apply a retention label](apply-a-retention-label-to-a-model.md) that will prevent your contracts from being deleted for a specified period of time.

## Detailed steps to train your model

### Create a Contract model

The first step is to create your Contract model.

1. From the content center, select **New**, and then **Create a model**.

2. On the **New document understanding model** pane, in the **Name** field, type the name of the model. For this contract management solution, you can name the model *Contract*.

4. Choose **Create**. This creates a home page for the model.</br>

    ![Screenshot of the Contract home page.](../media/content-understanding/models-contract-home-page.png)


### Train your model to classify a type of file

#### Add example files for your model

You need to add at least five example files that are contract documents, and one example file that's not a contract document (for example, a statement of work). 

1. On the **Models > Contract** page, under **Key actions** > **Add example files**, select **Add files**.

   ![Screenshot showing the Contracts page with Add example files option highlighted.](../media/content-understanding/key-actions-add-example-files.png)

2. On the **Select example files for your model** page, open the Contract folder, select files you want to use, and then select **Add**. If you don't have example files there, select **Upload** to add them.

#### Label the files as positive or negative examples

1. On the **Models > Contract** page, under **Key actions** > **Classify files and run training**, select **Train classifier**.

   ![Screenshot showing the Contracts page with Classify files and run training option highlighted.](../media/content-understanding/key-actions-classify-files.png)

2. On the **Models > Contract > Contract classifier** page, in the viewer on the top of the first example file, you'll see text asking if the file is an example of the Contract model you just created. If it is a positive example, select **Yes**. If it is a negative example, select **No**.

3. From the **Labeled examples** list on the left, select additional files that you want to use as examples, and label them. 

    ![Classifier home page](../media/content-understanding/models-contract-classifier.png) 

#### Add at least one explanation to train the classifier 

1. On the **Models > Contract > Contract classifier** page, select the **Train** tab.

2. In the **Trained files** section, you'll see a list of the example files that you previously labeled. Select one of the positive files from the list to display it in the viewer.

3. In the **Explanations** section, select **New** and then **Blank**.

4. On the **Create an explanation** page:

    a. In the **Name** field, type the name of the explanation (such as "Agreement").

    b. In the **Explanation type** field, select **Phrase list**, because you add a text string.

    c. In the **Phrase list** box, type the string (such as "AGREEMENT"). You can select **Case sensitive** if the string needs to be case sensitive.

    d. Select **Save and train**.

    ![Screenshot of the Create an explanation panel.](../media/content-understanding/contract-classifier-create-explanation.png) 

#### Test your model

You can by test your Contract model on example files it hasn’t seen before. This is optional, but it can be a useful best practice.

1. On the **Models > Contract > Contract classifier** page, select the **Test** tab. This runs the model on your unlabeled example files.

2. In the **Test Files** list, your example files display and shows if the model predicted them to be positive or negative. Use this information to help determine the effectiveness of your classifier in identifying your documents.

    ![Screenshot of the unlabeled files in the Text Files list](../media/content-understanding/test-on-files.png) 

3. When done, select **Exit Training**.

### Create and train an extractor

1. On the **Models > Contract** page, under **Key actions** > **Create and train extractors**, select **Create extractor**.

   ![Screenshot showing the Contracts page with Create and train extractors option highlighted.](../media/content-understanding/key-actions-create-extractors.png)

2. On the **New entity extractor** panel, in the **New name** field, type the name of your extractor. For example, name it *Client* if you want to extract the name of the client from each contract.

3. When you're done, select **Create**.

#### Label the entity you want to extract

Creating the extractor opens the extractor page. Here you see a list of your sample files, with the first file on the list displayed in the viewer.

1. From the viewer, select the data that you want to extract from the files. For example, if you want to extract the *Start Service Date*, you highlight the date value in the first file (*Monday, October 14, 2019*). and then click **Save**.  You should see the value display from the file in the Labeled examples list, under the **Label** column.
2. Select **Next file** to auto save and open the next file in the list in the viewer. Or select **Save** and then select another file from the **Labeled examples** list.
3. In the viewer, repeat steps 1 and 2, then repeat until you saved the label in all five files.

    ![Advanced settings](../media/content-understanding/select-service-start-date.png) 

 
Once you labeled five files, a notification banner displays informing you to move to training. You can choose to more label more documents or advance to training. 
For example, if the words "this letter is to inform you" or similar show up in every file of this type, add that phrase as an explanation. Now you can apply the model to a library or train an extractor.


From the Contracts SharePoint library, 



## Next step

[Step 2. Use Microsoft Teams to create your contract management channel](solution-manage-contracts-step2.md)