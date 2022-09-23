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
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
ms.custom: admindeeplinkMAC
search.appverid:
- MOE150
- MET150
description: "Trainable classifiers can recognize various types of content for labeling or policy application by giving it positive and negative samples to look at."
---

# Learn about trainable classifiers

Classifying and labeling content so it can be protected and handled properly is the starting place for the information protection discipline. Microsoft 365 has three ways to classify content.

## Manually

Manual classification requires human judgment and action. Users and admins apply them to content as they encounter it. You can use either use the pre-existing labels and sensitive information types or use custom created ones.  You can then protect the content and manage its disposition.

## Automated pattern-matching

This category of classification mechanisms includes finding content by:

- Keywords or metadata values (keyword query language).
- Using previously identified patterns of sensitive information like social security, credit card, or bank account numbers [(Sensitive information type entity definitions)](sensitive-information-type-entity-definitions.md).
- Recognizing an item because it's a variation on a template [(document finger printing)](document-fingerprinting.md).
- Using the presence of exact strings [exact data match](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types).

Sensitivity and retention labels can then be automatically applied to make the content available for use in [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md) and [auto-apply polices for retention labels](apply-retention-labels-automatically.md).

## Classifiers

This classification method is well suited to content that isn't easily identified by either the manual or automated pattern-matching methods. This method of classification is more about using a classifier to identify an item based on what the item is, not by elements that are in the item (pattern matching). A classifier learns how to identify a type of content by looking at hundreds of examples of the content you're interested in classifying.

> [!NOTE]
> In Preview - You can view the trainable classifiers in content explorer by expanding **Trainable Classifiers** in the filters panel. The trainable classifiers will automatically display the number of incidents found in SharePoint, Teams, and OneDrive, without requiring any labeling.
> If you don't want to use this feature, you must file a request with Microsoft Support. This will disable the display of your sensitive data that's not used in any labeling policies within Content Explorer. You can disable scanning of your data as well. If scanning is turned off, sensitivity labeling and DLP policies with those classifiers will not work

### Where you can use classifiers

Classifiers are available to use as a condition for [Office auto-labeling with sensitivity labels](apply-sensitivity-label-automatically.md), [auto-apply retention label policy based on a condition](apply-retention-labels-automatically.md#configuring-conditions-for-auto-apply-retention-labels) and in [communication compliance](communication-compliance.md).

Sensitivity labels can use classifiers as conditions, see [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md).

> [!IMPORTANT]
> Classifiers only work with items that are not encrypted.

## Types of classifiers

- **pre-trained classifiers** - Microsoft has created and pre-trained multiple classifiers that you can start using without training them. These classifiers will appear with the status of `Ready to use`.
- **custom trainable classifiers** - If you have classification needs that extend beyond what the pre-trained classifiers cover, you can create and train your own classifiers.

### Pre-trained classifiers

Microsoft 365 comes with multiple pre-trained classifiers:

- **Adult, racy, and gory**: Detects images of these types. The images must be between 50 kilobytes (KB) and 4 megabytes (MB) in size and be greater than 50 x 50 pixels in height x width dimensions. Scanning and detection are supported for Exchange Online email messages, and Microsoft Teams channels and chats. Detects content in .jpeg, .png, .gif, and .bmp files.

- **Agreements**: Detects content related to legal agreements such as non-disclosure agreements, statements of work, loan and lease agreements, employment and non-compete agreements. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Customer complaints**: The customer complaints classifier detects feedback and complaints made about your organization's products or services. This classifier can help you meet regulatory requirements on the detection and triage of complaints, like the Consumer Financial Protection Bureau and Food and Drug Administration requirements. For Communications Compliance, it detects content in .msg, and .eml files. For the rest of Microsoft Purview Information Protection services, it detects content in .docx, .pdf, .txt, .rtf, .jpg, .jpeg, .png, .gif, .bmp, .svg files.

- **Discrimination**: Detects explicit discriminatory language and is sensitive to discriminatory language against the African American/Black communities when compared to other communities.

- **Finance**: Detects content in corporate finance, accounting, economy, banking, and investment categories. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Harassment**: Detects a specific category of offensive language text items related to offensive conduct targeting one or multiple individuals based on the following traits: race, ethnicity, religion, national origin, gender, sexual orientation, age, disability. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.

- **Healthcare**: Detects content in medical and healthcare administration aspects such as medical services, diagnoses, treatment, claims, etc. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **HR**: Detects content in human resources related categories of recruitment, interviewing, hiring, training, evaluating, warning, and termination. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **IP**: Detects content in Intellectual Property related categories such as trade secrets and similar confidential information. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **IT**: Detects content in Information Technology and Cybersecurity categories such as network settings, information security, hardware, and software. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Legal affairs**: Detects content in legal affairs-related categories such as litigation, legal process, legal obligation, legal terminology, law, and legislation. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Procurement**: Detects content in categories of bidding, quoting, purchasing, and paying for supply of goods and services. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Profanity**: Detects a specific category of offensive language text items that contain expressions that embarrass most people. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.

- **Resume**: detects docx, .pdf, .rtf, .txt items that are textual accounts of an applicant's personal, educational, professional qualifications, work experience, and other personally identifying information

- **Source code**: detects items that contain a set of instructions and statements written in computer programming languages on GitHub: ActionScript, C, C#, C++, Clojure, CoffeeScript, Go, Haskell, Java, JavaScript, Lua, MATLAB, Objective-C, Perl, PHP, Python, R, Ruby, Scala, Shell, Swift, TeX, Vim Script. Detects content in .msg, .as, .h, .c, .cs, .cc, .cpp, .hpp, .cxx, .hh, .c++, .clj, .edn, .cljc, .cljs, .coffee, .litcoffee, .go, .hs, .lhs, .java, .jar, .js, .mjs, .lua, .m, .mm, .pl, .pm, .t, .xs, .pod, .php, .phar, .php4, .pyc, .R, .r, .rda, .RData, .rds, .rb, .scala, .sc, .sh, .swift files.

  > [!NOTE]
  > Source Code is trained to detect when the bulk of the text is source code. It does not detect source code text that is interspersed with plain text.

- **Tax**: Detects Tax relation content such as tax planning, tax forms, tax filing, tax regulations. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, xla files.

- **Threat**: Detects a specific category of offensive language text items related to threats to commit violence or do physical harm or damage to a person or property. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.

These classifiers appear in the **Microsoft Purview compliance portal** \> **Data classification** \> **Trainable classifiers** view with the status of `Ready to use`.

![classifiers-pre-trained-classifiers.](../media/classifiers-ready-to-use-classifiers.png)

> [!IMPORTANT]
> Please note that the built-in trainable and global classifiers don't provide an exhaustive or complete list of terms or language across these areas. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update these classifiers in its discretion. While classifiers may assist your organization in detecting these areas, classifiers are not intended to provide your organization's sole means of detecting or addressing the use of such language. Your organization, not Microsoft or its subsidiaries, remains responsible for all decisions related to monitoring, scanning, blocking, removal, and retention of any content identified by a pre-trained classifier, including compliance with local privacy and other applicable laws. Microsoft encourages consulting with legal counsel before deployment and use.

Our Threat, Profanity, Harassment, and Discrimination classifiers can scan content in these languages:

- Arabic
- Chinese (Simplified)
- Chinese (Traditional)
- Dutch
- English
- French
- German
- Italian
- Korean
- Japanese
- Portuguese
- Spanish

All others are English only at the moment.

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

You can view the number of matches a trainable classifier has in **Content explorer** and **Trainable lassifiers**. You can also provide feedback on whether an item is actually a match or not using the **Match**, **Not a Match** feedback mechanism and use that feedback to tune your classifiers. See, [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) for more information. 


## See also

- [Retention labels](retention.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Document finger printing](document-fingerprinting.md)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
