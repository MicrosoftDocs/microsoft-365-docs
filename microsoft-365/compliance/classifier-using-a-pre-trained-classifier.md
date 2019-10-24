---
title: "Using a pre-trained classifier (preview)"
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
description: "Microsoft 365 comes with a number of pre-trained machine learning classifiers you can use to identify and label content across your organization. This topic shows you how to prepare for using these pre-trained classifiers."
---

# Using a pre-trained classifier (preview)

Microsoft has trained and tested number of classifiers using very large sample data sets so that you can rely on them to accurately identify certain categories of content. See [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md).

- Offensive Language: detects items which contain sentiment associated with profanities, slurs, and disguised expressions
- Resumes: detects items which are textual accounts of an applicant's personal, educational, professional qualifications, work experience and other personally identifying information
- SourceCode: detects items which contain a set of instructions and statements written in widely used computer programming languages.
- Harassment: detects items with a specific category of offensive language related to offensive conduct targeting one or multiple individuals regarding race, color, religion, national origin, gender, sexual orientation, age, disability and genetic information.
- Profanity: detects items with a specific category of offensive language that contains swear words or vulgar language
- Threat: detects items with a specific category of offensive language related to threat to commit violence or do physical harm/damage to a person/property.

> [!NOTE]
> Before you use pre-trained classifiers in your classification and labeling workflow, you should test it against a sample of your organizations content that you feel fits the category to verify that its classification predictions meet your expectations.

## How to prepare for and use a pre-trained classifier

1. Collect at least 200 disposable test content items that you feel belong in the category of the pre-trained classifier you are testing.

> [!IMPORTANT]
> The sample items must not be encrypted and they must be in English.

2. Place the test items into a dedicated SharePoint Online folder, wait at least an hour for the folder to be crawled. Make note of the folder URL.

<!-- look for or create fwlink -->
3. Sign in to Microsoft 365 compliance center with compliance admin or security admin role access and open [Microsoft 365 compliance center](https://compliance.microsoft.com/informationgovernance?viewid=labels) or [Microsoft 365 security center](https://security.microsoft.com/informationgovernance?viewid=labels) > **Information governance** > **Labels** tab.

4. Choose `Create a label` and create a lable for use just with this test. When you do this, leave `Retention` set to off. You don't want to turn on any retention or other actions. In this case, you'll be using using the retention label simply as a text label, without enforcing any actions. For example, you can create a retention label named "SourceCode classifier test" with no actions, and then auto-apply that retention label to content with that has Sourcecode classifier as a condition.To learn more about creating retention labels, see [Overview of retention labels](\labels.md).
  
5. Choose `Auto-apply a label` and then `Choose a label to auto-apply`. To learn more about using condition based auto-apply a label see, [auto-apply retention label policy based on a condition](../labels#applying-a-retention-label-automatically-based-on-conditions).

6. Choose your test label from the list and choose `Next`.

7. Choose `Apply label to content that matches a trainable classifier`.

![selecting classifier as a condition](media\classifier-pre-trained-apply-label-match-trainable-classifier.png).

8. Choose your classifier from the list.

9. Name the policy, for example "Sourcecode pre-trained classifier test".

10. Choose `Let me choose specific locations`

