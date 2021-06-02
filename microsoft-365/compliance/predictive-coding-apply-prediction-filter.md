---
title: "Apply the prediction score filter to the documents in a review set"
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

# Apply a prediction score filter to a review set

After you create a predictive coding model and train it to the point where it's stable, you can apply the prediction score filter to display review set documents that the model has determined are relevant (or not relevant). When you create a model, a corresponding prediction score filter is also created. You can use this filter to display documents assigned a prediction score within a specified range. In general, prediction scores between **0** and **.5** are assigned to documents that model has determine are not relevant. Documents assigned prediction scores between between **.5** and **1.0** are relevant.

Here are two ways you can use the prediction score filter:

- Review documents in a review set that the model has determined are relevant or not relevant.

- Display documents within a specific range of prediction scores and then tag them. For example, you can use a prediction filter to display documents that have a prediction score greater than **.5** and then tag them as relevant. After you tag them, you or other members of the case can use a tag filter to display, download, or export them. For more information, see [Tag documents in a review set](tagging-documents.md).

## Before you apply a prediction score filter

- You have to create a predictive coding model so that a corresponding prediction score filter is created.

- You can apply a prediction score filter after the first training round. But you may want to wait until the model is stable before viewing documents. Alternatively, you can use prediction score filters before the model is stable to view documents the model considers relevant or not relevant at any point during the model training process.

## Apply a prediction score filter

1. In the Microsoft 365 compliance center, open the Advanced eDiscovery case, select the **Review sets** tab, and then open the review set.

   The pre-loaded default filters are displayed at the top of the review set page. You can leave these set to **Any**.

2. Click **Filters** to display the **Filters** flyout page.

3. Expand the **Analytics & predictive coding** section to display a set of filters.

   The naming convention for prediction score filters is **Prediction score (model name)**. For example, the prediction score filter name for a model named **Model A** is **Predication score (Model A)**.

4. Select the prediction score filter that you want to use and then click **Done**.

5. On the review set page, click the dropdown for the prediction score filter and type minimum and maximum values for the prediction score range. For example, the following screenshot shows a predication score range between **.5** and **1.0**.

6. Click outside the filter to automatically apply the filter to the review set.

  A list of documents with a prediction score within the range you specified is displayed on the review set page. To view the actual prediction score assign to a document, you can click the **Metadata** tab in the reading pane. The prediction scores for all models in the review set are displayed in the **RelevanceScores** metadata property.
