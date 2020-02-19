---
title: "Using a ready to use classifier (preview)"
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
description: "Microsoft 365 comes with a number of ready to use machine learning classifiers you can use to identify and label content across your organization. This topic shows you how to prepare for using these ready to use classifiers."
---

# Using a ready to use classifier (preview)

Microsoft has trained and tested a number of classifiers using very large sample data sets, which can help to identify certain categories of content. See [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md). These classifiers show up in the `Ready to use` group by default.

- **Offensive Language**: detects text items that contain profanities, slurs, taunts, and disguised expressions (which are expressions that have the same meaning as a more offensive term).
- **Resumes**: detects items that are textual accounts of an applicant's personal, educational, professional qualifications, work experience, and other personally identifying information.
- **SourceCode**: detects items that contain a set of instructions and statements written in widely used computer programming languages.
- **Harassment**: detects a specific category of offensive language text items related to offensive conduct targeting one or multiple individuals based on the following traits: race, ethnicity, religion, national origin, gender, sexual orientation, age, disability.
- **Profanity**: detects a specific category of offensive language text items that contain expressions that embarrass most people.
- **Threat**: detects a specific category of offensive language text items related to threats to commit violence or do physical harm or damage to a person or property,

> [!NOTE]
> Before using ready to use classifiers in your classification and labeling workflow, you should test it against a sample of your organization's content that you feel fits the category to verify that its classification predictions meet your expectations.

> [!IMPORTANT]
> Please note that the offensive language, harassment, profanity, and threat classifiers only work with searchable text are not exhaustive or complete. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update these classifiers in its discretion. While the classifiers may assist your organization in monitoring offensive and other language used, the classifiers do not address consequences of such language and are not intended to provide your organization’s sole means of monitoring or responding to the use of such language. Your organization, and not Microsoft or its subsidiaries, remains responsible for all decisions related to monitoring, enforcement, blocking, removal and retention of any content identified by a pre-trained classifier.

## How to prepare for and use a ready to use classifier

1. Collect disposable test content items that you feel belong in the category of the ready to use classifier (positive matches) and ones that shouldn't be included (negative matches) in the category you're testing.

> [!IMPORTANT]
> The sample items must not be encrypted and they must be in English.

2. Create a dedicated SharePoint Online folder; wait at least an hour for the folder to be added to the search index. Make note of the folder URL.

3. Sign in to Microsoft 365 compliance center with compliance admin or security admin role access and open **Microsoft 365 compliance center** > **Records management (preview)** > **Label policies** tab.

4. Choose `Auto-apply a label`.

5. Choose `Choose a label to auto-apply`.

6. Choose `Create new labels` and create a label for use just with this test. When you do this, leave `Retention` set to off. You don't want to turn on any retention or other actions. In this case, you'll be using the retention label simply as a text label, without enforcing any actions. For example, you can create a retention label named "SourceCode classifier test" with no actions, and then auto-apply that retention label to content that has Source code classifier as a condition. To learn more about creating retention labels, see [Overview of retention labels](labels.md).
  
7. Choose `Auto-apply a label` and then `Choose a label to auto-apply`. To learn more about using condition based auto-apply a label see, [auto-apply retention label policy based on a condition](labels.md#applying-a-retention-label-automatically-based-on-conditions).

8. Choose your test label from the list and choose `Next`.

9. Choose `Apply label to content that matches a trainable classifier`.

![selecting classifier as a condition](../media/classifier-pre-trained-apply-label-match-trainable-classifier.png).

10. Choose your classifier from the list, in this case `Source Code`

11. Name the policy, for example "Source code ready to use classifier test".

12. Choose `Let me choose specific locations`.

13. Turn off all locations except `SharePoint sites` and choose `Choose sites`.

14. Enter the URL for the site from step 2.

15. Finish the wizard and choose `Auto-apply`

16. Place the test items into the dedicated SharePoint Online folder.

17. Allow an hour for the label to be applied.

18. Check the properties of the documents for the label to see if the classifier included and excluded the test content as you expected.

19. Review the items that were labeled.

20. Delete the content and the label policy if you're done with your testing.

See also:

- [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md)
- [Overview of retention labels](labels.md)
- [Auto-apply retention label policy based on a condition](labels.md#applying-a-retention-label-automatically-based-on-conditions)
