---
title: Try and evaluate Defender for Office 365
description: Learn how to evaluate and try the capabilities of Microsoft Defender for Office 365 without affecting your existing mail flow.
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
ROBOTS:
---

# Try Microsoft Defender for Office 365

> [!NOTE]
> The feature that's described by this article is in Preview, is not available in all organizations, and is subject to change.

The unified **Trials** portal in the Microsoft 365 Defender portal provides a single point of entry for the formerly separate Trial and Evaluate experiences for Microsoft Defender for Office 365. The intent is to allow you to try the features of Defender for Office 365 Plan 2 for 90 days before you fully commit to it. But, there are differences in the evaluation experiences based on the nature of your Microsoft 365 organization:

- You already have Microsoft 365 mailboxes, but you're currently using a third-party service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization. Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

  ![Mail flows from the internet through the third-party protection service or device before delivery into Microsoft 365.](../../media/mdo-migration-before.png)

  In these environments, you can only try Defender for Office 365 in *audit* mode. You don't need to change your mail flow (MX records) to try Defender for Office 365.

- You already have a Microsoft 365 organization. Mail from the internet flows directly Microsoft 365, but your current subscription has only [Exchange Online Protection (EOP)](exchange-online-protection-overview.md) or [Defender for Office 365 Plan 1](overview.md#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

  ![Mail flows from the internet into Microsoft 365, with protection from EOP and/or Defender for Office 365 Plan 1.](../../media/mdo-trial-mail-flow.png)

  In these environments, you can try Defender for Office 365 in *audit* mode or in *blocking mode*.

You're invited to start your trial in various Defender for Office 365 feature locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>. The centralized location to start your trial is on the **Trials** page at <https://security.microsoft.com/atpEvaluation>.

The rest of this article explains the difference between audit mode blocking mode, how to configure evaluations, and other details.

## Overview of Defender for Office 365

Defender for Office 365 helps organizations secure their enterprise by offering a comprehensive slate of capabilities. For more information, see [Microsoft Defender for Office 365](defender-for-office-365.md).

You can also learn more about Defender for Office 365 at this [interactive guide](https://aka.ms/MS365D.InteractiveGuide).

![Microsoft Defender for Office 365 conceptual diagram.](../../media/microsoft-defender-for-office-365.png)

## Policies in blocking mode or audit mode

When you evaluate Defender for Office 365, the policies that control protection features in Microsoft 365 are present:

- **Exchange Online Protection (EOP)**: No new or special policies are created. Existing EOP policies are able to act on messages (for example, send messages to the Junk Email folder or to quarantine):

  - [Anti-malware policies](anti-malware-protection.md)
  - [Inbound anti-spam protection](anti-spam-protection.md)
  - [Anti-spoofing protection in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings)

  The default policies for these features are always on, apply to all recipients, and are always applied last (after any custom policies).

- **Defender for Office 365**: Policies that are exclusive to Defender for Office 365 are created for your evaluation of Defender for Office 365:

  - [Impersonation protection in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Attachments for email messages](safe-attachments.md)
  - [Safe Links for email messages and Microsoft Teams](safe-links.md)

  But, the nature of these policies is different in blocking mode and audit mode:

  - **Audit mode**: Regular policies are created, but the policies are configured only to *detect* threats. Defender for Office 365 detects harmful messages for reporting, but the messages aren't acted upon (for example, detected messages aren't quarantined).

  - **Blocking mode**: Policies are created using the Standard template for [preset security policies](preset-security-policies.md). Defender for Office 365 *detects* and *takes action on* harmful messages (for example, detected messages are quarantined).

  The default and recommended selection is to scope these Defender for Office 365 policies to all users in the organization. But during or after setup, you can change the policy assignment to specific users, groups, or email domains.

**Notes**:

- Safe Links will detonate URLs in mail flow. To prevent specific URLs from being detonated, use the Tenant Allow/Block List. For more information, see [Manage the Tenant Allow/Block List](tenant-allow-block-list.md).
- Safe Links doesn't wrap URL links in email message bodies.
- The evaluation policy settings are described in the [Evaluation policy settings](#evaluation-policy-settings) section later in this article.

## Set up an evaluation in audit mode

1. Click **Start evaluation**.

2. In the **Turn on protection** dialog, select **No, I only want reporting**, and then click **Continue**.

3. In the **Select the users you want to include** dialog, configure the following settings:

   - **All users**: This is the default and recommended option.
   - **Select users**: If you select this option, you need to select the internal recipients that the evaluation applies to:
     - **Users**: The specified mailboxes, mail users, or mail contacts.
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups.
       - The specified Microsoft 365 Groups.
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

          It's likely that you already have an SCL=-1 mail flow rule in Exchange Online that allows all inbound mail from the protection service to bypass (most) Microsoft 365 filtering. Many protection services encourage this spam confidence level (SCL) mail flow rule method for Microsoft 365 customers who use their services.

          As explained in the previous step, Enhanced Filtering for Connectors is automatically configured on the connector that you specify as the source of mail from the protection service.

          Turning on Enhanced Filtering for Connectors without an SCL=-1 rule for incoming mail from the protection service will vastly improve the detection capabilities of EOP protection features like [spoof intelligence](anti-spoofing-protection.md), and could impact the delivery of those newly-detected messages (for example, move to the Junk Email folder or to quarantine). This impact is limited to EOP policies; as previously explained, Defender for Office 365 policies are created in audit mode.

          To create an SCL=-1 mail flow rule or to review your existing rules, click the **Go to Exchange admin center** button on the page. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

          When you're finished, click **Finish**.

     - **I'm only using Microsoft Exchange Online**: The MX records for your domain point to Microsoft 365. There's nothing left to configure, so click **Finish**.

5. A progress dialog appears as your evaluation is set up. When set up is complete, click **Done**.

## Set up an evaluation in blocking mode

1. Click **Start evaluation**.

2. In the **Turn on protection** dialog, select **Yes, protect my organization by blocking threats**, and then click **Continue**.

3. In the **Select the users you want to include** dialog, configure the following settings:

   - **All users**: This is the default and recommended option.
   - **Select users**: If you select this option, you need to select the internal recipients that the evaluation applies to:
     - **Users**: The specified mailboxes, mail users, or mail contacts.
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups.
       - The specified Microsoft 365 Groups.
     - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

     Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

     For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   > [!NOTE]
   > You can change these selections after you finish setting up the evaluation.

   When you're finished, click **Continue**.

4. A progress dialog appears as your evaluation is set up. When setup is complete, click **Done**.

## Reporting in audit mode

- The [Threat protection status report](view-email-security-reports.md#threat-protection-status-report) shows detections by Defender for Office 365 in the following views:
  - [View data by Email \> Malware and Chart breakdown by Detection Technology](view-email-security-reports.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
  - [View data by Email \> Phish and Chart breakdown by Detection Technology](view-email-security-reports.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)

- In [Threat Explorer](threat-explorer.md), messages that were detected by the Defender for Office 365 evaluation show the following banner in the details of the entry:

  ![Notification banner in message details that the Defender for Office 365 evaluation detected a malicious email message.](../../media/evalv2-detection-banner.png)

<!--- This stuff is likely not applicable for V2 reporting --->

The **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation> consolidates the reporting for the policies in the evaluation:

- Impersonation protection in anti-phishing policies
- Safe Links
- Safe Attachments

By default, the charts show data for the last 30 days, but you can filter the date range by clicking ![Calendar icon.](../../media/m365-cc-sc-add-internal-icon.png) **30 days** and selecting from following additional values that are less than 30 days:

- 24 hours
- 7 days
- 14 days
- Custom date range

You can click ![Download icon.](../../media/m365-cc-sc-download-icon.png) **Download** to download the chart data to a .csv file.

## Required permissions

Permissions that are required in **Azure AD** to set up an evaluation of Defender for Microsoft 365 are described in the following list:

- **Create, modify or delete an evaluation**: Security Administrator or Global Administrator.
- **View evaluation policies and reports**: Security Administrator or Security Reader.

For more information about Azure AD permissions in the Microsoft 365 Defender portal, see [Azure AD roles in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md#azure-ad-roles-in-the-microsoft-365-defender-portal)

## Evaluation policy settings

The settings in the Defender for Office 365 that are specifically created for the evaluation are described in the following tables:

**Anti-phishing evaluation policy settings**:

|Setting|Value|
|---|---|
|AdminDisplayName|Evaluation Policy|
|AuthenticationFailAction|MoveToJmf|
|Enabled|True|
|EnableFirstContactSafetyTips|False|
|EnableMailboxIntelligence|True|
|EnableMailboxIntelligenceProtection|True|
|EnableOrganizationDomainsProtection|False|
|EnableSimilarDomainsSafetyTips|False|
|EnableSimilarUsersSafetyTips|False|
|EnableSpoofIntelligence|True|
|EnableSuspiciousSafetyTip|False|
|EnableTargetedDomainsProtection|False|
|EnableTargetedUserProtection|False|
|EnableUnauthenticatedSender|True|
|EnableUnusualCharactersSafetyTips|False|
|EnableViaTag|True|
|Guid|GUID value|
|ImpersonationProtectionState|Manual|
|IsDefault|False|
|MailboxIntelligenceProtectionAction|NoAction|
|MailboxIntelligenceProtectionActionRecipients|{}|
|MailboxIntelligenceQuarantineTag|DefaultFullAccessPolicy|
|Name|Evaluation Policy|
|PhishThresholdLevel|1|
|RecommendedPolicyType|Evaluation|
|SpoofQuarantineTag|DefaultFullAccessPolicy|
|TargetedDomainActionRecipients|{}|
|TargetedDomainProtectionAction|NoAction|
|TargetedDomainQuarantineTag|DefaultFullAccessPolicy|
|TargetedUserActionRecipients|{}|
|TargetedUserProtectionAction|NoAction|
|TargetedUserQuarantineTag|DefaultFullAccessPolicy|
|||
|AntiPhishPolicyLevelDataList|blank|
|AntiSpoofEnforcementType|High|
|AuthenticationSafetyTipText|blank|
|AuthenticationSoftPassSafetyTipText|blank|
|EnableAuthenticationSafetyTip|False|
|EnableAuthenticationSoftPassSafetyTip|False|
|PolicyTag|blank|
|SimilarUsersSafetyTipsCustomText|blank|
|TreatSoftPassAsAuthenticated|True|
|UnusualCharactersSafetyTipsCustomText|blank|
|||
|ExcludedDomains|{}|
|ExcludedSenders|{}|
|TargetedDomainsToProtect|{}|
|TargetedUsersToProtect|{}|

**Safe Attachments evaluation policy settings**:

|Setting|Value|
|---|---|
|Action|Allow|
|ActionOnError|True|
|AdminDisplayName|Evaluation Policy|
|ConfidenceLevelThreshold|80|
|Enable|True|
|EnableOrganizationBranding|False|
|Guid|GUID value|
|IsBuiltInProtection|False|
|IsDefault|False|
|Name|Evaluation Policy|
|OperationMode|Delay|
|QuarantineTag|AdminOnlyAccessPolicy|
|RecommendedPolicyType|Evaluation|
|Redirect|False|
|RedirectAddress|{}|
|ScanTimeout|30|

**Safe Links evaluation policy settings**:

|Setting|Value|
|---|---|
|AdminDisplayName|Evaluation Policy|
|AllowClickThrough|False|
|CustomNotificationText|blank|
|DeliverMessageAfterScan|True|
|DisableUrlRewrite|True|
|DoNotRewriteUrls|{}|
|EnableForInternalSenders|False|
|EnableOrganizationBranding|False|
|EnableSafeLinksForTeams|True|
|Guid|GUID value|
|IsBuiltInProtection|False|
|IsDefault|False|
|IsEnabled|True|
|LocalizedNotificationTextList|{}|
|Name|"EvaluationPolicy"|
|RecommendedPolicyType|Evaluation|
|ScanUrls|True|
|TrackClicks|True|
|||
|DoNotAllowClickThrough|blank|
|DoNotTrackUserClicks|False|
|EnableSafeLinksForEmail|True|
|EnableSafeLinksForOffice|True|
|ExcludedUrls|{}|
|WhiteListedUrls|blank|
