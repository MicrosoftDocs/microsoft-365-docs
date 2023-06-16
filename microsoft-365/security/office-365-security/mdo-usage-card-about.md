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
description: Learn about your organization’s active usage of MDO licenses versus the actual number of licenses purchased.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/30/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Usage card in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft Defender for Office 365 (MDO), usage card is available to help admins and SecOps teams understand their organization’s active usage of MDO licenses in comparison to the actual number of licenses purchased. This can encourage a license true-up.

> [!NOTE]
> The usage card is enabled for tenants with at least one paid Defender for Office 365 Plan 1 (P1) or Defender for Office 365 Plan 2 (P2) license.

Usage cards can help determine:

- Active usage of Exchange licenses and how many of those are active usage of MDO. 

- Breakdown of active usage across key P1 and P2 capabilities (P1 = prevention and detection, P2 = Security Operations capabilities). 

- Number of active purchased P1 and P2 licenses. 

## View the usage card

The usage card is available in the Microsoft 365 Defender portal at https://security.microsoft.com. Go to **Reports** > **Email & collaboration reports and insights**. You’ll find Defender for Office 365 usage under the **Email & collaboration insights** section. Or, to go directly to the **Email & collaboration reports and insights** page, use https://security.microsoft.com/emailandcollabreport.

In the usage card for the global and billing admins, there’s a **Add more licenses** link at the bottom of the card, which takes you to the billing portal to purchase more licenses for your organization.

[Add image]

The **See licensing details** option is available only for global and billing admins. For security admins, SecOps, and security readers, this option isn't available.  

## Understand the usage details

To learn more about the active user count, license details, and other information, select **Show details** on the usage card. A flyout opens that shows data from the last 28 days.  

[Add image]

The **Details** flyout contains the following information:

Number of active users in your organization and P2 licenses.

- Specific count of active users of Safe Links or Safe Attachments for Office 365. 

- Specific count of active users of Safe Links or Safe Attachments for emails.

- Specific count of active users of Safe Links for Teams. 

- Number of active users who triggered manual or automated investigation.

- Number of active users for whom remediation action were triggered.

- Number of active users targeted by phishing simulation training.

- Threat protection status report.

- Add more licenses (admins and SecOps teams only).  

Click **See licensing details** to go to the billing page to purchase more licenses. Or, click **Close** to exit the flyout.

## Usage card FAQ

### What are the different types of active users?

There are three types of active users:

- **Defender for Office 365 active users**: The distinct user count with active usage of MDO (P1 and/or P2 features) over a rolling 28 days for a given paid MDO tenant.

- **Active users**: The distinct user count with active usage of Exchange over the past 28 days for a given paid MDO tenant.

- **Other active users**: Active users without the MDO active users.  

### What is a usage count?

Usage counts can be determined in the following way:

- **Users with office protection**: Distinct count of active users of Safe Links for Office or Safe Attachments for Office.

- **Users with email protection**: Distinct count of active users of Safe Links for Email or Safe Attachments for Email.

- **Users for whom manual and automated investigations were triggered**: Manual investigations triggered from Threat Explorer or Auto investigations actions approved or rejected by SecOps in Incidents or Action Center. 

- **Users for whom remediations were triggered**: Manual remediations in Threat Explorer, Email entity, Advanced Hunting, Automation or Action Center. 

- **Users targeted by phishing simulation training**: Users who were targeted as part of simulations over past 28 days. 

### What does Collecting license and usage data status mean?

If you see the following status in your usage card, it means Microsoft is still collecting your current licensing and usage data. When it's available, you'll be able to see the full usage card and other details.

[Add image]

### Why does it still show overage even though I don't have any MDO P2 license and no usage of SecOps capabilities?

If you have overage across Prevention and detection (MDO P1) features, you can remediate this overage by purchasing more MDO P1 licenses.
