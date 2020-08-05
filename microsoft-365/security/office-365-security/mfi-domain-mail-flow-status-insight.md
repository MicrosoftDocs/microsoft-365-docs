---
title: "Top domain mail flow status report"
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
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn how to use the Top domain mail flow status report in the mail flow dashboard in the Security & Compliance Center to identify and troubleshoot mail flow in their email domains."
---

# Top domain mail flow status report in the mail flow dashboard in the Security & Compliance Center

The **Top domain mail flow status** report in the [mail flow dashboard](mail-flow-insights-v2.md) in the Security & Compliance Center gives you the current status for your organization's domains in terms of mail flow. This report helps you identify and troubleshoot domains that are experiencing ***mail flow impacting*** issues (for example, unable to receive external email), especially domain expirations or domains with incorrect MX records.

![Top domain flow status widget in the mail flow dashboard in the Security & Compliance Center](../../media/mfi-top-domain-mail-flow-status-report-widget.png)

When you click **View details** in the widget, a **Domain status** flyout appears that shows you more details for the status of each domain:

- **Domain**
- **Previous MX record**
- **Current MX record**
- **Email receiving status**
- **Domain status**: A green check mark indicates the current MX record (when you browsed to the mail flow insights dashboard) matches the value we have on record, and that the domain has received email during the past two hours.

  A red x indicates the MX record has been changed, and that the domain has received no email during the past 6 hours. This likely indicates that your domain has expired, or that the MX record has been incorrectly updated. Check with your domain registrar or DNS hosting service to see if the domain has expired, or if the domain's MX record is incorrect.

You can click **View more** to see information about more domains.

![Details flyout in the Top domain mail flow status report](../../media/mfi-top-domain-mail-flow-status-report-view-details.png)

## Related topics

For information about other mail flow reports and insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
