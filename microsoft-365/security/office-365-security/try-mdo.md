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

The unified **Trials** portal in the Microsoft 365 Defender portal provides a single point of entry for existing Microsoft 365 customers for the trial and evaluation experiences for Microsoft Defender for Office 365. The intent is to allow you to try the features of Defender for Office 365 Plan 2 for 30 days before you fully commit to it. But, there are differences in the available experiences for Defender for Office 365 based on the nature of your Microsoft 365 organization:

- You already have Microsoft 365 mailboxes, but you're currently using a third-party service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization, and Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

  ![Mail flows from the internet through the third-party protection service or device before delivery into Microsoft 365.](../../media/mdo-migration-before.png)

  In this type of environment, you can only do an evaluation of Defender for Office 365 in *non-blocking* mode. You don't need to change your mail flow (MX records) for the evaluation.

- You already have a Microsoft 365 organization. Mail from the internet flows directly Microsoft 365, but your current subscription has only [Exchange Online Protection (EOP)](exchange-online-protection-overview.md) or [Defender for Office 365 Plan 1](overview.md#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

  ![Mail flows from the internet into Microsoft 365, with protection from EOP and/or Defender for Office 365 Plan 1.](../../media/mdo-trial-mail-flow.png)

  In this type of environment, you can do a trial of Defender for Office 365 in *non-blocking* mode or in *blocking mode*.

The rest of this article explains the difference between blocking mode and non-blocking mode for Defender for Office 365, and how to configure evaluations and trials.

## Overview of Defender for Office 365

Defender for Office 365 helps organizations secure their enterprise by offering a comprehensive slate of capabilities. For more information, see [Microsoft Defender for Office 365](defender-for-office-365.md).

You can also learn more about Defender for Office 365 at this [interactive guide](https://aka.ms/MS365D.InteractiveGuide).

![Microsoft Defender for Office 365 conceptual diagram.](../../media/microsoft-defender-for-office-365.png)

## Policies in blocking mode and non-blocking mode

The policies that control the protection features of Microsoft 365 are present in evaluations and trials:

- **Exchange Online Protection (EOP)**: No new or special policies are created. Existing EOP policies are able to act on messages (for example, send messages to the Junk Email folder or to quarantine):

  - [Anti-malware policies](anti-malware-protection.md)
  - [Inbound anti-spam protection](anti-spam-protection.md)
  - [Anti-spoofing protection in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings)

  The default policies for these features are always on, apply to all recipients, and are always applied after any custom policies.

- **Defender for Office 365**: Policies that are exclusive to Defender for Office 365 are also created:

  - [Safe Attachments for email messages](safe-attachments.md)
  - [Safe Links for email messages and Microsoft Teams](safe-links.md)
  - [Impersonation protection in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)

  But, the nature of these Defender for Office 365 policies are different in blocking mode and non-blocking mode:

  - **Non-blocking mode**: Regular policies are created, but the policies are configured only to *detect* threats. Defender for Office 365 detects harmful messages for reporting, but the messages aren't acted upon (for example, detected messages aren't quarantined).

  - **Blocking mode**: Policies are created using the Standard template for [preset security policies](preset-security-policies.md). Defender for Office 365 *detects* and *takes action on* harmful messages (for example, detected messages are quarantined).

  The default and recommended selection is to scope these Defender for Office 365 policies to all users in the organization. But, during or after setup, you can change the policy assignment to specific users, groups, or email domains.

## Set up an evaluation

1. Click **Start evaluation**

2. In the **Turn on protection** dialog, select **No, I only want reporting**, and then click **Continue**.

3. In the **Select the users you want to include** dialog, configure the following settings:

   - **All users**: This is the default and recommended option.
   - **Select users**: If you select this option, you need to select who the evaluation applies to:
     - **Users**: The specified mailboxes, mail users, or mail contacts in your organization.
     - **Groups**: The specified distribution groups, mail-enabled security groups, or Microsoft 365 Groups in your organization.
     - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

     Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

     For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   > [!NOTE]
   > You can change these selections after you finish setting up the evaluation.

   When you're finished, click **Continue**.

4. In the **Help us understand your mail flow** dialog, configure the following options:

   - **Share data with Microsoft**: This option is selected by default, but you can clear the check box if you like.

   - One of the following options is automatically selected based on our detection of the MX record for your domain:

     - **I'm using a third-party and/or on-premises service provider**: The MX record for your domain points somewhere other than Microsoft 365. This selection requires the following additional settings after you click **Next**:

       1. In the **Third party or on-premises settings** dialog, configure the following settings:

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

       2. In the **Exchange mail flow rules** dialog, decide if you need an Exchange Online mail flow rule (also known as a transport rule) that skips spam filtering for incoming messages from the third-party protection service or device.

          It's likely that you already have a mail flow rule in Exchange Online that sets the spam confidence level (SCL) of all incoming mail from the service to the value -1 (bypass spam filtering) in order to skip spam filtering on incoming mail from the protection service. Most protection services encourage this SCL=-1 mail flow rule for Microsoft 365 customers who want to use their services.

          As explained in the previous step, Enhanced Filtering for Connectors is automatically configured on the connector that you specify as the source of mail from the protection service.

          Turning on Enhanced Filtering for Connectors without an SCL=-1 rule for incoming mail from the protection service will vastly improve the detection capabilities of EOP protection features like [spoof intelligence](anti-spoofing-protection.md), and could impact the delivery of those newly-detected message (for example, move to the Junk Email folder or to quarantine). This impact is limited to EOP policies; as previously explained, Defender for Office 365 policies are created in non-blocking mode.

          To create an SCL=-1 mail flow rule or to review your existing rules, click the **Go to Exchange admin center** button on the page. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

          When you're finished, click **Finish**.

     - **I'm only using Microsoft Exchange Online**: Yhe MX records for your domain point to Microsoft 365. There's nothing left to configure, so click **Finish**.

## Old

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
