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
ms.topic: how to
ms.technology: m365d
---

# Enable the evaluation environment

**Applies to:**
- Microsoft 365 Defender

Microsoft Defender for Office 365 can be evaluated as part of a full E5 license of can be enabled as an add-on.

![Steps to enable Microsoft Defender for Office 365 in the Microsoft Defender evaluation environment](../../media/defender/m365-defender-office-eval-enable-steps.png)

## Step 1: Activate trial licenses

Log on to your existing Microsoft Defender for Office 365 environment or tenant administration portal.

**Contact RYAN CAIRNS to confirm the login roles needed.**

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

