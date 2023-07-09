---
title: "How to retrain a classifier in content explorer"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/12/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: low
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn how to provide feedback to a trainable classifier in Content explorer."
---

# How to retrain a classifier in content explorer

A Microsoft 365 trainable classifier is a tool you can train to recognize various types of content by giving it samples to look at. Once trained, you can use it to identify items for application of Office sensitivity labels, communications compliance policies, and retention label policies.

This article shows you how to improve the performance of custom trainable classifiers by providing them with more feedback.

To learn more about the different types of classifiers, see [Learn about trainable classifiers](classifier-learn-about.md).

> [!NOTE]
> Pre-trained classifiers cannot be retrained.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Permissions

To access classifiers in the Microsoft Purview compliance portal:

- the Compliance admin role or Compliance Data Administrator is required to train a classifier

To use classifiers in the following scenarios, you will need the permissions listed:

| Scenario | Required Role Permissions|
| -------- | --------|
| Retention label policy | Record Management <br> Retention Management |
| Sensitivity label policy | Security Administrator <br> Compliance Administrator <br> Compliance Data Administrator
| Communication compliance policy | Insider Risk Management Administrator <br> Supervisory Review Administrator|

## Overall workflow

> [!IMPORTANT]
> You provide feedback in content explorer to automatically apply  retention label policies to Exchange items and that uses the classifier as a condition. **If you don't have a retention policy that automatically applies a retention label to Exchange items and that uses a classifier as a condition, stop here.**

As you use your classifiers, you may want to increase the precision of the classifications that they're making. You do this by evaluating the quality of the classifications made for items it has identified as being a match or not a match. After you make 30 evaluations for a classifier, it takes that feedback, and automatically retrains itself.

To understand more about the overall workflow of retraining a classifier, see [Process flow for retraining a classifier](classifier-learn-about.md#retraining-classifiers).

> [!NOTE]
> A classifier must already be published and in use before it can be retrained.

## How to retrain a classifier in content explorer

1. Sign in to Microsoft Purview compliance portal with compliance admin or security admin role access and open **Microsoft Purview compliance portal** > **Data classification** > **Content explorer**. 

2. Under the **Filter on labels, info types, or categories** list, expand **Trainable classifiers**.

> [!IMPORTANT]
> It can take up to eight days for aggregated items to appear under the trainable classifiers heading.

3. Choose the trainable classifier you used in your auto-apply retention label policy. This is the trainable classifier you'll give feedback on.

> [!NOTE]
> If an item has an entry in the **Retention label** column, it means that the item was classified as a `match`.  If an item doesn't have an entry in the **Retention label** column, it means it was classified as a `close match`. You can improve the classifier precision the most by providing feedback on `close match` items. 

4. In the **All locations** list, open a folder that shows that matches have been found.

5. Choose an item and open it.
 
> [!TIP]
> You can provide feedback on multiple items simultaneously by choosing them all and then choosing **Improve classification** in the command bar.

6. Choose **Provide feedback**.

7. In the **Detailed feedback** pane, if the item is a true positive, choose, **Match**.  If the item is a false positive, that is, it was incorrectly included in the category, choose **Not a match**.

8. If there's another classifier that would be more appropriate for the item, you can choose it from the **Suggest other trainable classifiers** list. This will trigger the other classifier to evaluate the item.

9. Choose **Send feedback** to send your evaluation of the `match`, `not a match` classifications and suggest other trainable classifiers. When you've provided 30 instances of feedback to a classifier, it will automatically  retrain. Retraining can take from one to four hours. Classifiers can only be retrained twice per day.

> [!IMPORTANT]
> This information goes to the classifier in your tenant, **it does not go back to Microsoft**.

10. Open **Trainable classifiers**.

10. The classifier that was used in your Communications compliance policy will appear under the **Re-training** heading.

<!-- 6-19-2023--Comment needed until image can be replaced: classifier in retraining status.](../media/classifier-retraining.png) -->

12. Once retraining completes, choose the classifier to open the retraining overview.

![classifier retraining results overview.](../media/classifier-retraining-overview.png)

13. Review the recommended action, and the prediction comparisons of the retrained and currently published versions of the classifier.
14. If you satisfied with the results of the retraining, choose **Re-publish**.
15. If you aren't satisfied with the results of the retraining, you can choose to provide more feedback to the classifier in the Content Explorer interface and start another retraining cycle or do nothing in which case the currently published version of the classifier will continue to be used. 

## Details on republishing recommendations

Here's a little information on how we formulate the recommendation to republish a retrained classifier or suggest further retraining. This requires a little deeper understanding of how trainable classifiers work.

After a retrain, we evaluate the classifier's performance on both the items with feedback and any items originally used to train the classifier. 

- For built-in models, items used to train the classifier are the items used by Microsoft to build the model.
- For custom models, items used in the original training the classifier are from the sites you had added for test and review.

We compare the performance numbers on both sets of items for the retrained and published classifier to provide a recommendation on whether there was improvement to republish. 

## See also

- [Learn about trainable classifiers](classifier-learn-about.md)
- [Default crawled file name extensions and parsed file types in SharePoint Server](/sharepoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types)
