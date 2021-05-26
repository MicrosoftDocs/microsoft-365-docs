---
title: "Predictive coding module for Advanced eDiscovery (preview)"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
ms.reviewer: jefwan
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MET150
ms.collection: M365-security-compliance
description: "The new predictive coding module in Advanced eDiscovery uses machine learning to analyze documents in a review set to predictive which the documents that are relevant to your case or investigation."
---

# Learn about predictive coding in Advanced eDiscovery

The predictive coding module in Advanced eDiscovery uses the intelligent, machine learning capabilities in Advanced eDiscovery to help you reduce the amount of content to review. Predictive coding helps you reduce and cull large volumes of case content to a relevant set of documents that you can prioritize for review. This is accomplished by creating and training your own predictive coding models that help you prioritize the review of the most relevant documents in a review set.

The predictive coding module is designed to streamline the complexity of managing a model within a review set and provide an iterative approach to training your model so you can get get started faster with the machine learning capabilities in Advanced eDiscovery. To get started, you can create a model, label as few as 50 documents as relevant or not relevant. The system uses this training to apply predication scores to every document in the review set. This lets you filter documents based on the prediction score, which  allows you to review the most relevant (or non-relevant) documents first. If you want to train models with higher accuracies and recall rates, you can continue labeling items in subsequent training rounds until the model stabilizes.  

## The predictive coding workflow

Here's an overview and description of each step predictive coding workflow. For a more detailed description of the concepts and terminology of the predictive coding process, see [Predictive coding reference](predictive-coding-reference.md).



1. **Create a new predictive coding model in the review set**. The first step is to create a new predictive coding model in the review set. You must have at least 2,000 documents in the review set to create a model. After you create a model, the system will randomly select documents as a *control set*. The control set is used during the training process to evaluate the prediction scores that the model assigns to documents with the labeling that you perform in the training round. The size of the control set is based on the number of documents in the review set and the confidence level and margin of error values that you can set when creating the model. Documents in the control set never change and aren't identifiable to users.

2. **Complete the first training round by labeling documents as relevant or not relevant**. The next step is to train the model by starting the first round of training. When you start a training round, the model randomly selects 50 documents from the review set, which is called the *training set*. These documents are presented to you so that you can label each one as either "relevant" or "not relevant". Relevancy is based on the content in the document and not any of the document metadata. After you complete the labeling process in the training round, the model will "learn" from how you labeled the documents in the training set. Based on this training, the model will process the documents in the review set and apply a prediction score to each one.

3. **Apply the prediction score filter to documents in review set**. After the previous training step is completed, you can apply the predication score filter to the documents in the review to display/filter the documents. When you apply the prediction filter, you specify a specific range of prediction scores 

4. **Perform additional training rounds until model stabilizes**. Continue to iterate and label training rounds until your model stabilizes 

5. **Apply "final" prediction score to review set documents to prioritize review**.  






 

**Apply predictive score filter to prioritize review of responsive/unresponsive documents** 

- Once the training round is completed, go back to your review set and add a new predictive score filter by opening the filter panel and selecting the predictive score filter for your model. Select ‘Done’.  

- Open the filter and enter the desired range of prediction scores between 0-1 (0 being not-relevant, 1 being relevant). Generally speaking, documents with prediction scores between 0-0.5 are considered not-relevant and documents with prediction scores 0.5-1.0 are considered relevant.  

**Continue to iterate and label training rounds until your model stabilizes** 

- For users looking to train models with higher accuracies/recall rates and lower margin of error, continue to go through rounds of training until your model stabilizes. 

- Your model will stabilize when churn rate of the latest round is <5%. Churn rate is defined as percentage of items in review set where the prediction score changed between training rounds  











------------------------------------

Using the new predictive coding module in Advanced eDiscovery, you can create and build a model to prioritize review of documents starting with the most relevant documents. To get started, you can create a model, label as few as 50 documents, and then filter documents by model prediction scores to review relevant non-relevant documents.

Here’s a quick overview of the workflow:

1. Open the predictive coding module in a review set.

   ![Click the Analyze dropdown list in a review to go to the Predictive coding module](..\media\PredictiveCoding1.png)

2. On the **Predictive coding models** page, click **New model** to create a new predictive coding model.

   ![Create a new model](..\media\PredictiveCoding2.png)

3. Label at least 50 documents as **Relevant** or **Not relevant**. This labeling is used to train the system.

   ![Label documents as relevant or not relevant to train the system](..\media\PredictiveCoding3.png)

4. Apply the **Prediction score** filter for your model to the review set. To do this:

   1. In the review set, click **Filters**.
   2. In the **Filters** flyout page, expand the **Analytics/ML** section and then select **Prediction score** checkbox for the model you want to apply.
   3. In the **Prediction score** filter, specify a prediction score. The filter will display the documents in the review set that match the prediction score.

      ![Specify a prediction score to filter documents](..\media\PredictiveCoding4.png)

5. Monitor the performance, status, and stability of your model.

   ![Monitor the performance, status, and stability of your model](..\media\PredictiveCoding5.png)
