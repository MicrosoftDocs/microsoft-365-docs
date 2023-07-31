---
title: Manage submissions
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier1
ms.custom: seo-marvel-apr2020
description: "Admins can learn how to use the Submissions page in the Microsoft 365 Defender portal to submit messages, URLs, and email attachments to Microsoft for analysis. Reasons for submission include: legitimate messages that were blocked, suspicious messages that were allowed, suspected phishing email, spam, malware, and other potentially harmful messages."
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 7/7/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Exchange Online mailboxes, admins can use the **Submissions** page in the Microsoft 365 Defender portal to submit messages, URLs, and attachments to Microsoft for analysis. There are two basic types of admin submissions:

- **Admin-originated submissions**: Admins identify and report messages, attachments, or URLs (entities) by selecting :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis** from the tabs on the **Submissions** page as described in the [Admin-originated submissions](#admin-originated-submissions) section.

  After the admin reports the entity, an entry appears on the corresponding tab on the **Submissions** page (anywhere except the **User reported** tab).

- **Admin submission of user reported messages**: The built-in [user reporting experience](submissions-user-reported-messages-custom-mailbox.md) is turned on and configured. User reported messages appear on the **User reported** tab on the **Submissions** page, and admins submit or resubmit the messages to Microsoft from the **User reported** tab.

  After an admin submits the message from the **User reported** tab, an entry is also created on the corresponding tab on the **Submissions** page (for example, the **Emails** tab). These types of admin submissions are described in the [Admin options for user reported messages](#admin-options-for-user-reported-messages) section.

When admins submit messages for analysis, Microsoft does the following checks:

- **Email authentication check** (email messages only): Whether email authentication passed or failed when it was delivered.
- **Policy hits**: Information about any policies or overrides that might have allowed or blocked the incoming email into the organization, thus overriding our filtering verdicts.
- **Payload reputation/detonation**: Up-to-date examination of any URLs and attachments in the message.
- **Grader analysis**: Review done by human graders to confirm whether or not messages are malicious.

> [!IMPORTANT]
> In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), admins can submit email messages to Microsoft for analysis, but the messages are analyzed for email authentication and policy checks only. Payload reputation, detonation, and grader analysis aren't done for compliance reasons (data isn't allowed to leave the organization boundary).

Watch this short video to learn how to use admin submissions in Microsoft Defender for Office 365 to submit messages to Microsoft for evaluation.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBLPn]

For more information about how **users** can submit messages and files to Microsoft, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

For other ways that **admins** can report messages to Microsoft in the Defender portal, see [Related reporting settings for admins](submissions-report-messages-files-to-microsoft.md#related-reporting-settings-for-admins).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com/>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in the **Security Administrator** or **Security Reader** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Security Administrator** or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- Admins can submit email messages as old as 30 days if they're still available in the mailbox and haven't been purged by the user or an admin.

- Admin submissions are throttled at the following rates:
  - Maximum submissions in any 15-minute period: 150 submissions
  - Same submissions in a 24 hour period: Three submissions
  - Same submissions in a 15-minute period: One submission

- A **Files** tab is available on the **Submissions** page only in organizations with Microsoft 365 Defender or Microsoft Defender for Endpoint Plan 2. For information and instructions to submit files from the **Files** tab, see [Submit files in Microsoft Defender for Endpoint](../defender-endpoint/admin-submissions-mde.md).

## Admin-originated submissions

> [!TIP]
> The tab where you select select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis** doesn't particularly matter, as long as you set **Select the submission type** to the correct value.

### Report questionable email to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** tab is selected.

3. On the **Emails** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis**.

4. In the **Submit to Microsoft for analysis** flyout that opens, enter the following information:

   - **Select the submission type**: Verify the value **Email** is selected.

   - **Add the network message ID or upload the email file**: Select one of the following options:
     - **Add the email network message ID**: The GUID value is available in the **X-MS-Exchange-Organization-Network-Message-Id** header in the message or in the **X-MS-Office365-Filtering-Correlation-Id** header in quarantined messages.
     - **Upload the email file (.msg or .eml)**: Select **Browse files**. In the dialog that opens, find and select the .eml or .msg file, and then select **Open**.

   - **Choose a recipient who had an issue**: Specify the recipients to run a policy check against. The policy check determines if the email bypassed scanning due to user or organization policies or override.

   - **Select a reason for submitting to Microsoft**: Verify **Should have been blocked (False negative)** is selected.

     - **The email should have been categorized as**: Select **Phish**, **Malware**, or **Spam**. If you're not sure, use your best judgment.

     - **Block all emails from this sender or domain**: Select this option to create a block entry for the sender domain or email address in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

       After you select this option, the following settings are available:

       - By default, **Sender** is selected but you can select **Domain** instead.
       - **Remove block entry after**: The default value is **30 days**, but you can select from the following values:
           - **1 day**
           - **7 days**
           - **30 days**
           - **90 days**
           - **Never expire**
           - **Specific date**: The maximum value is 90 days from today.
       - **Block entry note**: Enter optional information about why you're blocking this email.

   When you're finished in the **Submit to Microsoft for analysis** flyout, select **Submit**, and then select **Done**.

:::image type="content" source="../../media/admin-submission-email-block.png" alt-text="Submit a false negative (bad) email to Microsoft for analysis on the Submissions page in the Defender portal." lightbox="../../media/admin-submission-email-block.png":::

After a few moments, the block entry is available on the **Domains & addresses** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=Sender>.

### Report questionable email attachments to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **Email attachments** tab.

3. On the **Email attachments** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis**.

4. On the **Submit to Microsoft for analysis** flyout that opens, enter the following information:

   - **Select the submission type**: Verify the value **Email attachment** is selected.

   - **File**: Select :::image type="icon" source="../../media/m365-cc-sc-import-icon.png" border="false"::: **Browse files** to find and select the file to submit.

   - **Select a reason for submitting to Microsoft**: Verify **Should have been blocked (False negative)** is selected.

     - **The email should have been categorized as**: Select **Phish** or **Malware**. If you're not sure, use your best judgment.

     - **Block this file**: Select this option to create a block entry for the file in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

       After you select this option, the following settings are available:

       - **Remove block entry after**: The default value is **30 days**, but you can select from the following values:
           - **1 day**
           - **7 days**
           - **30 days**
           - **90 days**
           - **Never expire**
           - **Specific date**: The maximum value is 90 days from today.

       - **Block entry note**: Enter optional information about why you're blocking this file.

   When you're finished in the **Submit to Microsoft for analysis** flyout, select **Submit**, and then select **Done**.

:::image type="content" source="../../media/admin-submission-file-block.png" alt-text="Submit a false negative (bad) email attachment to Microsoft for analysis on the Submissions page in the Defender portal." lightbox="../../media/admin-submission-file-block.png":::

After a few moments, the block entry is available on the **Files** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=FileHash>.

### Report questionable URLs to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **URLs** tab.

3. On the **URLs** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis**.

4. In the **Submit to Microsoft for analysis** flyout that opens, enter the following information:

   - **Select the submission type**: Verify the value **URL** is selected.

   - **URL**: Enter the full URL (for example, `https://www.fabrikam.com/marketing.html`), and then select it in the box that appears. You can enter up to 50 URLs at once.

   - **Select a reason for submitting to Microsoft**: Verify **Should have been blocked (False negative)** is selected.

     - **The email should have been categorized as**: Select **Phish** or **Malware**. If you're not sure, use your best judgment.

     - **Block this URL**: Select this option to create a block entry for the URL in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

       After you select this option, the following settings are available:

       - **Remove block entry after**: The default value is **30 days**, but you can select from the following values:
           - **1 day**
           - **7 days**
           - **30 days**
           - **90 days**
           - **Never expire**
           - **Specific date**: The maximum value is 90 days from today.

       - **Block entry note**: Enter optional information about why you're blocking this URL.

   When you're finished in the **Submit to Microsoft for analysis** flyout, select **Submit**, and then select **Done**.

:::image type="content" source="../../media/admin-submission-url-block.png" alt-text="Submit a false negative (bad) URL to Microsoft for analysis on the Submissions page in the Defender portal." lightbox="../../media/admin-submission-url-block.png":::

After a few moments, the block entry is available on the **URL** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=Url>.

### Report good email to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** tab is selected.

3. On the **Emails** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis**.

4. In the **Submit to Microsoft for analysis** flyout that opens, enter the following information:

   - **Select the submission type**: Verify the value **Email** is selected.

   - **Add the network message ID or upload the email file**: Select one of the following options:
     - **Add the email network message ID**: The GUID value is available in the **X-MS-Exchange-Organization-Network-Message-Id** header in the message or in the **X-MS-Office365-Filtering-Correlation-Id** header in quarantined messages.
     - **Upload the email file (.msg or .eml)**: Select **Browse files**. In the dialog that opens, find and select the .eml or .msg file, and then select **Open**.

   - **Choose a recipient who had an issue**: Specify the recipients to run a policy check against. The policy check determines if the email was blocked due to user or organization policies or overrides.

   - **Select a reason for submitting to Microsoft**: Select **Should not have been blocked (False positive)**, and then configure the following settings:

     - **Allow emails with similar attributes (URL, sender, etc.)**: Turn on this setting :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

         - **Remove allow entry after**: The default value is **30 days**, but you can select from the following values:
           - **1 day**
           - **7 days**
           - **30 days**
           - **Specific date**: The maximum value is 30 days from today.

           For spoofed senders, this value is meaningless, because entries for spoofed senders never expire.

         - **Allow entry note**: Enter optional information about why you're allowing and submitting this email message.

           For spoofed senders, any value you enter here isn't shown in the allow entry on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page.

   When you're finished in the **Submit to Microsoft for analysis** flyout, select **Submit**, and then select **Done**.

   :::image type="content" source="../../media/admin-submission-email-allow.png" alt-text="Submit a false positive (good) email to Microsoft for analysis on the Submissions page in the Defender portal." lightbox="../../media/admin-submission-email-allow.png":::

After a few moments, the associated allow entries appear on the **Domains & addresses**, **Spoofed senders**, **URLs**, or **Files** tabs on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList>.

> [!IMPORTANT]
>
> - Allow entries are added during mail flow based on the filters that determined the message was malicious. For example, if the sender email address and a URL in the message were determined to be bad, an allow entry is created for the sender (email address or domain) and the URL.
> - If the sender email address is not found to be malicious by our filtering system, submitting the email message to Microsoft won't create an allow entry in the Tenant Allow/Block List.
> - When an allowed domain or email address, spoofed sender, URL, or file (_entity_) is encountered again, all filters that are associated with the entity are skipped. For email messages, all other entities are still evaluated by the filtering system before making a decision.
> - During mail flow, if messages from the allowed domain or email address pass other checks in the filtering stack, the messages are delivered. For example, if a message passes [email authentication checks](email-authentication-about.md), a message from an allowed sender email address are delivered.
> - By default, allow entries for domains and email addresses exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages from those domains or email addresses are delivered, unless something else in the message is detected as malicious. By default, allow entries for spoofed senders never expire.
> - For messages that were incorrectly blocked by [domain or user impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365), the allow entry for the domain or sender is not created in the Tenant Allow/Block List. Instead, the domain or sender is added to the **Trusted senders and domains** section in the [anti-phishing policy](anti-phishing-policies-mdo-configure.md#use-the-microsoft-365-defender-portal-to-modify-anti-phishing-policies) that detected the message.
> - When you override the verdict in the spoof intelligence insight, the spoofed sender becomes a manual allow or block entry that only appears on the **Spoofed senders** on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=SpoofItem>.

### Report good email attachments to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **Email attachments** tab.

3. On the **Email attachments** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis**.

4. On the **Submit to Microsoft for analysis** flyout that opens, enter the following information:

   - **Select the submission type**: Verify the value **Email attachment** is selected.

   - **File**: Select **Browse files** to find and select the file to submit.

   - **Select a reason for submitting to Microsoft**: Select **Should not have been blocked (False positive)**, and then configure the following settings:

     - **Allow this file**: Turn on this setting :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

         - **Remove allow entry after**: The default value is **30 days**, but you can select from the following values:
           - **1 day**
           - **7 days**
           - **30 days**
           - **Specific date**: The maximum value is 30 days from today.

         - **Allow entry note**: Enter optional information about why you're allowing and submitting this file.

   When you're finished in the **Submit to Microsoft for analysis** flyout, select **Submit**, and then select **Done**.

   :::image type="content" source="../../media/admin-submission-file-allow.png" alt-text="Submit a false positive (good) email attachment to Microsoft for analysis on the Submissions page in the Defender portal." lightbox="../../media/admin-submission-file-allow.png":::

After a few moments, the allow entry is available on the **Files** tab on the **Tenant Allow/Block List** page. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

> [!IMPORTANT]
>
> - By default, allow entries for files exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages that contain those files are delivered, unless something else in the message is detected as malicious.
> - When the file is encountered again during mail flow, [Safe Attachments](safe-attachments-about.md) detonation or file reputation checks and all other file-based filters are overridden. If the filtering system determines that all other entities in the email message are clean, the message are delivered.
> - During selection, all file-based filters, including [Safe Attachments](safe-attachments-about.md) detonation or file reputation checks are overridden, allowing user access to the file.

### Report good URLs to Microsoft

For URLs reported as false positives, we allow subsequent messages that contain variations of the original URL. For example, you use the **Submissions** page to report the incorrectly blocked URL `www.contoso.com/abc`. If your organization later receives a message that contains the URL (for example but not limited to: `www.contoso.com/abc`, `www.contoso.com/abc?id=1`, `www.contoso.com/abc/def/gty/uyt?id=5`, or `*.contoso.com/abc`), the message won't be blocked based on the URL. In other words, you don't need to report multiple variations of the same URL as good to Microsoft.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **URLs** tab

3. On the **URLs** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis**.

4. In the **Submit to Microsoft for analysis** flyout that opens, enter the following information:

   - **Select the submission type**: Verify the value **URL** is selected.

   - **URL**: Enter the full URL (for example, `https://www.fabrikam.com/marketing.html`), and then select it in the box that appears. You can also provide a top level domain (for example, `https://www.fabrikam.com/*`), and then select it in the box that appears. You can enter up to 50 URL at once.

   - **Select a reason for submitting to Microsoft**: Select **Should not have been blocked (False positive)**, and then configure the following settings:

     - **Allow this URL**: Turn on this setting :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

         - **Remove allow entry after**: The default value is **30 days**, but you can select from the following values:
           - **1 day**
           - **7 days**
           - **30 days**
           - **Specific date**: The maximum value is 30 days from today.

         - **Allow entry note**: Enter optional information about why you're allowing and submitting this URL.

   When you're finished in the **Submit to Microsoft for analysis** flyout, select **Submit**, and then select **Done**.

   :::image type="content" source="../../media/admin-submission-url-allow.png" alt-text="Submit a false positive (good) URL to Microsoft for analysis on the Submissions page in the Defender portal." lightbox="../../media/admin-submission-url-allow.png":::

After a few moments, the allow entry is available on the **URL** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=Url>.

> [!NOTE]
>
> - By default, allow entries for URLs exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages that contain those URLs are delivered, unless something else in the message is detected as malicious.
> - When the URL is encountered again during mail flow, [Safe Links](safe-links-about.md) detonation or URL reputation checks and all other URL-based filters are overridden. If the filtering system determines that all other entities in the email message are clean, the message are delivered.
> - During selection, all URL-based filters, including [Safe Links](safe-links-about.md) detonation or URL reputation checks are overridden, allowing user access to content at the URL.

### Report Teams messages to Microsoft

You can't submit Teams messages from the **Teams messages** tab on the **Submissions** page. The only way to submit a Teams message to Microsoft for analysis is to submit a user reported Teams message from the **User reported** tab as described in the [Submit user reported messages to Microsoft for analysis](#submit-user-reported-messages-to-microsoft-for-analysis) section later in this article.

The entries on the **Teams messages** tab are the result of submitting user reported Teams message to Microsoft. For more information, see the [View converted admin submissions](#view-converted-admin-submissions) section later in this article.

### View email admin submissions to Microsoft

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

On the **Submissions** page, verify that the **Emails** tab is selected.

On the **Emails** tab, you can quickly filter the view by selecting one of the available quick filters:

- **Pending**
- **Completed**

:::image type="content" source="../../media/submissions-quick-filters.png" alt-text="The quick filters available for admin submissions on the Emails tab of the Submissions page." lightbox="../../media/submissions-quick-filters.png":::

You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **Submission name**<sup>\*</sup>
- **Sender**<sup>\*</sup>
- **Recipient**
- **Date submitted**<sup>\*</sup>
- **Reason for submitting**<sup>\*</sup>
- **Original verdict**<sup>\*</sup>
- **Status**<sup>\*</sup>
- **Result**<sup>\*</sup>
- **Delivery/Block reason**
- **Submission ID**
- **Network Message ID**
- **Direction**
- **Sender IP**
- **Bulk compliant level (BCL)**
- **Destination**
- **Policy action**
- **Submitted by**
- **Phish simulation**
- **Tags**<sup>\*</sup>: For more information about user tags, see [User tags](user-tags-about.md).
- **Action**

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select one of the following values:

- **Reason**
- **Original verdict**
- **Status**
- **Result**
- **Tags**

To ungroup the entries, select **None**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Date submitted**: **Start date** and **End date** values.
- **Submission ID**: A GUID value that's assigned to every submission.
- **Network Message ID**
- **Sender**
- **Recipient**
- **Submission name**
- **Submitted by**
- **Reason for submitting**: Any of the following values:
  - **Not junk**
  - **Phish**
  - **Malware**
  - **Spam**.
- **Status**: **Pending** and **Completed**.
- **Tags**: **All** or select [user tags](user-tags-about.md) from the dropdown list.

When you're finished on the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of entries to a CSV file.

### View Teams admin submissions to Microsoft

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

On the **Submissions** page, select the **Teams messages** tab.

You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **Submission name**<sup>\*</sup>
- **Sender**sup>\*</sup>
- **Date submitted**<sup>\*</sup>
- **Reason for submitting**<sup>\*</sup>
- **Submitted by**
- **Status**<sup>\*</sup>
- **Result**<sup>\*</sup>
- **Recipient**
- **Submission ID**
- **Teams message ID**
- **Destination**
- **Phish simulation**
- **Tags**<sup>\*</sup>: For more information about user tags, see [User tags](user-tags-about.md).

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select one of the following values:

- **Reason**
- **Original verdict**
- **Status**
- **Result**
- **Tags**

To ungroup the entries, select **None**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Date submitted**: **Start date** and **End date**.
- **Submission ID**: A GUID value that's assigned to every submission.
- **Teams message**
- **Submitted by**
- **Reason for submitting**: Any of the following values:
  - **Not junk**
  - **Phish**
  - **Malware**
- **Status**: **Pending** and **Completed**.
- **Tags**: **All** or select [user tags](user-tags-about.md) from the dropdown list.

When you're finished on the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of entries to a CSV file.

### View email attachment admin submissions to Microsoft

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

On the **Submissions** page, select the **Email attachments** tab.

On the **Email attachments** tab, you can quickly filter the view by selecting one of the available quick filters:

- **Pending**
- **Completed**

:::image type="content" source="../../media/submissions-quick-filters.png" alt-text="The quick filters available for admin submissions on the Email attachments tab of the Submissions page." lightbox="../../media/submissions-quick-filters.png":::

You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **Attachment filename**<sup>\*</sup>
- **Date submitted**<sup>\*</sup>
- **Reason for submitting**<sup>\*</sup>
- **Status**<sup>\*</sup>
- **Result**<sup>\*</sup>
- **Filter verdict**
- **Delivery/Block reason**
- **Submission ID**
- **Object ID**
- **Policy action**
- **Submitted by**
- **Tags**<sup>\*</sup>: For more information about user tags, see [User tags](user-tags-about.md).
- **Action**

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select one of the following values:

- **Reason**
- **Original verdict**
- **Status**
- **Result**
- **Tags**

To ungroup the entries, select **None**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Date submitted**: **Start date** and **End date**.
- **Submission ID**: A GUID value that's assigned to every submission.
- **Attachment filename**
- **Submitted by**
- **Reason for submitting**: Any of the following values:
  - **Not junk**
  - **Phish**
  - **Malware**
  - **Spam**.
- **Status**: **Pending** and **Completed**.
- **Tags**: **All** or select [user tags](user-tags-about.md) from the dropdown list.

When you're finished on the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of entries to a CSV file.

### View URL admin submissions to Microsoft

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

On the **Submissions** page, select the **URLs** tab.

On the **URLs** tab, you can quickly filter the view by selecting one of the available quick filters:

- **Pending**
- **Completed**

:::image type="content" source="../../media/submissions-quick-filters.png" alt-text="The quick filters available for admin submissions on the URLs tab of the Submissions page." lightbox="../../media/submissions-quick-filters.png":::

You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **URL**<sup>\*</sup>
- **Date submitted**<sup>\*</sup>
- **Reason for submitting**<sup>\*</sup>
- **Status**<sup>\*</sup>
- **Result**<sup>\*</sup>
- **Filter verdict**
- **Delivery/Block reason**
- **Submission ID**
- **Object ID**
- **Policy action**
- **Submitted by**
- **Tags**<sup>\*</sup>: For more information about user tags, see [User tags](user-tags-about.md).
- **Action**

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select one of the following values:

- **Reason**
- **Original verdict**
- **Status**
- **Result**
- **Tags**

To ungroup the entries, select **None**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Date submitted**: **Start date** and **End date**.
- **Submission ID**: A GUID value that's assigned to every submission.
- **URL**
- **Submitted by**
- **Reason for submitting**: Any of the following values:
  - **Not junk**
  - **Phish**
  - **Malware**
  - **Spam**
- **Status**: **Pending** and **Completed**.
- **Tags**: **All** or select [user tags](user-tags-about.md) from the dropdown list.

When you're finished on the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of entries to a CSV file.

### Admin submission result details

Email messages, Teams messages, email attachments, and URLs that admins submit to Microsoft for analysis are available on the corresponding tabs on the **Submissions** page.

When you select an entry on the tab by clicking anywhere in the row other than the check box next to the first column, complete information about the original reported item, the status of the reported item, and the analysis results of the reported item are shown in the details flyout that opens:

- If there was a failure in the sender's email authentication at the time of delivery.
- Information about any policies or overrides that could have affected or overridden the message verdict from filtering system.
- Current detonation results to see if the URLs or files in the message were malicious or not.
- Feedback from graders.

If an override or policy configuration was found, the result should be available in several minutes. If there wasn't a problem in email authentication or delivery wasn't affected by an override or policy, the detonation and feedback from graders could take up to a day.

### Actions for admin submissions in Defender for Office 365 Plan 2

In organizations with Microsoft Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5), the following actions are available for admin submissions in the details flyout that opens after you select an entry from the list by clicking anywhere in the row other than the check box:

- :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity**: Available in the details flyout of entries on the **Emails** tab only. For more information, see [How to read the email entity page](mdo-email-entity-page.md#how-to-read-the-email-entity-page).

- :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take actions**: Available in the details flyout of entries on the **Emails** tab only. This action starts the same Action wizard that's available on the email entity page. For more information, see [Actions you can take on the Email entity Page](mdo-email-entity-page.md#actions-you-can-take-on-the-email-entity-page).

- :::image type="icon" source="../../media/m365-cc-sc-view-alert-icon.png" border="false"::: **View alert**. An alert is triggered when an admin submission is created or updated. Selecting this action takes you to the details of the alert.

- In the **Result details** section, the following links for [Threat Explorer](threat-explorer-about.md) might also be available, depending on the status and result of the reported item:
  - **View this message in Explorer**: **Emails** tab only.
  - **Search for similar messages in Explorer**: **Emails** tab only.
  - **Search for URL or file**: **Email attachments** or **URL** tabs only.

## Admin options for user reported messages

Admins can see what users are reporting on the **User reported** tab on the **Submissions** page if the following statements are true:

- The [user reported settings](submissions-user-reported-messages-custom-mailbox.md) are turned on.
- **Email messages**: You're using supported methods for users to report messages:
  - The [Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md).
  - The [built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web).
  - [Supported third-party reporting tools](submissions-user-reported-messages-custom-mailbox.md#options-for-third-party-reporting-tools)
- **Teams messages**: [User reporting settings for Teams messages](submissions-teams.md#user-reporting-settings-for-teams-messages) is turned on.

**Notes**:

- User reported messages that are sent to Microsoft only or to Microsoft and the [reporting mailbox](submissions-user-reported-messages-custom-mailbox.md) appear on the **User reported** tab. Although these messages have already been reported to Microsoft, admins can resubmit the reported messages.
- User reported messages that are sent only to the reporting mailbox appear on the **User reported** tab with the **Result** value **Not Submitted to Microsoft**. Admins should report these messages to Microsoft for analysis.

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

On the **Submissions** page, select the **User reported** tab.

The following subsections describe the information and actions that are available on the **User reported** tab on the **Submissions** page.

### View user reported messages to Microsoft

On the **User reported** tab, you can quickly filter the view by selecting one of the available quick filters:

- **Threats**
- **Spam**
- **No threats**
- **Simulations**

:::image type="content" source="../../media/submissions-user-reported-quick-filters.png" alt-text="Quick filters on the User reported tab on the Submissions page." lightbox="../../media/submissions-user-reported-quick-filters.png":::

You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **Name and type**<sup>\*</sup>
- **Reported by**<sup>\*</sup>
- **Date reported**<sup>\*</sup>
- **Sender**<sup>\*</sup>
- **Reported reason**<sup>\*</sup>
- **Original verdict**<sup>\*</sup>
- **Result**<sup>\*</sup>: Contains the following information for reported messages based on the [user reported settings](submissions-user-reported-messages-custom-mailbox.md):
  - **Send the reported messages to** \> **Microsoft and my reporting mailbox** or **Microsoft only**: Values derived from the following analysis:
    - **Policy hits**: Information about any policies or overrides that may have allowed or blocked the incoming messages, including overrides to our filtering verdicts. The result should be available within several minutes. Otherwise, detonation and feedback from graders could take up to one day.
    - **Payload reputation/detonation**: Up-to-date examination of any URLs and files in the message.
    - **Grader analysis**: Review done by human graders in order to confirm whether or not messages are malicious.
  - **Send the reported messages to** \> **My reporting mailbox only**: The value is always **Not submitted to Microsoft**, because the messages weren't analyzed by Microsoft.
- **Message reported ID**
- **Network Message ID**
- **Teams message ID**
- **Sender IP**
- **Reported from**
- **Phish simulation**
- **Converted to admin submission**
- **Marked as**<sup>\*</sup>
- **Marked by**
- **Date marked**
- **Tags**<sup>\*</sup>: For more information about user tags, see [User tags](user-tags-about.md).

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select one of the following values:

- **Sender**
- **Reported by**
- **Original verdict**
- **Result**
- **Reported from**
- **Converted to admin submission**
- **Tags**

To ungroup the entries, select **None**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Date reported**: **Start date** and **End date**.
- **Reported by**
- **Name**
- **Message reported ID**
- **Network message ID**
- **Teams message ID**
- **Sender**
- **Reported reason**: The values **No threats**, **Phish**, and **Spam**.
- **Reported from**: The values **Microsoft** and **Third party**.
- **Phish simulation**: The values **Yes** and **No**.
- **Converted to admin submission**: The values **Yes** and **No**.
- **Message type**: The values **Email** and **Teams**.
- **Tags**: **All** or select [user tags](user-tags-about.md) from the dropdown list.

When you're finished on the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of entries to a CSV file.

For more information about the actions that are available for messages on the **User reported** tab, see the next subsection.

### Admin actions for user reported messages

On the **User reported** tab, actions for user reported messages are available on the tab itself or in the details flyout of a selected entry:

- Select the message from the list by selecting the check box next to the first column. The following actions are available on the **User reported** tab:
  - :::image type="icon" source="../../media/m365-cc-sc-submit-user-reported-message-icon.png" border="false"::: **[Submit to Microsoft for analysis](#submit-user-reported-messages-to-microsoft-for-analysis)**
  - :::image type="icon" source="../../media/m365-cc-scc-mark-and-notify-icon.png" border="false"::: **[Mark as and notify](#notify-users-about-admin-submitted-messages-to-microsoft)**

- Select the message from the list by clicking anywhere in the row other than the check box. The following actions are available in the details flyout that opens<sup>\*</sup>:
  - :::image type="icon" source="../../media/m365-cc-sc-submit-user-reported-message-icon.png" border="false"::: **[Submit to Microsoft for analysis](#submit-user-reported-messages-to-microsoft-for-analysis)**
  - :::image type="icon" source="../../media/m365-cc-scc-mark-and-notify-icon.png" border="false"::: **[Mark as and notify](#notify-users-about-admin-submitted-messages-to-microsoft)**
  - :::image type="icon" source="../../media/m365-cc-sc-view-submission-icon.png" border="false"::: **[View the converted admin submission](#view-converted-admin-submissions)**
  - [Actions in Microsoft Defender for Office 365 Plan 2 only](#actions-for-user-reported-messages-in-defender-for-office-365-plan-2):
    - :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity**
    - :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take actions**
    - :::image type="icon" source="../../media/m365-cc-sc-view-alert-icon.png" border="false"::: **View alert**

  > [!TIP]
  > To see details or take action on other user reported messages without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

<sup>\*</sup> Depending on the nature and status of the message, some actions might not be available, are available directly at the top of the flyout, or are available under :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** at the top of the flyout.

These actions are described in the following subsections.

> [!NOTE]
> After a user reports a suspicious message, the user or admins can't undo the reporting of the message, regardless of where the reported message goes (to the reporting mailbox, to Microsoft, or both). The user can recover the reported message from their Deleted Items or Junk Email folders.

#### Submit user reported messages to Microsoft for analysis

After you select the message on the **User reported** tab, use either of the following methods to submit the message to Microsoft:

- **On the User reported tab**: Select :::image type="icon" source="../../media/m365-cc-sc-submit-user-reported-message-icon.png" border="false"::: **Submit to Microsoft for analysis***.

- **In the details flyout of the selected message**: Select :::image type="icon" source="../../media/m365-cc-sc-submit-user-reported-message-icon.png" border="false"::: **Submit to Microsoft for analysis** or :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More options** \> :::image type="icon" source="../../media/m365-cc-sc-submit-user-reported-message-icon.png" border="false"::: **Submit to Microsoft for analysis** at the top of the flyout.

In the **Submit to Microsoft for analysis** dropdown list, select one of the following values:

- **Available values for email messages**:

  - **Report clean**: In the dialog that opens, review or configure the following settings:

    **Allow email with similar attributes (URL, sender, etc.)**: Select this option to add corresponding allow entries in Tenant Allow/Block List. The following settings are available:

      - **Remove allow entry after**: The default value is **30 days**, but you can select from the following values:
        - **1 day**
        - **7 days**
        - **30 days**
        - **Specific date**: The maximum value is 30 days from today.
      - **Allow entry note**: Enter optional information about why you're blocking this email.

    When you're finished in the **Submit message as clean to Microsoft** dialog, select **Submit**.

  - **Report phishing**, **Report malware** or **Report spam**: These selections have the same options in the dialog that opens:

    **Block all email from this sender or domain**: Select this option to add a sender or domain block entry in Tenant Allow/Block List. The following settings are available:

    - Select **Sender** or **Domain**.
    - **Remove allow entry after**: The default value is **30 days**, but you can select from the following values:
      - **1 day**
      - **7 days**
      - **30 days**
      - **Specific date**: The maximum value is 30 days from today.

    When you're finished in the dialog, select **Submit**.

  - **Trigger investigation**: Defender for Office 365 Plan 2 only. For more information, see [Trigger an investigation](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).

  :::image type="content" source="../../media/admin-submission-user-reported-submit-button-options.png" alt-text="The available actions in the Submit to Microsoft for analysis dropdown list." lightbox="../../media/admin-submission-user-reported-submit-button-options.png":::

- **Available values for Teams messages**: No other options are available when you select one of the following values:
  - **Report clean**
  - **Report phishing**
  - **Report malware**

After you submit a user reported message to Microsoft from the **User reported** tab, the value of **Converted to admin submission** turns from **No** to **Yes**, and a corresponding admin submission entry is created on the appropriate tab on the **Submissions** page (for example, the **Emails** tab).

#### Notify users about admin submitted messages to Microsoft

After an admin submits a user reported message to Microsoft from the **User reported** tab, admins can use the :::image type="icon" source="../../media/m365-cc-scc-mark-and-notify-icon.png" border="false"::: **Mark as and notify** action to mark the message with a verdict and send a templated notification message to the user who reported the message.

- Available verdicts for email messages:
  - **No threats found**
  - **Phishing**
  - **Spam**

- Available verdicts for Teams messages:
  - **No threats found**
  - **Phishing**

For more information, see [Notify users from within the portal](submissions-admin-review-user-reported-messages.md#notify-users-from-within-the-portal).

#### View converted admin submissions

After an admin submits a user reported message to Microsoft from the **User reported** tab, the value of **Converted to admin submission** is **Yes**.

If you select one of these messages by clicking anywhere in the row other than the check box next to the name, the details flyout contains :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> :::image type="icon" source="../../media/m365-cc-sc-view-submission-icon.png" border="false"::: **View the converted admin submission**.

This action takes you to the corresponding admin submission entry on the appropriate tab (for example, the **Emails** tab).

#### Actions for user reported messages in Defender for Office 365 Plan 2

In organizations with Microsoft Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5), the following actions might also be available in the details flyout of a user reported message on the **User reported** tab:

- :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** (email messages only): For more information, see [How to read the email entity page](mdo-email-entity-page.md#how-to-read-the-email-entity-page).

- :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take actions** (email messages only): This action starts the same Action wizard that's available on the email entity page. For more information, see [Actions you can take on the Email entity Page](mdo-email-entity-page.md#actions-you-can-take-on-the-email-entity-page).

- :::image type="icon" source="../../media/m365-cc-sc-view-alert-icon.png" border="false"::: **View alert**. An alert is triggered when an admin submission is created or updated. Selecting this action takes you to the details of the alert.
