---
title: "Learn about trainable classifiers"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- highpri
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkMAC
search.appverid:
- MOE150
- MET150
description: "Trainable classifiers can recognize various types of content for labeling or policy application by giving it positive and negative samples to look at."
---

# Learn about trainable classifiers

Categorizaing and labeling content so it can be protected and handled properly is the starting place for the information protection discipline. Microsoft Purview has three ways to classify content.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Manually

Manual categorizing requires human judgment and action. Users and admins categorize content as they encounter it. You can use either use the pre-existing labels and sensitive information types or use custom created ones.  You can then protect the content and manage its disposition.

## Automated pattern-matching

These categorization mechanisms includes finding content by:

- Keywords or metadata values (keyword query language).
- Using previously identified patterns of sensitive information like social security, credit card, or bank account numbers [(Sensitive information type entity definitions)](sensitive-information-type-entity-definitions.md).
- Recognizing an item because it's a variation on a template [(document finger printing)](document-fingerprinting.md).
- Using the presence of exact strings [exact data match](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types).

Sensitivity and retention labels can then be automatically applied to make the content available for use in [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) and [auto-apply polices for retention labels](apply-retention-labels-automatically.md).

## Classifiers

This categorization method is well suited to content that isn't easily identified by either the manual or automated pattern-matching methods. This method of categorization is more about using a classifier to identify an item based on what the item is, not by elements that are in the item (pattern matching). A classifier learns how to identify a type of content by looking at hundreds of examples of the content you're interested in indentifying.

> [!NOTE]
> In Preview - You can view the trainable classifiers in content explorer by expanding **Trainable Classifiers** in the filters panel. The trainable classifiers will automatically display the number of incidents found in SharePoint, Teams, and OneDrive, without requiring any labeling.
> If you don't want to use this feature, you must file a request with Microsoft Support. This will disable the display of your sensitive data that's not used in any labeling policies within Content Explorer. You can disable scanning of your data as well. If scanning is turned off, sensitivity labeling and DLP policies with those classifiers will not work

### Where you can use classifiers

Classifiers are available to use as a condition for:

- [Office auto-labeling with sensitivity labels](apply-sensitivity-label-automatically.md)
- [Auto-apply retention label policy based on a condition](apply-retention-labels-automatically.md#configuring-conditions-for-auto-apply-retention-labels)
- [Communication compliance](communication-compliance.md)
- Sensitivity labels can use classifiers as conditions, see [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md).
- [Data loss prevention](dlp-learn-about-dlp.md)

> [!IMPORTANT]
> Classifiers only work with items that are not encrypted.

## Types of classifiers

- **pre-trained classifiers** - Microsoft has created and pre-trained multiple classifiers that you can start using without training them. These classifiers will appear with the status of `Ready to use`.
- **custom trainable classifiers** - If you have content identification and categorization needs that extend beyond what the pre-trained classifiers cover, you can create and train your own classifiers.

See, [Trainable classifiers definitions](classifier-tc-definitions.md#trainable-classifiers-definitions) for a complete list of all pre-trained classifiers.

### Custom classifiers

When the pre-trained classifiers don't meet your needs, you can create and train your own classifiers. There's more work involved with creating your own, but they'll be much better tailored to your organizations needs.

You start creating a custom trainable classifier by feeding it examples that are definitely in the category. Once it processes those examples, you test it by giving it a mix of both matching and non-matching examples. The classifier then makes predictions as to whether any given item falls into the category you're building. You then confirm its results, sorting out the true positives, true negatives, false positives, and false negatives to help increase the accuracy of its predictions.

When you publish the classifier, it sorts through items in locations like SharePoint Online, Exchange, and OneDrive, and classifies the content. After you publish the classifier, you can continue to train it using a feedback process that is similar to the initial training process.

For example you could create trainable classifiers for:

- Legal documents - such as attorney client privilege, closing sets, statement of work
- Strategic business documents - like press releases, merger and acquisition, deals, business or marketing plans, intellectual property, patents, design docs
- Pricing information - like invoices, price quotes, work orders, bidding documents
- Financial information - such as organizational investments, quarterly or annual results

#### Process flow for creating custom classifiers

Creating and publishing a classifier for use in compliance solutions, such as retention policies and communication supervision, follows this flow. For more detail on creating a custom trainable classifier see, [Creating a custom classifier](classifier-get-started-with.md).

![process flow custom classifier.](../media/classifier-trainable-classifier-flow.png)

### Retraining classifiers

You can help improve the accuracy of all custom trainable classifiers and by providing them with feedback on the accuracy of the classification that they perform. This is called retraining, and follows this workflow.

> [!NOTE]
> Pre-trained classifiers cannot be re-trained.

![classifier retraining workflow.](../media/classifier-retraining-workflow.png)

## Provide match/not a match accuracy feedback in trainable classifiers

You can view the number of matches a trainable classifier has in **Content explorer** and **Trainable classifiers**. You can also provide feedback on whether an item is actually a match or not using the **Match**, **Not a Match** feedback mechanism and use that feedback to tune your classifiers. See, [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) for more information. 


## See also

- [Retention labels](retention.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Document finger printing](document-fingerprinting.md)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
