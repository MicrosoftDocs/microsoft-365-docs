---
title: Try Microsoft Defender for Office 365
description:
keywords:
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection:
  - M365-security-compliance
ms.custom: 
ms.technology: mdo
ms.prod: m365-security
---

# Try Microsoft Defender for Office 365 using evaluations or trials

The unified **Trials** portal in the Microsoft 365 Defender portal provides a single point of entry for existing Microsoft 365 customers for the trial and evaluation experiences for Microsoft Defender for Office 365. The intent is to allow you to try the features of Defender for Office 365 Plan 2 for 30 days before you fully commit to it. But, there are differences in eligibility for an evaluation vs. a trial of Defender for Office 365 based on the nature of your Microsoft 365 organization:

- **Evaluation**: You already have Microsoft 365 mailboxes, but you're currently using a third-party service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization, and Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

  ![Mail flows from the internet through the third-party protection service or device before delivery into Microsoft 365.](../../media/mdo-migration-before.png)

  You don't need to change your mail flow (MX records) for an evaluation.

- **Trial**: You already have a Microsoft 365 organization. Mail from the internet flows directly Microsoft 365, but your current subscription offers only [Exchange Online Protection (EOP)](exchange-online-protection-overview.md) or [Defender for Office 365 Plan 1](overview.md#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

  ![Mail flows from the internet into Microsoft 365, with protection from EOP and/or Defender for Office 365 Plan 1.](../../media/mdo-trial-mail-flow.png)

The rest of this article explains the details of evaluations and trials for Defender for Office 365.

## Overview of Defender for Office 365

Defender for Office 365 helps organizations secure their enterprise by offering a comprehensive slate of capabilities. For more information, see [Microsoft Defender for Office 365](defender-for-office-365.md).

You can also learn more about Defender for Office 365 at this [interactive guide](https://aka.ms/MS365D.InteractiveGuide).

![Microsoft Defender for Office 365 conceptual diagram.](../../media/microsoft-defender-for-office-365.png)

## Policies in evaluations and trials

The policies that control the protection features of Microsoft 365 are present in both evaluations and trials:

- **Exchange Online Protection (EOP)**: No new or special policies are created for evaluations or trials. Existing EOP policies are able to act on messages (for example, send messages to the Junk Email folder or to quarantine):

  - [Anti-malware policies](anti-malware-protection.md)
  - [Inbound anti-spam protection](anti-spam-protection.md)
  - [Anti-spoofing protection in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings)

  The default policies for these features are always on, apply to all recipients, and are always applied after any custom policies.

- **Defender for Office 365**: Policies that are exclusive to Defender for Office 365 are created for both evaluations and trials:

  - [Safe Attachments for email messages](safe-attachments.md)
  - [Safe Links for email messages and Microsoft Teams](safe-links.md)
  - [Impersonation protection in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)

  But, the nature of these Defender for Office 365 policies are different in evaluations and trials:

  - **Evaluations**: Regular policies are created, but the policies are configured in *non-blocking* mode. Defender for Office 365 will *detect* harmful messages for reporting, but the messages won't be acted upon (for example, detected messages aren't quarantined).
  - **Trials**: Policies are created using the Standard template for [preset security policies](preset-security-policies.md). The policies are in *blocking* mode. Defender for Office 365 will *detect* and *act upon* harmful messages (for example, detected messages are quarantined).

  By default, these policies are scoped to all users in the organization, but during or after setup, you can change the policy assignment to specific users.

## Set up an evaluation

1. Click **Start evaluation**.

2. On the **Routing settings** page, choose one of the following options:

   - **I'm using a third party or on-premises service provider**
   - **I'm using Microsoft Exchange**

   By default, **Share data with Microsoft** is selected, but you can clear the check box if you like.

   When you're finished, click **Next**

   > [!NOTE]
   > If you select **I'm using Microsoft Exchange**, there's nothing for you to configure, so you're taken to the last step in the wizard.

3. On the **Third party or on-premises settings** page, configure the following settings:

   - **Select a third party service provider**: Select one of the following values:
     - **Barracuda**
     - **IronPort**
     - **Mimecast**
     - **Proofpoint**
     - **Sophos**
     - **Symantec**
     - **Trend Micro**
     - **Other**

   - **The connector to apply this evaluation to**: Select the connector that's used for mail flow into Microsoft 365.

     [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as *skip listing*) is automatically configured on the connector that you specify.

     When a third-party service or device sits in from of Microsoft 365, Enhanced Filtering for Connectors correctly identifies the source of internet messages, and greatly improves the accuracy of the Microsoft filtering stack (especially [spoof intelligence](anti-spoofing-protection.md), as well as post-breach capabilities in [Threat Explorer](threat-explorer.md) and [Automated Investigation & Response (AIR)](automated-investigation-response-office.md)).

   - **List each gateway IP address your messages pass through**: This setting is available only if you selected **Other** for **Select a third party service provider**. Enter a comma-separated list of the IP addresses that are used by the third-party protection service or device to send mail into Microsoft 365.

   When you're finished, click **Next**.

4. On the **Exchange mail flow rules** page, decide if you need an Exchange Online mail flow rule (also known as a transport rule) that skips spam filtering for incoming messages from the third-party protection service or device.

   It's likely that you already have a mail flow rule in Exchange Online that sets the spam confidence level (SCL) of all incoming mail from the service to the value -1 (bypass spam filtering) in order to skip spam filtering on incoming mail from the protection service. Most protection services encourage this SCL=-1 mail flow rule for Microsoft 365 customers who want to use their services.

   As explained in the previous step, Enhanced Filtering for Connectors is automatically configured on the connector that you specify as the source of mail from the protection service.

   Turning on Enhanced Filtering for Connectors without an SCL=-1 rule for incoming mail from the protection service will vastly improve the detection capabilities of EOP protection features like [spoof intelligence](anti-spoofing-protection.md), and could impact the delivery of those newly-detected message (for example, move to the Junk Email folder or to quarantine). This impact is limited to EOP policies; as previously explained, Defender for Office 365 policies are created in non-blocking mode.

   To create an SCL=-1 mail flow rule or to review your existing rules, click the **Go to Exchange admin center** button on the page. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

   When you're finished, click **Next**.

5. On the **Review your settings** page, you can review the details of your evaluation.

   You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Create evaluation**.

## Set up a trial
