---
title: Enable the evaluation environment for Microsoft Defender for Office 365 in your production environment
description: Steps to activate Microsoft Defender for Office 365 evaluation, with trial licenses, MX record handling, & auditing of accepted domains and inbound connections.
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
ms.date: 09/01/2021
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

# Enable the evaluation environment

**Applies to:**
- Microsoft 365 Defender

This article is [Step 2 of 3](eval-defender-office-365-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Office 365. For more information about this process, see the [overview article](eval-defender-office-365-overview.md).

Use the following steps to enable the evaluation for Microsoft Defender for Office 365.

:::image type="content" source="../../media/defender/m365-defender-office-eval-enable-steps.png" alt-text="The steps to enable Microsoft Defender for Office 365 in the Microsoft Defender evaluation environment." lightbox="../../media/defender/m365-defender-office-eval-enable-steps.png":::

- [Step 1: Audit and verify the public MX record](#step-1-audit-and-verify-the-public-mx-record)
- [Step 2: Audit accepted domains](#step-2-audit-accepted-domains)
- [Step 3: Audit inbound connectors](#step-3-audit-inbound-connectors)
- [Step 4: Activate the evaluation](#step-4-activate-the-evaluation)

## Step 1: Audit and verify the public MX record

To effectively evaluate Microsoft Defender for Office 365, it's important that inbound external email is relayed through the Exchange Online Protection (EOP) instance associated with your tenant.

1. In the M365 Admin Portal at <https://admin.microsoft.com>, expand *...Show all* if necessary, expand *Settings*, and then select **Domains**. Or, to go directly to the *Domains* page, use <https://admin.microsoft.com/Adminportal/Home#/Domains>.
2. On the *Domains* page, select your verified email domain by clicking anywhere on the entry other than the check box.
3. In the domain details flyout that opens, select the **DNS records** tab. Make note of the MX record that's generated and assigned to your EOP tenant.
4. Access your external (public) DNS zone and check the primary MX record associated with your email domain:
    - *If your public MX record currently matches the assigned EOP address (for example, contoso-com.mail.protection.outlook.com) then no further routing changes should be required*.
    - If your public MX record currently resolves to a third-party or on-premises SMTP gateway, then additional routing configurations may be required.
    - If your public MX record currently resolves to on-premises Exchange, then you may still be in a hybrid model where some recipient mailboxes haven't yet been migrated to EXO.

## Step 2: Audit accepted domains

1. In the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com>, expand *Mail flow*, and then click **Accepted domains**.Or, to go directly to the *Accepted domains* page, use <https://admin.exchange.microsoft.com/#/accepteddomains>.
2. On the *Accepted domains* page, make note of the **Domain type** value for your primary email domain.
    - If the domain type is set to **Authoritative**, then it's assumed all recipient mailboxes for your organization currently reside in Exchange Online.
    - If the domain type is set to **InternalRelay**, then you may still be in a hybrid model where some recipient mailboxes still reside on-premises.

## Step 3: Audit inbound connectors

1. In the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com>, expand *Mail flow*, and then click **Connectors**. Or, to go directly to the *Connectors* page, use <https://admin.exchange.microsoft.com/#/connectors>.
2. On the *Connectors* page, make note of any connectors with the following settings:
   - The **From** value is **Partner org** that might correlate to a third-party SMTP gateway.
   - The **From** value is **Your org** that might indicate you're still in a hybrid scenario.

## Step 4: Activate the evaluation

Use the instructions here to activate your Microsoft Defender for Office 365 evaluation from the Microsoft 365 Defender portal.

For detailed information, see [Try Microsoft Defender for Office 365](../office-365-security/try-microsoft-defender-for-office-365.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, expand *Email & collaboration* \> select **Policies & rules** \> select **Threat policies** \> scroll down to the *Others* section, and then select **Evaluation mode**. Or, to go directly to the *Evaluation mode* page, use <https://security.microsoft.com/atpEvaluation>.

2. On the *Evaluation mode* page, click **Start evaluation**.

   :::image type="content" source="../../media/mdo-eval/mdo-eval-activate-eval_05.png" alt-text="The Evaluation mode page and the Start evaluation button to click." lightbox="../../media/mdo-eval/mdo-eval-activate-eval_05.png":::

3. In the *Turn on protection* dialog, select **No, I only want reporting**, and then click **Continue**.

   :::image type="content" source="../../media/mdo-eval/mdo-eval-activate-eval_06.png" alt-text="The Turn on protection dialog and the No, I only want reporting option to select." lightbox="../../media/mdo-eval/mdo-eval-activate-eval_06.png":::

4. In the *Select the users you want to include* dialog, select **All users**, and then click **Continue**.

   :::image type="content" source="../../media/mdo-eval/mdo-eval-activate-eval_07.png" alt-text="The Select the users you want to include dialog and the All users option to select." lightbox="../../media/mdo-eval/mdo-eval-activate-eval_07.png":::

5. In the *Help us understand your mail flow* dialog, one of the following options is automatically selected based on our detection of the MX record for your domain:

   - **I'm only using Microsoft Exchange Online**: The MX records for your domain point to Microsoft 365. There's nothing left to configure, so click **Finish**.

     :::image type="content" source="../../media/mdo-eval/mdo-eval-activate-eval_08a.png" alt-text="The Help us understand your mail flow dialog with the I'm only using Microsoft Exchange Online option selected." lightbox="../../media/mdo-eval/mdo-eval-activate-eval_08a.png":::

   - **I'm using a third-party and/or on-premises service provider**: In the upcoming screens, select the vendor name along with the inbound connector that accepts mail from that solution. You also decide if you need an Exchange Online mail flow rule (also known as a transport rule) that skips spam filtering for incoming messages from the third-party protection service or device. When you're finished, click **Finish**.

## Next steps

Step 3 of 3: Set up the pilot for Microsoft Defender for Office 365

Return to the overview for [Evaluate Microsoft Defender for Office 365](eval-defender-office-365-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
