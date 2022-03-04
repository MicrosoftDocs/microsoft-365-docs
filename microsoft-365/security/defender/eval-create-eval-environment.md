---
title: Create the Microsoft 365 Defender Evaluation Environment
description: Set up your Microsoft 365 Defender trial lab or pilot environment by activating trial licenses. Then set up Microsoft Defender for Identity (MDI) and all other M365D evaluations. Start your XDR cyber security journey here and take that test to production.
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
ms.localizationpriority: medium
manager: dansimp 
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-scenario
  - m365solution-evalutatemtp
ms.topic: how-to
ms.technology: m365d
---
# Create the Microsoft 365 Defender Evaluation Environment

Build out of this Microsoft Defender XDR solution happens in steps that are distributed through the rest of the series:

- [How to create the environment](eval-create-eval-environment.md)
- Set up or learn about each technology of this Microsoft XDR
    - [Microsoft Defender for Identity](eval-defender-identity-overview.md)
    - [Microsoft Defender for Office](eval-defender-office-365-overview.md)
    - [Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)
    - [Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)
- [How to investigate and respond using this XDR](eval-defender-investigate-respond.md)
- [Promote the trial environment to production](eval-defender-promote-to-production.md)
- [Back to the Overview](eval-overview.md)

There are two common ways to do this next step in evaluation. This series assumes you already have a production Microsoft 365 tenant, and will activate E5 trial licenses to evaluate Microsoft 365 Defender in *the current environment*. An in-place evaluation will let you keep any security methods with the purchase of licenses after the evaluation period.

The second is to  [Set up your Microsoft 365 Defender trial lab environment](setup-m365deval.md) for the purpose of evaluation. Note that it may not have many real signals from the business while in testing.

## To activate E5 trial licenses to evaluate Microsoft 365 Defender

1. Log on to your existing Microsoft 365 tenant administration portal.
2. Select **Purchase Services** from the navigation menu.
3. Scroll down to the Office 365 section and select **Details** button under Office 365 E5 license.

   :::image type="content" source="../../media/mdo-eval/2_mdo-eval-license-details.png" alt-text="The Office 365 section has a Details button to click.":::

4. Select **Start free trial** link.

   :::image type="content" source="../../media/mdo-eval/3-m365-purchase-button.png" alt-text="Click 'Start free trial' (there's a 35$ fee).":::

5. Confirm your request and click **Try now** button.

   :::image type="content" source="../../media/mdo-eval/4_mdo-trial-order.png" alt-text="There is a 'Try Now' button on the 'Check out, confirm your order' panel (for an Office 365 E5 trial of a month for 25 users).":::

## Next steps

[Enable Microsoft 365 for Identity](eval-defender-identity-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)