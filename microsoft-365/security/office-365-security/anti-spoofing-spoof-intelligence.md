---
title: Spoof intelligence insight
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MET150
ms.assetid: 978c3173-3578-4286-aaf4-8a10951978bf
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn about the spoof intelligence insight in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Spoof intelligence insight in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email messages are automatically protected against spoofing. EOP uses **spoof intelligence** as part of your organization's overall defense against phishing. For more information, see [Anti-spoofing protection in EOP](anti-phishing-protection-spoofing-about.md).

When a sender spoofs an email address, they appear to be a user in one of your organization's domains, or a user in an external domain that sends email to your organization. Attackers who spoof senders to send spam or phishing email need to be blocked. But there are scenarios where legitimate senders are spoofing. For example:

- Legitimate scenarios for spoofing internal domains:
  - Third-party senders use your domain to send bulk mail to your own employees for company polls.
  - An external company generates and sends advertising or product updates on your behalf.
  - An assistant regularly needs to send email for another person within your organization.
  - An internal application sends email notifications.

- Legitimate scenarios for spoofing external domains:
  - The sender is on a mailing list (also known as a discussion list), and the mailing list relays email from the original sender to all the participants on the mailing list.
  - An external company sends email on behalf of another company (for example, an automated report or a software-as-a-service company).

You can use the *spoof intelligence insight* in the Microsoft 365 Defender portal to quickly identify spoofed senders who are legitimately sending you unauthenticated email (messages from domains that don't pass SPF, DKIM, or DMARC checks), and manually allow those senders.

By allowing known senders to send spoofed messages from known locations, you can reduce false positives (good email marked as bad). By monitoring the allowed spoofed senders, you provide an additional layer of security to prevent unsafe messages from arriving in your organization.

Likewise, you can use the spoof intelligence insight to review spoofed senders that were allowed by spoof intelligence and manually block those senders.

The rest of this article explains how to use the spoof intelligence insight in the Microsoft 365 Defender portal and in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

> [!NOTE]
>
> - Only spoofed senders that were detected by spoof intelligence appear in the spoof intelligence insight. When you override the allow or block verdict in the insight, the spoofed sender becomes a manual allow or block entry that appears only on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=SpoofItem>. You can also manually create allow or block entries for spoofed senders before they're detected by spoof intelligence. For more information, see [Spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#spoofed-senders-in-the-tenant-allowblock-list).
>
> - The spoof intelligence insight and the **Spoofed senders** tab in the Tenant Allow/Block list replace the functionality of the spoof intelligence policy that was available on the anti-spam policy page in the Security & Compliance Center.
>
> - The spoof intelligence insight shows 7 days worth of data. The **Get-SpoofIntelligenceInsight** cmdlet shows 30 days worth of data.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList?viewid=SpoofItem>. To go directly to the **Spoof intelligence insight** page, use <https://security.microsoft.com/spoofintelligence>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Allow or block spoofed senders or turn on or turn off spoof intelligence_: Membership in one of the following role groups:
      - **Organization Management**
      - **Security Administrator** <u>and</u> **View-Only Configuration** or **View-Only Organization Management**.
    - _Read-only access to the spoof intelligence insight_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for anti-phishing policies, see [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings).

- You enable and disable spoof intelligence in anti-phishing policies in EOP and Microsoft Defender for Office 365. Spoof intelligence is enabled by default. For more information, see [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md) or [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md).

- For our recommended settings for spoof intelligence, see [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings).

## Find the spoof intelligence insight in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Spoofed senders** tab.

3. On the **Spoofed senders** tab, the spoof intelligence insight looks like this:

   :::image type="content" source="../../media/m365-sc-spoof-intelligence-insight.png" alt-text="The Spoof intelligence insight on the Anti-phishing policy page" lightbox="../../media/m365-sc-spoof-intelligence-insight.png":::

   The insight has two modes:

   - **Insight mode**: If spoof intelligence is enabled, the insight shows you how many messages were detected by spoof intelligence during the past seven days.
   - **What if mode**: If spoof intelligence is disabled, then the insight shows you how many messages *would have been* detected by spoof intelligence during the past seven days.

To view information about the spoof intelligence detections, select **View spoofing activity** in the spoof intelligence insight to go to the **Spoof intelligence insight** page.

### View information about spoof detections

> [!NOTE]
> Remember, only spoofed senders that were detected by spoof intelligence appear on this page.

The **Spoof intelligence insight** page at <https://security.microsoft.com/spoofintelligence> is available when you select **View spoofing activity** from the spoof intelligence insight on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page.

On the **Spoof intelligence insight** page, you can sort the entries by clicking on an available column header. The following columns are available:

- **Spoofed user**: The **domain** of the spoofed user that's displayed in the **From** box in email clients. The From address is also known as the `5322.From` address.
- **Sending infrastructure**: Also known as the _infrastructure_. The sending infrastructure is one of the following values:
  - The domain found in a reverse DNS lookup (PTR record) of the source email server's IP address.
  - If the source IP address has no PTR record, then the sending infrastructure is identified as \<source IP\>/24 (for example, 192.168.100.100/24).
  - A verified DKIM domain.
- **Message count**: The number of messages from the combination of the spoofed domain _and_ the sending infrastructure to your organization within the last seven days.
- **Last seen**: The last date when a message was received from the sending infrastructure that contains the spoofed domain.
- **Spoof type**: One of the following values:
  - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
  - **External**: The spoofed sender is in an external domain.
- **Action**: This value is **Allowed** or **Blocked**:
  - **Allowed**: The domain failed explicit email authentication checks [SPF](email-authentication-anti-spoofing.md), [DKIM](email-authentication-dkim-configure.md), and [DMARC](email-authentication-dmarc-configure.md). However, the domain passed our implicit email authentication checks ([composite authentication](email-authentication-about.md#composite-authentication)). As a result, no anti-spoofing action was taken on the message.
  - **Blocked**: Messages from the combination of the spoofed domain _and_ sending infrastructure are marked as bad by spoof intelligence. The action that's taken on the spoofed messages is controlled by the default anti-phishing policy or custom anti-phishing policies (the default value is **Move message to Junk Email folder**). For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md).

To change the list of spoofed senders from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Spoof type**: The available values are **Internal** and **External**.
- **Action**: The available values are **Allow** and **Block**

When you're finished in the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific entries.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of spoof detections to a CSV file.

### View details about spoof detections

When you select a spoof detection from the list by clicking anywhere in the row other than the check box next to the first column, a details flyout opens that contains the following information:

- **Why did we catch this?** section: Why we detected this sender as spoof, and what you can do for further information.
- **Domain summary** section: Includes the same information from the main **Spoof intelligence insight** page.
- **WhoIs data** section: Technical information about the sender's domain.
- **Explorer investigation** section: In Defender for Office 365 organization, this section contains a link to open [Threat Explorer](threat-explorer-about.md) to see additional details about the sender on the **Phish** tab.
- **Similar Emails** section: Contains the following information about the spoof detection:
  - **Date**
  - **Subject**
  - **Recipient**
  - **Sender**
  - **Sender IP**

  Select **Customize columns** to remove the columns that are shown. When you're finished, select **Apply**.

> [!TIP]
> To see details about other entries without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

To change the spoof detection from **Allow** to **Block** or vice-versa, see the next section.

### Override the spoof intelligence verdict

On the **Spoof intelligence insight** page at <https://security.microsoft.com/spoofintelligence>, use either of the following methods to override the spoof intelligence verdict:

- Select one or more entries from the list by selecting the check box next to the first column.
  1. Select the :::image type="icon" source="../../media/m365-cc-sc-bulk-actions-icon.png" border="false"::: **Bulk actions** action that appears.
  2. In the **Bulk actions** flyout that opens, select **Allow to spoof** or **Block from spoofing**, and then select **Apply**.

- Select the entry from the list by clicking anywhere in the row other than the check box.

  In the details flyout that opens, select **Allow to spoof** or **Block from spoofing** at the top of the flyout, and then select **Apply**.

Back on the **Spoof intelligence insight** page, the entry is removed from the list, and is added to the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=SpoofItem>.

### About allowed spoofed senders

Messages from an allowed spoofed sender (automatically detected or manually configured) are allowed only using the combination of the spoofed domain *and* the sending infrastructure. For example, the following spoofed sender is allowed to spoof:

- **Domain**: gmail.com
- **Infrastructure**: tms.mx.com

Only email from that domain/sending infrastructure pair is allowed to spoof. Other senders attempting to spoof gmail.com aren't automatically allowed. Messages from senders in other domains that originate from tms.mx.com are still checked by spoof intelligence, and might be blocked.

## Use the spoof intelligence insight in Exchange Online PowerShell or standalone EOP PowerShell

In PowerShell, you use the **Get-SpoofIntelligenceInsight** cmdlet to *view* allowed and blocked spoofed senders that were detected by spoof intelligence. To manually allow or block the spoofed senders, you need to use the **New-TenantAllowBlockListSpoofItems** cmdlet. For more information, see [Use PowerShell to create allow entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-create-allow-entries-for-spoofed-senders-in-the-tenant-allowblock-list) and [Use PowerShell to create block entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-powershell-to-create-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list).

To view the information in the spoof intelligence insight, run the following command:

```powershell
Get-SpoofIntelligenceInsight
```

For detailed syntax and parameter information, see [Get-SpoofIntelligenceInsight](/powershell/module/exchange/get-spoofintelligenceinsight).

## Other ways to manage spoofing and phishing

Be diligent about spoofing and phishing protection. Here are related ways to check on senders who are spoofing your domain and help prevent them from damaging your organization:

- Check the **Spoof Mail Report**. Use this report often to view and help manage spoofed senders. For information, see [Spoof Detections report](reports-email-security.md#spoof-detections-report).

- Review your Sender Policy Framework (SPF) configuration. For a quick introduction to SPF and to get it configured quickly, see [Set up SPF in Microsoft 365 to help prevent spoofing](email-authentication-spf-configure.md). For a more in-depth understanding of how Microsoft 365 uses SPF, or for troubleshooting or non-standard deployments such as hybrid deployments, start with [How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing](email-authentication-anti-spoofing.md).

- Review your DomainKeys Identified Mail (DKIM) configuration. You should use DKIM in addition to SPF and DMARC to help prevent attackers from sending messages that look like they are coming from your domain. DKIM lets you add a digital signature to email messages in the message header. For information, see [Use DKIM to validate outbound email sent from your custom domain in Office 365](email-authentication-dkim-configure.md).

- Review your Domain-based Message Authentication, Reporting, and Conformance (DMARC) configuration. Implementing DMARC with SPF and DKIM provides additional protection against spoofing and phishing email. DMARC helps receiving mail systems determine what to do with messages sent from your domain that fail SPF or DKIM checks. For information, see [Use DMARC to validate email in Office 365](email-authentication-dmarc-configure.md).
