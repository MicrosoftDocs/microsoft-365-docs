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
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection:
  - m365-security
  - tier1
ms.custom: 
ms.subservice: mdo
ms.service: microsoft-365-security
ROBOTS:
ms.date: 7/31/2023
---

# Try Microsoft Defender for Office 365

As an existing Microsoft 365 customer, the **Trials** and **Evaluation** pages in the Microsoft 365 Defender portal at <https://security.microsoft.com> allow you to try the features of Microsoft Defender for Office 365 Plan 2 before you buy.

Before you try Defender for Office 365 Plan 2, there are some key questions that you need to ask yourself:

- Do I want to passively observe what Defender for Office 365 Plan 2 can do for me (*audit*), or do I want Defender for Office 365 Plan 2 to take direct action on issues that it finds (*block*)?
- Either way, how can I tell what Defender for Office 365 Plan 2 is doing for me?
- How long do I have before I need to make the decision to keep Defender for Office 365 Plan 2?

This article helps you answer those questions so you can try Defender for Office 365 Plan 2 in a way that best meets the needs of your organization.

For a companion guide for how to use your trial, see [Trial User Guide: Microsoft Defender for Office 365](trial-user-guide-defender-for-office-365.md).

> [!NOTE]
> Trials and evaluations of Defender for Office 365 aren't available in U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD) or Microsoft 365 Education organizations.

## Overview of Defender for Office 365

Defender for Office 365 helps organizations secure their enterprise by offering a comprehensive slate of capabilities. For more information, see [Microsoft Defender for Office 365](defender-for-office-365.md).

You can also learn more about Defender for Office 365 at this [interactive guide](https://aka.ms/MS365D.InteractiveGuide).

:::image type="content" source="../../media/microsoft-defender-for-office-365.png" alt-text="Microsoft Defender for Office 365 conceptual diagram." lightbox="../../media/microsoft-defender-for-office-365.png":::

Watch this short video to learn more about how you can get more done in less time with Microsoft Defender for Office 365.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWMmIe]

For pricing information, see [Microsoft Defender for Office 365](https://www.microsoft.com/security/business/siem-and-xdr/microsoft-defender-office-365).

## How trials and evaluations work for Defender for Office 365

### Policies

Defender for Office 365 includes the features of Exchange Online Protection (EOP), which are present in all Microsoft 365 organizations with Exchange Online mailboxes, and features that are exclusive to Defender for Office 365.

The protection features of EOP and Defender for Office 365 are implemented using policies. **Policies that are exclusive to Defender for Office 365 are created for you as needed**:

- [Impersonation protection in anti-phishing policies](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
- [Safe Attachments for email messages](safe-attachments-about.md)
- [Safe Links for email messages and Microsoft Teams](safe-links-about.md)
  - Safe Links detonates URLs during mail flow. To prevent specific URLs from being detonated, submit the URLs to Microsoft as good URLs. For instructions, see [Report good URLs to Microsoft](submissions-admin.md#report-good-urls-to-microsoft).
  - Safe Links doesn't wrap URL links in email message bodies.

Your eligibility for an evaluation or trial means you already have EOP. **No new or special EOP policies are created for your evaluation or trial of Defender for Office 365 Plan 2**. Existing EOP policies in your Microsoft 365 organization remain able to act on messages (for example, send messages to the Junk Email folder or to quarantine):

- [Anti-malware policies](anti-malware-protection-about.md)
- [Inbound anti-spam protection](anti-spam-protection-about.md)
- [Anti-spoofing protection in anti-phishing policies](anti-phishing-policies-about.md#spoof-settings)

The default policies for these EOP features are always on, apply to all recipients, and are always applied last after any custom policies.

### Audit mode vs. blocking mode for Defender for Office 365

Do you want your Defender for Office 365 experience to be active or passive? The following modes are available:

- **Audit mode**: Special *evaluation policies* are created for anti-phishing (which includes impersonation protection), Safe Attachments, and Safe Links. These evaluation policies are configured to *detect* threats only. Defender for Office 365 detects harmful messages for reporting, but the messages aren't acted upon (for example, detected messages aren't quarantined). The settings of these evaluation policies are described in the [Policies in audit mode](#policies-in-audit-mode) section later in this article. We also automatically turn on SafeLinks time of click protection in audit mode for non-email workloads (for example, Microsoft Teams, SharePoint, and OneDrive for Business)

  You can also selectively turn on or turn off anti-phishing protection (spoofing and impersonation), Safe Links protection, and Safe Attachments protection. For instructions, see [Manage evaluation settings](#manage-evaluation-settings).

  Audit mode provides specialized reports for threats that are detected by the evaluation policies on the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>. These reports are described in the [Reports for audit mode](#reports-for-audit-mode) section later in this article.

- **Blocking mode**: The Standard template for [preset security policies](preset-security-policies.md) is turned on and used for the trial, and the users you specify to include in the trial are added to the Standard preset security policy. Defender for Office 365 *detects and takes action on* harmful messages (for example, detected messages are quarantined).

  The default and recommended selection is to scope these Defender for Office 365 policies to all users in the organization. But during or after the setup of your trial, you can change the policy assignment to specific users, groups, or email domains in the Microsoft 365 Defender portal or in [Exchange Online PowerShell](#policy-settings-associated-with-defender-for-office-365-evaluations-and-trials).

  Information about threats that are detected by Defender for Office 365 is available in the regular reports and investigation features of Defender for Office 365 Plan 2, which are described in the [Reports for blocking mode](#reports-for-blocking-mode) section later in this article.

The key factors that determine which modes are available to you are:

- Whether or not you currently have Defender for Office 365 (Plan 1 or Plan 2) as described in the next section.
- How email is delivered to your Microsoft 365 organization as described in the following scenarios:

  - Mail from the internet flows directly Microsoft 365, but your current subscription has only [Exchange Online Protection (EOP)](eop-about.md) or [Defender for Office 365 Plan 1](overview.md#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

    :::image type="content" source="../../media/mdo-trial-mail-flow.png" alt-text="Mail flows from the internet into Microsoft 365, with protection from EOP and/or Defender for Office 365 Plan 1." lightbox="../../media/mdo-trial-mail-flow.png":::

    In these environments, **audit mode** or **blocking mode** are available, depending on your licensing as explained in the next section

  - You're currently using a third-party service or device for email protection of your Microsoft 365 mailboxes. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization. Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

    :::image type="content" source="../../media/mdo-migration-before.png" alt-text="Mail flows from the internet through the third-party protection service or device before delivery into Microsoft 365." lightbox="../../media/mdo-migration-before.png":::

    In these environments, only **audit mode** is available. You don't need to change your mail flow (MX records) to evaluate Defender for Office 365 Plan 2.

### Evaluation vs. trial for Defender for Office 365

What's the difference between an evaluation and a trial of Defender for Office 365 Plan 2? Aren't they the same thing? Well, yes and no. The licensing in your Microsoft 365 organization makes all the difference:

- **No Defender for Office Plan 2**: If you don't already have Defender for Office 365 Plan 2 (for example, you have standalone EOP, Microsoft 365 E3, Microsoft 365 Business Premium, or a Defender for Office 365 Plan 1 add-on subscription), you can start the Defender for Office 365 Plan 2 experience from the following locations in the Microsoft 365 Defender portal:

  - The **Microsoft 365 trials** page at <https://security.microsoft.com/trialHorizontalHub>.
  - The **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>.

  You can select **audit mode** (evaluation policies) or **blocking mode** (Standard preset security policy) during the set up of the evaluation or trial.

  Regardless of which location you use, we automatically provision any required Defender for Office 365 Plan 2 licenses when you enroll. Manually getting and assigning Plan 2 licenses in the Microsoft 365 admin center isn't required.

  The automatically provisioned licenses are good for 90 days. What this 90 day period means depends the existing licensing in your organization:

  - **No Defender for Office 365 Plan 1**: For organizations without Defender for Office 365 Plan 1 (for example, standalone EOP or Microsoft 365 E3) all Defender for Office 365 Plan 2 features (in particular, the security policies) are available during the 90 day period only.

  - **Defender for Office 365 Plan 1**: Organizations with Defender for Office 365 Plan 1 (for example, Microsoft 365 Business Premium or add-on subscriptions) already have the same security policies that are available in Defender for Office 365 Plan 2: impersonation protection in anti-phishing policies, Safe Attachments policies, and Safe Links policies.

    The security policies from **audit mode** (evaluation policies) or **blocking mode** (Standard preset security policy) don't expire or stop working after 90 days. What ends after 90 days are the [automation, investigation, remediation, and education capabilities](defender-for-office-365.md#whats-the-difference-between-microsoft-defender-for-office-365-plan-1-and-plan-2) of Defender for Office 365 Plan 2 that aren't available in Plan 1.

  If you set up your evaluation or trial in **audit mode** (evaluation policies), you can later _convert_ to **blocking mode** (Standard preset security policy). For instructions, see the [Convert to Standard protection](#convert-to-standard-protection) section later in this article.

- **Defender for Office 365 Plan 2**: If you already have Defender for Office 365 Plan 2 (for example, as part of a Microsoft 365 E5 subscription), **Defender for Office 365** isn't available to select on the **Microsoft 365 trials** page at <https://security.microsoft.com/trialHorizontalHub>.

  Your only option is to set up an evaluation of Defender for Office 365 on the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>. Furthermore, the evaluation is automatically set up in **Audit mode** (evaluation policies).

  Later, you can _convert_ to **blocking mode** (Standard preset security policy) using the [**Convert to standard** action on the **Microsoft Defender for Office 365 evaluation** page](#convert-to-standard-protection) or by [turning off the evaluation on the **Microsoft Defender for Office 365 evaluation** page](#manage-evaluation-settings) and then [configuring the Standard preset security policy](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

  By definition, organizations with Defender for Office 365 Plan 2 don't require additional licenses to evaluate Defender for Office 365 Plan 2, so evaluations in these organizations are unlimited in duration.

The information from the previous list is summarized in the following table:

|Organization|Enroll from<br>the Trials page?|Enroll from<br>the Evaluation page?|Available modes|Evaluation<br>period|
|---|:---:|:---:|---|---|
|Standalone EOP (no Exchange Online mailboxes) <br><br> Microsoft 365 E3|Yes|Yes|Audit mode <br><br> Blocking mode¹|90 days|
|Defender for Office 365 Plan 1 <br><br> Microsoft 365 Business Premium|Yes|Yes|Audit mode <br><br> Blocking mode¹|90 days²|
|Microsoft 365 E5|No|Yes|Audit mode <br><br> Blocking mode¹ ³|Unlimited|

¹ As [previously described](#audit-mode-vs-blocking-mode-for-defender-for-office-365), **blocking mode** (Standard preset security policy) isn't available if internet mail flows through a third-party protection service or device before delivery to Microsoft 365.

² The security policies from **audit mode** (evaluation policies) or **blocking mode** (Standard preset security policy) don't expire or stop working after 90 days. The [automation, investigation, remediation, and education capabilities](defender-for-office-365.md#whats-the-difference-between-microsoft-defender-for-office-365-plan-1-and-plan-2) that are exclusive to Defender for Office 365 Plan 2 stop working after 90 days.

³ The evaluation is set up in **audit mode** (evaluation policies). At any point after the setup is complete, you can _convert_ to **blocking mode** (Standard preset security policy) as described in [Convert to Standard protection](#convert-to-standard-protection).

Now that you understand the differences between evaluations, trials, audit mode, and blocking mode, you're ready to set up your evaluation or trial as described in the next sections.

## Set up an evaluation or trial in audit mode

Remember, when you evaluate or try Defender for Office 365 in audit mode, special evaluation policies are created so Defender for Office 365 can detect threats. The settings of these evaluation policies are described in the [Policies in audit mode](#policies-in-audit-mode) section later in this article.

1. Start the evaluation in any of the available locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>. For example:
   - On the banner at the top of any Defender for Office 365 feature page, select **Start free trial**.
   - On the **Microsoft 365 trials** page at <https://security.microsoft.com/trialHorizontalHub>, find and select **Defender for Office 365**.
   - On the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>, select **Start evaluation**.

2. The **Turn on protection** dialog isn't available in organizations with Defender for Office Plan 1 or Plan 2.

   In the **Turn on protection** dialog, select **No, I only want reporting**, and then select **Continue**.

3. In the **Select the users you want to include** dialog, configure the following settings:

   - **All users**: This is the default and recommended option.
   - **Specific users**: If you select this option, you need to select the internal recipients that the evaluation applies to:
     - **Users**: The specified mailboxes, mail users, or mail contacts.
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
       - The specified Microsoft 365 Groups.
       - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

     Click in the box, start typing a value, and select the value from the results below the box. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value in the box.

     For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   > [!NOTE]
   > You can change these selections after you finish setting up the trial as described in the [Manage your trial](#manage-your-evaluation-or-trial-of-defender-for-office-365) section.
   >
   > Multiple different types of conditions or exceptions are not additive; they're inclusive. The evaluation or trial is applied *only* to those recipients that match *all* of the specified recipient filters. For example, you configure a condition with the following values:
   >
   > - **Users**: romain@contoso.com
   > - **Groups**: Executives
   >
   > The evaluation or trial is applied to romain@contoso.com *only* if he's also a member of the Executives group. If he's not a member of the group, then the evaluation or trial is not applied to him.
   >
   > Likewise, if you use the same recipient filter as an exception, the evaluation or trial is not applied to romain@contoso.com *only* if he's also a member of the Executives group. If he's not a member of the group, then the evaluation or trial still applies to him.

   When you're finished in the **Select the users you want to include** dialog, select **Continue**.

4. In the **Help us understand your mail flow** dialog, configure the following options:

   - One of the following options is automatically selected based on our detection of the MX record for your domain:

     - **I'm using a third-party and/or on-premises service provider**: The MX record for your domain points somewhere other than Microsoft 365. Verify or configure the following settings:
       - **Third party service your organization is using**: Verify or select one of the following values:
            - **Other**: This value also requires information in **If your email messages pass through multiple gateways, list each gateway IP address**, which is available only for the value **Other**. Use this value if you're using an on-premises service provider.

              Enter a comma-separated list of the IP addresses that are used by the third-party protection service or device to send mail into Microsoft 365.

            - **Barracuda**
            - **IronPort**
            - **Mimecast**
            - **Proofpoint**
            - **Sophos**
            - **Symantec**
            - **Trend Micro**

       - **The connector to apply this evaluation to**: Select the connector that's used for mail flow into Microsoft 365.

         [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as *skip listing*) is automatically configured on the connector that you specify.

         When a third-party service or device sits in front of email flowing into Microsoft 365, Enhanced Filtering for Connectors correctly identifies the source of internet messages and greatly improves the accuracy of the Microsoft filtering stack (especially [spoof intelligence](anti-phishing-protection-spoofing-about.md), as well as post-breach capabilities in [Threat Explorer](threat-explorer-about.md) and [Automated Investigation & Response (AIR)](air-about-office.md).

     - **I'm only using Microsoft Exchange Online**: The MX records for your domain point to Microsoft 365. There's nothing left to configure, so select **Finish**.

   - **Share data with Microsoft**: This option isn't selected by default, but you can select the check box if you like.

   When you're finished in the **Help us understand your mail flow** dialog, select **Finish**.

5. When set up is complete, you get a **Let us show you around** dialog. Select **Start tour** or **Dismiss**.

## Set up an evaluation or trial in blocking mode

Remember, when you try Defender for Office 365 in **blocking mode**, the Standard preset security is turned on and the specified users (some or everyone) are included in the Standard preset security policy. For more information about the Standard preset security policy, see [Preset security policies](preset-security-policies.md).

1. Start the trial in any of the available locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>. For example:
   - On the banner at the top of any Defender for Office 365 feature page, select **Start free trial**.
   - On the **Microsoft 365 trials** page at <https://security.microsoft.com/trialHorizontalHub>, find and select **Defender for Office 365**.
   - On the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>, select **Start evaluation**.

2. The **Turn on protection** dialog isn't available in organizations with Defender for Office Plan 1 or Plan 2.

   In the **Turn on protection** dialog, select **Yes, protect my organization by blocking threats**, and then select **Continue**.

3. In the **Select the users you want to include** dialog, configure the following settings:

   - **All users**: This is the default and recommended option.
   - **Select users**: If you select this option, you need to select the internal recipients that the trial applies to:
     - **Users**: The specified mailboxes, mail users, or mail contacts.
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
       - The specified Microsoft 365 Groups.
     - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

     Click in the box, start typing a value, and select the value from the results below the box. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value in the box.

     For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   > [!NOTE]
   > You can change these selections after you finish setting up the trial as described in the [Manage your trial](#manage-your-evaluation-or-trial-of-defender-for-office-365) section.
   >
   > Multiple different types of conditions or exceptions are not additive; they're inclusive. The evaluation or trial is applied *only* to those recipients that match *all* of the specified recipient filters. For example, you configure a condition with the following values:
   >
   > - **Users**: romain@contoso.com
   > - **Groups**: Executives
   >
   > The evaluation or trial is applied to romain@contoso.com *only* if he's also a member of the Executives group. If he's not a member of the group, then the evaluation or trial is not applied to him.
   >
   > Likewise, if you use the same recipient filter as an exception, the evaluation or trial is not applied to romain@contoso.com *only* if he's also a member of the Executives group. If he's not a member of the group, then the evaluation or trial still applies to him.

   When you're finished in the **Select the users you want to include** dialog, select **Continue**.

4. A progress dialog appears as your evaluation is set up. When setup is complete, select **Done**.

## Manage your evaluation or trial of Defender for Office 365

After you set up your evaluation or trial in **audit mode**, the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation> is your central location for the results of trying Defender for Office 365 Plan 2.

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> select **Evaluation mode** in the **Others** section. Or, to go directly to the **Microsoft Defender for Office 365 evaluation** page, use <https://security.microsoft.com/atpEvaluation>.

The actions that are available on the **Microsoft Defender for Office 365 evaluation** page are described in the following subsections.

### Manage evaluation settings

On the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>, select **Manage evaluation settings**.

In the **Manage MDO evaluation settings** flyout that opens, the following information and settings are available:

- Whether the evaluation is on is shown at the top of the flyout (**Evaluation on** or **Evaluation off**). This information is also available on the **Microsoft Defender for Office 365 evaluation** page.

  The :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** or **Turn on** action allows you to turn off or turn on the evaluation policies.

- How many days are left in the evaluation is shown at the top of the flyout (**nn days remaining**).

- **Detection capabilities** section: Use the toggles to turn on or turn off the following Defender for Office 365 protections:
  - **Safe Links**
  - **Safe Attachments**
  - **Anti-phishing**

- **Users, groups, and domains** section: Select **Edit users, groups, and domains** to change who the evaluation or trial applies to as described earlier in [Set up an evaluation or trial in audit mode](#set-up-an-evaluation-or-trial-in-audit-mode). 

- **Impersonation settings** section:
  - If impersonation protection isn't configured in the anti-phishing evaluation policy, select **Apply impersonation protection** to configure impersonation protection:
    - Internal and external users (senders) for user impersonation protection.
    - Custom domains for domain impersonation protection.
    - Trusted senders and domains to exclude from impersonation protection.

    The steps are essentially the same as described in the **Impersonation** section in Step 5 at [Use the Microsoft 365 Defender portal to create anti-phishing policies](anti-phishing-policies-mdo-configure.md#use-the-microsoft-365-defender-portal-to-create-anti-phishing-policies).

  - If impersonation protection is configured in the anti-phishing evaluation policy, this section shows the impersonation protection settings for:
    - **User impersonation protection**
    - **Domain impersonation protection**
    - **Trusted impersonated senders and domains**

    To modify the settings, select **Edit impersonation settings**.

When you're finished in the **Manage MDO evaluation settings** flyout, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: **Close**.

### Convert to Standard protection

For your evaluation or trial, you can switch from **audit mode** (evaluation policies) to **blocking mode** (Standard preset security policy) using either of the following methods:

- <u>On the **Microsoft Defender for Office 365 evaluation** page</u>: Select **Convert to standard protection**
- <u>In the **Manage MDO evaluation settings** flyout</u>: On the **Microsoft Defender for Office 365 evaluation** page, select **Manage evaluation settings**. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-convert-to-std-prot-icon.png" border="false"::: **Convert to standard protection**.

After you select **Convert to standard protection**, read the information in the dialog that opens, and then select **Continue**.

You're taken to the **Apply standard protection** wizard on the **Preset security policies** page. The list of recipients that are included and excluded from the evaluation or trial are copied into the Standard preset security policy. For more information, see [Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

- The security policies in the Standard preset security policy have a higher priority than the evaluation policies, which means the policies in the Standard preset security are always applied *before* the evaluation policies, even if both are present and turned on.
- There's no automatic way to go from **blocking mode** to **audit mode**. The manual steps are:
  1. Turn off the Standard preset security policy on the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies>.
  2. On the **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation>, verify the value **Evaluation on** is shown.

     If **Evaluation off** is shown, select **Manage evaluation settings**. In the **Manage MDO evaluation settings** flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on**.

  3. Select **Manage evaluation settings** to verify the users that the evaluation applies to in the **Users, groups, and domains** section in the **Manage MDO evaluation settings** details flyout that opens.

## Reports for your evaluation or trial of Defender for Office 365

This section describes the reports that are available in **audit mode** and **blocking mode**.

### Reports for blocking mode

No special reports are created for **blocking mode**, so use the standard reports that are available in Defender for Office 365. Specifically, you're looking for reports that apply only to Defender for Office 365 features (for example, Safe Links or Safe Attachments) or reports that can be filtered by Defender for Office 365 detections as described in the following list:

- The [Mailflow view for the Mailflow status report](reports-email-security.md#mailflow-view-for-the-mailflow-status-report):
  - Messages detected as user impersonation or domain impersonation by anti-phishing policies appear in **Impersonation block**.
  - Messages detected during file or URL detonation by Safe Attachments policies or Safe Links policies appear in **Detonation block**.

- The [Threat protection status report](reports-email-security.md#threat-protection-status-report):

  You can filter many of the views in the Threat protection status report by the **Protected by** value **MDO** to see the effects of Defender for Office 365.

  - [View data by Overview](reports-email-security.md#view-data-by-overview)
  
  - [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
    - Messages detected by [campaigns](campaigns.md) appear in **Campaign**.
    - Messages detected by Safe Attachments appear in **File detonation** and **File detonation reputation**.
    - Messages detected by user impersonation protection in anti-phishing policies appear in **Impersonation domain**, **Impersonation user**, and **Mailbox intelligence impersonation**.
    - Messages detected by Safe Links appear in **URL detonation** and **URL detonation reputation**.

  - [View data by Email \> Malware and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
    - Messages detected by [campaigns](campaigns.md) appear in **Campaign**.
    - Messages detected by Safe Attachments appear in **File detonation** and **File detonation reputation**.
    - Messages detected by Safe Links appear in **URL detonation** and **URL detonation reputation**.

  - [View data by Email \> Spam and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--spam-and-chart-breakdown-by-detection-technology)

    Messages detected by Safe Links appear in **URL malicious reputation**.

  - [Chart breakdown by Policy type](reports-email-security.md#chart-breakdown-by-policy-type)

    Messages detected by Safe Attachments appear in **Safe Attachments**

  - [View data by Content \> Malware](reports-email-security.md#view-data-by-content--malware)

    Malicious files detected by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md) appear in **MDO detonation**.

- The [Top senders and recipients report](reports-email-security.md#top-senders-and-recipients-report)

  **Show data for Top malware recipients (MDO)** and **Show data for Top phish recipients (MDO)**.

- The [URL protection report](reports-defender-for-office-365.md#url-protection-report)

### Reports for audit mode

In **audit mode**, you're looking for reports that show detections by the evaluation policies as described in the following list:

- The [Email entity page](mdo-email-entity-page.md) (part of [Threat Explorer](threat-explorer-about.md)) shows the following banner in message detection details on the **Analysis** tab for **Bad attachment**, **spam url + malware**, **Phish url**, and **impersonation** messages that were detected by the Defender for Office 365 evaluation:

  :::image type="content" source="../../media/evalv2-detection-banner.png" alt-text="Notification banner in message details that the Defender for Office 365 evaluation detected a malicious email message." lightbox="../../media/evalv2-detection-banner.png":::

- The **Microsoft Defender for Office 365 evaluation** page at <https://security.microsoft.com/atpEvaluation> consolidates the detections from the standard reports that are available in Defender for Office 365. The reports on this page are primarily filtered by **Evaluation: Yes** to show detections by the evaluation policies only, but most reports also use additional clarifying filters.

  By default, the report summaries on the page show data for the last 30 days, but you can filter the date range by selecting :::image type="icon" source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **30 days** and selecting from following additional values that are less than 30 days:

  - **24 hours**
  - **7 days**
  - **14 days**
  - **Custom date range**

  The date range filter affects the data that's displayed in the report summaries on the page and in the main report when you select **View details** in a card.

  Select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Download** to download the chart data to a .csv file.

  - The following reports on the **Microsoft Defender for Office 365 evaluation** page contain filtered information from specific views in the [Threat protection status report](reports-email-security.md#threat-protection-status-report):
    - **Email links**:
      - Report view: [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
      - **Detection** filters: **URL detonation reputation** and **URL detonation**.
    - **Attachments in email**: 
      - Report view: [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
      - **Detection** filters: **File detonation** and **File detonation reputation**.
    - **Impersonation**
      - Report view: [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
      - **Detection** filters: **Impersonation user**, **Impersonation domain**, and **Mailbox intelligence impersonation**.
    - **Attachment links**
      - Report view: [View data by Email \> Malware and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
      - **Detection** filters: **URL detonation** and **URL detonation reputation**.
    - **Embedded malware**
      - Report view: [View data by Email \> Malware and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
      - **Detection** filters: **File detonation** and **File detonation reputation**.
    - **Spoofed senders**: 
      - Report view: [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
     - **Detection** filters: **Spoof intra-org**, **Spoof external domain**, and **Spoof DMARC**.

  - **Real-time URL click protection** uses the [View data by URL click protection action in the URL protection report](reports-defender-for-office-365.md#view-data-by-url-click-protection-action-in-the-url-protection-report) that's filtered by **Evaluation: Yes**.

    Although the [View data by URL click by application in the URL protection report](reports-defender-for-office-365.md#view-data-by-url-click-by-application-in-the-url-protection-report) isn't shown on the **Microsoft Defender for Office 365 evaluation** page, it's also filterable by **Evaluation: Yes**.

## Required permissions

The following permissions are required in [Azure AD](../../admin/add-users/about-admin-roles.md) to set up an evaluation or trial of Defender for Microsoft 365:

- *Create, modify or delete an evaluation or trial*: Membership in the **Security Administrator** or **Global Administrator** roles.
- *View evaluation policies and reports in audit mode*: Membership in the **Security Administrator** or **Security Reader** roles.

For more information about Azure AD permissions in the Microsoft 365 Defender portal, see [Azure AD roles in the Microsoft 365 Defender portal](mdo-portal-permissions.md#azure-ad-roles-in-the-microsoft-365-defender-portal)

## Frequently asked questions

### Q: Do I need to manually get or activate trial licenses?

A: No. The trial automatically provisions Defender for Office 365 Plan 2 licenses if you need them as previously described.

### Q: How do I extend the trial?

A: See [Extend your trial](/microsoft-365/commerce/try-or-buy-microsoft-365#extend-your-trial).

### Q: What happens to my data after the trial expires?

A: After your trial expires, you have access to your trial data (data from features in Defender for Office 365 that you didn't have previously) for 30 days. After this 30 day period, all policies and data that were associated with the Defender for Office 365 trial are deleted.

### Q: How many times can I use the Defender for Office 365 trial in my organization?

A: A maximum of two times. If your first trial expires, you need to wait at least 30 days after the expiration date before you can enroll in the Defender for Office 365 trial again. After your second trial, you can't enroll in another trial.

### Q: In audit mode, are there scenarios where Defender for Office 365 acts on messages?

A: Yes. For the protection of the service, no one in any program or SKU can turn off or bypass taking action on messages that are classified as malware or high confidence phishing by the service.

### Q: In what order are policies evaluated?

A: See [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies).

## Policy settings associated with Defender for Office 365 evaluations and trials

### Policies in audit mode

> [!WARNING]
> Do not attempt to create, modify, or remove the individual security policies that are associated with the evaluation of Defender for Office 365. The only supported method for creating the individual security policies for the evaluation is to start the evaluation or trial in audit mode in the Microsoft 365 Defender portal for the first time.

[As previously described](#audit-mode-vs-blocking-mode-for-defender-for-office-365), when you choose audit mode for your evaluation or trial, evaluation policies with the required settings to observe but not take action on messages are automatically created.

To see these policies and their settings, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Write-Output -InputObject ("`r`n"*3),"Evaluation anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Evaluation"; Write-Output -InputObject ("`r`n"*3),"Evaluation Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Evaluation"; Write-Output -InputObject ("`r`n"*3),"Evaluation Safe Links policy",("-"*79);Get-SafeLinksPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Evaluation"
```

The settings are also described in the following tables.

#### Anti-phishing evaluation policy settings

|Setting|Value|
|---|---|
|Name|Evaluation Policy|
|AdminDisplayName|Evaluation Policy|
|AuthenticationFailAction|MoveToJmf|
|DmarcQuarantineAction|Quarantine|
|DmarcRejectAction|Reject|
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
|HonorDmarcPolicy|True|
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

#### Safe Attachments evaluation policy settings

|Setting|Value|
|---|---|
|Name|Evaluation Policy|
|Action|Allow|
|ActionOnError|True<sup>\*</sup>|
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

<sup>\*</sup> This parameter has been deprecated and is no longer used.

#### Safe Links evaluation policy settings

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
|EnableSafeLinksForOffice|True|
|EnableSafeLinksForTeams|True|
|IsBuiltInProtection|False|
|LocalizedNotificationTextList|{}|
|RecommendedPolicyType|Evaluation|
|ScanUrls|True|
|TrackClicks|True|

#### Use PowerShell to configure recipient conditions and exceptions to the evaluation or trial in audit mode

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

#### Use PowerShell to turn on or turn off the evaluation or trial in audit mode

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

### Policies in blocking mode

As previously described, **blocking mode** policies are created using the Standard template for [preset security policies](preset-security-policies.md).

To use Exchange Online PowerShell to view the individual security policies that are associated with the Standard preset security policy, and to view and configure the recipient conditions and exceptions for the preset security policy, see [Preset security policies in Exchange Online PowerShell](preset-security-policies.md#preset-security-policies-in-exchange-online-powershell).
