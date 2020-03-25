---
title: "Top domain mail flow status insight"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 
description: "Admins can learn about the top domain mail flow status insight in the mail flow dashboard in the Security & Compliance Center."
---

# Top domain mail flow status insight

The **Top domain mail flow status** insight gives you the current status for your organization's domains in terms of mail flow. This insight helps you identify and troubleshoot domains that are experiencing ***mail flow impacting*** issues (for example, unable to receive external email), especially domain expirations or domains with incorrect MX records.

![The Top domain flow status insight in the mail flow dashboard in the Security & Compliance Center](../../media/domain-mail-flow-status-selected.png)

When you click **View details** in the insight, a flyout appears that shows you more details for the status of each domain.

A green check mark for a domain indicates the current MX record (when you browsed to the mail flow insights dashboard) matches the value we have on record, and that the domain has received email during the past two hours.

A red x for a domain indicates the MX record has been changed, and that the domain has received no email during the past 6 hours. This likely indicates that your domain has expired, or that the MX record has been incorrectly updated. Check with your domain registrar or DNS hosting service to see if the domain has expired, or if the domain's MX record is incorrect.

![The Details flyout in the Top domain flow status insight](../../media/domain-mail-flow-status-flyout.png)

## See also

For more information about other mail flow insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
