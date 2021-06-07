---
title: "Predictive coding in Advanced eDiscovery - Quick start"
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
description: "Learn how to get started using the predictive coding module in Advanced eDiscovery. This article walks you through the end-to-end process of using predictive coding to identify content in a review set that's most relevant to your investigation."
---

# Predictive coding in Advanced eDiscovery - Quick start (preview)

This article presents a quick start for using predictive coding in Advanced eDiscovery. The predictive coding module in Advanced eDiscovery uses the intelligent, machine learning capabilities in Advanced eDiscovery to help you reduce the amount of content to review. Predictive coding helps you reduce and cull large volumes of case content to a relevant set of items that you can prioritize for review. This is accomplished by creating and training your own predictive coding models that help you prioritize the review of the most relevant items in a review set.

Here's a quick overview of the predictive coding process:

![Quick start process for prediction coding](..\media\PredictiveCodingQuickStartProcess.png)

To get started, you create a model, label as few as 50 items as relevant or not relevant. The system then uses this training to apply prediction scores to every item in the review set. This lets you filter items based on the prediction score, which  allows you to review the most relevant (or non-relevant) items first. If you want to train models with higher accuracies and recall rates, you can continue labeling items in subsequent training rounds until the model stabilizes. Once the model is stabilized, you can apply the final prediction filter to prioritize items to review.

For a detailed overview of predictive coding, see [Learn about predictive coding in Advanced eDiscovery](predictive-coding-overview.md).

## Step 1: Create a new predictive coding model

The first step is to create a new predictive coding model in the review set

1. In the Microsoft 365 compliance center, open an Advanced eDiscovery case and then select the **Review sets** tab.

2. Open a review set and then click **Analytics** > **Manage predictive coding (preview)**.

   ![Click the Analyze dropdown menu in review set to go to the Predictive coding page](..\media\ManagePredictiveCoding.png)

3. On the **Predictive coding models (preview)** page, click **New model**.

4. On the flyout page, type a name for the model and an optional description.

5. Click **Save** to create the model.

   It will take a couple minutes for the system to prepare your model. After it's ready, you can perform the first round of training.

For more detailed instructions, see [Create a predictive coding model](predictive-coding-create-model.md).

## Step 2: Perform the first training round

After you create the model, the next step is to complete the first training round by labeling items as relevant or not relevant.

1. Open the review set and then click **Analytics** > **Manage predictive coding (preview)**.

2. On the **Predictive coding models (preview)** page, select the model that you want to train.

3. On the **Overview** tab, under **Round 1**, click **Start next training round**.

   The **Training** tab is displayed and contains 50 items for you to label.

4. Review each document and then select the **Relevant** or **Not relevant** button at the bottom of the reading pane to label it.

   ![Label each document as relevant or not relevant](..\media\TrainModel1.png)

5. After you've labeled all 50 items, click **Finish**.

    It will take a couple minutes for the system to "learn" from your labeling and update the model. When this process is complete, a status of **Ready** is displayed for the model on the **Predictive coding models (preview)** page.

For more detailed instructions, see [Train a predictive coding model](predictive-coding-train-model.md).

## Step 3: Apply the prediction score filter to items in review set

After you perform at lease one training round, you can apply the prediction score filter to items in review set. This lets you review the items the model has predicted as relevant or not relevant.   

1. Open the review set.

   ![Click Filters to display the Filters flyout page](..\media\PredictionScoreFilter0.png)

   The pre-loaded default filters are displayed at the top of the review set page. You can leave these set to **Any**.

2. Click **Filters** to display the **Filters** flyout page.

3. Expand the **Analytics & predictive coding** section to display a set of filters.

      ![Prediction score filter in the Analytics & predictive coding section](..\media\PredictionScoreFilter1.png)

   The naming convention for prediction score filters is **Prediction score (model name)**. For example, the prediction score filter name for a model named **Model A** is **Prediction score (Model A)**.

4. Select the prediction score filter that you want to use and then click **Done**.

5. On the review set page, click the dropdown for the prediction score filter and type minimum and maximum values for the prediction score range. For example, the following screenshot shows a prediction score range between **.5** and **1.0**.

   ![Minimum and maximum values for the prediction score filter](..\media\PredictionScoreFilter2.png)

6. Click outside the filter to automatically apply the filter to the review set.

  A list of documents with a prediction score within the range you specified is displayed on the review set page.

For more detailed instructions, see [Apply a prediction filter to a review set](predictive-coding-apply-prediction-filter.md).

## Step 4: Perform more training rounds

More than likely, you'll have to perform more training rounds to train the module to better predict relevant and non-relevant items in the review set. In general, you'll train the model enough times until it stabilizes enough to meet your requirements.

For more information, see [Perform additional training rounds](predictive-coding-train-model.md#perform-additional-training-rounds)

## Step 5: Apply the final prediction score filter to prioritize review

Repeat the instructions in Step 3 to apply the final prediction score to the review set to prioritize the review of relevant and non-relevant items after you complete all the training rounds and stabilize the model.