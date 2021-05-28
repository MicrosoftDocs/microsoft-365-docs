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

# Predictive coding reference

This article describes the key concepts and metrics of the predictive coding tool in Advanced eDiscovery. The sections in the article are listed in alphabetical order.


## Confidence level

The confidence level is an advanced setting when you create a predictive coding mode. 

The probability that our model's performance metrics (for example, richness, precision, and recall) fall within a specified range (determined by your margin of error) that's representative of the true values. ​

When you create a model, we gather a sample of items from the review set to use as the control set. The control set is used during the training process to evaluate the model's predictions based on the feedback you provide during each round of training. You can define confidence level and margin of error values to refine how many items are included in the control set.

## Control set


## Control set confusion matrix


## F-score

The F-score is a weighted average of the scores for the precision and recall metrics.  The range of scores for this metric is from **0** to **1**. A score closer to **1** indicates the model will more accurately detect relevant items.​ The F-score metric is displayed on the model dashboard and on the flyout page for each training round.

## Margin of error

The margin of error is an advanced setting when you create a predictive coding mode. 


The degree of error in performance metrics (for example, richness, precision, and recall) that's derived from a random sampling of items in your control set. A lower margin of error requires a larger control set to ensure that our performance metrics fall within a smaller range of the true value.

When you create a model, we gather a sample of items from the review set to use as the control set. The control set is used during the training process to evaluate the model's predictions based on the feedback you provide during each round of training. You can define confidence level and margin of error values to refine how many items are included in the control set.

## Model stability


## Overturn rate

The overturn rate is the percentage of items in the review set where the prediction score changed between training rounds.​ A model is considered stable when the overturn rate is less than 5%. The overturn rate metric is displayed on the model dashboard and on the flyout page for each training round. The overturn rate for the first training round is zero because there isn't a previous prediction score to overturn.

## Precision

The precision metric measures the proportion of items that are actually relevant among the items the model predicted were relevant. This means that items in the control set where label as relevant by the reviewer and predicted as relevant by the model. The range of scores for this metric is from **0** to **1**. A score closer to **1** indicates the model will identify fewer non-relevant items. The precision metric is displayed on the model dashboard and on the flyout page for each training round.

## Prediction score

This is the score that a model assigns to each document in a review set. The score is based on the document's relevance compared to model's learning from the training rounds. In general, documents with prediction scores between **0** and **0.5** are considered not relevant and documents with prediction scores between **0.5** and **1** are considered relevant. The prediction score is contained in a document metadata field. You can use a prediction filter to display the documents in a review set that fall within a specified prediction range.

## Recall

The recall metric measures the proportion of items the model predicted were relevant among items that are actually relevant. This means that items in the control set that the model predicted were relevant were also labeled as relevant by the reviewer. The range of scores for this metric is from **0** to **1**. A score closer to **1** indicates the model will identify a larger portion of relevant items. The recall metric is displayed on the model dashboard and on the flyout page for each training round.

## Review set


## Richness

The richness metric measures the percentage of review set items the model predicts as relevant. The range of scores for this metric is from **0** to **1**. The richness metric is displayed on the model dashboard.

## Sampled items

The term *sampled items* is a reference to random sample of documents in a review set (that contain text) that are selected and associated with the control set when you create a predictive coding model. A random sample of documents is also selected for each training round. Documents selected for the control set of a model are never included in a training set for that same model. The reverse is also true: training set documents are never included in the control set.

## Training set




