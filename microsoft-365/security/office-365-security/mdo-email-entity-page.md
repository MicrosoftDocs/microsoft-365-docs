---
title: The email entity page in Defender for Office 365
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 2/22/2024
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdo
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier1
- highpri
ms.custom:
description: Admins can learn about the Email entity page in Microsoft Defender for Office 365. This page show many details about email messages. For example, email headers, threat detection details, the latest and original delivery locations, delivery actions, and IDs (for example, the Network message ID and the associated Alert Id).
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# The Email entity page in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have a 360-degree view of email using the _Email entity page_ in the Microsoft Defender portal. This go-to email page was created to the enhance information that's delivered throughout Defender for Office 365 and Microsoft Defender XDR.

This article explains the layout and features on the Email entity page.

See email details in the experiences below, including [previewing and downloading the email](#email-preview-and-download-for-cloud-mailboxes), the email headers _with the option to copy_, Detection details, Threats detected, Latest and Original delivery locations, Delivery actions, and IDs like Alert ID, Network Message ID and more.

## Permissions and licensing for the Email entity page

To use the email entity page, you need to be assigned permissions. The permissions and licensing are the same as Threat Explorer (Explorer) and Real-time detections. For more information, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

## Where to find the Email entity page

There are no direct links to the **Email entity** page from the Defender portal. Instead, the :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** action is available in the Defender portal wherever you find details about email messages. For example:

- Advanced Hunting
- Alerts
- Reporting
- The Action Center
- **Threat Explorer** (**Explorer**) on the **Explorer** page at <https://security.microsoft.com/threatexplorerv3> or **Real-time detections** on the **Real-time detections** page at <https://security.microsoft.com/realtimereportsv3>. Use one of the following methods:
  - Verify the **All email** view is selected \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.
  - Select the **Malware** view \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.
  - Select the **Phish** view \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.

  **Open email entity** is available at the top of the email details flyout that opens. For more information, see [Email view for the details area of the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer).

- **Quarantine**: On the **Quarantine** page at <https://security.microsoft.com/quarantine> \> verify the **Email** tab is selected \> select an entry by clicking anywhere in the row other than the check box. **Open email entity** is available at the top of the details flyout that opens. For more information, see [View quarantined email details](quarantine-admin-manage-messages-files.md#view-quarantined-email-details).
- **Admin email submissions**: On the **Submissions** page at <https://security.microsoft.com/reportsubmission> \> select the **Emails** tab \> select an entry by clicking anywhere in the row other than the check box. **Open email entity** is available at the top of the details flyout that opens. For more information, see [View email attachment admin submissions to Microsoft](submissions-admin.md#view-email-attachment-admin-submissions-to-microsoft).
- **User reported email submissions**: On the **Submissions** page at <https://security.microsoft.com/reportsubmission> \> select the **User reported** tab \> select an entry by clicking anywhere in the row other than the check box. **Open email entity** is available at the top of the details flyout that opens. For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft).

## How to read the email entity page

:::image type="content" source="../../media/email-entity-main-page.png" alt-text="Screenshot of the Email entity page showing the available details pane and tabs." lightbox="../../media/email-entity-main-page.png":::

The details pane on the left side of the page contains collapsible sections with details about the message. These sections remain constant as long as you're on the page. The available sections are:

- **Tags** section. Shows any users tags (including Priority accounts) that are assigned to senders or recipients. For more information about user tags, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).
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

  <sup>\*</sup> <sup>\*</sup> The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is available to copy the value.

## Actions

The following actions are available near the top of the page:

- :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action**: For information, see [Remediate using Take action](threat-explorer-threat-hunting.md#remediate-using-take-action).
- :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: **Email preview**¹
- :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More options**:
  - :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Download email**¹

    > [!TIP]
    > **Download email** isn't available for messages that were quarantined. Instead, [download a password protected copy of the message from quarantine](quarantine-admin-manage-messages-files.md#download-email-from-quarantine).

¹ The **Email preview** and **Download email** actions require the **Preview** role in [Email & collaboration permissions](mdo-portal-permissions.md). By default, this role is assigned to the **Data Investigator** and **eDiscovery Manager** role groups. Members of only the **Organization Management** or **Security Administrators** role groups can't open these actions. You can add the members of the groups to the **Data Investigator** and **eDiscovery Manager** role groups, or you can [create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) with the same roles as **Organization Management** or **Security Administrator**, and then add the **Search and Purge** role to the custom role group.

The tabs (views) along the top of the page allow you to investigate email efficiently. These views are described in the following subsections.

### Timeline view

The **Timeline** view shows the delivery and post-delivery events that happened to the message.

The following message event information is available in the view. Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

- **Timeline** (date/time of the event)
- **Source**: For example: **System**, **Admin** or **User**.
- **Event types**
- **Result**
- **Threats**
- **Details**

If nothing happened to the message after delivery, the message is likely to have only one row in the **Timeline** view with the **Event types** value **Original delivery**. For example:

- The **Result** value is **Inbox folder - Delivered**.
- The **Result** value is **Junk email folder - Delivered to Junk**
- The **Result** value is **Quarantine - Blocked**.

Subsequent actions to the message by users, admins or Microsoft 365 add more more rows to the view. For example:

- The **Event types** value is **ZAP** and the **Result** value is **Message moved to Quarantine by ZAP**.
- The **Event types** value is **Quarantine Release** and the **Result** value is **Message was successfully released from Quarantine**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find information on the page. Type text in the box and then press the ENTER key.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data to a CSV file.

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
  - **Exchange transport rules** (mail flow rules): Actions taken on messages by mail flow rules occur before spam and phishing verdicts. If any mail flow rules acted on the message, the rule name and GUID aree shown here. For more information about mail flow rules, see [Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).
  - **Connector**
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
  - **To**: Shows the first 5000 characters of any email addresses in the To field of the message.
  - **Cc**: Shows the first 5000 characters of any email addresses in the Cc field of the message.
  - **Distribution list**: Shows the distribution group (distribution list) if the recipient received the email as a member of the list. The top level distribution group is shown for nested distribution groups.
  - **Forwarding**: Indicates whether the message was [automatically forwarded to an external email address](outbound-spam-policies-external-email-forwarding.md). The forwarding user and the forwarding type are shown (mail flow rules, Inbox rules, or SMTP forwarding).

  <sup>\*</sup> The :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy to clipboard** action is available to copy the value.

- **Authentication** section: Details about [email authentication](email-authentication-about.md) results:
  - **[Domain-based Message Authentication (DMARC)](email-authentication-dmarc-configure.md)**
    - `Pass`: The DMARC check for the message passed.
    - `Fail`: The DMARC check for the message failed.
    - `Bestguesspass`: The DMARC TXT record for the domain doesn't, but if one existed, the DMARC check for the message would have passed.
    - None: Indicates that no DMARC TXT record exists for the sending domain in DNS.
  - **[DomainKeys identified mail (DKIM)](email-authentication-dkim-configure.md)**: Values are:
    - `Pass`: The DKIM check for the message passed.
    - `Fail (reason)`: The DKIM check for the message failed. For example, the message wasn't DKIM signed or the DKIM signature wasn't verified.
    - `None`: The message wasn't DKIM signed. This result might or might not indicate that the domain has a DKIM record, or that the DKIM record doesn't evaluate to a result. This result only indicates that this message wasn't signed.
  - **[Sender Policy Framework (SPF)](email-authentication-spf-configure.md)**: Values are:
    - `Pass (IP address)`: The SPF check found the message source is valid for the domain.
    - `Fail (IP address)`: The SPF check found the message source isn't valid for the domain, and the enforcement rule in the SPF record is `-all` (hard fail).
    - `Softfail (reason)`: The SPF check found the message source isn't valid for the domain, and the enforcement rule in the SPF record is `~all` (soft fail).
    - `Neutral`: The SPF check found the message source isn't valid for the domain, and the enforcement rule in the SPF record is `?all` (neutral).
    - `None`: The domain doesn't have an SPF record, or the SPF record doesn't evaluate to a result.
    - `Temperror`: The SPF check encountered a temporary error (for example, a DNS error). The same check later might succeed.
    - `Permerror`: The SPF check encountered a permanent error. For example, the domain has a [badly formatted SPF record](email-authentication-spf-configure.md#troubleshooting-spf-txt-records).
  - **Composite authentication**: SPF, DKIM, DMARC, and other information is used to determine if the message sender (the From address) is authentic. For more information, see [Composite authentication](email-authentication-about.md#composite-authentication).
- **Related entities** section: Information about attachments and URLs in the message:
  - **Entity**: Selecting **Attachments** or **URLs** takes you to the Attachments view or the URL view of the Email entity page for the message.
  - **Total count**
  - **Threats found**: The values are **Yes** or **No**.
- Message details area:
  - **Plain-text email header** tab: Contains the entire message header in plain text. Select :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy message header** to copy the message header. Select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Microsoft Message Header Analyzer** to open the Message Header Analyzer at <https://mha.azurewebsites.net/pages/mha.html>. Paste the copied message header into the page, and then select **Analyze headers** for details about the message headers and values.
  - **To** tab: Shows the first 5000 characters of any email addresses in the To field of the message.
  - **Cc** tab: Shows the first 5000 characters of any email addresses in the Cc field of the message.

:::image type="content" source="../../media/email-entity-analysis-view.png" alt-text="Screenshot of the Analysis view on the Email entity page." lightbox="../../media/email-entity-analysis-view.png":::

### Attachments view

The **Attachments** view contains information about attachments and the scanning results of attachments in the message.

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

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data to a CSV file.

:::image type="content" source="../../media/email-entity-attachments-view.png" alt-text="Screenshot of the Attachments view on the Email entity page" lightbox="../../media/email-entity-attachments-view.png":::

#### Attachment details

If you select an entry in the **Attachments** view by clicking on the **Attachment filename** value, a details flyout opens that contains the following information:

- **Deep analysis** tab: Information is available on this tab if the message contains attachments, and [Safe Attachments](safe-attachments-about.md) acted on an attachment. You can identify these messages in Threat Explorer by using the query filter **Detection technology** with the value **File detonation**.

  - **Detonation chain** section: Safe Links detonation of a single file detonation can trigger multiple detonations. The _detonation chain_ tracks the path of detonations, including the original malicious file that caused the verdict, and all other files affected by the detonation. These attached files might not be directly present in the email. But, including the analysis is important to determining why the file was found to be malicious.

    If no detonation chain information is available, the value **No detonation tree** is shown. Otherwise, you can select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to download the detonation chain information to a CSV file. The default filename is **Detonation chain.csv** and the default location is the **Downloads** folder. If a file with that name already exists, the filename is appended with a number (for example, **Detonation chain(1).csv**). The CSV file contains the following information:
    - **Top**: The top level file.
    - **Level1**: The next level file.
    - **Level2**: The next level file.
    - and so on.

    The detonation chain and the CSV file might show just the top level item if none of the entities linked to it were found to be problematic, or were detonated.

  - **Summary** section: If no detonation summary information is available, the value **No detonation summary** is shown. Otherwise, the following detonation summary information is available:
    - **Analysis time**
    - **Verdict**
    - **More info**: Shows the file size in bytes.
    - **Indicators of compromise**

  - **Screenshots section**: Show any screenshots that were captured during detonation. No screenshots are captured for container files like ZIP or RAR that contain other files.
  
    If no detonation screenshots are available, the value **No screenshots to display** is shown. Otherwise, select the link to view the screenshot.

  - **Behavior details** section: Shows behavior the exact events that took place during detonation, and problematic or benign observations that contain URLs, IPs, domains, and files that were found during detonation. There might not be any behavior details for container files like ZIP or RAR that contain other files.

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

If you select an entry in the **Attachments** view by selecting the check box next to the filename, the :::image type="icon" source="../../media/m365-cc-sc-no-icon.png" border="false"::: **Block** action is available. Selecting **Block** starts the **Take action** wizard:

1. On the **Choose actions** page, **Never expire** is on by default :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::. Slide the toggle to off :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: and then select a date in **Remove on**.

   When you're finished on the **Choose actions** page, select **Next**.

2. On the **Choose target entities** page, verify that the files that you want to block are selected, and then select **Next**.

3. On the **Review and submit** page, configure the following options:
   - **Remediation name**: Enter a unique name to track the status in the Action center.
   - **Description**: Enter an optional description.

   When you're finished on the **Choose target entities** page, select **Submit**.

### URL view

## Similar emails view

### How to use the email entity page tabs

1. **URLs**: This tab lists URLs found in the email with other details about the URLs. The number of URLs is limited to 10 right now, but these 10 are prioritized to show *malicious URLs first*. Prioritization saves you time and guess-work. The URLs that were found to be malicious and detonated are also shown here.
1. **Similar emails**: This tab lists all emails similar to the *network message id + recipient* combination specific to this email. Similarity is based on the *body of the message*, only. The determinations made on mails to categorize them as 'similar' don't include a consideration of *attachments*.

## Available on the email entity page

Here are some helpful specifics to get started.

### Email preview and download for Cloud mailboxes

Admins can preview and download emails in Cloud mailboxes, ***if*** the mails are still accessible to Microsoft in an Exchange Online mailbox. In case of a soft delete (by an admin, or user), or ZAP (to quarantine), the emails are no longer present in the Exchange Online mailbox. In that case, admins won't be able to preview or download those specific emails. Emails that were dropped, or where delivery failed, never made it into the mailbox and as a result, admins won't be able to preview or download those emails either.

> [!IMPORTANT]
> Previewing and downloading emails requires a special role called **Preview**. You can assign this role in the following locations:
>
> - [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) (Affects the Defender portal only, not PowerShell): **Security operations/Raw data (email & collaboration)/Email content (read)**.
> - [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Data Investigator** or **eDiscovery Manager** role groups. Or, you can [create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) and add the **Preview** role to it.

### Detonation details

These details are specific to email attachments and URLs. Users can see these details by going to Explorer and applying the *detection technology* filter set to file detonation or URL detonation. Emails filtered for file detonation will contain a malicious file with detonation details, and those filtered for URLs contain a malicious URL and its detonation details.

Users see enriched detonation details for known malicious attachments or URLs found in their emails, which got detonated for their specific tenant. It includes the Detonation chain, Detonation summary, Screenshot, and Observed behavior details to help customers understand why the attachment or URL was deemed malicious and detonated.

1. *Detonation chain*. A single file or URL detonation can trigger multiple detonations. The Detonation chain tracks the path of detonations, including the original malicious file or URL that caused the verdict, and all other files or URLs affected by the detonation. These URLs or attached files may not be directly present in the email, but including that analysis is important to determining why the file or URL was found to be malicious.

    > [!NOTE]
    > This may show just the top level item if none of the entities linked to it were found to be problematic, or were detonated.

1. *Detonation Summary* gives a basic summary for detonation such as *analysis time*, the time when detonation occurred, OS and application, the operating system and application in which the detonation occurred, file size, and verdict reason.
1. *Screenshots* show the screenshots captured during detonation. There can be multiple screenshots during detonation. No screenshots are captured for
    - Container type files like .zip or .rar.
    - If a URL opens into a link that directly downloads a file. However, you'll see the downloaded file in the detonation chain.
1. *Behavior Details* are an export that shows behavior details like exact events that took place during detonation, and observables that contain URLs, IPs, domains, and files that were found during detonation (and can either be problematic or benign). Be aware, there may be no behavior details for:
    - Container files like .zip or .rar that are holding other files.

## Actions you can take on the Email entity Page

Security teams can take email actions. For example:

- Soft delete and hard delete.
- Move to junk.
- Move to inbox.
- Trigger an investigation.
- Submit to Microsoft for review in line.

You can also trigger **Tenant level block** actions for files, URLs, or senders from the Email entity page.

You'll be able to select **Take actions** from the top right corner of the entity page and this will open the Action wizard for you to select the specific action you need.

> [!TIP]
> We're adding the ability to take multiple actions together. You can take email remediation actions, create submissions, tenant level block actions (block senders, domains, files, and URLs), investigative actions, and proposed remediation from the **same panel**. Actions are now contextual and grouped together depending on the **latest location of the email message**.

:::image type="content" source="../../media/Take-ActionWizard-Email-entity.png" alt-text="Take action from entity page." lightbox="../../media/Take-ActionWizard-Email-entity.png":::

In the existing Action wizard you can take email actions, create email submissions, block senders and sender domains, take investigative actions, and do two step approval (add to remediation) in the same flyout. The flyout follows a consistent flow for ease of use. The Action wizard uses the same system as Explorer actions (for example, for Delete, Submissions, and Investigation actions). You can see and track these actions in the Unified action center at <https://security.microsoft.com/action-center/history> (for deleted emails), on the Submission page at <https://security.microsoft.com/reportsubmission> (for submissions), and in the Tenant Allow/Block List at <https://security.microsoft.com/tenantAllowBlockList> page (for block entries).

> [!TIP]
> These enhancements bring the following benefits:
>
> - SecOps can now select multiple actions together in the single flow.
> - We grouped actions together for a logical grouping of good (false positive) and bad (false negative) message actions.
> - Actions are contextual in nature in the same panel. For example, if the message is in already in Inbox, the **Move to Inbox** action is grayed out.
>
> There are no changes to the action permissions.

We're also bringing tenant-level blocks for URLs and attachments to the respective **Email entity**, **URL**, and **Attachments** tabs. After approval, you can track the block entries for URLs and attachments on the **URLs** and **Files** tabs on the **Tenant Allow/Block List** page.

:::image type="content" source="../../media/Block-URL-Email-entity.png" alt-text="Take block URL action from entity page." lightbox="../../media/Block-URL-Email-entity.png":::

See [permissions](mdo-portal-permissions.md) required to take these actions.
