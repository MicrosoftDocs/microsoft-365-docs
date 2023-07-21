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
description: Learn about your organization’s active usage of Microsoft Defender for Office 365 licenses versus the actual number of licenses purchased.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/30/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Usage card in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft Defender for Office 365, the usage card is available to help admins and Security Operations (SecOps) teams understand their organization’s active usage of Defender for Office 365 licenses in comparison to the actual number of licenses purchased.

> [!NOTE]
> The usage card is enabled for tenants with at least one paid Defender for Office 365 plan 1 (P1) or Defender for Office 365 plan 2 (P2) license.

Usage cards can help determine:

- Active usage of Exchange Online licenses and how many of those are active usage of Microsoft Defender for Office 365. 

- Breakdown of active usage across key P1 and P2 capabilities (P1: protection and detection; P2: SecOps capabilities). 

- Number of active P1 and P2 licenses that are purchased.

## View the usage card

The usage card is available in the Microsoft 365 Defender portal at https://security.microsoft.com. Go to **Reports** > **Email & collaboration reports and insights**. You’ll find Defender for Office 365 usage under the **Email & collaboration insights** section. Or, to go directly to the **Email & collaboration reports and insights** page, use https://security.microsoft.com/emailandcollabreport.

In the usage card for the global and billing admins, there’s a **Add more licenses** link at the bottom of the card, which takes you to the billing portal to purchase more licenses for your organization.

:::image type="content" source="../../media/usage-card-mdo.png" alt-text="Screenshot of the usage card in Defender for Office 365." lightbox="../../media/usage-card-mdo.png":::

The **See licensing details** option is available only for global and billing admins. For global readers, security admins, SecOps, and security readers, this option isn't available.  

## Understand the usage details

To learn more about the active user count, license details, and other information, select **Show details** on the usage card. A flyout opens that shows data from the last 28 days.  

:::image type="content" source="../../media/usage-card-detail-flyout.png" alt-text="Screenshot of the usage card flyout." lightbox="../../media/usage-card-detail-flyout.png":::

The **Details** flyout contains the following information:

- Number of active users in your organization and P2 licenses.

- Specific count of active users of Safe Links or Safe Attachments for Office 365. 

- Specific count of active users of Safe Links or Safe Attachments for emails.

- Specific count of active users of Safe Links for Teams. 

- Number of active users who triggered manual or automated investigation.

- Number of active users for whom remediation action were triggered.

- Number of active users targeted by phishing simulation training.

- Threat protection status report.

- Add more licenses (admins and SecOps teams only).  

Click **See licensing details** to go to the billing page to purchase more licenses. Or, click **Close** to exit the flyout.

## Frequently asked questions

### What are the different types of active users?

There are three types of active users:

- **Defender for Office 365 active users**: The distinct user count with active usage of Microsoft Defender for Office 365 P1 and/or P2 licenses over a period of 28 days for a specific paid Microsoft Defender for Office 365 tenant.

- **Active users**: The distinct user count with active usage of licenses over the past 28 days for a specific paid Microsoft Defender for Office 365 tenant.

- **Other active users**: Active users without the Microsoft Defender for Office 365 active users.  

### What is the usage count?

Usage count can be determined by:

- **Users with Office 365 protection**: Distinct count of active users of Safe Links for Office 365 or Safe Attachments for Office 365.

- **Users with email protection**: Distinct count of active users of Safe Links for email or Safe Attachments for email.

- **Users for whom manual and automated investigations were triggered**: Manual investigations triggered from Threat Explorer or auto investigations actions approved or rejected by SecOps in Incidents or in Action center. 

- **Users for whom remediations were triggered**: Manual remediations in Threat Explorer, Email entity, Advanced Hunting, Automation, or Action center. 

- **Users targeted by phishing simulation training**: Users who were targeted as part of simulations over past 28 days. 

### I have Defender for Office 365 P1 or P2 paid license. Why can I not see the usage card?

If you have at least one Defender for Office 365 P1 or P2 license, but you're still unable to see the card because of one of the following reasons:

- You don't have the required role to be able to view the card.

- Your organization had no active usage in the past 28 days.

### What does Collecting license and usage data status mean?

If you see **Collecting license and usage data** status in your usage card, it means Microsoft is still collecting your current licensing and usage data. When it's available, you'll be able to see the full usage card and other details.

:::image type="content" source="../../media/usage-card-collecting-data.png" alt-text="Screenshot of the usage card showing the collecting data status." lightbox="../../media/usage-card-collecting-data.png":::

### Why does it still show overage even though you don't have any Microsoft Defender for Office 365 P2 license and no usage of SecOps capabilities?

If you have overage across Microsoft Defender for Office 365 P1 licenses offering protection and detection, you can remediate this overage by purchasing more Microsoft Defender for Office 365 P1 licenses.
