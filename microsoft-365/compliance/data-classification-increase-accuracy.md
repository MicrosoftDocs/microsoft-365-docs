---
title: "Increase Classifier Accuracy"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
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

# Increase classifier accuracy (preview)

Classifiers, like [sensitive information types](sensitive-information-type-learn-about.md) (SIT) and [trainable classifiers](classifier-learn-about.md) are used in various kinds of policies to identify sensitive information. Like all models, sometimes they identify an item as being sensitive that isn't. Or sometimes that don't identify an item as being sensitive when it actually is. These are called false positives and false negatives. 

This article shows you how to confirm whether items matched by a classifier are true positive (a **Match**) or a false positive (**Not a match**) and provide **Match**, or **Not a match** feedback. You can use that feedback to tune your classifiers to increase accuracy. You can also send redacted versions of the document as well as the **Match**, **Not a Match** feedback to Microsoft if you want to help increase the accuracy of the classifiers that Microsoft provides. 

The **Match**, **Not a match** experience is available in:

- Content Explorer
- Sensitive Information Type Matched Items page
- Trainable Classifier Matched Items page
- Microsoft Purview Data Loss Prevention (DLP) Alerts page

## Applies to

|Classifier |Contextual summary| Redacted preview panel| Match and Not a Match|  
|---------|---------|---------|---------|
|SIT     |Yes| Yes|Yes|
|Custom SIT  | Yes|No | Yes|
|Fingerprint SIT| No|No|Yes|
|Exact data match SIT|No|No|No|
|Named entities| No| No| No|
|Built-in Trainable classifiers|No| Yes| Yes|
|Custom trainable classifier |No| No| Yes|

> [!IMPORTANT]
> The match/not a match feedback experience supports items in SharePoint Online sites, OneDrive for Business sites and emails in Exchange Online.

## Licensing and Subscriptions

See the [licensing requirements for Data classification analytics: Overview Content & Activity Explorer](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-classification-analytics-overview-content--activity-explorer).

## Known limitations for this preview

- The contextual summary only shows a limited number of matches in any given item, not all matches.
- The contextual summary and feedback experience is only available for items created or updated after the feedback experience was enabled for the tenant. Items that were classified before the feature was enabled may not have the contextual summary and feedback experience available.

## How to evaluate match accuracy and provide feedback

The contextual summary experience where you indicate if a matched item is a true positive (**Match**) or a false positive (**Not a match**) is similar no matter where is surfaces.

> [!IMPORTANT]
> You must have already deployed DLP policies that use either SIT or trainable classifier to OneDrive sites, SharePoint sites or Exchange mailboxes and had item matches before you will see items in the **Contextual summary** page.

### Using Content Explorer

This example shows you how to use the **Contextual Summary** tab to give feedback.

1. Open the **Microsoft Purview compliance portal** > **Data classification** > **Content explorer** page.
1. Type the name of the SIT or trainable classifier that you want to check matches for in **Filter on labels, info types, or categories**.
1. Select the SIT.
1. Select the location. Make sure that there's a non-zero value in the **File** column.
1. Open the folder and select a document.
1. Select the link in the **Sensitive info type** column for an item to see which SITs the item matched and the [confidence level](/microsoft-365/compliance/sensitive-information-type-learn-about.md#more-on-confidence-levels).
1. Select **Close**
1. Open an item and expand the **Contextual Summary** page. Select the **Contextual Summary** tab.
1. Review the item and confirm if it's a match.
1. If it's a match, select **Close**. You're done.
1. OPTIONAL: Select **I agree to provide a copy of the file to Microsoft** if you want to submit the match feedback to Microsoft and select **Submit to Microsoft.**
1. If it's not a match, select the ellipsis next to **Close** and select **Withdraw feedback**.
1. Select the **Not a match**.
1. Review the item and redact or unredact any text.
1. Optional: Select **I agree to provide a copy of the file to Microsoft** if you want to submit the feedback to Microsoft and select **Submit to Microsoft**.
1. Select **Close**.

If you later decide that the not a match feedback is incorrect, you can select the **Withdraw feedback** button. This puts the item back into the **Not a match**, **Match** page.

### Using Sensitive Information Type Matched Items page

You can access the same feedback mechanisms in the **Sensitive Info types** page.

1. Open the **Microsoft Purview compliance portal** > **Data classification** > **Sensitive info types** page.
1. Type the name of the SIT whose accuracy you want to check into  **Search**.
1. Open the SIT. This brings up **Overview** tab. Here you can see the count of the number of items that match, a count of the number of items that aren't a match, and the number of items with feedback.
1. Select the **Matched items** tab.
1. Open the folder and select a document.
1. Select the link in the **Sensitive info type** column for an item to see which SITs the item matched and the [confidence level](/microsoft-365/compliance/sensitive-information-type-learn-about.md#more-on-confidence-levels).
1. Select **Close**.
1. Open an item and expand the **Contextual Summary** page. Select the **Contextual Summary** tab.
1. Review the item and confirm if it's a match.
1. If it's a match, select **Close**. You're done.
1. If it isn't a match, select the ellipsis next to **Close** and select **Withdraw feedback**. This exposes the **Not a Match** button.
1. Select the **Not a match** button.
1. Review the item and redact or unredact any text.
1. Optional: Select **I agree to provide a copy of the file to Microsoft** if you want to submit the feedback to Microsoft and select **Submit to Microsoft**.
1. Select **Close**.

If you later decide that the not a match feedback is incorrect, you can select the **Withdraw feedback** button. This puts the item back into the **Not a match**, **Match** page.

### Using Trainable Classifier Matched Items page

1. Open the **Microsoft Purview compliance portal** > **Data classification** > **Trainable classifiers** page.
1. Select the trainable classifier whose accuracy you want to check.
1. Open the trainable classifier. This brings up **Overview** tab. Here you can see the count of the number of items that match, a count of the number of items that aren't a match, and the number of items with feedback.
1. Select the **Matched items** tab.
1. Open the folder and open a document.
1.Open an item and expand the **Contextual Summary** page.
1. Review the item and confirm if it's a match.
1. If it's a match, select **Close**. You're done.
1. If it isn't a match, select **Withdraw feedback**. This exposes **Not a Match** button.
1. Select the **Not a match** button.
1. Select **Close**.

If you later decide that the not a match feedback is incorrect, you can select the **Withdraw feedback** button. This puts the item back into the **Not a match**, **Match** page.

### Using Data Loss Prevention Alerts page

1. Open the **Microsoft Purview compliance portal** > **Data loss prevention** > **Alerts** page.
1. Select an alert for an item that was created or updated after the **Match**/**Not a Match** functionality was enabled for your tenant.
1. Select **View details**.
1. Select the **Events** tab.
1. Select the **Contextual summary** tab.
1. Review the item and confirm if it's a match.
1. If it's a match, select **Close**. You're done.
1. If it's not a match, select **Actions** and **Not a match**.
1. Review the item and redact or unredact any text.
1. Optional: Select **I agree to provide a copy of the file to Microsoft** if you want to submit the feedback to Microsoft and select **Submit to Microsoft**.
1. Select **Close**.

## Using the feedback to tune your classifiers

If your SIT or trainable classifiers are returning too many false positives based on the feedback, you can try some of these steps to tune them and increase the accuracy. 

### Trainable classifiers

Use the steps in [How to retrain a classifier in content explorer](classifier-how-to-retrain-content-explorer.md) to increase the accuracy of a trainable classifier.

### Sensitive information types
 
If you're seeing high amounts of false positives, use these recommendations to fine-tune your SITs:

- Increase the thresholds of sensitive information types found to determine severity. It's okay to use different thresholds for individual classifiers

- Understand confidence levels and how they're defined. Try using a low confidence with high instance count or a higher confidence level with a low instance count.

- Clone and modify the built-in SITs to include other conditions, such as keywords, or more stringent matching of values, or stronger formatting requirements.

- Modify a custom SIT to exclude known prefixes, suffixes or patterns. For example, a custom SIT to detect phone numbers might trigger for every email if your email signatures or document headers include phone numbers. Excluding your orgs phone number sequences common as prefixes to your custom SIT can prevent the rule from triggering for every email or document.

- Include more dictionary-based SITs as conditions to narrow down the matches to those that talk about the relevant articles. For example, a rule for matching patient diagnostics may be enhanced by requiring the presence of words like diagnostic, diagnosis, condition, symptom, and patient.

- For a named entity SITs, like **All Full Names**, it’s best to set a higher instance count threshold, like 10 or 50. If both the person names and the SSNs are detected together, it’s more likely that the SSNs are truly SSNs, and we reduce the risk that the policy doesn’t trigger because not enough SSNs are detected.