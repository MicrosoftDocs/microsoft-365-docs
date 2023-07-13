---
title: "Data loss prevention policy tip reference for SharePoint Online and OneDrive for Business web client"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/26/2023
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
feedback_system: None
recommendations: false
description: "DLP policy tip reference for SharePoint Online and OneDrive for Business web client."
---

# Data loss prevention policy tip reference for SharePoint Online and OneDrive for Business web client

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## DLP policy tips supported

Yes.

> [!IMPORTANT]
> When emails are encrypted with Microsoft Purview Message Encryption and the policy used to detect them uses the detect encryption condition policy tips will not appear.

## Conditions that support policy tips in SharePoint Online and OneDrive for Business web client

- Content contains
- Content is shared from Microsoft 365
- Document property is
- File extention is
- Document name contains words or phrases
- Document size equals or is greater than
- Document created by
- Document created by member of
- Document is shared (OneDrive for Business web client only)

## Actions that support policy tips in SharePoint Online and OneDrive for Business web client

- Restrict acces or encrypt the ocntent in Microsoft 365 locations
 

## Sensitive information types that support policy tips in SharePoint Online and OneDrive for Business web client

These preconfigured sensitive information types (SIT) support policy tips in SharePoint Online and OneDrive for Business web client

[!INCLUDE [notes](../includes/sit-link-list.md)]

## Exact data match sensitive information types support for policy tips in SharePoint Online and OneDrive for Business web client

Yes.

All exact data match sensitive information types are custom created. For more details, see [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md).

## Custom sensitive information types support for policy tips in SharePoint Online and OneDrive for Business web client

Yes.

Custom sensitive information types that use REGEX, functions, keyword lists and keyword dictionaries support policy tips in Outlook on the Web. For more details, see [Create custom sensitive information types in the compliance portal](create-a-custom-sensitive-information-type.md) and [Create a custom sensitive information type using PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md).


## Sensitivity labels support for policy tips in SharePoint Online and OneDrive for Business web client

No.


## Retention labels support for policy tips in SharePoint Online and OneDrive for Business web client

No.


## Trainable classifiers support for policy tips in SharePoint Online and OneDrive for Business web client

No.


<!-- END USER CONTENT ## Policy tips in Outlook on the web

When you compose a new email in Outlook on the web and Outlook 2013 and later, you'll see a policy tip if you add content that matches a rule in a DLP policy, and that rule uses policy tips. The policy tip appears at the top of the message, above the recipients, while the message is being composed.

![Policy tip at the top of a message being composed.](../media/9b3b6b74-17c5-4562-82d5-d17ecaaa8d95.png)

Policy tips work whether the sensitive information appears in the message body, subject line, or even a message attachment as shown here.

![Policy tip showing that an attachment conflicts with a DLP policy.](../media/59ae6655-215f-47d9-ad1d-39c0d1e61740.png)

If the policy tips are configured to allow override, you can choose **Show Details** \> **Override** \> enter a business justification or report a false positive \> **Override**.

![Policy tip in message expanded to show Override option.](../media/28bfb997-48a6-41f0-8682-d5e62488458a.png)

![Policy tip dialog where you can override the policy tip.](../media/f97e836c-04bd-44b4-aec6-ed9526ea31f8.png)

Note that when you add sensitive information to an email, there may be latency between when the sensitive information is added and when the policy tip appears. When emails are encrypted with Microsoft Purview Message Encryption and the policy used to detect them uses the detect encryption condition policy tips will not appear.
-->

