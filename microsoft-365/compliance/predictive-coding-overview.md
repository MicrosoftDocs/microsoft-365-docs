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
description: "The new predictive coding module in Advanced eDiscovery uses machine learning to analyze items in a review set to predictive which the items that are relevant to your case or investigation."
---

# Learn about predictive coding in Advanced eDiscovery

The predictive coding module in Advanced eDiscovery uses the intelligent, machine learning capabilities in Advanced eDiscovery to help you reduce the amount of content to review. Predictive coding helps you reduce and cull large volumes of case content to a relevant set of items that you can prioritize for review. This is accomplished by creating and training your own predictive coding models that help you prioritize the review of the most relevant items in a review set.

The predictive coding module is designed to streamline the complexity of managing a model within a review set and provide an iterative approach to training your model so you can get started faster with the machine learning capabilities in Advanced eDiscovery. To get started, you can create a model, label as few as 50 items as relevant or not relevant. The system uses this training to apply prediction scores to every item in the review set. This lets you filter items based on the prediction score, which  allows you to review the most relevant (or non-relevant) items first. If you want to train models with higher accuracies and recall rates, you can continue labeling items in subsequent training rounds until the model stabilizes.  

## The predictive coding workflow

Here's an overview and description of each step predictive coding workflow. For a more detailed description of the concepts and terminology of the predictive coding process, see [Predictive coding reference](predictive-coding-reference.md).

![Predictive coding workflow](..\media\PredictiveCodingWorkflow.png)

1. **Create a new predictive coding model in the review set**. The first step is to create a new predictive coding model in the review set. You must have at least 2,000 items in the review set to create a model. After you create a model, the system will determine the number of items to use as a *control set*. The control set is used during the training process to evaluate the prediction scores that the model assigns to items with the labeling that you perform during training rounds. The size of the control set is based on the number of items in the review set and the confidence level and margin of error values that are set when creating the model. Items in the control set never change and aren't identifiable to users.

   For more information, see [Create a predictive coding model](predictive-coding-create-model.md).

2. **Complete the first training round by labeling items as relevant or not relevant**. The next step is to train the model by starting the first round of training. When you start a training round, the model randomly selects additional items from the review set, which is called the *training set*. These items (both from the control set and the training set) are presented to you so that you can label each one as either "relevant" or "not relevant". Relevancy is based on the content in the item and not any of the document metadata. After you complete the labeling process in the training round, the model will "learn" based on how you labeled the items in the training set. Based on this training, the model will process the items in the review set and apply a prediction score to each one.

   For more information, see [Train a predictive coding model](predictive-coding-train-model.md).

3. **Apply the prediction score filter to items in review set**. After the previous training step is completed, the next step is to apply the prediction score filter to the items in the review to display the items that the model has determined are "most relevant" (alternatively, you could also use a prediction filter to display items that are "not relevant"). When you apply the prediction filter, you specify a range of prediction scores to filter. The range of prediction scores fall between **0** and **1**, with **0** being "not-relevant" and **1** being relevant. In general, items with prediction scores between **0** and **0.5** are considered "not-relevant" and items with prediction scores between **0.5** and **1** are considered relevant.

   For more information, see [Apply a prediction filter to a review set](predictive-coding-apply-prediction-filter.md).

4. **Perform more training rounds until the model stabilizes**. You can perform additional rounds of training if you want to create a model with a higher accuracy of prediction and increased recall rates. *Recall rate* measures the proportion of items the model predicted were relevant among items that are actually relevant (the ones you marked as relevant during training). The recall rate score ranges from **0** to **1**. A score closer to **1** indicates the model will identify fewer irrelevant items and is closer to stabilization. In a new training round, you label additional items in a new training set. After you complete that training round, the model is updated based on new learning from your most recent round of labeling items in the training set. The model will process the items in the review set again, and apply new prediction scores. You can continue performing training rounds until your model stabilizes. A model is considered stabilized when the churn rate after the latest round of training is less than 5%. *Churn rate* is defined as percentage of items in a review set where the prediction score changed between training rounds. The predictive coding dashboard displays information and statistics that help you assess the stability of a model.

5. **Apply the "final" prediction score filter to review set items to prioritize review**. After you complete all the training rounds and stabilize the model, the last step is to apply the final prediction score to the review set to prioritize the review of relevant and non-relevant items. This is the same task that you performed in step 3, but at this point the model is stable and you don't plan on running any more training rounds.
