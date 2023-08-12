---
title: Create the Microsoft 365 Defender Evaluation Environment for greater cyber security and XDR
description: Learn what's included in the Microsoft 365 Defender XDR you will evaluate, and se up your Microsoft 365 Defender trial lab or pilot environment by activating trial licenses. Start your XDR cyber security journey here and learn how to take that test to production.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
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
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: how-to
---
# Step 1. Create the Microsoft 365 Defender Evaluation Environment for greater cyber security

You can learn about and build out this Microsoft Defender XDR solution in steps that are distributed through the rest of this series:

- [How to create the environment](eval-create-eval-environment.md)
- Set up or learn about each technology of this Microsoft XDR
    - [Microsoft Defender for Identity](eval-defender-identity-overview.md)
    - [Microsoft Defender for Office](eval-defender-office-365-overview.md)
    - [Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)
    - [Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)
- [How to investigate and respond using this XDR](eval-defender-investigate-respond.md)
- [Promote the trial environment to production](eval-defender-promote-to-production.md)
- [Back to the Overview](eval-overview.md)

The steps in this series run end-to-end, from learning the concepts behind the Microsoft 365 Defender XDR to building it, and into taking the evaluation environment live to production.

There are two common ways to do this next step in evaluation. This series assumes you already have a production Microsoft 365 tenant and will activate E5 trial licenses to evaluate Microsoft 365 Defender in *the current environment*. An in-place evaluation will let you keep any security methods with the purchase of licenses after the evaluation period.

The second is to  [Set up your Microsoft 365 Defender trial lab environment](setup-m365deval.md) for the purpose of evaluation. Note that it may not have many real signals from the business while in testing.

## You will need to activate E5 trial licenses to evaluate Microsoft 365 Defender

1. Log on to your existing Microsoft 365 tenant administration portal.
2. Select **Purchase Services** from the navigation menu.
3. Scroll down to the Office 365 section and select **Details** button under Office 365 E5 license.

   :::image type="content" source="../../media/mdo-eval/2_mdo-eval-license-details.png" alt-text="The Details button in the Microsoft 365 Defender portal" lightbox="../../media/mdo-eval/2_mdo-eval-license-details.png":::

4. Select **Start free trial** link.

   :::image type="content" source="../../media/mdo-eval/3-m365-purchase-button.png" alt-text="The Start free trial button in the Microsoft 365 Defender portal" lightbox="../../media/mdo-eval/3-m365-purchase-button.png":::

5. Confirm your request and click **Try now** button.

   :::image type="content" source="../../media/mdo-eval/4_mdo-trial-order.png" alt-text="The Try Now button in the Microsoft 365 Defender portal" lightbox="../../media/mdo-eval/4_mdo-trial-order.png":::

## Go to the next step

[Learn how to enable Microsoft 365 for Identity](eval-defender-identity-overview.md)

Or return to the Overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
