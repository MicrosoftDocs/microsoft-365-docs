---
title: "Best practices for managing your alerts queue"
description: "Learn best practices for managing the volume of alerts in Microsoft Purview Communication Compliance."
keywords: Microsoft 365, Microsoft Purview, compliance, communication compliance
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 07/18/2023
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- highpri
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MET150
- MOE150
---

# Best practices for managing the volume of alerts in communication compliance

After configuring Microsoft Purview Communication Compliance, you may want to make adjustments to manage the volume of alerts that you receive. Use the list of best practices in this article to help you create policies that cover as many users as possible while reducing the number of non-actionable alerts.

## Understand keyword list volumes

Many customers use custom keyword lists for compliance scenarios. Understanding the volume of policy matches for each keyword can help you tune your policies. Use the [Sensitive information type per location report](communication-compliance-reports-audits.md#detailed-reports) to analyze keyword lists to see which keywords trigger most matches. You can then investigate further to see if those keywords have high false-positive rates. You can also use the [Message details reports](communication-compliance-reports-audits.md#message-details-report) to get data on keyword matches for a specific policy.

## Use the data classification dashboard

It’s important to understand the volume of items classified by trainable classifiers and sensitive information types. You can use the [Content explorer](data-classification-content-explorer.md) in the data classification dashboard to help you understand the volume that you can expect for your organization. 

When you first start using trainable classifiers, you might not get enough matches, or you might get too many matches. The following table shows the volume level to expect for different types of trainable classifiers.

|Trainable classifier|Volume|
|----------------------------------|------------------|
|Discrimination |Low|
|Targeted harassment|Low|
|Threat|Low|
|Adult images|Low|
|Customer complaints|Medium|
|Profanity|Medium|
|Racy images|Medium|
|Gory images|Medium|
|Gifts & entertainment|Medium|
|Money laundering|Medium|
|Regulatory collusion|Medium|
|Stock manipulation|Medium|
|Unauthorized disclosure|High|

Consider using the Adult images classifier instead of the Racy images classifier since the Adult images classifier detects a more explicit image. You can use the Content explorer page to help you understand the volume that you can expect for your organization for each of the trainable classifiers.

## Filter email blasts

You can [filter out email messages](communication-compliance-policies.md#filter-email-blasts) that are generic and intended for mass communication. For example, filter out spam, newsletters, and so on. [Learn about the Email blast senders report](communication-compliance-reports-audits.md#detailed-reports)

## Filter out email signatures/disclaimers 

Sensitive information types can be triggered from footers in emails, such as disclaimers. If many of your non-actionable alerts come from a specific set of sentences or phrases in an email signature or disclaimer, you can [filter out the email signature or disclaimer](sit-common-scenarios.md#ignore-a-disclaimer-notice).

## Use sentiment evaluation

Messages in alerts include [sentiment evaluation](communication-compliance-investigate-remediate.md#step-2-examine-the-message-details) to help you quickly prioritize potentially riskier messages to address first. Using sentiment evaluation won't reduce your detection volumes but will make it easier to prioritize detections. Messages are flagged as Positive, Negative, or Neutral sentiment. For some organizations, messages with Positive sentiment may be determined to be a lower priority, allowing you to spend more time on other message alerts.  

## Report messages as misclassified

[Reporting false positives as misclassified](communication-compliance-investigate-remediate.md#review-and-mediate-policy-matches-and-alerts) will help to improve Microsoft’s models and reduce the number of false positives that you see in the future.  

## Filter out specific senders by using a condition

If you have senders that consistently trigger detections (for example, through newsletters, automated mails, and so on), you can filter out these particular senders using the following conditional setting: [Message is not received from any of these domains](communication-compliance-policies.md#conditional-settings). 

## Use communication direction to target a particular set of users

If you’re detecting standards of business conduct scenarios and only care about communications from your employees (not from external users), consider using a policy that detects only [outbound communications](communication-compliance-policies.md#direction). If you make the entire organization in scope, you can ensure that all of the users in your organization are covered but exclude users from outside your organization.

## Combine trainable classifiers

Consider combining two or more [trainable classifiers](classifier-learn-about.md#classifiers) together. For example, combine the [Threat](classifier-tc-definitions.md#threat) and [Profanity](classifier-tc-definitions.md#profanity) classifiers or the [Targeted harassment](classifier-tc-definitions.md#harassment) and [Profanity](classifier-tc-definitions.md#profanity) classifiers to raise the threshold for messages captured.

## Lower the percentage of reviewed communications

If you just want to sample a subset of all the messages that trigger alerts, [specify a percentage of communications to review](communication-compliance-policies.md#review-percentage). 