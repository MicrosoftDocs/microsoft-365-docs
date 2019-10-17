---
title: "Getting started with Microsoft 365 classifiers"
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "A Microsoft 365 trainable classifier is a tool you can train to recognize various types of content by giving it positive and negative samples to look at. Once the classifier is trained and you confirm it's results are accurate, you use it to search through your organizations content, classify it to apply retention or sensitivity labels or include it in data loss prevention (DLP) or retention policies."
---

# Getting started with trainable classifiers

Classifying content and then labeling it so it can be protected and handled properly is the starting place for the information protection discipline. Microsoft 365 has three ways to classify content:

1. **Manually** - This requires human judgement and action. An admin may either use the pre-existing labels and sensitive information types or create their own and the publish them. Users and admins apply them to content as they encounter it. You can then protect the content and manage its disposition.
2. **Automated pattern matching** - This category of classification mechanisms includes, finding content by keywords, or metadata values (keyword query language), using previously identified patterns of sensitive information like social security, credit card or bank account numbers (sensitive information types). Recognizing an item because it is a variation on a template (document finger printing) or using the presence of exact strings (exact data match). Labels can then be automatically applied which then makes the content available for use in data loss prevention (DLP) and retention policies.
3. **Trainable classifiers** - This classification method is particularly well suited to content that, by it's nature, isn't predisposed to being easily identified by either the manual or automated pattern matching methods, it's for types of content that aren't well defined. A classifier learns how to identify this type of content by looking a hundreds of examples of the content type you are interested in classifying. You start by feeding it examples that are definitely in the category, then once it processes those, you test it by giving it a mix of both matching and non-matching examples. The classifier then makes predictions as to whether or not any given item falls into the category you are building. You then confirm it's results, sorting out the positives, negatives and false positives and false negatives to help increase the accuracy of it's predictions. When you publish the trained classifier, it sorts through the locations, like SharePoint Online, Exchange Online and OneDrive, classifies the content. The trainable classifier is then available as a condition for auto-apply retention label policy workflow.

> [!IMPORTANT]
> For now, trainable classifiers only work with items that are in english. Additional languages will be coming soon.

## Types of trainable classifiers

Getting a trainable classifier to a publishable state requires a time investment to training it. To cut down on the classifier training time, Microsoft 365 comes with a few pre-trained classifiers.

> [!NOTE]
> Before you use pre-trained classifiers in your classification and labeling workflow, you should test it against a sample of your organizations content that you feel fits the category to verify that its classification predictions meet your expectations.

### Pre-trained classifiers

Microsoft 365 comes with six pre-trained classifiers:

- Offensive Language
- Resumes
- SourceCode
- Harassment
- Profanity
- Threat

These appear in the **Microsoft 365 compliance center** > **Data classification (preview)** > **Trainable classifiers** view with the status of `Ready to use`.

![PLACE HOLDER SCREEN SHOT classifiers-pre-trained-classifiers-placeholder](media/classifiers-pre-trained-classifiers-placeholder.png)


### Custom classifiers

## Process flow for using pre-trained classifiers

## Process flow for creating and using custom classifiers
