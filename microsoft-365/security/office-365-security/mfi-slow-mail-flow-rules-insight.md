---
title: "Fix slow mail flow rules insight"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 37125cdb-715d-42d0-b669-1a8efa140813
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn how to use the Fix slow mail flow rules insight in the Security & Compliance Center to identify and fix inefficient or broken mail flow rules (also known as transport rules) in their organization."
---

# Fix slow mail flow rules insight in the Security & Compliance Center

Inefficient mail flow rules (also known as transport rules) can lead to mail flow delays for your organization. This insight reports mail flow rules that have an impact on your organization's mail flow. Examples of these types of rules are:

- Conditions that use **Is member of** for large groups.
- Conditions that use complex regular expression (regex) pattern matching.
- Conditions that use content checking in attachments.

The **Fix slow mail flow rules** insight in the **Recommended for you** area of the mail flow dashboard in the Security & Compliance Center notifies you when a mail flow rule is taking too long to complete. You can use this notification to help you to identify and fine-tune mail flow rules to help reduce mail flow delays.

![Fix slow mail flow rules insight in the Recommended for you area of the mail flow dashboard](../../media/mfi-fix-slow-mail-flow-rules.png)

When you click **View details** on the widget, a flyout appears with more information:

- **Rule**: You can hover over the summary to see all of the conditions, exceptions, and actions of the rule. You can click on the summary to edit the rule in the Exchange admin center (EAC).
- **Number of messages evaluated**: You can click **View sample messages** to see the [message trace](message-trace-scc.md) results for a sample of the messages that were affected by the rule.
- **Average time spent on each message**
- **Median time spent on a message**: The middle value separating the upper half from the lower half.


![Details flyout that appears after clicking View details on the Fix slow mail flow rules insight](../../media/mfi-fix-slow-mail-flow-rules-details.png)

For more information about conditions and exceptions in mail flow rules in Exchange Online, see [Mail flow rule conditions and exceptions (predicates) in Exchange Online](../../security-and-compliance/mail-flow-rules/conditions-and-exceptions.md).

## Related topics

For more information about other mail flow insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
