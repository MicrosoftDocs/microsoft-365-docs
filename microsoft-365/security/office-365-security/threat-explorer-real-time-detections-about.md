---
title: Threat Explorer and Real-time detections basics in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.date: 2/13/24
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
  - highpri
description: Use Explorer or Real-time detections to investigate and respond to threats efficiently.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# About Threat Explorer and Real-time detections in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have **Explorer** (also known as **Threat Explorer**) or **Real-time detections** to detect and remediate threats. For example:

- See malware detected by Microsoft 365 security features.
- View phishing URL and click verdict data.
- Start an automated investigation.
- Investigate malicious email.
- And more.

Depending on your Defender for Office 365 subscription, Threat Explorer or Real-time detections is available in the **Email & collaboration** section in the Microsoft Defender portal at <https://security.microsoft.com>:

- **Threat Explorer** is a threat hunting and remediation tool in _Defender for Office 365 Plan 2_. The **Explorer** page is available directly at <https://security.microsoft.com/threatexplorerv3>.

  :::image type="content" source="../../media/te-rtd-select-threat-explorer.png" alt-text="Explorer in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-threat-explorer.png":::

- **Real-time detections** is a reporting tool in _Defender for Office 365 Plan 1_. The **Real-time detections** page is available directly at <https://security.microsoft.com/realtimereportsv3>.

  :::image type="content" source="../../media/te-rtd-select-real-time-detections.png" alt-text="Real-time detections in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-real-time-detections.png":::

For more information about the differences between Defender for Office 365 Plan 1 and Plan 2, see the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-security-comparison.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

This article gives an overview to Threat Explorer and Real-time detections, and describes the differences between them.

## Real-time report data in Threat Explorer in Real-time detections

The major component of Threat Explorer and Real-time detections is the real-time report data that's available on the **Explorer**</li><li>Real-time detections** page.

Real-time report data contains the following elements:

- **Views**: Tabs at the top of the page that organize detections by threat. The view selection affects the rest of the data and options that are available on the page.
- **Filters**: Filter the results by date/time and message, file, or threat properties.
- **Charts**: A visual, aggregate view of the filtered data. You can use different pivots to view the data by different dimensions. You can also export the chart data to a .csv file.
- **Results grid**: Shows the results based on the applied filters you've applied. Tabs are available in the results grid to further classify the data. Some tabs also allow you to customize the columns that are shown or export data.

:::image type="content" source="../../media/te-rtd-threat-explorer-main-page.png" alt-text="The main page in Threat explorer showing real-time report data in the Defender for Office 365 portal." lightbox="../../media/te-rtd-threat-explorer-main-page.png":::

These elements are described in the following sections.

## Views in Threat Explorer in Real-time detections

The following table lists the views and their availability in Threat Explorer and Real-time detections:

|View|Threat<br/>Explorer|Real-time<br/>detections|Description|
|---|:---:|:---:|---|
|**All email**|✔||Default view for Threat Explorer. Information about all email messages sent by external users into your organization, or email sent between internal users in your organization.|
|**Malware**|✔|✔|Default view for Real-time detections. Information about email messages that contain malware.|
|**Phish**|✔|✔|Information about email messages that contain phishing threats.|
|**Campaigns**|✔||Information about malicious email that Defender for Office 365 Plan 2 identified as part of a [coordinated phishing or malware campaign](campaigns.md).|
|**Content malware**|✔|✔|Information about malicious files that were identified by [Safe Attachments for Sharepoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).|
|**URL clicks**|✔||Information about user clicks on URLs in email messages, Teams messages, SharePoint, and OneDrive.|

These views are described in the following subsections.

### All email view in Threat Explorer

The **All email** view in Threat Explorer shows information about all email messages sent by external users into your organization, or email sent between internal users in your organization.

The **All email** view is available on the **Explorer** page in the Defender portal at **Email & collaboration** \> **Explorer** \> **All email** tab. Or, to go directly to the **All email** view on the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.

By default, the view is filtered by data from yesterday and today. To change the date filter, select the date range filter, and then select **Start Date** and **End date** values up to 30 days ago.

:::image type="content" source="../../media/te-rtd-date-filter.png" alt-text="The date filter used in Threat Explorer and Real-time detections in the Defender portal." lightbox="../../media/te-rtd-date-filter.png":::

By default, no filters are applied to the data. To filter the data, select the **Delivery action** box, and then select a filter from the drop down list. The available filters are listed in the following table:

|Property|Type|
|---|---|
|**Basic**||
|Sender address|Text. Separate multiple values by commas.|
|Recipients|Text. Separate multiple values by commas.|
|Sender domain|Text. Separate multiple values by commas.|
|Recipient domain|Text. Separate multiple values by commas.|
|Subject|Text. Separate multiple values by commas.|
|Sender display name|Text. Separate multiple values by commas.|
|Sender mail from address|Text. Separate multiple values by commas.|
|Sender mail from domain|Text. Separate multiple values by commas.|
|Return path|Text. Separate multiple values by commas.|
|Return path domain|Text. Separate multiple values by commas.|
|Malware family|Text. Separate multiple values by commas.|
|Tags|Text. Separate multiple values by commas.|
|Impersonated domain|Text. Separate multiple values by commas.|
|Impersonated user|Text. Separate multiple values by commas.|
|Exchange transport rule|Text. Separate multiple values by commas.|
|Data loss prevention rule|Text. Separate multiple values by commas.|
|Context|Select one or more values: <ul><li>**Evaluation**</li><li>**Priority account protection**</li></ul>|
|Connector|Text. Separate multiple values by commas.|
|Delivery action|Select one or more values: <ul><li>**Blocked**</li><li>**Delivered**</li><li>**Delivered to junk**</li><li>**Replaced**</li></ul>|
|Additional action|Select one or more values: <ul><li>**Automated remediation**</li><li>**Dynamic Delivery**</li><li>**Manual remediation**</li><li>**None**</li><li>**Quarantine release**</li><li>**Reprocessed**</li><li>**ZAP**</li></ul>|
|Directionality|Select one or more values: <ul><li>**Inbound**</li><li>**Intra-irg**</li><li>**Outbound**</li></ul>|
|Detection technology|Select one or more values: <ul><li>**Advanced filter**</li><li>**Antimalware protection**</li><li>**Bulk**</li><li>**Campaign**</li><li>**Domain reputation**</li><li>**File detonation**</li><li>**File detonation reputation**</li><li>**File reputation**</li><li>**Fingerprint matching**</li><li>**General filter**</li><li>**Impersonation brand**</li><li>**Impersonation domain**</li><li>**Impersonation user**</li><li>**IP reputation**</li><li>**Mailbox intelligence impersonation**</li><li>**Mixed analysis detection**</li><li>**spoof DMARC**</li><li>**Spoof external domain**</li><li>**Spoof intra.org**</li><li>**URL detonation**</li><li>**URL detonation reputation**</li><li>**URL malicious reputation**</li></ul>|
|Original delivery location|Select one or more values: <ul><li>**Deleted Items folder**</li><li>**Dropped**</li><li>**Failed**</li><li>**Inbox/folder**</li><li>**Junk folder**</li><li>**On-prem/external**</li><li>**Quarantine**</li><li>**Unknown**</li></ul>|
|Latest delivery location|Same values as **Original delivery location**</li></ul>|
|Phish confidence level|Select one or more values: <ul><li>**High**</li><li>**Normal**</li></ul>|
|Primary override|Select one or more values: <ul><li>**Allowed by organization policy**</li><li>**Allowed by user policy**</li><li>**Blocked by organization policy**</li><li>**Blocked by user policy**</li><li>**None**</li></ul>|
|Primary override source|Select one or more values: <ul><li>**3rd Party Filter**</li><li>**Admin initiated time travel**</li><li>**Antimalware policy block by file type**</li><li>**Antispam policy settings**</li><li>**Connection policy**</li><li>**Exchange transport rule**</li><li>**Exclusive mode (User override)**</li><li>**Filtering skipped due to on-prem organization**</li><li>**IP region filter from policy**</li><li>**Language filter from policy**</li><li>**Phishing Simulation**</li><li>**Quarantine release**</li><li>**SecOps Mailbox**</li><li>**Sender address list (Admin Override)**</li><li>**Sender address list (User override)**</li><li>**Sender domain list (Admin Override)**</li><li>**Sender domain list (User override)**</li><li>**Tenant Allow/Block List file block**</li><li>**Tenant Allow/Block List sender email address block**</li><li>**Tenant Allow/Block List spoof block**</li><li>**Tenant Allow/Block List URL block**</li><li>**Trusted contact list (User override)**</li><li>**Trusted domain (User override)**</li><li>**Trusted recipient (User override)**</li><li>**Trusted senders only (User override)**</li></ul>|
|Override source|Same values as **Primary override source**</li></ul>|
|Policy type|Select one or more values: <ul><li>**Anti-malware policy**</li><li>**Anti-phishing policy**</li><li>**Exchange transport rule** (mail flow rule), **Hosted content filter policy** (anti-spam policy), **Hosted outbound spam filter policy** (outbound spam policy), **Safe Attachments policy**</li><li>**Unknown**</li></ul>|
|Policy action|Select one or more values: <ul><li>**Add x-header**</li><li>**Bcc message**</li><li>**Delete message**</li><li>**Modify subject**</li><li>**Move to Junk Email folder**</li><li>**No action taken**</li><li>**Redirect message**</li><li>**Send to quarantine**</li></ul>|
|Threat type|Select one or more values: <ul><li>**Malware**</li><li>**Phish**</li><li>**Spam**</li></ul>|
|Forwarded message|Select one or more values: <ul><li>**True**</li><li>**False**</li></ul>|
|Distribution list|Text. Separate multiple values by commas.|
|Email size|Integer. Separate multiple values by commas.|
|**Advanced**||
|Internet Message ID|Text. Separate multiple values by commas.|
|Network Message ID|Text. Separate multiple values by commas.|
|Sender IP|Text. Separate multiple values by commas.|
|Attachment SHA256|Text. Separate multiple values by commas.|
|Cluster ID|Text. Separate multiple values by commas.|
|Alert ID|Text. Separate multiple values by commas.|
|Alert Policy ID|Text. Separate multiple values by commas.|
|Campaign ID|Text. Separate multiple values by commas.|
|ZAP URL signal|Text. Separate multiple values by commas.|
|**Urls**||
|URL Count|Integer. Separate multiple values by commas.|
|URL domain|Text. Separate multiple values by commas.|
|URL domain and path|Text. Separate multiple values by commas.|
|URL|Text. Separate multiple values by commas.|
|URL path|Text. Separate multiple values by commas.|
|URL source|Select one or more values: <ul><li>**Attachments**</li><li>**Cloud attachment**</li><li>**Email body**</li><li>**Email header**</li><li>**QR Code**</li><li>**Subject**</li><li>**Unknown**</li></ul>|
|Click verdict|Select one or more values: <ul><li>**Allowed**</li><li>**Block overridden**</li><li>**Blocked**</li><li>**Error**</li><li>**Failure**</li><li>**None**</li><li>**Pending verdict**</li><li>**Pending verdict bypassed**</li></ul>|
|URL Threat|Select one or more values: <ul><li>**Malware**</li><li>**Phish**</li><li>**Spam**</li></ul>|
|**File**||
|Attachment Count|Integer. Separate multiple values by commas.|
|Attachment filename|Text. Separate multiple values by commas.|
|File type|Text. Separate multiple values by commas.|
|File Extension|Text. Separate multiple values by commas.|
|File Size|Integer. Separate multiple values by commas.|
|**Authentication**||
|SPF|Select one or more values: <ul><li>**Fail**</li><li>**Neutral**</li><li>**None**</li><li>**Pass**</li><li>**Permanent error**</li><li>**Soft fail**</li><li>**Temporary error**</li></ul>|
|DKIM|Select one or more values: <ul><li>**Error**</li><li>**Fail**</li><li>**Ignore**</li><li>**None**</li><li>**Pass**</li><li>**Test**</li><li>**Timeout**</li><li>**Unknown**</li></ul>|
|DMARC|Select one or more values: <ul><li>**Best guess pass**</li><li>**Fail**</li><li>**None**</li><li>**Pass**</li><li>**Permanent error**</li><li>**Selector pass**</li><li>**Temporary error**</li><li>**Unknown**</li></ul>|
|Composite|Select one or more values: <ul><li>**Fail**</li><li>**None**</li><li>**Pass**</li><li>**Soft pass**</li></ul>|

Depending on the nature of the filter (text, an integer, or discreet values), the following operators are available:

- **Equal any of**
- **Equal none of**
- **Greater than**
- **Less than**

To apply multiple conditions for the query, do the following steps:

1. Use the boxes to select the property and operator.
2. When you enter/select the value or values in the box, the condition appears below the boxes.
3. When you repeat the previous steps, the next condition is copied using the **AND** or **OR** value that shown in the corresponding box in the query builder.

   If you select **AND** or **OR** when existing conditions are present, the operators between the conditions change to all **AND** or all **OR**.

:::image type="content" source="../../media/te-rtd-query-builder.png" alt-text="An example query in Threat Explorer or Real-time detections showing multiple conditions." lightbox="../../media/te-rtd-query-builder.png":::

To save the query, select **Save query** \> **Save query**. In the **Save query** flyout that opens, configure the following options:

- **Query name**: Enter a unique name for the query.
- Select one of the following options:
  - **Exact dates**: Select a start date and end date in the boxes. The oldest start date that you can select is 30 days before today. The newest end date that you can select is today.
  - **Relative dates**: Select the number of days in the **Show last nn days when search is run**. The default value is 7, but you can select 1 to 30.
- **Track query**: By default, this option isn't selected.

When you're finished in the **Save query** flyout, select **Save**, and then select **OK** in the confirmation dialog.

**Save query as**???

**Saved query settings**???

### Malware view in Threat Explorer and Real-time detections

### Phish view in Threat Explorer and Real-time detections

### Campaigns view in Threat Explorer

### Content malware view in Threat Explorer and Real-time detections

### URL clicks view in Threat Explorer

### Build queries in Threat Explorer and Real-time detections

## Differences between Explorer and Real-time detections

- The Real-time detections report allows you to view detections in real time. Threat Explorer does this as well, but it provides additional details for a given attack, such as highlighting attack campaigns, and gives security operations teams the ability to remediate threats (including triggering an [Automated Investigation and Response investigation](air-about-office.md).
- Rich filtering capabilities and remediation actions are included in Threat Explorer. For more information, see [Microsoft Defender for Office 365 Service Description: Feature availability across Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Updated experience for Explorer and Real-time detections

- **Malware view**: Shows emails on which a malware threat was identified. This is the default view for Real-time detections, and shows data for two days (can be expanded to 30 days).

- **Phish view**: Shows emails on which a phish threat was identified.

- **Content malware view**: Shows malicious detections identified in files shared through OneDrive, SharePoint, or Teams.

Here are the common components within these experiences:

- Filters
  - You can use the various filters to view the data based on email or file attributes.
  - By default, the time filter is applied to the records, and is applied for two days.
  - If you're applying multiple filters, they're applied in 'AND' mode and you can use the advanced filter to change it to 'OR' mode.
  - You can use commas to add multiple values for the same filter.

    :::image type="content" source="../../media/explorer-new-experience-filters.png" alt-text="Screenshot showing filters in Explorer." lightbox="../../media/explorer-new-experience-filters.png":::

- Charts
  - Charts provide a visual, aggregate view of data based on filters. You can use different filters to view the data by different dimensions.

    > [!NOTE]
    > You may see no results in chart view even if you are seeing an entry in the list view. This happens if the filter does not produce any data. For example, if you have applied the filter malware family, but the underlying data does not have any malicious emails, then you may see the message no data available for this scenario.

    :::image type="content" source="../../media/explorer-new-experience-export-chart-data.png" alt-text="Screenshot showing exporting chart data." lightbox="../../media/explorer-new-experience-export-chart-data.png":::

- Results grid
  - Results grid shows the email results based on the filters you've applied.
  - Based on the configuration set in your tenant, data is shown in UTC or local timezone, with the timezone information available in the first column.
  - You can navigate to the individual email entity page from the list view by clicking the **Open in new window** icon.
  - You can also customize your columns to add or remove columns to optimize your view.

  > [!NOTE]
  > You can toggle between the **Chart view** and the **List view** to maximize your result set.

    :::image type="content" source="../../media/explorer-new-experience-list-chart-view.png" alt-text="Screenshot showing viewing chart data." lightbox="../../media/explorer-new-experience-list-chart-view.png":::

- Detailed flyout
  - You can click on hyperlinks to get to the email summary panel (entries in Subject column), recipient, or IP flyout.
  - The email summary panel replaces the legacy email flyout, and also provides a path to access the email entity panel.
  - The individual entity flyouts like IP, recipient, and URL would reflect the same information, but presented in a single tab-based view, with the ability to expand and collapse the different sections based on requirement.
  - For flyouts like URLs, you can click **View all Email**</li><li>View all Clicks** to view the full set of emails/clicks containing that URL, as well as export the result set.

- Actions
  - From Threat Explorer, you can trigger remediation actions like **Delete an email**. For more information on remediation, remediation limits, and tracking remediation see [Remediate malicious email](remediate-malicious-email-delivered-office-365.md).

- Export
  - You can click **Export chart data** to export the chart details. Similarly, click **Export email list** to export email details.
  - You can export up to 200K records for email list. However, for better system performance and reduced download time, you should use various email filters.

  :::image type="content" source="../../media/explorer-new-experience-export-chart-data.png" alt-text="Screenshot showing exporting chart data." lightbox="../../media/explorer-new-experience-export-chart-data.png":::

In addition to these features, you'll also get updated experiences like **Top URLs**</li><li>**Top clicks**</li><li>**Top targeted users**, and **Email origin**. **Top URLs**</li><li>**Top clicks**, and **Top targeted users** can be further filtered based on the filter that you apply within Explorer.

### Exporting data

Threat Explorer and Real-time detections now allows users to export additional data in addition to the data visible on the data grid. With the new export feature, users will have the ability to selectively export the data that are relevant to their analysis or investigation, without having to shift through irrelevant data. The latest export feature includes a group of default fields that offer fundamental information from email metadata as pre-selected options. You now have the choice to pick extra fields or modify the current selection based on your requirements. The new export feature is available across all tabs in Threat Explorer and Real-time detections.

:::image type="content" source="../../media/threat-explorer-exporting-data.png" alt-text="Screenshot showing Threat Explorer exporting data by date." lightbox="../../media/threat-explorer-exporting-data.png":::

## Required licenses and permissions

You need [Microsoft Defender for Office 365](defender-for-office-365.md) to use either of Explorer or Real-time detections (included in your subscription or purchased as an add-on):

- Explorer is only included in Defender for Office 365 Plan 2.
- The Real-time detections report is included in Defender for Office 365 Plan 1.

Security Operations teams need to assign licenses for all users who should be protected by Defender for Office 365 and be aware that Explorer and Real-time detections show detection data for licensed users.

To view and use Explorer or Real-time detections, you need to be assigned permissions. You have the following options:

- [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) (Affects the Defender portal only, not PowerShell):
  - _Read access for email and Teams message headers_: **Security operations/Raw data (email & collaboration)/Email message headers (read)**.
  - _Preview and download email messages_: **Security operations/Raw data (email & collaboration)/Email content (read)**.
  - _Remediate malicious email_: **Security operations/Security data/Email advanced actions (manage)**.
- [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md):
  - _Full access_: Membership in the **Organization Management**</li><li>Security Administrator** role groups.
  - _Preview and download messages_: Membership in the **Preview** role group.
  - _Read-only access_: Membership in the **Security Reader** role group.
- [Exchange Online permissions](/exchange/permissions-exo/permissions-exo):
  - _Full access_: Membership in the **Organization Management**</li><li>Compliance Management** role groups.
  - _Read-only access_: Membership in the **View-Only Organization Management**</li><li>View-Only Recipients** role groups.
- [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator**</li><li>**Security Administrator**</li><li>**Global Reader**</li><li>Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## More information

- [Threat Explorer collect email details on the email entity page](mdo-email-entity-page.md)
- [Find and investigate malicious email that was delivered](investigate-malicious-email-that-was-delivered.md)
- [View malicious files detected in SharePoint Online, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)
- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
- [Automated investigation and response in Microsoft Threat Protection](air-about-office.md)
