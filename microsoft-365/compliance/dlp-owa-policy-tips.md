---
title: "Outlook On the Web data loss prevention policy tip reference"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/10/2023
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier3
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "DLP policy tip reference for Outlook 2013 for Win32."
---

# Outlook On the Web data loss prevention policy tip reference

## From Elsewhere

LP policy tips in Outlook Web Access are supported for all the conditions, and actions that are applicable on Exchange workload in a DLP policy except the following:

**Conditions:**

- Recipient is a member of
- Header contains words or phrases
- Header matches patterns
- Message type is
- Content character set contains words
- Has sender overridden the policy tip
- Message size equals or is greater than
- Sender AD attribute contains words or phrases
- Sender AD attribute matches patterns
- Sender IP ranges
- Recipient AD attribute contains words or phrases
- Recipient AD attribute matches patterns
- Document name contains words or phrases
- Document name matches patterns
- Document content contains words or phrases
- Document content matches patterns
- Any email attachment's content didn't complete scanning
- Any email attachment's content could not be scanned

**Actions:**

- Forward the message for approval to sender’s manager
- Forward the message for approval to specific approvers
- Redirect the message to specific users
- Add recipients to the To Box
- Add recipients to the Cc Box
- Add recipients to the Bcc Box
- Add the sender’s manager as recipient
- Add HTML disclaimer
- Prepend email subject
- Remove O365 Message Encryption and rights protection

[!INCLUDE [purview-preview](../includes/purview-preview.md)]



[!INCLUDE [purview-preview](../includes/purview-preview.md)]

FROM ELSEWHERE

## Policy tips in Outlook on the web

When you compose a new email in Outlook on the web and Outlook 2013 and later, you'll see a policy tip if you add content that matches a rule in a DLP policy, and that rule uses policy tips. The policy tip appears at the top of the message, above the recipients, while the message is being composed.

![Policy tip at the top of a message being composed.](../media/9b3b6b74-17c5-4562-82d5-d17ecaaa8d95.png)

Policy tips work whether the sensitive information appears in the message body, subject line, or even a message attachment as shown here.

![Policy tip showing that an attachment conflicts with a DLP policy.](../media/59ae6655-215f-47d9-ad1d-39c0d1e61740.png)

If the policy tips are configured to allow override, you can choose **Show Details** \> **Override** \> enter a business justification or report a false positive \> **Override**.

![Policy tip in message expanded to show Override option.](../media/28bfb997-48a6-41f0-8682-d5e62488458a.png)

![Policy tip dialog where you can override the policy tip.](../media/f97e836c-04bd-44b4-aec6-ed9526ea31f8.png)

Note that when you add sensitive information to an email, there may be latency between when the sensitive information is added and when the policy tip appears. When emails are encrypted with Microsoft Purview Message Encryption and the policy used to detect them uses the detect encryption condition policy tips will not appear.

## DLP policy tips supported

Yes

## DLP policy match notification supported


## Supported versions and channels


## Supported conditions

F

## Supported actions

Lorem ipsum:

- dolor sit amet

## Supported sensitive information types on Windows 10/11 devices

## Supported sensitivity labels

Lorem ipsum:

- dolor sit amet

## Supported retention labels

Lorem ipsum:

- dolor sit amet

## Supported trainable classifiers

Lorem ipsum:

- dolor sit amet