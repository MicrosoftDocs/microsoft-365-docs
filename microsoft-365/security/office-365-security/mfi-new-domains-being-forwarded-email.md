---
title: "New domains being forwarded email insight"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: exchange-online
localization_priority: Normal
ms.assetid:
description: "Admins can learn how to use the New domains being forwarded email insight in the modern Exchange admin center to investigate when users in their organization are forwarding messages to external domains that have never been been forwarded to."
---

# New domains being forwarded email insight in the Security & Compliance Center

Although you might have valid business reasons to forward email messages to external recipients in specific domains, it's suspicious when users in your organization suddenly start forwarding messages to external domains, and no one in the organization has ever forwarded messages to those domains (new domains).

The **New domains being forwarded email** insight in the Security & Compliance Center notifies you when users in your organization are forwarding messages to new domains.

This insight appears only when the issue is detected, and it appears on the [Forwarding report](view-mail-flow-reports.md#forwarding-report) page.

![New domains being forwarded email insight](../../media/mfi-new-domains-being-forwarded.png)

When you click on the widget, a flyout appears where you can find more details about the forwarded messages, including a link back to the [Forwarding report](view-mail-flow-reports.md#forwarding-report).

![Details flyout that appears after clicking on the New domains being forwarded email insight](../../media/mfi-new-domains-being-forwarded-details.png)

Note that you can also get to this details page when you select the insight after you click **View all** in the **Top insights & recommendations** area on (**Reports** \> **Dashboard** or <https://protection.office.com/insightdashboard>).

To prevent automatic message forwarding to external domains, configure a remote domain for some or all external domains. For more information, see [Manage remote domains in Exchange Online](../../mail-flow-best-practices/remote-domains/manage-remote-domains.md).

If you suspect the accounts have been compromised, see [Responding to a compromised email account](https://docs.microsoft.com/microsoft-365/security/office-365-security/responding-to-a-compromised-email-account).

## Related topics

For more information about other mail flow insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
