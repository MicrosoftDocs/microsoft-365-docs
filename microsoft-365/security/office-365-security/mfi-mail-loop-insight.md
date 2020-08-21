---
title: "Fix possible mail loop insight"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: cb801985-3c89-4979-9c18-17829a4cb563
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn how to use the Fix possible mail loop insight in the Mail flow dashboard in the Security & Compliance Center to identify and fix mail loops in their organization."
---

# Fix possible mail loop insight in the Security & Compliance Center

A mail loop is bad because it wastes system resources, consumes your organization's mail volume quota, and sends confusing non-delivery reports (also known as NDRs or bounce messages) to the original senders.

The **Fix possible mail loop** insight in the **Recommended for you** area of the [Mail flow dashboard](mail-flow-insights-v2.md) in the Security & Compliance Center notifies you when a mail loop is detected in your organization. This insight appears only after the condition is detected (if you don't have any mail loops, you won't see the insight).

![Fix slow mail flow rules insight in the Recommended for you area of the Mail flow dashboard](../../media/mfi-fix-possible-mail-loop.png)

When you click **View details** on the widget, a flyout appears with more information:

- **Domain**
- **Number of messages**: You can click **View sample messages** to see the [message trace](message-trace-scc.md) results for a sample of the messages that were affected by the loop.
- **Domain type**" For example, Authoritative or Non-authoritative.
- **MX record**: The host (**Mail server**) and **Priority** values of the MX record for the domain.
- **Loop reason** and **How to fix**: We'll try to identify the most common mail loop scenarios and provide the recommended actions (if available) to fix the loop.

![Details flyout that appears after clicking View details on the Fix possible mail loop insight](../../media/mfi-fix-possible-mail-loop-details.png)

## Related topics

For information about other insights in the Mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
