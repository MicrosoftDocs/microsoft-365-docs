---
title: Enable the evaluation environment for Microsoft Defender for Office 365 in your production environment
description: Steps to activate Microsoft Defender for Office 365 evaluation, with trial licenses, MX record handling, & auditing of accepted domains and inbound connections.
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
ms.date: 07/01/2021
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

# Enable the evaluation environment

**Applies to:**
- Microsoft 365 Defender

This article is [Step 2 of 3](eval-defender-office-365-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Office 365. For more information about this process, see the [overview article](eval-defender-office-365-overview.md).

Use the following steps to enable the evaluation for Microsoft Defender for Office 365.

:::image type="content" source="../../media/defender/m365-defender-office-eval-enable-steps.png" alt-text="The steps to enable Microsoft Defender for Office 365 in the Microsoft Defender evaluation environment" lightbox="../../media/defender/m365-defender-office-eval-enable-steps.png":::

- [Step 1: Activate trial licenses](#step-1-activate-trial-licenses)
- [Step 2: Audit and verify the public MX record](#step-2-audit-and-verify-the-public-mx-record)
- [Step 3: Audit accepted domains](#step-3-audit-accepted-domains)
- [Step 4: Audit inbound connectors](#step-4-audit-inbound-connectors)
- [Step 5: Activate the evaluation](#step-5-activate-the-evaluation)

## Step 1: Activate trial licenses

Log on to your existing Microsoft Defender for Office 365 environment or tenant administration portal.

1. Navigate to the administration portal.
2. Select Purchase Services from the quick launch.

   :::image type="content" source="../../media/mdo-eval/1_m365-purchase-services.png" alt-text="The  Purchase services option to be clicked in the Microsoft 365 admin center" lightbox="../../media/mdo-eval/1_m365-purchase-services.png":::

3. Scroll down to the Add-On section (or search for "Defender") to locate the Microsoft Defender for Office 365 plans.
4. Click Details next the plan you want to evaluate.

   :::image type="content" source="../../media/mdo-eval/2_mdo-eval-license-details.png" alt-text="The Details button to be clicked" lightbox="../../media/mdo-eval/2_mdo-eval-license-details.png":::

5. Click the *Start free trial* link.

   :::image type="content" source="../../media/mdo-eval/3-m365-purchase-button.png" alt-text="The Start free trial hyperlink" lightbox="../../media/mdo-eval/3-m365-purchase-button.png":::

6. Confirm your request and click the *Try now* button.

   :::image type="content" source="../../media/mdo-eval/4_mdo-trial-order.png" alt-text="The Try now button" lightbox="../../media/mdo-eval/4_mdo-trial-order.png":::

## Step 2: Audit and verify the public MX record

To effectively evaluate Microsoft Defender for Office 365, it's important that inbound email is relayed through the Exchange Online Protection (EOP) instance associated with your tenant.

1. Log on to the M365 admin portal, expand Settings, and select Domains.
2. Select your verified email domain and click Manage DNS.
3. Make note of the MX record generated and assigned to your EOP tenant.
4. Access your external (public) DNS zone and check the primary MX record associated with your email domain.
    - *If your public MX record currently matches the assigned EOP address (e.g. tenant-com.mail.protection.outlook.com) then no further routing changes should be required*.
    - If your public MX record currently resolves to a third-party or on-premises SMTP gateway then additional routing configurations might be required.
    - If your public MX record currently resolves to on-premises Exchange then you might still be in a hybrid model where some recipient mailbox have not yet been migrated to EXO.

## Step 3: Audit accepted domains

1. Open the Exchange admin center at <https://admin.exchange.microsoft.com>.
1. Go to **Mail flow** \> **Accepted domains**.
1. From the list of accepted domains that have been added and verified in your tenant, make note of the **Domain type** value for your primary email domain:
    - If the domain type is **Authoritative** then it's assumed that all recipient mailboxes for your organization currently reside in Exchange Online.
    - If the domain type is **Internal Relay** then you might still be in a hybrid model where some recipient mailboxes still reside on-premises.

## Step 4: Audit inbound connectors

1. Open the Exchange admin center at <https://admin.exchange.microsoft.com>.
1. Go to **Mail flow** \> **Connectors**.
1. From the list of configured connectors, make note of any entries which are from **Partner Organization** and might correlate to a third-party SMTP gateway.
1. From the list of configured connectors, make note of any entries labeled **From your organization's email server** which might indicate that you are still in hybrid scenario.

## Step 5: Activate the evaluation

Use the instructions here to activate your Microsoft Defender for Office 365 evaluation from the Microsoft 365 Defender portal.

1. Log on to your tenant with an account that has access to the Microsoft 365 Defender portal.
2. Choose whether you want to make the **Microsoft 365 Defender portal** your default interface for Microsoft Defender for Office 365 administration (recommended).

   :::image type="content" source="../../media/mdo-eval/1_mdo-eval-activate-eval.png" alt-text="The Turn on in Settings button to lead to a centralized and improved Microsoft 365 Defender portal for administration" lightbox="../../media/mdo-eval/1_mdo-eval-activate-eval.png":::

3. From the navigation menu, select **Policies & Rules** under *Email & Collaboration*.

   :::image type="content" source="../../media/mdo-eval/2_mdo-eval-activate-eval.png" alt-text="The Policies & rules menu item to be clicked" lightbox="../../media/mdo-eval/2_mdo-eval-activate-eval.png":::

4. On the *Policy & Rules* dashboard, click **Threat Policies**.

   :::image type="content" source="../../media/mdo-eval/3_mdo-eval-activate-eval.png" alt-text="The Threat policies menu item to be clicked" lightbox="../../media/mdo-eval/3_mdo-eval-activate-eval.png":::

5. Scroll down to *Additional Policies* and select the **Evaluate Defender for Office 365** tile.

   :::image type="content" source="../../media/mdo-eval/4_mdo-eval-activate-eval.png" alt-text="The Eval Defender for Office 365 tile" lightbox="../../media/mdo-eval/4_mdo-eval-activate-eval.png":::

6. Now choose whether external email routes to Exchange Online directly, or to a third-party gateway or service, and click Next.

   :::image type="content" source="../../media/mdo-eval/5_mdo-eval-activate-eval.png" alt-text="The Routing settings pane in the Microsoft Defender for Office 365 portal" lightbox="../../media/mdo-eval/5_mdo-eval-activate-eval.png":::

7. If you use a third-party gateway, select the vendor name from the drop-down along with the inbound connector associated with that solution. When you've listed your answers, click Next.

   :::image type="content" source="../../media/mdo-eval/6-mdo-eval-activate-eval-settings.png" alt-text="The Third party or on-premises settings pane in the Microsoft Defender for Office 365 portal" lightbox="../../media/mdo-eval/6-mdo-eval-activate-eval-settings.png":::

8. Review your settings and click the **Create Evaluation** button.

   |Before|After|
   |:---:|:---:|
   |:::image type="content" source="../../media/mdo-eval/7-mdo-eval-activate-review.png" alt-text="The Review your settings pane in the Microsoft Defender for Office 365 portal" lightbox="../../media/mdo-eval/7-mdo-eval-activate-review.png":::|:::image type="content" source="../../media/mdo-eval/8-mdo-eval-activate-complete.png" alt-text="The Evaluation setup completion notification in the Microsoft Defender for Office 365 portal" lightbox="../../media/mdo-eval/8-mdo-eval-activate-complete.png":::|
   |

## Next steps

Step 3 of 3: Set up the pilot for Microsoft Defender for Office 365

Return to the overview for [Evaluate Microsoft Defender for Office 365](eval-defender-office-365-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
