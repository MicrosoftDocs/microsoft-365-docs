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


# Predictive coding module for Advanced eDiscovery (preview)

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
