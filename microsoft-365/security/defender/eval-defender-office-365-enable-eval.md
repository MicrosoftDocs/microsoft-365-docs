---
title: Enable the evaluation environment
description: Steps to activate Microsoft Defender for Office365 evaluation, with trial licenses, MX record handling, & auditing of accepted domains and inbound connections.
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
ms.date: 05/25/2021
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

# Enable the evaluation environment

**Applies to:**
- Microsoft 365 Defender

[Step 1: Activate trial licenses](#step-1-activate-trial-licenses)
[Step 2: Audit and verify the public MX record](#step-2-audit-and-verify-the-public-mx-record)
[Step 3: Audit accepted domains](#step-3-audit-accepted-domains)
[Step 4: Audit inbound connectors](#step-4-audit-inbound-connectors)

Microsoft Defender for Office 365 can be evaluated as part of a full E5 license of can be enabled as an add-on.

![Steps to enable Microsoft Defender for Office 365 in the Microsoft Defender evaluation environment](../../media/defender/m365-defender-office-eval-enable-steps.png)

## Step 1: Activate trial licenses

Log on to your existing Microsoft Defender for Office 365 environment or tenant administration portal.

<!--**Contact RYAN CAIRNS to confirm the login roles needed.**-->

1. Navigate to the administration portal.
2. Select Purchase Services from the quick launch.

:::image type="content" source="../../media/MDOEval/1-mdo-eval-one.png" alt-text="Click Purchase services on the navigation pane of Office 365.":::

3.	Scroll down to the Add-On section (or search for "Defender") to locate the Microsoft Defender for Office 365 plans.
4.	Click Details next the plan you want to evaluate.

:::image type="content" source="../../media/MDOEval/2-mdo-eval-two.png" alt-text="Click the Details button, next.":::

5. Click the *Start free trial* link.

:::image type="content" source="../../media/MDOEval/3-mdo-eval-three.png" alt-text="Click the Start free trial *hyperlink* on this panel.":::

6. Confirm your request and click the *Try now* button.

:::image type="content" source="../../media/MDOEval/4-mdo-eval-four.png" alt-text="Now click the Try now *button*.":::

## Step 2: Audit and verify the public MX record

To effectively evaluate Microsoft Defender for Office 365, it's important that inbound external email be relayed through the Exchange Online Protection (EOP) instance associated with your tenant.

1. Log on to the M365 Admin Portal, expand Settings, and select Domains.
2. Select your verified email domain and click Manage DNS.
3. Make note of the MX record generated and assigned to your EOP tenant.
4. Access your external (public) DNS zone and check the primary MX record associated with your email domain.
    - *If your public MX record currently matches the assigned EOP address (e.g. tenant-com.mail.protection.outlook.com) then no further routing changes should be required*.
    - If your public MX record currently resolves to a third-party or on-premises SMTP gateway then additional routing configurations may be required.
    - If your public MX record currently resolves to on-premises Exchange then you may still be in a hybrid model where some recipient mailbox have not yet been migrated to EXO.

## Step 3: Audit accepted domains

1. Log on the Exchange Online Admin Portal, select Mail Flow, and then click Accepted Domains.
2. From the list of accepted domains that have been added and verified in your tenant, make note of the **domain type** for your primary email domain.
    - If the domain type is set to ***Authoritative*** then it is assumed all recipient mailboxes for your organization currently reside in Exchange Online.
    - If the domain type is set to ***Internal Relay*** then you may still be in a hybrid model where some recipient mailboxes still reside on-premises.

## Step 4: Audit inbound connectors

1. Log on the Exchange Online Admin Portal, select Mail Flow, and then click Connectors.
2. From the list of configured connectors, make note of any entries which are from **Partner Organization** and may correlate to a third-party SMTP gateway.
3. From the list of configured connectors, make note of any entries labeled **From your organization's email server** which may indicate that you are still in hybrid scenario.

## Step 5: Activate the evaluation

Use the instructions here to activate your Microsoft Defender for Office 365 evaluation from the Microsoft 365 security center.

1. Log on to your tenant with an account that has access to the Microsoft 365 security center.
2. Choose whether you want to make the **Microsoft 365 security center** your default interface for Microsoft Defender for Office 365 administration (recommended).

:::image type="content" source="../../media/MDOEval/1-mdo-eval-activate-eval.PNG" alt-text="Click the Turn on settings button to use the centralized and improved Microsoft 365 security center for administration.":::

3. From the navigation menu, select **Policies & Rules** under *Email & Collaboration*.

:::image type="content" source="../../media/MDOEval/2-mdo-eval-activate-eval.PNG" alt-text="Here's an Email & Collaboration menu picture pointing at Policies & rules. Click that!":::

4. On the *Policy & Rules* dashboard, click **Threat Policies**.

:::image type="content" source="../../media/MDOEval/3-mdo-eval-activate-eval.PNG" alt-text="Picture of the Policy & Rules dashboard and an arrow pointing at Threat policies. Click that next!":::

5. Scroll down to *Additional Policies* and select the **Evaluate Defender for Office 365** tile.

:::image type="content" source="../../media/MDOEval/4-mdo-eval-activate-eval.PNG" alt-text="The Eval Defender for Office 365 tile saying it's a 30 day trial across email & collaboration vectors. Click through.":::

6. Now choose whether external email routes to Exchange Online directly, or to a third-party gateway or service, and click Next.

:::image type="content" source="../../media/MDOEval/5-mdo-eval-activate-eval.PNG" alt-text="Defender for Office 365 will evaluate mail send to your Exchange Online mailboxes. Give the details of how your mail is routed now, including the name of the outbound connector that routs your mail. If you only use Exchange Online Protection (EOP) you won't have a connector. Choose one of I'm using a 3rd-party or on-premises provider, or I only use EOP.":::

7. If you use a third-party gateway, select the vendor name from the drop-down along with the inbound connector associated with that solution. When you've listed your answers, click Next.

:::image type="content" source="../../media/MDOEval/6-mdo-eval-activate-eval.PNG" alt-text="In this dialog, you choose the 3rd-party vendor service your organization is using, or select *Other*. In the next dialog down, select the inbound connector. Then click Next.":::

8. Review your settings and click the **Create Evaluation** button.

|  |  |
|---------|---------|
|  :::image type="content" source="../../media/MDOEval/7-mdo-eval-activate-eval.PNG" alt-text="This pane has a drop-down to review your settings. It also has a clickable link to Edit your Routing type if you need to. When you're ready click the big blue Create Evaluation button.":::   |   :::image type="content" source="../../media/MDOEval/8-mdo-eval-activate-eval.PNG" alt-text="And now the set up is complete. The blue button on this page says 'Go to Evaluation'.":::      |

### Navigation you may need

[**Return to the Eval Overview** 'Evaluate and pilot Microsoft 365 Defender' | Microsoft Docs](../office-365-security/defender/eval-overview.md) 
