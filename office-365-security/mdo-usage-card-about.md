---
title: Usage card in Microsoft Defender for Office 365
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.collection:
- m365-security
- tier2
ms.custom:
description: Learn about your organization's active usage of Microsoft Defender for Office 365 licenses versus the actual number of licenses purchased.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 1/17/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Usage card in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365, the usage card is available to help admins and Security Operations (SecOps) teams understand the usage of Defender for Office 365. Specifically, they can compare the active usage of Defender for Office 365 licenses vs the actual number of available licenses.

> [!TIP]
> The usage card is enabled for tenants with at least one paid Defender for Office 365 Plan 1 or Defender for Office 365 Plan 2 license.

Usage cards can help determine the following scenarios:

- The active usage of Exchange Online licenses and how many of those licenses are active usage of Microsoft Defender for Office 365.
- A Breakdown of active usage across key Plan 1 and Plan 2 capabilities (Plan 1: protection and detection; Plan 2: SecOps capabilities).
- The Number of active Plan 1 and Plan 2 licenses purchased.

## View the usage card

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** section \> **Email & collaboration reports**. Or, to go directly to the **Email & collaboration reports and insights** page, use <https://security.microsoft.com/emailandcollabreport>.

2. On the **Email & collaboration reports and insights** page, go to the **Email & collaboration insights** section, and find the **Defender for Office 365 usage** card.

   :::image type="content" source="../../media/usage-card-mdo.png" alt-text="The Defender for Office 365 usage card in the Defender portal." lightbox="../../media/usage-card-mdo.png":::

For members of **Global Administrator** or **Billing Administrator** roles in [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles), following items are available on the card:

- **Add more licenses**
- **See licensing details**

These items aren't available for member of **Global Reader**, **Security Administrator**, **Security Operator**, or **Security Reader** roles.

## Understand usage details

On the **Defender for Office 365 usage** card, select **Show details**.

:::image type="content" source="../../media/usage-card-detail-flyout.png" alt-text="The details flyout of the Defender for Office 365 usage card in the Defender portal." lightbox="../../media/usage-card-detail-flyout.png":::

The details flyout that opens contains the following information from the last 28 days:

- The number of active users in the organization and the number of Plan 2 licenses.
- **Configured prevention and detection** section:
  - **Users with Office protection**: The number of active users of Safe Links or Safe Attachments for Office 365.
  - **Users with email protection**: The number of active users of Safe Links or Safe Attachments for emails.
  - **Users with Teams protection**: The number of active users of Safe Links for Teams.
- **Security  Operations capabilities** section: The number of active users for the following categories:
  - **Users for whom manual and automated investigations were triggered**.
  - **Users for whom remediations were triggered**.
  - **Users targeted by phishing simulation training**.

**Threat protection status report** takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).

**See licensing details** is available for members of the **Global Administrators** or **Security Operator** roles in [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles).

## Frequently asked questions

### What are the different types of active users?

There are three types of active users:

- **Defender for Office 365 active users**: The distinct user count with active usage of Microsoft Defender for Office 365 Plan 1 and/or Plan 2 licenses over a period of 28 days for a specific paid Microsoft Defender for Office 365 tenant.
- **Active users**: The distinct user count with active usage of licenses over the past 28 days for a specific paid Microsoft Defender for Office 365 tenant.
- **Other active users**: Active users without the Microsoft Defender for Office 365 active users.

### What is the usage count?

Usage count can be determined by:

- **Users with Office 365 protection**: Distinct count of active users of Safe Links for Office 365 or Safe Attachments for Office 365.
- **Users with email protection**: Distinct count of active users of Safe Links for email or Safe Attachments for email.
- **Users for whom manual and automated investigations were triggered**: Manual investigations triggered from Threat Explorer or auto investigations actions approved or rejected by SecOps in Incidents or in Action center.
- **Users for whom remediations were triggered**: Manual remediations in Threat Explorer, Email entity, Advanced Hunting, Automation, or Action center.
- **Users targeted by phishing simulation training**: Users who were targeted as part of simulations over past 28 days.

### I have Defender for Office 365 Plan 1 or Plan 2 paid license. Why can I not see the usage card?

If you have at least one Defender for Office 365 Plan 1 or Plan 2 license, but you're still unable to see the card because of one of the following reasons:

- You don't have the required role to be able to view the card.
- Your organization had no active usage in the past 28 days.

### What does Collecting license and usage data status mean?

If you see **Collecting license and usage data** status in your usage card, it means Microsoft is still collecting your current licensing and usage data. When it's available, you can see the full usage card and other details.

:::image type="content" source="../../media/usage-card-collecting-data.png" alt-text="Screenshot of the usage card showing the collecting data status." lightbox="../../media/usage-card-collecting-data.png":::

### Why does it still show overage even though you don't have any Microsoft Defender for Office 365 Plan 2 license and no usage of SecOps capabilities?

If you have overage across Microsoft Defender for Office 365 Plan 1 licenses offering protection and detection, you can remediate this overage by purchasing more Microsoft Defender for Office 365 Plan 1 licenses.
