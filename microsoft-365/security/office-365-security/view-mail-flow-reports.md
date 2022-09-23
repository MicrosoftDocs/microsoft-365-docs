---
title: View mail flow reports in the Reports dashboard
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 
ms.collection: 
  - M365-security-compliance
description: Admins can learn about the mail flow reports that are available in the Reports dashboard in the Security & Compliance Center.
ms.custom:
ms.subservice: mdo
ms.service: microsoft-365-security
---

# View mail flow reports in the Reports dashboard in Security & Compliance Center

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
>
> Most of the reports in this article are also available in the Microsoft 365 Defender portal or the Exchange admin center (EAC). For more information, see the following topics:
>
> - [Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports)
> - [View email security reports in the Microsoft 365 Defender portal](view-email-security-reports.md)

In addition to the mail flow reports that are available in the [Mail flow dashboard](mail-flow-insights-v2.md) in the Security & Compliance Center, a variety of additional mail flow reports are available in the Reports dashboard to help you monitor your Microsoft 365 organization.

If you have the [necessary permissions](#what-permissions-are-needed-to-view-these-reports), you can view these reports in the Security & Compliance Center at <https://protection.office.com> by going to **Reports** \> **Dashboard**. To go directly to the Reports dashboard, open <https://protection.office.com/insightdashboard>.

:::image type="content" source="../../media/6b213d34-adbb-44af-8549-be9a7e2db087.png" alt-text="The Reports dashboard in the Security & Compliance Center" lightbox="../../media/6b213d34-adbb-44af-8549-be9a7e2db087.png":::

## Connector report

> [!NOTE]
> This report has been replaced by the **Inbound messages report** and the **Outbound messages report** in the EAC. For more information, see [Inbound messages and Outbound messages reports in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-inbound-messages-and-outbound-messages-reports).

## Exchange transport rule report

The **Exchange transport rule report** shows the effect of mail flow rules (also known as transport rules) on incoming and outgoing messages in your organization.

To view the report, open the Security & Compliance Center at <https://protection.office.com>, go to **Reports** \> **Dashboard** and select **Exchange Transport rule**. To go directly to the report, open <https://security.microsoft.com/reports/ETRRuleReport>.

:::image type="content" source="../../media/scc-transport-rule-report-widget.png" alt-text="The Exchange transport rule widget in the Reports dashboard" lightbox="../../media/scc-transport-rule-report-widget.png":::

> [!NOTE]
> The **Exchange transport rule report** is now available in the EAC. For more information, see [Exchange transport rule report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-exchange-transport-rule-report).

## Forwarding report

> [!NOTE]
> The **Forwarding report** is now available in the EAC. For more information, see [Auto forwarded messages report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report).

## Mailflow status report

The **Mailflow status report** is similar to the [Sent and received email report](#sent-and-received-email-report), with additional information about email allowed or blocked on the edge. This is the only report that contains edge protection information, and shows just how much email is blocked before being allowed into the service for evaluation by Exchange Online Protection (EOP). It's important to understand that if a message is sent to five recipients we count it as five different messages and not one message.

To view the report, open the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** and select **Mailflow status report**. To go directly to the **Mail flow status report**, open <https://security.microsoft.com/reports/mailflowStatusReport>.

:::image type="content" source="../../media/scc-mail-flow-status-report-widget.png" alt-text="The Mailflow status report widget in the Reports dashboard" lightbox="../../media/scc-mail-flow-status-report-widget.png":::

> [!NOTE]
> Clicking on the widget for this report in the Security & Compliance Center (protection.office.com) now takes you to the full report in the Microsoft 365 Defender portal (security.microsoft.com). For details about the report, see [Mailflow status report](view-email-security-reports.md#mailflow-status-report).

## Sent and received email report

> [!NOTE]
> This report has been replaced by the [Mailflow status report](#mailflow-status-report).

## Top senders and recipients report

The **Top senders and recipients** shows the top messages senders in your organization, as well as the top recipients for messages that were detected by EOP and Defender for Office 365 protection features.

To view the report, open the Security & Compliance Center at <https://protection.office.com>, go to **Reports** \> **Dashboard** and select **Top senders and recipients**. To go directly to the report, open one of the following URLs:

- Defender for Office 365: <https://protection.office.com/TopSenderRecipientsATP>
- EOP: <https://protection.office.com/TopSenderRecipients>

:::image type="content" source="../../media/scc-top-senders-and-recipients-widget.png" alt-text="The Top senders and recipients widget in the Reports dashboard" lightbox="../../media/scc-top-senders-and-recipients-widget.png":::

> [!NOTE]
> Although clicking on the widget for this report in the Security & Compliance Center takes you to a protection.office.com page, the page content is from the Microsoft 365 Defender portal. For details about the report, see [Top senders and recipients report](view-email-security-reports.md#top-senders-and-recipients-report).

## What permissions are needed to view these reports?

In order to view and use the reports described in this article, you need to be a member of one of the following role groups in the Security & Compliance Center:

- **Organization Management**
- **Security Administrator**
- **Security Reader**
- **Global Reader**

For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

> [!NOTE]
> Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

