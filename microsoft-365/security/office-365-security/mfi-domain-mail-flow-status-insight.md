---
title: Top domain mail flow status insight in the Mail flow dashboard
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.collection: M365-security-compliance
ms.localizationpriority: medium
ms.assetid: 
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn how to use the Top domain mail flow status insight in the Mail flow dashboard in the Security & Compliance Center to troubleshoot mail flow issues related to their MX records.
ms.technology: mdo
ms.prod: m365-security
---

# Top domain mail flow status insight in the Security & Compliance Center

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

The **Top domain mail flow status** insight in the [Mail flow dashboard](mail-flow-insights-v2.md) in the [Security & Compliance Center](https://protection.office.com) gives you the current mail flow status for your organization.

This insight helps you identify and troubleshoot domains that are experiencing ***mail flow*** issues. For example, the domain is unable to receive external email because the domain has expired or the domain has an incorrect MX record.

:::image type="content" source="../../media/mfi-top-domain-mail-flow-status-widget.png" alt-text="The Top domain flow status widget in the Mail flow dashboard in the Security & Compliance Center" lightbox="../../media/mfi-top-domain-mail-flow-status-widget.png":::

When you click **View details** in the widget, a **Domain status** flyout appears that shows you more details for the status of each domain:

- **Domain**
- **Previous MX record**
- **Current MX record**
- **Email receiving status**
- **Domain status**: A green check mark indicates the current MX record (at the time you clicked on the widget) matches the value we have on record, and the domain has received email during the past two hours.

  A red X indicates the MX record has been changed, and the domain has received no email during the past 6 hours. This likely indicates that your domain has expired, or that the MX record has been incorrectly updated. Check with your domain registrar or DNS hosting service to see if the domain has expired, or if the domain's MX record is incorrect.

You can click **View more** to see the same information for more domains.

:::image type="content" source="../../media/mfi-top-domain-mail-flow-status-view-details.png" alt-text="The Details flyout in the Top domain mail flow status insight" lightbox="../../media/mfi-top-domain-mail-flow-status-view-details.png":::

## See also

For information about other insights in the Mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
