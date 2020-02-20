---
title: "Slow mail flow rules insight"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 5/3/2018
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 37125cdb-715d-42d0-b669-1a8efa140813
description: "Admins can learn about the Slow mail flow rules insight in the mail flow dashboard in the Security & Compliance Center."
---

# Slow mail flow rules insight

Inefficient mail flow rules (also known as transport rules) can lead to mail flow delays for your organization. This insight reports mail flow rules that have an impact on your organization's mail flow. Examples of these types of rules are:

- Conditions that use **Is member of** for large groups.

- Conditions that use complex regular expression (regex) pattern matching.

- Conditions that use content checking in attachments.

The insight will help you to identify and fine-tune mail flow rules to help reduce mail flow delays.

![A slow mail flow rules insight in the mail flow dashboard in the Security & Compliance Center](../../media/1dd90faa-f065-4b10-8b47-d35dc127fc26.png)

When you click **View details**, a flyout pane appears where you can review the rule. In the flyout pane, can also click **view sample messages** to see what kind of messages are impacted by the rule.

![Flyout pane after clicking View details in a slow mail flow rules insight in the mail flow dashboard](../../media/2cbd43b7-1f21-4338-a70c-7b50de5c69cd.png)

## See also

For more information about other mail flow insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
