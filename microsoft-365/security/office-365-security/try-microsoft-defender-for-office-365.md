---
title: Try and evaluate Defender for Office 365
description: Learn how to evaluate and try the capabilities of Microsoft Defender for Office 365 without affecting your existing mail flow.
keywords: Try, Evaluate, Trial, Evaluation, Defender for Office 365
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

The unified **Trials** portal in the Microsoft 365 Defender portal provides a single point of entry for the formerly separate Trial and Evaluate experiences for Microsoft Defender for Office 365 Plan 2. The intent is to allow you to try the features of Defender for Office 365 Plan 2 before you fully commit.

You're invited to try Defender for Office 365 Plan 2 in various feature locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>. The centralized location to start your trial is on the **Evaluation mode** page at <https://security.microsoft.com/atpEvaluation>.

Before you try Defender for Office 365 Plan 2, there are some key questions that you need to ask yourself:

- Do I want to passively observe what Defender for Office 365 Plan 2 can do for me, or do I want Defender for Office 365 Plan 2 to take direct action on issues that it finds?
- How long do I have before I need to make the decision to keep Defender for Office 365 Plan 2?

This article will help you answer those questions so you can try Defender for Office 365 Plan 2 in a way that best meets the needs of your organization.

For a companion guide for how to use your trial, see [Trial playbook: Microsoft Defender for Office 365](trial-playbook-defender-for-office-365.md).

## Overview of Defender for Office 365

Defender for Office 365 helps organizations secure their enterprise by offering a comprehensive slate of capabilities. For more information, see [Microsoft Defender for Office 365](defender-for-office-365.md).

You can also learn more about Defender for Office 365 at this [interactive guide](https://aka.ms/MS365D.InteractiveGuide).

![Microsoft Defender for Office 365 conceptual diagram.](../../media/microsoft-defender-for-office-365.png)

Watch this short video to learn more about how you can get more done in less time with Microsoft Defender for Office 365.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWMmIe]

## Observe or take action?

The nature of your Microsoft 365 organization determines how you can try Defender for Office 365 Plan 2:

- You already have Microsoft 365 mailboxes, but you're currently using a third-party service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization. Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

  ![Mail flows from the internet through the third-party protection service or device before delivery into Microsoft 365.](../../media/mdo-migration-before.png)

  In these environments, you can only try Defender for Office 365 in *audit* mode. You don't need to change your mail flow (MX records) to try Defender for Office 365.

- You already have a Microsoft 365 organization. Mail from the internet flows directly Microsoft 365, but your current subscription has only [Exchange Online Protection (EOP)](exchange-online-protection-overview.md) or [Defender for Office 365 Plan 1](overview.md#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

  ![Mail flows from the internet into Microsoft 365, with protection from EOP and/or Defender for Office 365 Plan 1.](../../media/mdo-trial-mail-flow.png)

  In these environments, you can try Defender for Office 365 in *audit* mode or in *blocking* mode.

## Defender for Office 365 features and policies

Defender for Office 365 includes the features of Exchange Online Protection (EOP), which are present in all Microsoft 365 organizations with Exchange Online mailboxes, and features that are exclusive to Defender for Office 365.

The protection features of EOP and Defender for Office 365 are implemented using policies. The following policies are involved when you try Defender for Office 365 Plan 2:

- **Exchange Online Protection (EOP)**: No new or special policies are created. Existing EOP policies in your Microsoft 365 organization are able to act on messages (for example, send messages to the Junk Email folder or to quarantine):

  - [Anti-malware policies](anti-malware-protection.md)
  - [Inbound anti-spam protection](anti-spam-protection.md)
  - [Anti-spoofing protection in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings)

  The default policies for these features are always on, apply to all recipients, and are always applied last after any custom policies.

- **Defender for Office 365**: Policies that are exclusive to Defender for Office 365 are created for you as needed:

  - [Impersonation protection in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Attachments for email messages](safe-attachments.md)
  - [Safe Links for email messages and Microsoft Teams](safe-links.md)

  But, these policies are different in audit mode vs. blocking mode:

  - **Audit mode**: Special *evaluation policies* are created for impersonation protection in anti-phishing, Safe Attachments, and Safe Links. These evaluation policies are configured only to *detect* threats. Defender for Office 365 detects harmful messages for reporting, but the messages aren't acted upon (for example, detected messages aren't quarantined). The settings of these evaluation policies are described in the [Policies in audit mode](#policies-in-audit-mode) section later in this topic.

  - **Blocking mode**: The Standard template for [preset security policies](preset-security-policies.md) is turned on, and the users you specify to include in the trial are added to the Standard preset security policy. Defender for Office 365 *detects* and *takes action on* harmful messages (for example, detected messages are quarantined).

  The default and recommended selection is to scope these Defender for Office 365 policies to all users in the organization. But during or after the setup of your trial, you can change the policy assignment to specific users, groups, or email domains in the Microsoft 365 Defender portal or in [Exchange Online PowerShell](#policy-settings-associated-with-defender-for-office-365-trials).

**Notes**:

- Safe Links will detonate URLs during mail flow. To prevent specific URLs from being detonated, use the Tenant Allow/Block List. For more information, see [Manage the Tenant Allow/Block List](manage-tenant-allow-block-list.md).
- Safe Links doesn't wrap URL links in email message bodies.

## Evaluation vs. trial: an important distinction for licensing

Although the terms 'evaluation' and 'trial' are typically synonymous, the terms have different meanings when you try Defender for Office 365 Plan 2. Specifically, the differences have to do with licensing. You don't need to decide whether you want an 'evaluation' or a 'trial'. We make that decision for you based on your selection of audit mode vs. blocking mode:

- **A 'trial' is for Microsoft 365 organizations that don't already have Defender for Office 365 Plan 2 features**. These organizations require Defender for Office 365 Plan 2 licenses so the features (in particular, the policies) of Defender for Office 365 Plan 2 are available to them during the trial period. We automatically provision the required Plan 2 trial licenses for you when you enroll in the trial. Manual steps for getting and assigning licenses are no longer required. Affected Microsoft 365 organizations include:

  - Standalone Exchange Online Protection (EOP) organizations (no Exchange Online mailboxes).
  - Microsoft 365 E3.
  - Organizations with Defender for Office 365 Plan 1 add-on licenses. These organizations are in a mixed state. For example, required policies are created without the additional licensing requirements of standalone EOP or E3. But, these organizations also require Defender for Office 365 Plan 2 trial licenses for the [Automation, investigation, remediation, and education capabilities](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2) that are available only in Plan 2.

  The important thing to remember about trial licenses for Defender for Office 365 Plan 2 features: they last for 90 days.

- **An 'evaluation' is for Microsoft 365 organizations that already have Defender for Office 365 Plan 2 features**. The same evaluation policies are created for these organizations as are created for E3 and standalone EOP organizations, but no additional licenses for Defender for Office 365 Plan 2 are required. Affected Microsoft 365 organizations include:

  - Microsoft 365 E5.
  - Organizations with Defender for Office 365 Plan 2 add-on licenses.

  The important thing to remember about an evaluation of Defender for Office 365 Plan 2 features: it never expires.

The differences between an 'evaluation' and a 'trial' are summarized in the following table:

|SKU|Evaluation period|P2 trial<br>provisioned?|Trial period|
|---|:---:|:---:|---|
|Standalone EOP<br>(no Exchange Online mailboxes)|n/a|Yes|90 days|
|Microsoft 365 E3|n/a|Yes|90 days|
|Defender for Office 365 Plan 1|Unlimited<sup>\*</sup>|Yes|90 days <br><br> <sup>\*</sup>After 90 days, Defender for Office 365 Plan 2 capabilities are turned off. Evaluation policies continue to work.|
|Defender for Office 365 Plan 2|Unlimited|No|n/a|
|Microsoft 365 E5|Unlimited|No|n/a|

> [!IMPORTANT]
> Throughout the rest of this article, we'll try to use the word 'evaluation' when we're talking about audit mode and evaluation policies and 'trial' when we're talking about trial licenses and blocking mode using the Standard preset security policy.

## Set up an evaluation in audit mode

Remember, when you evaluate Defender for Office 365 in audit mode, special evaluation policies are created so Defender for Office 365 can detect threats. The settings of these evaluation policies are described in the [Policies in audit mode](#policies-in-audit-mode) section later in this topic.

1. Start the evaluation in any of the available locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>. For example:

   - On the banner at the top of any Defender for Office 365 feature page, click **Start free trial**.
   - On the **Microsoft 365 trials** page at <https://security.microsoft.com/trialHorizontalHub>, find and select **Defender for Office 365**.
   - On the **Evaluation mode** page at <https://security.microsoft.com/atpEvaluation>, click **Start evaluation**.

2. <!---This doesn't exist?--->In the **Turn on protection** dialog, select **No, I only want reporting**, and then click **Continue**.

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
   >
   > Multiple different types of conditions or exceptions are not additive; they're inclusive. The evaluation is applied *only* to those recipients that match *all* of the specified recipient filters. For example, you configure a recipient filter condition with the following values:
   >
   > - The recipient is: romain@contoso.com
   > - The recipient is a member of: Executives
   >
   > The evaluation is applied to romain@contoso.com *only* if he's also a member of the Executives group. If he's not a member of the group, then the evaluation is not applied to him.
   >
   > Likewise, if you use the same recipient filter as an exception to the evaluation, the evaluation is not applied to romain@contoso.com *only* if he's also a member of the Executives group. If he's not a member of the group, then the evaluation still applies to him.

   When you're finished, click **Continue**.

4. In the **Help us understand your mail flow** dialog, configure the following options:

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

            When a third-party service or device sits in front of email flowing into Microsoft 365, Enhanced Filtering for Connectors correctly identifies the source of internet messages and greatly improves the accuracy of the Microsoft filtering stack (especially [spoof intelligence](anti-spoofing-protection.md), as well as post-breach capabilities in [Threat Explorer](threat-explorer.md) and [Automated Investigation & Response (AIR)](automated-investigation-response-office.md).

          - **List each gateway IP address your messages pass through**: This setting is available only if you selected **Other** for **Select a third party service provider**. Enter a comma-separated list of the IP addresses that are used by the third-party protection service or device to send mail into Microsoft 365.

          When you're finished, click **Next**.

       2. In the **Exchange mail flow rules** dialog, decide if you need an Exchange Online mail flow rule (also known as a transport rule) that skips spam filtering for incoming messages from the third-party protection service or device.

          It's likely that you already have an SCL=-1 mail flow rule in Exchange Online that allows all inbound mail from the protection service to bypass (most) Microsoft 365 filtering. Many protection services encourage this spam confidence level (SCL) mail flow rule method for Microsoft 365 customers who use their services.

          As explained in the previous step, Enhanced Filtering for Connectors is automatically configured on the connector that you specify as the source of mail from the protection service.

          Turning on Enhanced Filtering for Connectors without an SCL=-1 rule for incoming mail from the protection service will vastly improve the detection capabilities of EOP protection features like [spoof intelligence](anti-spoofing-protection.md), and could impact the delivery of those newly-detected messages (for example, move to the Junk Email folder or to quarantine). This impact is limited to EOP policies; as previously explained, Defender for Office 365 policies are created in audit mode.

          To create an SCL=-1 mail flow rule or to review your existing rules, click the **Go to Exchange admin center** button on the page. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

          When you're finished, click **Finish**.

     - **I'm only using Microsoft Exchange Online**: The MX records for your domain point to Microsoft 365. There's nothing left to configure, so click **Finish**.

   - **Share data with Microsoft**: This option isn't selected by default, but you can select the check box if you like.

5. A progress dialog appears as your evaluation is set up. When set up is complete, click **Done**.

## Set up trial in blocking mode

Remember, when you try Defender for Office 365 in blocking mode, the Standard preset security is turned on and the specified users (some or everyone) are included in the Standard preset security policy. For more information about the Standard preset security policy, see [Preset security policies](preset-security-policies.md).

1. Start the trial in any of the available locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>. For example:

   - On the banner at the top of any Defender for Office 365 feature page, click **Start free trial**.
   - On the **Microsoft 365 trials** page at <https://security.microsoft.com/trialHorizontalHub>, find and select **Defender for Office 365**.
   - On the **Evaluation mode** page at <https://security.microsoft.com/atpEvaluation>, click **Start evaluation**.

2. <!---This doesn't exist?--->In the **Turn on protection** dialog, select **Yes, protect my organization by blocking threats**, and then click **Continue**.

3. In the **Select the users you want to include** dialog, configure the following settings:

   - **All users**: This is the default and recommended option.
   - **Select users**: If you select this option, you need to select the internal recipients that the trial applies to:
     - **Users**: The specified mailboxes, mail users, or mail contacts.
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups.
       - The specified Microsoft 365 Groups.
     - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

     Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

     For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   > [!NOTE]
   > You can change these selections after you finish setting up the trial.

   When you're finished, click **Continue**.

4. A progress dialog appears as your evaluation is set up. When setup is complete, click **Done**.

## Manage your trial

After you set up your evaluation or trial in audit mode or blocking mode, the **Evaluation mode** page at <https://security.microsoft.com/atpEvaluation> is your central location for information about trying Defender for Office 365 Plan 2.

## Reporting in audit mode

- The [Threat protection status report](view-email-security-reports.md#threat-protection-status-report) shows detections by Defender for Office 365 in the following views:
  - [View data by Email \> Malware and Chart breakdown by Detection Technology](view-email-security-reports.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
  - [View data by Email \> Phish and Chart breakdown by Detection Technology](view-email-security-reports.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)

- In [Threat Explorer](threat-explorer.md), messages that were detected by the Defender for Office 365 evaluation show the following banner in the details of the entry:

  ![Notification banner in message details that the Defender for Office 365 evaluation detected a malicious email message.](../../media/evalv2-detection-banner.png)

The **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation> consolidates the reporting for the policies in the evaluation:

- Safe Links
- Safe Attachments
- Impersonation protection in anti-phishing policies

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

## Frequently asked questions

### Q: Do I need to get or activate trial licenses?

A: No. The trial automatically provisions Defender for Office 365 Plan 2 licenses if you need them as previously described.

### Q: How do I extend the trial?

A: See [Extend your trial](/microsoft-365/commerce/try-or-buy-microsoft-365#extend-your-trial).

### Q: What happens to my data after the trial expires?

A: After your trial expires, you'll have access to your trial data (data from features in Defender for Office 365 that you didn't have previously) for 30 days. After this 30 day period, all policies and data that were associated with the Defender for Office 365 trial will be deleted.

### Q: How many times can I use the Defender for Office 365 trial in my organization?

A: A maximum of 2 times. If your first trial expires, you need to wait at least 30 days after the expiration date before you can enroll in the Defender for Office 365 trial again. After your second trial, you can't enroll in another trial.

### Q: In audit mode, are there scenarios where Defender for Office 365 will act on messages?

A: Yes. No one in any program or SKU can turn off or bypass taking action on messages that are classified as malware or high confidence phishing by the service.

In audit mode, [anti-spoofing protection in EOP](set-up-anti-phishing-policies.md#spoof-settings) also takes action on messages. To prevent anti-spoofing protection from acting on messages, create an Exchange mail flow rule (also known as a transport rule) where inbound email bypasses all types of filtering that can be bypassed (including anti-spoofing protection). For instructions, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

### Q: In what order are policies evaluated?

A: See [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies).

## Reference

### Policy settings associated with Defender for Office 365 trials

#### Policies in audit mode

> [!WARNING]
> Do not attempt to create, modify, or remove the individual security policies that are associated with the evaluation of Defender for Office 365. The only supported method for creating the individual security policies for the evaluation is to start the evaluation in audit mode in the Microsoft 365 Defender portal for the first time.

[As previously described](#defender-for-office-365-features-and-policies), when you choose audit mode for your trial, evaluation policies with the required settings to observe but not take action on messages are automatically created.

To see these policies and their settings, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Write-Output -InputObject ("`r`n"*3),"Evaluation anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Evaluation"; Write-Output -InputObject ("`r`n"*3),"Evaluation Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Evaluation"; Write-Output -InputObject ("`r`n"*3),"Evaluation Safe Links policy",("-"*79);Get-SafeLinksPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Evaluation"
```

The settings are also described in the following tables.

##### Anti-phishing evaluation policy settings

|Setting|Value|
|---|---|
|Name|Evaluation Policy|
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
|ExcludedDomains|{}|
|ExcludedSenders|{}|
|ImpersonationProtectionState|Manual|
|IsDefault|False|
|MailboxIntelligenceProtectionAction|NoAction|
|MailboxIntelligenceProtectionActionRecipients|{}|
|MailboxIntelligenceQuarantineTag|DefaultFullAccessPolicy|
|PhishThresholdLevel|1|
|PolicyTag|blank|
|RecommendedPolicyType|Evaluation|
|SpoofQuarantineTag|DefaultFullAccessPolicy|
|TargetedDomainActionRecipients|{}|
|TargetedDomainProtectionAction|NoAction|
|TargetedDomainQuarantineTag|DefaultFullAccessPolicy|
|TargetedDomainsToProtect|{}|
|TargetedUserActionRecipients|{}|
|TargetedUserProtectionAction|NoAction|
|TargetedUserQuarantineTag|DefaultFullAccessPolicy|
|TargetedUsersToProtect|{}|

##### Safe Attachments evaluation policy settings

|Setting|Value|
|---|---|
|Name|Evaluation Policy|
|Action|Allow|
|ActionOnError|True|
|AdminDisplayName|Evaluation Policy|
|ConfidenceLevelThreshold|80|
|Enable|True|
|EnableOrganizationBranding|False|
|IsBuiltInProtection|False|
|IsDefault|False|
|OperationMode|Delay|
|QuarantineTag|AdminOnlyAccessPolicy|
|RecommendedPolicyType|Evaluation|
|Redirect|False|
|RedirectAddress|blank|
|ScanTimeout|30|

##### Safe Links evaluation policy settings

|Setting|Value|
|---|---|
|Name|Evaluation Policy|
|AdminDisplayName|Evaluation Policy|
|AllowClickThrough|True|
|CustomNotificationText|blank|
|DeliverMessageAfterScan|True|
|DisableUrlRewrite|True|
|DoNotRewriteUrls|{}|
|EnableForInternalSenders|False|
|EnableOrganizationBranding|False|
|EnableSafeLinksForEmail|True|
|EnableSafeLinksForOffice|False|
|EnableSafeLinksForTeams|False|
|IsBuiltInProtection|False|
|LocalizedNotificationTextList|{}|
|RecommendedPolicyType|Evaluation|
|ScanUrls|True|
|TrackClicks|True|

##### Use PowerShell to configure recipient conditions and exceptions to the evaluation in audit mode

A rule that's associated with the Defender for Office 365 evaluation policies controls the recipient conditions and exceptions to the evaluation.

To view the rule that's associated with the evaluation, run the following command in Exchange Online PowerShell:

```powershell
Get-ATPEvaluationRule
```

To use Exchange Online PowerShell to modify who the evaluation applies to, use the following syntax:

```powershell
Set-ATPEvaluationRule -Identity "Evaluation Rule" -SentTo <"user1","user2",... | $null> -ExceptIfSentTo <"user1","user2",... | $null> -SentToMemberOf <"group1","group2",... | $null> -ExceptIfSentToMemberOf <"group1","group2",... | $null> -RecipientDomainIs <"domain1","domain2",... | $null> -ExceptIfRecipientDomainIs <"domain1","domain2",... | $null>
```

This example configures exceptions from the evaluation for the specified security operations (SecOps) mailboxes.

```powershell
Set-ATPEvaluationRule -Identity "Evaluation Rule" -ExceptIfSentTo "SecOps1","SecOps2"
```

##### Use PowerShell to turn on or turn off the evaluation in audit mode

To turn on or turn off the evaluation in audit mode, you enable or disable the rule that's associated with the evaluation. The State property value of the evaluation rule shows whether the rule is Enabled or Disabled.

Run the following command to determine whether the evaluation is currently enabled or disabled:

```powershell
Get-ATPEvaluationRule -Identity "Evaluation Rule" | Format-Table Name,State
```

Run the following command to turn off the evaluation if it's turned on:

```powershell
Disable-ATPEvaluationRule -Identity "Evaluation Rule"
```

Run the following command to turn on the evaluation if it's turned off:

```powershell
Enable-ATPEvaluationRule -Identity "Evaluation Rule"
```

#### Policies and rules in block mode

[As previously described](#defender-for-office-365-features-and-policies), when you choose blocking mode for your trial, policies are created using the Standard template for [preset security policies](preset-security-policies.md).

To use Exchange Online PowerShell to view the individual security policies that are associated with the Standard preset security policy, and to use Exchange Online PowerShell to view and configure the recipient conditions and exceptions for the preset security policy, see [Preset security policies in Exchange Online PowerShell](preset-security-policies.md#preset-security-policies-in-exchange-online-powershell).
