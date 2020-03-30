---
title: "Getting started with trainable classifiers (preview)"
f1.keywords:
- NOCSH
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
description: "A Microsoft 365 trainable classifier is a tool you can train to recognize various types of content by giving it positive and negative samples to look at. Once the classifier is trained, you confirm that its results are accurate. Then you use it to search through your organization's content and classify it to apply retention or sensitivity labels or include it in data loss prevention (DLP) or retention policies."
---

# Getting started with trainable classifiers (preview)

Classifying and labeling content so it can be protected and handled properly is the starting place for the information protection discipline. Microsoft 365 has three ways to classify content.

## Manually

This method requires human judgment and action. An admin may either use the pre-existing labels and sensitive information types or create their own and then publish them. Users and admins apply them to content as they encounter it. You can then protect the content and manage its disposition.

## Automated pattern matching

This category of classification mechanisms includes finding content by:

- keywords or metadata values (keyword query language)
- using previously identified patterns of sensitive information like social security, credit card or bank account numbers [(sensitive information types)](what-the-sensitive-information-types-look-for.md)
- Recognizing an item because it's a variation on a template [(document finger printing)](document-fingerprinting.md)
- using the presence of exact strings [(exact data match)](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).'

Sensitivity and retention labels can then be automatically applied to make the content available for use in [data loss prevention (DLP)](data-loss-prevention-policies.md) and [retention policies](retention-policies.md).

## Trainable classifiers

This classification method is particularly well suited to content that isn't easily identified by either the manual or automated pattern matching methods. This method of classification is more about training a classifier to identify an item based on what the item is, not by elements that are in the item (pattern matching). A classifier learns how to identify a type of content by looking at hundreds of examples of the content you're interested in classifying. You start by feeding it examples that are definitely in the category. Once it processes those, you test it by giving it a mix of both matching and non-matching examples. The classifier then makes predictions as to whether any given item falls into the category you're building. You then confirm its results, sorting out the positives, negatives, false positives, and false negatives to help increase the accuracy of its predictions. When you publish the trained classifier, it sorts through items in locations like SharePoint Online, Exchange, and OneDrive, and classifies the content.

> [!IMPORTANT]
> Both built-in classifiers and trainable classifiers are available as a condition for [auto-apply retention label policy based on a condition](labels.md#applying-a-retention-label-automatically-based-on-conditions) and [communication compliance](communication-compliance.md). Sensitivity labels can only use built-in classifiers as a condition, see [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md).

> [!IMPORTANT]
> Trainable classifiers only work with items that are not encrypted and are in English.

### Licensing requirements

Trainable classifiers are a Microsoft 365 E5, or E5 Compliance feature. You must have one of these subscriptions to make use of them.

## Types of classifiers

There are built-in classifiers and trainable classifiers. Getting a trainable classifier to a publishable state requires a time investment to train it. To help you get started using classifiers, Microsoft 365 comes with a few built-in classifiers.

> [!NOTE]
> Before using any built-in classifier in your classification and labeling workflow, you should test it against a sample of your organizations content that you feel fits the category to verify that its classification predictions meet your expectations.

### Understanding built-in classifiers

Microsoft 365 comes with six built-in classifiers:

- **Offensive Language**: detects text items that contain profanities, slurs, taunts, and disguised expressions (which are expressions that have the same meaning as a more offensive term).
- **Resumes**: detects items that are textual accounts of an applicant's personal, educational, professional qualifications, work experience, and other personally identifying information.
- **Source Code**: detects items that contain a set of instructions and statements written in the top 25 used computer programming languages on GitHub.

|language name|||||
|---------|---------|---------|---------|---------|
|ActionScript|C        |C#       |C++     |Clojure  |
|CoffeeScript|CSS     |Go       |Haskell |HTML     |
|Java     |JavaScript|Lua      |MATLAB   |Objective-C|
|Perl     |PHP      |Python   |R        |Ruby     |
|Scala    |Shell    |Swift    |Tex      |Vim Script|


- **Harassment**: detects a specific category of offensive language text items related to offensive conduct targeting one or multiple individuals based on the following traits: race, ethnicity, religion, national origin, gender, sexual orientation, age, disability.
- **Profanity**: detects a specific category of offensive language text items that contain expressions that embarrass most people.
- **Threat**: detects a specific category of offensive language text items related to threats to commit violence or do physical harm or damage to a person or property.

These appear in the **Microsoft 365 compliance center** > **Data classification (preview)** > **Trainable classifiers** view with the status of `Ready to use`.

![classifiers-ready-to-use-classifiers](../media/classifiers-ready-to-use-classifiers.png)

> [!IMPORTANT]
> Please note that the offensive language, harassment, profanity, and threat classifiers only work with searchable text are not exhaustive or complete.  Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update these classifiers in its discretion. While the classifiers may assist your organization in monitoring offensive and other language used, the classifiers do not address consequences of such language and are not intended to provide your organization's sole means of monitoring or responding to the use of such language. Your organization, and not Microsoft or its subsidiaries, remains responsible for all decisions related to monitoring, enforcement, blocking, removal and retention of any content identified by a pre-trained classifier.

#### Process flow for using built-in classifiers

Built-in classifiers don't need to be trained, but you do need to confirm that they will identify the types of content that you need them to before you use them in compliance solutions. Testing a pre-trained classifier follows this flow.

![process flow testing a pre-trained classifier](../media/classifier-pre-trained-classifier-flow.png)

### Understanding trainable classifiers

When the built-in classifiers don't meet your needs, you can create and train your own classifiers. There's significantly more work involved with creating your own, but they'll be much better tailored to your organizations needs. For more detail on how to use a pre-trained classifier, see [Using a built-in classifier](classifier-using-a-ready-to-use-classifier.md)

> [!IMPORTANT]
> Only the user who creates a trainable classifier can train and review predictions made by that classifier.

#### Process flow for creating trainable classifiers

Creating and publishing a trainable classifier for use in compliance solutions, such as retention policies and communication supervision, follows this flow. For more detail on creating a trainable classifier see, [Creating a trainable classifier](classifier-creating-a-trainable-classifier.md).

![process flow trainable classifier](../media/classifier-trainable-classifier-flow.png)

## See also

- [retention labels](labels.md)
- [retention policies](retention-policies.md)
- [data loss prevention (DLP)](data-loss-prevention-policies.md)
- [sensitivity labels](sensitivity-labels.md)
- [sensitive information types](what-the-sensitive-information-types-look-for.md)
- [document finger printing](document-fingerprinting.md)
- [exact data match](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)
