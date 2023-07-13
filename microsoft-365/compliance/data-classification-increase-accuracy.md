---
title: "Increase Classifier Accuracy"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/03/2023 
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
description: "Learn how to increase the accuracy of your classifiers"
---

# Increase classifier accuracy

Classifiers, such as [sensitive information types](sensitive-information-type-learn-about.md) (SIT) and [trainable classifiers](classifier-learn-about.md), are used in various types of policies to identify sensitive information. Like most such models, sometimes they identify an item as being sensitive that isn't. Or, they may not identify an item as being sensitive when it actually is. These are called false positives and false negatives.

This article shows you how to confirm whether items matched by a classifier are true positives (a **Match**) or false positives (**Not a match**) and provide **Match**/**Not a match** feedback. You can use that feedback to tune your classifiers to increase accuracy. You can also send redacted versions of the document as well as the **Match**, **Not a Match** feedback to Microsoft if you want to help increase the accuracy of the classifiers that Microsoft provides.

The **Match**, **Not a match**  and **Contextual Summary** experiences are available in:

- Content Explorer - for SharePoint sites, OneDrive sites
- Sensitive Information Type Matched Items page - for SharePoint sites, OneDrive sites
- Trainable Classifier Matched Items page - for SharePoint sites, OneDrive sites
- Microsoft Purview Data Loss Prevention (DLP) Alerts page - for SharePoint sites, OneDrive, and emails in Exchange
- Microsoft Threat Protection (MTP) Alerts page - for SharePoint sites, OneDrive sites, and emails in Exchange

The **Contextual Summary** experience is available in:
- Microsoft Purview Information Protection (MIP) Auto-labeling simulation matched items - for SharePoint sites, OneDrive sites

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Applies to

|Classifier |Contextual summary| Redacted preview panel| Match and Not a Match|  
|---------|---------|---------|---------|
|SIT     |Yes| Yes|Yes|
|Custom SIT  | Yes|No | Yes|
|Fingerprint SIT| No|No|Yes|
|Exact data match SIT|No*|No|No|
|Named entities| No*| No| No|
|Credential scan| No*| No| No|
|Built-in Trainable classifiers|No| Yes| Yes|
|Custom trainable classifier |No| No| Yes|

\* These classifiers are supported in MIP Auto-labeling simulation matched items - for SharePoint sites and OneDrive sites
  
> [!IMPORTANT]
> The match/not a match feedback and contextual summary experience support items in:
> SharePoint sites & OneDrive sites - for Content Explorer, Sensitive Information Type and Trainable Classifier Matched Items, DLP Alerts and MTP Alerts.
> Emails in Exchange - for DLP Alerts and MTP Alerts.
> The contextual summary experience supports items in:
> SharePoint sites and OneDrive sites - for MIP simulation matched items 

## Licensing and Subscriptions

For information on the relevant licensing and subscriptions, see the [licensing requirements for Data classification analytics: Overview Content & Activity Explorer](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-classification-analytics-overview-content--activity-explorer).

## Known limitations

- The contextual summary only shows a limited number of matches in any given item, not all matches.
- The contextual summary and feedback experience is only available for items created or updated after the feedback experience was enabled for the tenant. Items that were classified before the feature was enabled may not have the contextual summary and feedback experience available.

## How to evaluate match accuracy and provide feedback

The contextual summary experience, where you indicate whether a matched item is a true positive (**Match**) or a false positive (**Not a match**), is similar across all of the places it surfaces.

> [!IMPORTANT]
> You must have already deployed DLP policies that use either SITs or trainable classifiers to OneDrive sites, SharePoint sites, or Exchange mailboxes. You must also have had items match before any items appear in the **Contextual summary** page.

### Using Content Explorer

This example shows you how to use the **Contextual Summary** tab to give feedback. <!-- Can't fully verify procedure b/c I can't get Content Explorer to display any data in this view on ediscosdf or on ocg1-->

1. Open the **Microsoft Purview compliance portal** > **Data classification** > **Content explorer** page.
1. Type the name of the SIT or trainable classifier that you want to check matches for in **Filter on labels, info types, or categories**.
1. Select the SIT.
1. Select the location and make sure that there's a non-zero value in the **Files** column. (The only supported locations are SharePoint and OneDrive.)
1. Open the folder and then select a document.
1. Select the link in the **Sensitive info type** column for the document to see which SITs the item matched and the [confidence level](sensitive-information-type-learn-about.md#more-on-confidence-levels).
1. Choose **Close**
1. Open a document and select the **Contextual Summary** tab.
1. Review the item and confirm whether or not it's a match.
1. If it's a match, choose **Close**. You're finished.
1. If it's not a match, choose **Not a match**.
1. If you make a mistake and chose the wrong option, select **Withdraw feedback** next to **Close**. This puts the item back into the **Not a match**/**Match** state.
1. Review the item and redact or un-redact any text.
1. Choose **Close**.

### Using Sensitive Information Type Matched Items page

You can access the same feedback mechanisms in the **Sensitive Info types** page.

1. Open the **Microsoft Purview compliance portal** and navigate to **Data classification** > **Classifiers** > **Sensitive info types**.
1. In the **Search** field, enter the name of the SIT whose accuracy you want to check.
1. Open the SIT. This brings up **Overview** tab. Here you can see the count of the number of items that match, a count of the number of items that aren't a match, and the number of items with feedback.
1. Select the **Matched items** tab.
1. Open the folder and select a document. Only SharePoint, OneDrive are supported locations here. Make sure that there's a non-zero value in the **Files** column.
1. Select the link in the **Sensitive info type** column for an item to see which SITs the item matched and the [confidence level](sensitive-information-type-learn-about.md#more-on-confidence-levels).
1. Choose **Close**.
1. Open a document and then select the **Contextual Summary** tab.
1. Review the item and confirm whether it's a match.
1. If it's a match, choose **Match** and then **Close**.
1. If it isn't a match, choose **Not a Match ****
1. If you make a mistake and select the wrong option, select **Withdraw feedback** next to **Close**. This puts the item back into the **Not a match**/**Match** state.
1. Choose **Close**.

### Using Trainable Classifier Matched Items page

1. Open the **Microsoft Purview compliance portal** and navigate to **Data classification** > **Classifiers** > **Trainable classifiers**.
1. Select the trainable classifier whose accuracy you want to check.
1. Open the trainable classifier. This brings up **Overview** tab. Here you can see the count of the number of items that match, a count of the number of items that aren't a match, and the number of items with feedback.
1. Select the **Matched items** tab.
1. Open the folder and open a document. Only SharePoint, OneDrive are supported locations here. Make sure that there's a non-zero value in the **Files** column.
1. Open a document and then select the **Contextual Summary** tab.
1. Review the item and confirm whether it's a match.
1. If it's a match, choose **Match** and then choose **Close**.
1. If it isn't a match, choose **Not a Match ****
1. If you make a mistake and select the wrong option, choose **Withdraw feedback** next to **Close**. This puts the item back into the **Not a match**/**Match** state.
1. Choose **Close**.

### Using Data Loss Prevention Alerts page

1. Open the **Microsoft Purview compliance portal** and navigate to **Data loss prevention** > **Alerts** page.
1. Choose an alert. 
1. Choose **View details**.
1. Choose the **Events** tab.
1. Maximize the **Details** tab.
1. Review the item and confirm whether it's a match.
1. Choose **Actions**.
1. If it's a match, close the window. You're finished.
1. If it's not a match, choose **Actions** and then **Not a match**.
1. Review the item and redact or un-redact any text.
1. Close the window.

## Using the feedback to tune your classifiers

If your SITs or trainable classifiers are returning too many false positives based on the feedback, try some of these options to refine them and increase their accuracy.

### Trainable classifiers

Use the steps in [How to retrain a classifier in content explorer](classifier-how-to-retrain-content-explorer.md) to increase the accuracy of a trainable classifier.

### Sensitive information types

- Increase the thresholds of sensitive information types found to determine severity. It's okay to use different thresholds for individual classifiers.

- Understand confidence levels and how they're defined. Try using a low confidence with high instance count, or a higher confidence level with a low instance count.

- Clone and modify the built-in SITs to include other conditions, such as the presences of keywords, more stringent value matching, or stronger formatting requirements.

- Modify a custom SIT to exclude known prefixes, suffixes, or patterns. For example, a custom SIT to detect phone numbers might trigger for every email if your email signatures or document headers include phone numbers. Excluding your organization's phone number sequences from your custom SIT can prevent the rule from triggering for every email or document.

- Include more dictionary-based SITs as conditions to narrow down the matches to those items that talk about the relevant articles. For example, a rule for matching patient diagnostics may be enhanced by requiring the presence of words like diagnostic, diagnosis, condition, symptom, and patient.

- For named-entity SITs, like **All Full Names**, it’s best to set a higher instance count threshold, like 10 or 50. If both the person names and the Social Security Numbers (SSNs) are detected together, it’s more likely that the SSNs are truly SSNs, and we reduce the risk that the policy doesn’t trigger because too few SSNs are detected.
