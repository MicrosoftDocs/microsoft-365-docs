---
title: "Predictive coding reference"
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
description: ""
---

# Predictive coding reference (preview)

This article describes the key concepts and metrics of the predictive coding tool in Advanced eDiscovery. The sections in the article are listed in alphabetical order.

## Confidence level

The confidence level is an advanced setting when you create a predictive coding model. It defines that the model's performance metrics (for example, richness, precision, and recall) fall within a specified range (that's determined the margin of error defined for the model) that's representative of the true values of the prediction scores the model assigns to items in the review set.​ The values for the confidence level and margin of error also help determine how many items are included in the control set. The default value for the confidence level is 0.95 or 95%.

## Control set

A control set is used during the training process of a predictive coding model. The control set is to evaluate the prediction scores that the model assigns to items with the labeling that you perform during training rounds. The size of the control set is based on the number of items in the review set and the confidence level and margin of error values that are set when creating the model. Items in the control set never change and aren't identifiable to users. The total number of items in the control set is displayed on the flyout page for a training round.

## Control set confusion matrix

After you complete a training round, the model assigns a prediction score to the 10 items in the control set that you labeled during the training round. The model compares the prediction score of these 10 items with the actual label that you assigned to the item during the training round. Based on this comparison, the model identifies the following classifications to assess the model's prediction performance:
  
  |          |Model predicts item is relevant |Model predicts item is not relevant |
  |:---------|:---------|:---------|
  |**Reviewer labels item as relevant**| True positive| False positive |
  |**Reviewer labels item as not relevant**| False negative |True negative |
  ||||

  Based on these comparisons, the model derives values for the F-score, precision, and recall metrics and the margin of error for each one. The number of each of the confusion types from the matrix is displayed on the flyout page for a training round.

## F-score

The F-score is a weighted average of the scores for the precision and recall metrics.  The range of scores for this metric is from **0** to **1**. A score closer to **1** indicates the model will more accurately detect relevant items.​ The F-score metric is displayed on the model dashboard and on the flyout page for each training round.

## Margin of error

The margin of error is an advanced setting when you create a predictive coding mode. It specifies the degree of error in performance metrics (for example, richness, precision, and recall) that's derived from the random sampling of items in your control set. A lower margin of error requires a larger control set to ensure that the model's performance metrics fall within a smaller range. The values for the margin of error and confidence level also help determine how many items are included in the control set. The default value for the margin of error is 0.05 or 5%.

## Model stability

Model stability indicates the model's ability to accurately predict whether a document in a review set is relevant or not relevant. When a model is unstable, more training rounds may need to be performed to include the model's stability. When the model is stable, no more training rounds may need to be performed. The model dashboard indicates the current state of the model's stability. When a model is stable, the performance metrics have reached a level that matches the settings for the confidence level and margin of error.

## Overturn rate

The overturn rate is the percentage of items in the review set where the prediction score changed between training rounds.​ A model is considered stable when the overturn rate is less than 5%. The overturn rate metric is displayed on the model dashboard and on the flyout page for each training round. The overturn rate for the first training round is zero because there isn't a previous prediction score to overturn.

## Precision

The precision metric measures the proportion of items that are actually relevant among the items the model predicted were relevant. This means that items in the control set where label as relevant by the reviewer and predicted as relevant by the model. The range of scores for this metric is from **0** to **1**. A score closer to **1** indicates the model will identify fewer non-relevant items. The precision metric is displayed on the model dashboard and on the flyout page for each training round.

## Prediction score

This is the score that a model assigns to each document in a review set. The score is based on the document's relevance compared to model's learning from the training rounds. In general, items with prediction scores between **0** and **0.5** are considered not relevant and items with prediction scores between **0.5** and **1** are considered relevant. The prediction score is contained in a document metadata field. You can use a prediction filter to display the items in a review set that fall within a specified prediction range.

## Recall

The recall metric measures the proportion of items the model predicted were relevant among items that are actually relevant. This means that items in the control set that the model predicted were relevant were also labeled as relevant by the reviewer. The range of scores for this metric is from **0** to **1**. A score closer to **1** indicates the model will identify a larger portion of relevant items. The recall metric is displayed on the model dashboard and on the flyout page for each training round.

## Review set

A review set provides the scope of a predictive coding model. When you create a new model for the review set, items for the control set and training sets are selected from the review set. When the model assigns prediction scores, it assigns those scores the items in the review. You have to add all items to the review set before you create a predictive coding model. If you add items after you create a model, those items will not be assigned a prediction score.

## Richness

The richness metric measures the percentage of review set items the model predicts as relevant. The range of scores for this metric is from **0** to **1**. The richness metric is displayed on the model dashboard.

## Sampled items

The term *sampled items* is a reference to random sample of items in a review set (that contain text) that are selected and associated with the control set when you create a predictive coding model. A random sample of items is also selected for each training round. Items selected for the control set of a model are never included in a training set for that same model. The reverse is also true: training set items are never included in the control set.

## Training set

The model randomly selects items from the review set and adds them to a training set. During a training round, items from the training set (in addition to items from the control set) are presented to you so that you can label each one as either "relevant" or "not relevant". This labeling or "training" process helps the model learn how to predict which items in the review are relevant or not relevant. Each time you perform a training round, the model selects more items from the review and adds them to the training set for that training round. Items from the control set are never selected for a training set.
