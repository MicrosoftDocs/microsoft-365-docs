---
title: Campaigns in Microsoft Defender for Office 365 Plan
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.reviewer: mcostea
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 
ms.collection: 
  - m365-security
  - tier1
ms.custom:
description: Learn about Campaigns in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 2/20/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Campaigns in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Microsoft Defender for Office 365 Plan 2, the _campaigns_ feature identifies and categorizes coordinated phishing and malware email attacks. Microsoft's categorization of email attacks into discrete campaigns helps you to:

- Efficiently investigate and respond to email attacks.
- Better understand the scope of the email attack that's targeting your organization.
- Show the value of Microsoft Defender for Office 365 to decision makers in preventing email threats.

The campaigns feature lets you see the overall picture of an email attack faster and more completely than any human.

Watch this short video on how campaigns in Microsoft Defender for Office 365 help you understand coordinated email attacks that target your organization.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWGBL8]

## What is a campaign?

A campaign is a coordinated email attack against one or many organizations. Email attacks that steal credentials and company data are a large and lucrative industry. As technologies increase to stop attacks, attackers modify their methods to ensure continued success.

Microsoft applies the vast amounts of anti-phishing, anti-spam, and anti-malware data from the entire service to identify campaigns. We analyze and classify the attack information according to several factors. For example:

- **Attack source**: The source IP addresses and sender email domains.
- **Message properties**: The content, style, and tone of the messages.
- **Message recipients**: How recipients are related. For example, recipient domains, recipient job functions (admins, executives, etc.), company types (large, small, public, private, etc.), and industries.
- **Attack payload**: Malicious links, attachments, or other payloads in the messages.

A campaign might be short-lived, or could span several days, weeks, or months with active and inactive periods. A campaign might be launched against your organization specifically, or your organization might be part of a larger campaign across multiple companies.

## Required licenses and permissions

- The campaigns feature is available in organizations with Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5).
- You need to be assigned permissions to view information about campaigns as described in this article. You have the following options:
  - [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) (Affects the Defender portal only, not PowerShell): **Security operations/Raw data (email & collaboration)/Email message headers (read)**.
  - [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Organization Management**, **Security Administrator**, or **Security Reader** role group.
  - [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator**, **Security Administrator**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Campaigns page in the Microsoft Defender portal

To open the **Campaigns** page in the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Campaigns**. Or, to go directly to the **Campaigns** page, use <https://security.microsoft.com/campaigns>.

The **Campaigns** page consists of the following elements:

- A filter/query builder at the top of the page.
- A chart area where you can use the available pivots to organize the chart in different ways. By default, the chart uses the **Campaign Type** pivot, even though that pivot doesn't appear to be selected.
- A details area, which is set to the **Campaign** tab by default

:::image type="content" source="../../media/campaigns-overview.png" alt-text="Screenshot that shows the Campaigns in the Microsoft Defender portal." lightbox="../../media/campaigns-overview.png":::

> [!TIP]
>
> - If you don't see any campaign data or very limited data, try changing the date range or [filters](#filters-on-the-campaigns-page).
>
> - You can also view the same information about campaigns in [Threat Explorer](threat-explorer-about.md) at <https://security.microsoft.com/threatexplorerv3>:
>   - **Campaigns** view.
>   - **All email** view \> **Campaign** tab in the details area below the chart.
>   - **Malware** view \> **Campaign** tab in the details area below the chart.
>   - **Phish** view \> **Campaign** tab in the details area below the chart.
>
> - If you have a Microsoft Defender for Endpoint subscription, campaigns information is connected with Microsoft Defender for Endpoint.

### Chart area on the Campaigns page

On the **Campaigns** page, the chart area shows a bar graph that shows the number of recipients per day. By default, the graph shows both **Malware** and **Phish** data.

To filter the information that's shown in the chart and in the details table, change the [filters](#filters-on-the-campaigns-page).

Change the organization of the chart by selecting **Campaign Type**, and then selecting one of the following values in the dropdown list:

- **Campaign Name**
- **Campaign Subtype**
- **Sender domain**
- **Sender IP**
- **Delivery action**
- **Detection technology**
- **Full URL**
- **URL domain**
- **URL domain and path**

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export chart data** to export the data in the chart to a CSV file.

To remove the chart from the page (which maximizes the size of the details area), do either of the following steps:

- Select :::image type="icon" source="../../media/m365-cc-sc-chart-view-icon.png" border="false"::: **Chart View** \> :::image type="icon" source="../../media/m365-cc-sc-list-view-icon.png" border="false"::: **List View** at the top of the page.
- Select :::image type="icon" source="../../media/m365-cc-sc-show-list-view-icon.png" border="false"::: **Show list view** between the chart and the views for the details table.

### Details area on the Campaigns page

To filter the information that's shown in the chart and in the details table, change the [filters](#filters-on-the-campaigns-page).

On the **Campaigns** page, the **Campaign** tab below the chart shows the following information in the details table:

- **Name**
- **Sample subject**: The subject line of one of the messages in the campaign. All messages in the campaign don't necessarily have the same subject.
- **Targeted**: The percentage as calculated by: (the number of campaign recipients in your organization) / (the total number of recipients in the campaign across all organizations in the service). This value indicates the degree to which the campaign is directed only at your organization (a higher value) vs. also directed at other organizations in the service (a lower value).
- **Type**: The value is either **Phish** or **Malware**.
- **Subtype**: The value contains more details about the campaign. For example:
  - **Phish**: Where available, the brand that is being phished by this campaign. For example, `Microsoft`, `365`, `Unknown`, `Outlook`, or `DocuSign`. When the detection is driven by Defender for Office 365 technology, the prefix **ATP-** is added to the subtype value.
  - **Malware**: For example, `W32/<MalwareFamilyName>` or `VBS/<MalwareFamilyName>`.
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).
- **Recipients**: The number of users that were targeted by this campaign.
- **Inboxed**: The number of users that received messages from this campaign in their Inbox (not delivered to their Junk Email folder).
- **Clicked**: The number of users that selected the URL or opened the attachment in the phishing message.
- **Click rate**: In phishing campaigns, the percentage as calculated by "**Clicked** / **Inboxed**". This value is an indicator of the effectiveness of the campaign. In other words, were the recipients able to identify the message as phishing, and therefore avoided the payload URL? **Click rate** isn't used in malware campaigns.
- **Visited**: How many users actually made it through to the payload website. If there are **Clicked** values, but [Safe Links](safe-links-about.md) blocked access to the website, this value is zero.

Select a column header to sort by that column. To remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data in the details table to a CSV file.

On the **Campaigns** page, the **Campaign origin** tab below the chart shows the message sources on a map of the world.

### Filters on the Campaigns page

At the top of the **Campaign** page, there are several filter settings to help you find and isolate specific campaigns. The filters you select affect the chart and the details table.

By default, the view is filtered by yesterday and today. To change the date filter, select the date range, and then select **Start Date** and **End date** values up to 30 days ago.

:::image type="content" source="../../media/campaign-filters-and-settings.png" alt-text="Campaign filters on the Campaigns page." lightbox="../../media/campaign-filters-and-settings.png":::

You can also filter the results by one or more message or campaign properties. The basic syntax is:

\<Property\> \<**Equal any of** \| **Equal none of**\> \<Property value or values\>

- Select the message or campaign property from the **Campaign Type** dropdown list (**Campaign Type** is the default value that's selected).
- The property values that you need to enter are completely dependent on the property. Some properties allow freeform text with multiple values separated by commas, and some properties allow multiple values selected from a list.

The available properties and their associated values are described in the following table:

|Property|Type|
|---|---|
|**Basic**||
|Campaign Type|Select one or more values¹: <ul><li>**Malware**</li><li>**Phish**</li></ul>|
|Campaign Name|Text. Separate multiple values by commas.|
|Campaign Subtype|Text. Separate multiple values by commas.|
|Sender address|Text. Separate multiple values by commas.|
|Recipients|Text. Separate multiple values by commas.|
|Sender domain|Text. Separate multiple values by commas.|
|Recipient domain|Text. Separate multiple values by commas.|
|Subject|Text. Separate multiple values by commas.|
|Sender display name|Text. Separate multiple values by commas.|
|Sender mail from address|Text. Separate multiple values by commas.|
|Sender mail from domain|Text. Separate multiple values by commas.|
|Malware family|Text. Separate multiple values by commas.|
|Tags|Text. Separate multiple values by commas. <br/><br/> For more information about user tags, see [User tags](user-tags-about.md).|
|Delivery action|Select one or more values¹: <ul><li>**Blocked**</li><li>**Delivered**</li><li>**Delivered to junk**</li><li>**Replaced**</li></ul>|
|Additional action|Select one or more values¹: <ul><li>**Automated remediation**</li><li>**Dynamic Delivery**: For more information, see [Dynamic Delivery in Safe Attachments policies](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies).</li><li>**Manual remediation**</li><li>**None**</li><li>**Quarantine release**</li><li>**Reprocessed**</li><li>**ZAP**: For more information, see [Zero-hour auto purge (ZAP) in Microsoft Defender for Office 365](zero-hour-auto-purge.md).</li></ul>|
|Directionality|Select one or more values¹: <ul><li>**Inbound**</li><li>**Intra-irg**</li><li>**Outbound**</li></ul>|
|Detection technology|Select one or more values¹: <ul><li>**Advanced filter**: Signals based on machine learning.</li><li>**Antimalware protection**</li><li>**Bulk**</li><li>**Campaign**</li><li>**Domain reputation**</li><li>**File detonation**: [Safe Attachments](safe-attachments-about.md) detected a malicious attachment during detonation analysis.</li><li>**File detonation reputation**: File attachments previously detected by [Safe Attachments](safe-attachments-about.md) detonations in other Microsoft 365 organizations.</li><li>**File reputation**: The message contains a file that was previously identified as malicious in other Microsoft 365 organizations.</li><li>**Fingerprint matching**: The message closely resembles a previous detected malicious message.</li><li>**General filter**</li><li>**Impersonation brand**: Sender impersonation of well-known brands.</li><li>**Impersonation domain**: Impersonation of sender domains that you own or specified for protection in [anti-phishing policies](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>**Impersonation user**</li><li>**IP reputation**</li><li>**Mailbox intelligence impersonation**: Impersonation detections from mailbox intelligence in [anti-phishing policies](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).</li><li>**Mixed analysis detection**: Multiple filters contributed to the message verdict.</li><li>**spoof DMARC**: The message failed [DMARC authentication](email-authentication-dmarc-configure.md).</li><li>**Spoof external domain**: Sender email address spoofing using a domain that's external to your organization.</li><li>**Spoof intra-org**: Sender email address spoofing using a domain that's internal to your organization.</li><li>**URL detonation**: [Safe Links](safe-links-about.md) detected a malicious URL in the message during detonation analysis.</li><li>**URL detonation reputation**</li><li>**URL malicious reputation**: URLs previously detected by [Safe Links](safe-links-about.md) detonations in other Microsoft 365 organizations.</li></ul>|
|Original delivery location|Select one or more values¹: <ul><li>**Deleted Items folder**</li><li>**Dropped**</li><li>**Failed**</li><li>**Inbox/folder**</li><li>**Junk folder**</li><li>**On-prem/external**</li><li>**Quarantine**</li><li>**Unknown**</li></ul>|
|Latest delivery location|Same values as **Original delivery location**</li></ul>|
|System overrides|Select one or more values¹: <ul><li>**Allowed by user policy**</li><li>**Blocked by user policy**</li><li>**Allowed by organization policy**</li><li>**Blocked by organization policy**</li><li>**File extension blocked by organization policy**</li><li>**None**</li></ul>|
|System override source|Select one or more values¹: <ul><li>**3rd party filter**</li><li>**Admin initiated time travel** (ZAP)</li><li>**Anti-malware policy block by file type**</li><li>**Anti-spam policy settings**</li><li>**Connection policy**</li><li>**Exchange transport rule** (mail flow rule)</li><li>**Filtering skipped due to on-prem organization**</li><li>**IP region filter from policy**</li><li>**Language filter from policy**</li><li>**Phishing simulation**</li><li>**Quarantine release**</li><li>**SecOPs mailbox**</li><li>**Sender address list (admin override)**</li><li>**Sender address list (user override)**</li><li>**Sender domain list (admin override)**</li></ul>|
|**Advanced**||
|Internet Message ID|Text. Separate multiple values by commas. <br/><br/> Available in the **Message-ID** header field in the message header. An example value is `<08f1e0f6806a47b4ac103961109ae6ef@server.domain>` (note the angle brackets).|
|Network Message ID|Text. Separate multiple values by commas. <br/><br/> A GUID value that's available in the **X-MS-Exchange-Organization-Network-Message-Id** header field in the message header.|
|Sender IP|Text. Separate multiple values by commas.|
|Attachment SHA256|Text. Separate multiple values by commas. <br/><br/> To find the SHA256 hash value of a file in Windows, run the following command in a Command Prompt: `certutil.exe -hashfile "<Path>\<Filename>" SHA256`.|
|Cluster ID|Text. Separate multiple values by commas.|
|Alert ID|Text. Separate multiple values by commas.|
|Alert Policy ID|Text. Separate multiple values by commas.|
|Campaign ID|Text. Separate multiple values by commas.|
|ZAP URL signal|Text. Separate multiple values by commas.|
|**Urls**||
|URL domain|Text. Separate multiple values by commas.|
|URL domain and path|Text. Separate multiple values by commas.|
|URL|Text. Separate multiple values by commas.|
|URL path|Text. Separate multiple values by commas.|
|Click verdict|Select one or more values¹: <ul><li>**Allowed**</li><li>**Block overridden**</li><li>**Blocked**</li><li>**Error**</li><li>**Failure**</li><li>**None**</li><li>**Pending verdict**</li><li>**Pending verdict bypassed**</li></ul>|
|**File**||
|Attachment filename|Text. Separate multiple values by commas.|

¹ Not using this property filter or using this property filter with no values selected has the same result as using this property filter with all values selected.

After you select a property from the **Campaign Type** dropdown, select **Equal any of** or **Not equal any of**, and then enter or select a value in the property box, the filter query appears below the filter area.

:::image type="content" source="../../media/campaign-filters-selected.png" alt-text="Screenshot showing a campaign filter selected." lightbox="../../media/campaign-filters-selected.png":::

To add more conditions, select another property/value pair, and then select **AND** or **OR**. Repeat these steps as many times as necessary.

To remove existing property/value pairs, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

When you're finished building your filter query, select **Refresh**.

To save your filter query, select **Save query** \> :::image type="icon" source="../../media/m365-cc-sc-save-icon.png" border="false"::: **Save query**. In the **Save query** flyout that opens, configure the following settings:

- **Query name**: Enter a unique value.
- Select one of the following values:
  - **Exact dates**: Select the date range.
  - **Relative dates**: Select from one to 30 days.
- **Track this query**

When you're finished in the **Save query** flyout, select **Save**, and then select **OK** in the confirmation dialog.

When you return to the **Campaigns** page, you can load a saved filter by selecting **Save query** \> :::image type="icon" source="../../media/m365-cc-sc-gear-icon.png" border="false"::: **Saved query settings**.

## Campaign details

When you select an entry from the details table by clicking anywhere in the row other than the check box next to the name, a flyout opens that contains details about the campaign.

What's shown in the campaign details flyout is described in the following subsections.

### Campaign information

At the top of the campaign details flyout, the following campaign information is available:

- **Campaign ID**: The unique campaign identifier.
- **Activity**: The duration and activity of the campaign.
- The following data for the date range filter you selected (or that you select in the timeline):
  - **Impact**
  - **Messages**: The total number of recipients.
  - **Inboxed**: The number of messages that were delivered to the Inbox, not to the Junk Email folder.
  - **Clicked link**: How many users selected the payload URL in the phishing message.
  - **Visited link**: How many users visited the URL.
  - **Targeted(%)**: The percentage as calculated by: (the number of campaign recipients in your organization) / (the total number of recipients in the campaign across all organizations in the service). This value is calculated over the entire lifetime of the campaign, and isn't changed by date filters.
- Start date/time and end data/time filters for the campaign flow as described in the next section.
- An interactive timeline of campaign activity: The timeline shows activity over the entire lifetime of the campaign. You can hover over the data points in the graph to see the number of detected messages.

:::image type="content" source="../../media/campaign-details-campaign-info.png" alt-text="The Campaign information" lightbox="../../media/campaign-details-campaign-info.png":::

### Campaign flow

In the middle of the campaign details flyout, important details about the campaign are presented in a horizontal flow diagram (known as a _Sankey_ diagram). These details help you to understand the elements of the campaign and the potential impact in your organization.

> [!TIP]
> The information that's displayed in the flow diagram is controlled by the date range filter in the timeline as described in the previous section.

:::image type="content" source="../../media/campaign-details-no-recipient-actions.png" alt-text="The Campaign details that don't contain user URL clicks" lightbox="../../media/campaign-details-no-recipient-actions.png":::

If you hover over a horizontal band in the diagram, you see the number of related messages (for example, messages from a particular source IP, messages from the source IP using the specified sender domain, etc.).

The diagram contains the following information:

- **Sender IPs**
- **Sender domains**
- **Filter verdicts**: Verdict values are related to the available phishing and spam filtering verdicts as described in [Anti-spam message headers](message-headers-eop-mdo.md). The available values are described in the following table:

  |Value|Spam filter verdict|Description|
  |---|---|---|
  |**Allowed**|`SFV:SKN` <br/><br/ `SFV:SKI`|The message was marked as not spam and/or skipped filtering before being evaluated by spam filtering. For example, the message was marked as not spam by a mail flow rule (also known as a transport rule). <br/><br/ The message skipped spam filtering for other reasons. For example, the sender and recipient appear to be in the same organization.|
  |**Blocked**|`SFV:SKS`|The message was marked as spam before being evaluated by spam filtering. For example, by a mail flow rule.|
  |**Detected**|`SFV:SPM`|The message was marked as spam by spam filtering.|
  |**Not Detected**|`SFV:NSPM`|The message was marked as not spam by spam filtering.|
  |**Released**|`SFV:SKQ`|The message skipped spam filtering because it was released from quarantine.|
  |**Tenant Allow**¹|`SFV:SKA`|The message skipped spam filtering because of the settings in an anti-spam policy. For example, the sender was in the allowed senders list or allowed domain list.|
  |**Tenant Block**²|`SFV:SKA`|The message was blocked by spam filtering because of the settings in an anti-spam policy. For example, the sender was in the allowed senders list or allowed domain list.|
  |**User Allow**¹|`SFV:SFE`|The message skipped spam filtering because the sender was in a user's Safe Senders list.|
  |**User Block**²|`SFV:BLK`|The message was blocked by spam filtering because the sender was in a user's Blocked Senders list.|
  |**ZAP**|n/a|[Zero-hour auto purge (ZAP)](zero-hour-auto-purge.md) moved the delivered message to the Junk Email folder or quarantine. You configure the action in [anti-spam policies](anti-spam-policies-configure.md).|

  ¹ Review your anti-spam policies, because the allowed message would have likely been blocked by the service.

  ² Review your anti-spam policies, because these messages should be quarantined, not delivered.

- **Message destinations**: Investigate messages that were delivered to recipients (either to the Inbox or the Junk Email folder), even if users didn't select the payload URL in the message. You can also remove the quarantined messages from quarantine. For more information, see [Quarantined email messages in EOP](quarantine-about.md).
  - **Deleted folder**
  - **Dropped**
  - **External**: The recipient is located in your on-premises email organization in hybrid environments.
  - **Failed**
  - **Forwarded**
  - **Inbox**
  - **Junk folder**
  - **Quarantine**
  - **Unknown**
- **URL clicks**: These values are described in the next section.

> [!NOTE]
> In all layers that contain more than 10 items, the top 10 items are shown, while the rest are bundled together in **Others**.

#### URL clicks

When a phishing message is delivered to a recipient's Inbox or Junk Email folder, there's always a chance that the user will select the payload URL. Not selecting the URL is a small measure of success, but you need to determine why the phishing message was delivered to the mailbox in the first place.

If a user selected the payload URL in the phishing message, the actions are displayed in the **URL clicks** area of the diagram in the campaign details view.

- **Allowed**
- **BlockPage**: The recipient selected the payload URL, but their access to the malicious website was blocked by a [Safe Links](safe-links-about.md) policy in your organization.
- **BlockPageOverride**: The recipient selected the payload URL in the message, Safe Links tried to stop them, but they were allowed to override the block. Inspect your [Safe Links policies](safe-links-policies-configure.md) to see why users are allowed to override the Safe Links verdict and continue to the malicious website.
- **PendingDetonationPage**: Safe Attachments in Microsoft Defender for Office 365 is opening and investigating the payload URL in a virtual environment.
- **PendingDetonationPageOverride**: The recipient was allowed to override the payload detonation process and open the URL without waiting for the results.

### Tabs

> [!TIP]
> The information that's displayed on the tabs is controlled by the date range filter in the campaign details flyout as described in the [Campaign information](#campaign-information) section.

The tabs in the campaign details flyout allow you to further investigate the campaign. The following tabs are available:

- **URL clicks**: If users didn't select the payload URL in the message, this section is blank. If a user was able to select the URL, the following values are populated:
  - **User**<sup>\*</sup>
  - **Tags**
  - **URL**<sup>\*</sup>
  - **Click time**
  - **Click verdict**

- **Sender IPs**
  - **Sender IP**<sup>\*</sup>
  - **Total count**
  - **Inboxed**
  - **Not Inboxed**
  - **SPF passed**: The sender was authenticated by the [Sender Policy Framework (SPF)](email-authentication-spf-configure.md). A sender that doesn't pass SPF validation indicates an unauthenticated sender, or the message is spoofing a legitimate sender.

- **Senders**
  - **Sender**: This is the actual sender address in the SMTP **MAIL FROM** command, which isn't necessarily the **From:** email address that users see in their email clients.
  - **Total count**
  - **Inboxed**
  - **Not Inboxed**
  - **DKIM passed**: The sender was authenticated by [Domain Keys Identified Mail (DKIM)](email-authentication-dkim-configure.md). A sender that doesn't pass DKIM validation indicates an unauthenticated sender, or the message is spoofing a legitimate sender.
  - **DMARC passed**: The sender was authenticated by [Domain-based Message Authentication, Reporting, and Conformance (DMARC)](email-authentication-dmarc-configure.md). A sender that doesn't pass DMARC validation indicates an unauthenticated sender, or the message is spoofing a legitimate sender.

- **Attachments**
  - **Filename**
  - **SHA256**
  - **Malware family**
  - **Total count**

- **URLs**
  - **URL**<sup>\*</sup>
  - **Total Count**

<sup>\*</sup> Selecting this value opens a new flyout that contains more details about the specified item (user, URL, etc.) on top of the campaign details view. To return to the campaign details flyout, select **Done** in the new flyout.

On each tab, select a column header to sort by that column. To remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns on each tab are selected.

### Additional actions

The actions at the bottom the campaign details flyout allow you to investigate and record details about the campaign:

- Select **Yes** or **No** in **Do you think this campaign has accurately grouped these messages together?**.
- **Explore messages**: Use the power of Threat Explorer to further investigate the campaign by selecting one of the following values in the dropdown list:
  - **All messages**: Opens a new Threat Explorer search tab using the **Campaign ID** value as the search filter.
  - **Inboxed messages**: Opens a new Threat Explorer search tab using the **Campaign ID** and **Delivery location: Inbox** as the search filter.
  - **Internal messages**: Opens a new Threat Explorer search tab using the **Campaign ID** and **Directionality: Intra-org** as the search filter.
- **Download threat report**: Download the campaign details to a Word document (by default, named CampaignReport.docx). The download contains details over the entire lifetime of the campaign (not just the date filter you selected).
