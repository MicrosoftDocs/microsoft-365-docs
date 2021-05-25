---
title: Create the Microsoft 365 Defender Evaluation Environment
description: Set up your Microsoft 365 Defender trial lab or pilot environment.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 05/19/2021
localization_priority: Normal
manager: dansimp 
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: how-to
ms.technology: m365d
---
# Create the Microsoft 365 Defender Evaluation Environment

- [**Return to the Eval Overview** 'Evaluate and pilot Microsoft 365 Defender' | Microsoft Docs](../office-365-security/defender/eval-overview.md) 
- [Establishing the Evaluation Environment](#establishing-the-evaluation-environment)
- [What's next?](#whats-next)

There are two common ways to do this next step in evaluation. This document assumes you already have a production M365 tenant, and will activate E5 trial licenses to evaluate M365 Defender in *the current environment* in order to ultimately retain these features with the purchase of licenses after the evaluation period.

The second is to [build an environment from scratch](m365d-evaluation.md) for the purpose of evaluation. It may not have many real signals from the business, so be aware of that caveat.

1. Logon to your existing M365 tenant administration portal.
2. Select "Purchase Services" from the navigation menu.

:::image type="content" source="../../media/MDOEval/1. One.PNG" alt-text="Selecting Billing > Purchase Services on the left navigation bar in the Microsoft 365 admin center.":::

3. Scroll down to the "Office 365" section and click "Details" button under Office 365 E5 license.

:::image type="content" source="../../media/MDOEval/2. Two.PNG" alt-text="The Office 365 section has a Details button to click.":::

4. Click "Start free trial" link.

:::image type="content" source="../../media/MDOEval/3. Three.PNG" alt-text="Click 'Start free trial' (there's a 35$ fee).":::

5. Confirm your request and click "Try now" button.

:::image type="content" source="../../media/MDOEval/4. Four.PNG" alt-text="There is a 'Try Now' buttong on the 'Check out, confirm your order' panel (for a Office 365 E5 trial of a month for 25 users).":::

## What's next?

It's recommended you begin with Microsoft Defender for Identity, and move on from there as shown (left to right) in the table below. But begin where your own assessment of your organization's determine is best for your implementation.

<!-- Dividing this up by Intent, the next step should be to Enable Eval, then Pilot, then Invest & Respond. The reference material of Architecture et cetera, can come afterward in the same section. This table should link off to Enable Eval for MDO and the transitions from there to pilot et al should be seamless. -->

|  |  | |  |
|---------|---------|---------|---------|
|**Microsoft Defender for Identity**      |      **Microsoft Defender for Office 365**  |     **Microsoft Defender for Endpoint**    |    **Microsoft Cloud App Security**     |
|  MDI  |    [MDO](/microsoft-365/security/defender/eval-defender-office365-enable-eval)     |    MDE     |   MCAS      |

### Navigation you may need

[**Return to the Eval Overview** 'Evaluate and pilot Microsoft 365 Defender' | Microsoft Docs](../office-365-security/defender/eval-overview.md) 