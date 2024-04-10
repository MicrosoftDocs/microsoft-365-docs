---
title: The Email entity page in Defender for Office 365
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 3/25/2024
audience: ITPro
ms.topic: conceptual
ms.service: defender-office-365
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier1
- highpri
ms.custom:
description: Admins can learn about the Email entity page in Microsoft Defender for Office 365. This page shows many details about email messages. For example, email headers, threat detection details, the latest and original delivery locations, delivery actions, and IDs (for example, the Network message ID and the associated Alert ID).
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 1 and Plan 2</a>
---

# The Email entity page in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](mdo-about.md) included in their subscription or purchased as an add-on have the _Email entity page_. The Email entity page in the Microsoft Defender portal contains highly detailed information about an email message and any related entities.

This article explains the information and actions on the Email entity page.

## Permissions and licensing for the Email entity page

To use the Email entity page, you need to be assigned permissions. The permissions and licensing are the same as Threat Explorer (Explorer) and Real-time detections. For more information, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

## Where to find the Email entity page

There are no direct links to the **Email entity** page from the top levels of the Defender portal. Instead, the :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** action is available at the top of the email details flyout in many Defender for Office 365 features. This email details flyout is known as _the Email summary panel_, and contains a summarized subset of the information on the Email entity page. The email summary panel is identical across Defender for Office 365 features. For more information, see the [The Email summary panel](#the-email-summary-panel) section later in this article.

The Email summary panel with the :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** action is available in the following locations:

- From the **Advanced hunting** page at <https://security.microsoft.com/v2/advanced-hunting>: In the **Results** tab of an email-related query, click on the **NetworkMessageId** value of an entry in the table.

- *From the **Alerts** page at <https://security.microsoft.com/alerts>: For alerts with the **Detection source** value **MDO** or the **Product names** value **Microsoft Defender for Office 365**, select the entry by clicking on the **Alert name** value. In the alert details page that opens, select the message from the **Messages list** section.

- From the **Threat protection status** report at <https://security.microsoft.com/reports/TPSEmailPhishReportATP>:
  - Select **View data by Email \> Phish** and any of the available **Chart breakdown** selections. In the details table below the chart, select the entry by clicking anywhere in the row other than the check box next to the first column.
  - Select **View data by Email \> Malware** and any of the available **Chart breakdown** selections. In the details table below the chart, select the entry by clicking anywhere in the row other than the check box next to the first column.
  - Select **View data by Email \> Spam** and any of the available **Chart breakdown** selections. In the details table below the chart, select the entry by clicking anywhere in the row other than the check box next to the first column.

- From the **Explorer** page at <https://security.microsoft.com/threatexplorerv3> (Threat Explorer) or from the **Real-time detections** page at <https://security.microsoft.com/realtimereportsv3>. Use one of the following methods:
  - In Threat Explorer, verify the **All email** view is selected \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.
  - In Threat Explorer or Real-time detections, select the **Malware** view \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.
  - In Threat Explorer or Real-time detections, select the **Phish** view \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.

- From the **Incidents** page at <https://security.microsoft.com/incidents>: For incidents with the **Product names** value **Microsoft Defender for Office 365**, select the incident by clicking on the **Incident name** value. In the incident details page that opens, select the **Evidence and responses** tab (view). In the **All evidence** tab and the **Entity type** value **Email** or the **Emails** tab, select the entry by clicking anywhere in the row other than the check box.

- From the **Quarantine** page at <https://security.microsoft.com/quarantine>: Verify the **Email** tab is selected \> select an entry by clicking anywhere in the row other than the check box.

- From the **Submissions** page at <https://security.microsoft.com/reportsubmission>:
  - Select the **Emails** tab \> select an entry by clicking anywhere in the row other than the check box.
  - Select the **User reported** tab \> select an entry by clicking anywhere in the row other than the check box.

## What's on the Email entity page

:::image type="content" source="../../media/email-entity-main-page.png" alt-text="Screenshot of the Email entity page showing the available details pane and tabs." lightbox="../../media/email-entity-main-page.png":::

The details pane on the left side of the page contains collapsible sections with details about the message. These sections remain constant as long as you're on the page. The available sections are:

- **Tags** section. Shows any user tags (including Priority account) that are assigned to senders or recipients. For more information about user tags, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).
- **Detection details** section:
  - **Original Threats**
  - **Original delivery location**
  - **Latest Threats**
  - **Latest delivery location**: The location of the message after system actions on the message (for example, [ZAP](zero-hour-auto-purge.md)), or admin actions on the message (for example, [Move to Deleted Items](threat-explorer-threat-hunting.md#email-remediation)). User actions on the message (for example, deleting or archiving the message) aren't shown, so this value doesn't guarantee the _current location_ of the message.
  - **Detection technology**
  - **Delivery action**
  - **Primary Override : Source**
- **Email details** section:
  - **Directionality**
  - **Recipient (To)**<sup>\*</sup>
  - **Sender**<sup>\*</sup>
  - **Time received**
  - **Internet Message ID**<sup>\*</sup>
  - **Network Message ID**<sup>\*</sup>
  - **Cluster ID**
  - **Language**

  <sup>\*</sup> The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is available to copy the value.

The tabs (views) along the top of the page allow you to investigate email efficiently. These views are described in the following subsections.

### Timeline view

The **Timeline** view shows the delivery and post-delivery events that happened to the message.

The following message event information is available in the view. Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

- **Timeline** (date/time of the event)
- **Source**: For example: **System**, **Admin, or **User**.
- **Event types**
- **Result**
- **Threats**
- **Details**

If nothing happened to the message after delivery, the message is likely to have only one row in the **Timeline** view with the **Event types** value **Original delivery**. For example:

- The **Result** value is **Inbox folder - Delivered**.
- The **Result** value is **Junk email folder - Delivered to Junk**
- The **Result** value is **Quarantine - Blocked**.

Subsequent actions to the message by users, admins, or Microsoft 365 add more rows to the view. For example:

- The **Event types** value is **ZAP** and the **Result** value is **Message moved to Quarantine by ZAP**.
- The **Event types** value is **Quarantine Release** and the **Result** value is **Message was successfully released from Quarantine**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find information on the page. Type text in the box and then press the ENTER key.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data in the view to a CSV file. The default filename is **- Microsoft Defender.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **- Microsoft Defender(1).csv**).

:::image type="content" source="../../media/email-entity-timeline-view.png" alt-text="Screenshot of the Timeline view on the Email entity page." lightbox="../../media/email-entity-timeline-view.png":::

### Analysis view

The **Analysis** view contains information that helps you analyze the message in depth. The following information is available in this view:

- **Threat detection details** section: Information about threats detected in the message:
  - **Threats**: The primary threat is indicated by :::image type="icon" source="../../media/m365-cc-sc-primary-threat-icon.png" border="false"::: **Primary threat**.
  - **Confidence level**: Values are **High**, **Medium**, or **Low**.
  - **Priority account protection**: Values are **Yes** or **No**. For more information, see [Configure and review priority account protection in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).
- **Email detection details** section: Information about protection features or overrides that affected the message:
  - **All Overrides**: All organization or user settings that had the possibility to alter the intended delivery location of the message. For example, if the message matched a mail flow rule and a block entry in the [Tenant Allow/Block List](tenant-allow-block-list-about.md), both settings are listed here. The **Primary Override : Source** property value identifies the setting that actually affected the delivery of the message.
  - **Primary Override : Source**: Shows the organization or user setting that altered the intended delivery location of the message (allowed instead of blocked, or blocked instead of allowed). For example:
    - The message was blocked by a mail flow rule.
    - The message was allowed due to an entry in the user's [Safe Senders list](configure-junk-email-settings-on-exo-mailboxes.md).
  - **Exchange transport rules** (mail flow rules): If the message was affected by mail flow rules, the rule names and GUID vales are shown. Actions taken on messages by mail flow rules occur before spam and phishing verdicts.

    The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is available to copy the rule GUID. For more information about mail flow rules, see [Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).

    > [!TIP]
    > Don't use the **Go to Exchange admin center** link. To open the **Rules** page in the new Exchange admin center, use <https://admin.exchange.microsoft.com/#/transportrules>.

  - **Connector**: If the message was delivered through an Inbound connector, the connector name is shown. For more information about connectors, see [Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).
  - **Bulk complaint level (BCL)**: A higher BCL value indicates the message is more likely to be spam. For more information, see [Bulk complaint level (BCL) in EOP](anti-spam-bulk-complaint-level-bcl-about.md).
  - **Policy**: If a policy type is listed here (for example, **Spam**), select **Configure** :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: to open the related policy page (for example, the **Anti-spam policies** page at <https://security.microsoft.com/antispam>).
  - **Policy action**
  - **Alert ID**: Select the Alert ID value to open the details page for the alert (as if you found and selected the alert from the **Alerts** page at <https://security.microsoft.com/alerts>). The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is also available to copy the Alert ID value.
  - **Policy type**
  - **Client type**: Shows the type of client that sent the message (for example, REST)
  - **Email size**
  - **Data loss prevention rules**
- **Sender-Recipient details** section: Details about the message sender and some recipient information:
  - **Sender display name**
  - **Sender address**<sup>\*</sup>
  - **Sender IP**
  - **Sender domain name**<sup>\*</sup>
  - **Domain creation date**:  A recently created domain and other message signals can identify the message as suspicious.
  - **Domain owner**
  - **Sender MAIL FROM address**<sup>\*</sup>
  - **Sender MAIL FROM domain name**<sup>\*</sup>
  - **Return-Path**
  - **Return-Path domain**
  - **Location**
  - **Recipient domain**<sup>\*</sup>
  - **To**: Shows the first 5,000 characters of any email addresses in the To field of the message.
  - **Cc**: Shows the first 5,000 characters of any email addresses in the Cc field of the message.
  - **Distribution list**: Shows the distribution group (distribution list) if the recipient received the email as a member of the list. The top level distribution group is shown for nested distribution groups.
  - **Forwarding**: Indicates whether the message was [automatically forwarded to an external email address](outbound-spam-policies-external-email-forwarding.md). The forwarding user and the forwarding type are shown (mail flow rules, Inbox rules, or SMTP forwarding).

  <sup>\*</sup> The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is available to copy the value.

- **Authentication** section: Details about [email authentication](email-authentication-about.md) results:
  - **[Domain-based Message Authentication (DMARC)](email-authentication-dmarc-configure.md)**
    - `Pass`: The DMARC check for the message passed.
    - `Fail`: The DMARC check for the message failed.
    - `BestGuessPass`: The DMARC TXT record for the domain doesn't, but if one existed, the DMARC check for the message would have passed.
    - None: Indicates that no DMARC TXT record exists for the sending domain in DNS.
  - **[DomainKeys identified mail (DKIM)](email-authentication-dkim-configure.md)**: Values are:
    - `Pass`: The DKIM check for the message passed.
    - `Fail (reason)`: The DKIM check for the message failed. For example, the message wasn't DKIM signed or the DKIM signature wasn't verified.
    - `None`: The message wasn't DKIM signed. This result might or might not indicate that the domain has a DKIM record, or that the DKIM record doesn't evaluate to a result. This result only indicates that this message wasn't signed.
  - **[Sender Policy Framework (SPF)](email-authentication-spf-configure.md)**: Values are:
    - `Pass (IP address)`: The SPF check found the message source is valid for the domain.
    - `Fail (IP address)`: The SPF check found the message source isn't valid for the domain, and the enforcement rule in the SPF record is `-all` (hard fail).
    - `SoftFail (reason)`: The SPF check found the message source isn't valid for the domain, and the enforcement rule in the SPF record is `~all` (soft fail).
    - `Neutral`: The SPF check found the message source isn't valid for the domain, and the enforcement rule in the SPF record is `?all` (neutral).
    - `None`: The domain doesn't have an SPF record, or the SPF record doesn't evaluate to a result.
    - `TempError`: The SPF check encountered a temporary error (for example, a DNS error). The same check later might succeed.
    - `PermError`: The SPF check encountered a permanent error. For example, the domain has a [badly formatted SPF record](email-authentication-spf-configure.md#troubleshooting-spf-txt-records).
  - **Composite authentication**: SPF, DKIM, DMARC, and other information determines if the message sender (the From address) is authentic. For more information, see [Composite authentication](email-authentication-about.md#composite-authentication).
- **Related entities** section: Information about attachments and URLs in the message:
  - **Entity**: Selecting **Attachments** or **URLs** takes you to the Attachments view or the URL view of the Email entity page for the message.
  - **Total count**
  - **Threats found**: The values are **Yes** or **No**.
- Message details area:
  - **Plain-text email header** tab: Contains the entire message header in plain text. Select :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy message header** to copy the message header. Select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Microsoft Message Header Analyzer** to open the Message Header Analyzer at <https://mha.azurewebsites.net/pages/mha.html>. Paste the copied message header into the page, and then select **Analyze headers** for details about the message headers and values.
  - **To** tab: Shows the first 5,000 characters of any email addresses in the To field of the message.
  - **Cc** tab: Shows the first 5,000 characters of any email addresses in the Cc field of the message.

:::image type="content" source="../../media/email-entity-analysis-view.png" alt-text="Screenshot of the Analysis view on the Email entity page." lightbox="../../media/email-entity-analysis-view.png":::

### Attachments view

The **Attachments** view shows information about all file attachments in the message, and the scanning results of those attachments.

The following attachment information is available in this view. Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

- **Attachment filename**: If you click on the filename value
- **File type**
- **File size**
- **File extension**
- **Threat**
- **Malware family**
- **Attachment SHA256**: The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is available to copy the SHA256 value.
- **Details**

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find information on the page. Type text in the box and then press the ENTER key.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data in the view to a CSV file. The default filename is **- Microsoft Defender.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **- Microsoft Defender(1).csv**).

:::image type="content" source="../../media/email-entity-attachments-view.png" alt-text="Screenshot of the Attachments view on the Email entity page." lightbox="../../media/email-entity-attachments-view.png":::

#### Attachment details

If you select an entry in the **Attachments** view by clicking on the **Attachment filename** value, a details flyout opens that contains the following information:

- **Deep analysis** tab: Information is available on this tab if [Safe Attachments](safe-attachments-about.md) scanned (detonated) the attachment. You can identify these messages in Threat Explorer by using the query filter **Detection technology** with the value **File detonation**.

  - **Detonation chain** section: Safe Attachments detonation of a single file can trigger multiple detonations. The _detonation chain_ tracks the path of detonations, including the original malicious file that caused the verdict, and all other files affected by the detonation. These attached files might not be directly present in the email. But, including the analysis is important to determining why the file was found to be malicious.

    If no detonation chain information is available, the value **No detonation tree** is shown. Otherwise, you can select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to download the detonation chain information to a CSV file. The default filename is **Detonation chain.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **Detonation chain(1).csv**). The CSV file contains the following information:
    - **Top**: The top level file.
    - **Level1**: The next level file.
    - **Level2**: The next level file.
    - and so on.

    The detonation chain and the CSV file might show just the top level item if none of the entities linked to it were found to be problematic or were detonated.

  - **Summary** section: If no detonation summary information is available, the value **No detonation summary** is shown. Otherwise, the following detonation summary information is available:
    - **Analysis time**
    - **Verdict**: The verdict on the attachment itself.
    - **More info**: The file size in bytes.
    - **Indicators of compromise**

  - **Screenshots section**: Show any screenshots that were captured during detonation. No screenshots are captured for container files like ZIP or RAR that contain other files.
  
    If no detonation screenshots are available, the value **No screenshots to display** is shown. Otherwise, select the link to view the screenshot.

  - **Behavior details** section: Shows the exact events that took place during detonation, and problematic or benign observations that contain URLs, IPs, domains, and files that were found during detonation. There might not be any behavior details for container files like ZIP or RAR that contain other files.

     If no behavior details information is available, the value **No detonation behaviors** is shown. Otherwise, you can select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to download the behavioral details information to a CSV file. The default filename is **Behavior details.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **Behavior details(1).csv**). The CSV file contains the following information:
    - **Time**
    - **Behavior**
    - **Behavior property**
    - **Process (PID)**
    - **Operation**
    - **Target**
    - **Details**
    - **Result**
- **File info** tab: The **File details** section contains the following information:
  - **File name**
  - **SHA256**
  - **File size** (in bytes)

When you're finished in the file details flyout, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: **Close**.

:::image type="content" source="../../media/email-entity-attachments-view-file-details-flyout.png" alt-text="Screenshot of the file details flyout from the Attachments view on the Email entity page." lightbox="../../media/email-entity-attachments-view-file-details-flyout.png":::

#### Block attachments from the Attachments view

If you select an entry in the **Attachments** view by selecting the check box next to the filename, the :::image type="icon" source="../../media/m365-cc-sc-no-icon.png" border="false"::: **Block** action is available. This action adds the file as a [block entry in the Tenant Allow/Block List](tenant-allow-block-list-about.md#block-entries-in-the-tenant-allowblock-list). Selecting **Block** starts the **Take action** wizard:

1. On the **Choose actions** page, configure one of following settings in the **Block file** section:
   - **Never expire** on: This is the default value :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - **Never expire** off: Slide the toggle to off :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: and then select a date in the **Remove on** box.

   When you're finished on the **Choose actions** page, select **Next**.

2. On the **Choose target entities** page, verify the file that you want to block is selected, and then select **Next**.

3. On the **Review and submit** page, configure the following settings:
   - **Remediation name**: Enter a unique name to track the status in the Action center.
   - **Description**: Enter an optional description.

   When you're finished on the **Review and submit** page, select **Submit**.

### URL view

The **URL** view shows information about all URLs in the message, and the scanning results of those URLs.

The following attachment information is available in this view. Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

- **URL**
- **Threat**
- **Source**
- **Details**

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find information on the page. Type text in the box and then press the ENTER key.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data in the view to a CSV file. The default filename is **- Microsoft Defender.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **- Microsoft Defender(1).csv**).

:::image type="content" source="../../media/email-entity-url-view.png" alt-text="Screenshot of the URL view on the Email entity page." lightbox="../../media/email-entity-url-view.png":::

#### URL details

If you select an entry in the **URL** view by clicking on the **URL** value, a details flyout opens that contains the following information:

- **Deep analysis** tab: Information is available on this tab if [Safe Links](safe-links-about.md) scanned (detonated) the URL. You can identify these messages in Threat Explorer by using the query filter **Detection technology** with the value **URL detonation**.

  - **Detonation chain** section: Safe Links detonation of a single URL can trigger multiple detonations. The _detonation chain_ tracks the path of detonations, including the original malicious URL that caused the verdict, and all other URLs affected by the detonation. These URLs might not be directly present in the email. But, including the analysis is important to determining why the URL was found to be malicious.

    If no detonation chain information is available, the value **No detonation tree** is shown. Otherwise, you can select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to download the detonation chain information to a CSV file. The default filename is **Detonation chain.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **Detonation chain(1).csv**). The CSV file contains the following information:
    - **Top**: The top level file.
    - **Level1**: The next level file.
    - **Level2**: The next level file.
    - and so on.

    The detonation chain and the CSV file might show just the top level item if none of the entities linked to it were found to be problematic or were detonated.

  - **Summary** section: If no detonation summary information is available, the value **No detonation summary** is shown. Otherwise, the following detonation summary information is available:
    - **Analysis time**
    - **Verdict**: The verdict on the URL itself.

  - **Screenshots section**: Show any screenshots that were captured during detonation. No screenshots are captured if the URL opens into a link that directly downloads a file. However, you see the downloaded file in the detonation chain.
  
    If no detonation screenshots are available, the value **No screenshots to display** is shown. Otherwise, select the link to view the screenshot.

  - **Behavior details** section: Shows the exact events that took place during detonation, and problematic or benign observations that contain URLs, IPs, domains, and files that were found during detonation.

     If no behavior details information is available, the value **No detonation behaviors** is shown. Otherwise, you can select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to download the behavioral details information to a CSV file. The default filename is **Behavior details.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **Behavior details(1).csv**). The CSV file contains the following information:
    - **Time**
    - **Behavior**
    - **Behavior property**
    - **Process (PID)**
    - **Operation**
    - **Target**
    - **Details**
    - **Result**
- **URL info** tab: The **URL details** section contains the following information:
  - **URL**
  - **Threat**

When you're finished in the file details flyout, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: **Close**.

:::image type="content" source="../../media/email-entity-url-view-file-details-flyout.png" alt-text="Screenshot of the URL details flyout from the URL view on the Email entity page." lightbox="../../media/email-entity-url-view-file-details-flyout.png":::

#### Block URLs from the URL view

If you select an entry in the **URL** view by selecting the check box next to the filename, the :::image type="icon" source="../../media/m365-cc-sc-no-icon.png" border="false"::: **Block** action is available. This action adds the URL as a [block entry in the Tenant Allow/Block List](tenant-allow-block-list-about.md#block-entries-in-the-tenant-allowblock-list). Selecting **Block** starts the **Take action** wizard:

1. On the **Choose actions** page, configure one of following settings in the **Block URL** section:
   - **Never expire** on: This is the default value :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - **Never expire** off: Slide the toggle to off :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: and then select a date in the **Remove on** box.

   When you're finished on the **Choose actions** page, select **Next**.

2. On the **Choose target entities** page, verify the URL that you want to block is selected, and then select **Next**.

3. On the **Review and submit** page, configure the following settings:
   - **Remediation name**: Enter a unique name to track the status in the Action center.
   - **Description**: Enter an optional description.

   When you're finished on the **Review and submit** page, select **Submit**.

## Similar emails view

The **Similar emails** view shows other email messages that have the same message body fingerprint as this message. Matching criteria in other messages doesn't apply for this view (for example, file attachment fingerprints).

The following attachment information is available in this view. Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

- **Date**
- **Subject**
- **Recipient**
- **Sender**
- **Sender IP**
- **Override**
- **Delivery action**
- **Delivery location**

Use :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the entries by **Start date** and **End date**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find information on the page. Type text in the box and then press the ENTER key.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data in the view to a CSV file. The default filename is **- Microsoft Defender.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **- Microsoft Defender(1).csv**).

:::image type="content" source="../../media/email-entity-similar-emails-view.png" alt-text="Screenshot of the Similar emails view on the Email entity page." lightbox="../../media/email-entity-similar-emails-view.png":::

### Actions on the Email entity page

The following actions are available at the top of the Email entity page:

- :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action**: For information, see [Remediate using Take action](threat-explorer-threat-hunting.md#remediate-using-take-action).
- :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: **Email preview**¹ ²
- :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More options**:
  - :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Go to quarantined email**: Available only if the message was quarantined. Selecting this action opens the **Email** tab on the **Quarantine** page at <https://security.microsoft.com/quarantine>, filtered by the unique **Message ID** value of the message. For more information, see [View quarantined email](quarantine-admin-manage-messages-files.md#view-quarantined-email).
  - :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Download email**¹ ²

    > [!TIP]
    > **Download email** isn't available for messages that were quarantined. Instead, [download a password protected copy of the message from quarantine](quarantine-admin-manage-messages-files.md#download-email-from-quarantine).

¹ The **Email preview** and **Download email** actions require the **Preview** role in [Email & collaboration permissions](mdo-portal-permissions.md). By default, this role is assigned to the **Data Investigator** and **eDiscovery Manager** role groups. By default, members of the **Organization Management** or **Security Administrators** role groups can't do these actions. To allow these actions for the members of those groups, you have the following options:

- Add the users to the **Data Investigator** or **eDiscovery Manager** role groups.
- [Create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) with the **Search and Purge** role assigned, and add the users to the custom role group.

² You can preview or download email messages that are available in Microsoft 365 mailboxes. Examples of when messages are no longer available in mailboxes include:

- The message was dropped before delivery or delivery failed.
- The message was _soft deleted_ (deleted from the Deleted items folder, which moves the message to the Recoverable Items\Deletions folder).
- ZAP moved the message to quarantine.

:::image type="content" source="../../media/email-entity-available-actions.png" alt-text="Screenshot of the available actions at the top of the Email entity page." lightbox="../../media/email-entity-available-actions.png":::

## The Email summary panel

The _Email summary panel_ is the email details flyout that's available in many features in Exchange Online Protection (EOP) and Defender for Office 365. The Email summary panel contains standardized summary information about the email message taken from the full details that are available on the Email entity page in Defender for Office 365.

Where to find the Email summary panel is described in the [Where to find the Email entity page](#where-to-find-the-email-entity-page) section earlier in this article. The rest of this section describes the information that's available on the Email summary panel across all features.

> [!TIP]
> The Email summary panel is available from the **Action center** page at <https://security.microsoft.com/action-center/> on the **Pending** or **History** tabs. Select an action with the **Entity type** value **Email** by clicking anywhere in the row other than the check box or the **Investigation ID** value. The details flyout that opens is the Email summary panel, but :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** isn't available at the top of the flyout.

The following message information is available at the top of the Email summary panel:

- The title of the flyout is the message Subject value.
- The number of attachments and links in the message (not present in all features).
- Any user tags that are assigned to the recipients of the message (including the Priority account tag). For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md)
- The actions that are available at the top of the flyout depend on where you opened the Email summary panel. The available actions are described in the individual feature articles.

> [!TIP]
> To see details about other messages without leaving the Email summary panel of the current message, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

The following sections are available on the Email summary panel for all features (it doesn't matter where you opened the Email summary panel from):

- **Delivery details** section:
  - **Original threats**
  - **Latest threats**
  - **Original location**
  - **Latest delivery location**
  - **Delivery action**
  - **Detection technologies**
  - **Primary override : Source**

- **Email details** section:
  - **Sender display name**
  - **Sender address**
  - **Sender email from address**
  - **Sent on behalf of**
  - **Return path**
  - **Sender IP**
  - **Location**
  - **Recipient(s)**
  - **Time received**
  - **Directionality**
  - **Network message ID**
  - **Internet message ID**
  - **Campaign ID**
  - **DMARC**
  - **DKIM**
  - **SPF**
  - **Composite authentication**

- **URLs** section: Details about any URLs in the message:
  - **URL**
  - **Threat** status

  If the message has more than three URLs, select **View all URLs** to see all of them.

- **Attachments** section: Details about any file attachments in the message:
  - **Attachment name**
  - **Threat**
  - **Detection tech / Malware family**

  If the message has more than three attachments, select **View all attachments** to see all of them.

:::image type="content" source="../../media/email-entity-generic-email-summary-panel.png" alt-text="Screenshot of the Email summary panel after selecting an email message in a supported Defender for Office 365 feature." lightbox="../../media/email-entity-generic-email-summary-panel.png":::
