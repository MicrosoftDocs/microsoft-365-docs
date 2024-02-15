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

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have **Explorer** (also known as **Threat Explorer**) or **Real-time detections**. Fundamentally, these features are near real-time reports of detected threats found in email and files.

Depending on your Defender for Office 365 subscription, Threat Explorer or Real-time detections is available in the **Email & collaboration** section in the Microsoft Defender portal at <https://security.microsoft.com>:

- **Real-time detections** is available in _Defender for Office 365 Plan 1_. The **Real-time detections** page is available directly at <https://security.microsoft.com/realtimereportsv3>.

  :::image type="content" source="../../media/te-rtd-select-real-time-detections.png" alt-text="Real-time detections in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-real-time-detections.png":::

  Real-time detections contains information about email containing malware and phishing threats (including phishing URL and click verdict data), and files detected by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).

- **Threat Explorer** is available in _Defender for Office 365 Plan 2_. The **Explorer** page is available directly at <https://security.microsoft.com/threatexplorerv3>.

  :::image type="content" source="../../media/te-rtd-select-threat-explorer.png" alt-text="Explorer in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-threat-explorer.png":::

  Threat Explorer contains the same information as Real-time detections and the following additional reporting capabilities:

  - Information about all email sent into your organization and between users in your organization (whether threats are detected or not).
  - Information about [campaigns](campaigns.md).
  - Information about user clicks on URLs in email messages, Teams messages, SharePoint, and OneDrive.
  - More filtering options.
  - The ability to save and use queries.

  More importantly, Threat Explorer is also a threat hunting and remediation tool that allows you to take action on items from the reports. For example:

  - Start automated investigations and responses.
  - ???

For more information about the differences between Defender for Office 365 Plan 1 and Plan 2, see the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-security-comparison.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

The reports in Threat Explorer and Real-time detections contain the following elements:

- **Views**: Tabs at the top of the page that organize detections by threat. The view selection affects the rest of the data and options that are available on the page.
- **Filters (queries)**: Filter the results by date/time and message, file, or threat properties.
- **Charts**: A visual, aggregate view of the filtered or unfiltered data. You can use available pivots to organize the chart in different ways. You can often export the chart data to a .csv file.
- **Details area**: The details area shows a table, chart, or map that contains the filtered or unfiltered data. You can use the available views (tabs) to organize the data in different ways. You can often export the data from the details area to a .csv file.

:::image type="content" source="../../media/te-rtd-threat-explorer-main-page.png" alt-text="The main page in Threat explorer showing real-time report data in the Defender for Office 365 portal." lightbox="../../media/te-rtd-threat-explorer-main-page.png":::

The following table lists the available report views in Threat Explorer and Real-time detections:

|View|Threat<br/>Explorer|Real-time<br/>detections|Description|
|---|:---:|:---:|---|
|**All email**|✔||Default view for Threat Explorer. Information about all email messages sent by external users into your organization, or email sent between internal users in your organization.|
|**Malware**|✔|✔|Default view for Real-time detections. Information about email messages that contain malware.|
|**Phish**|✔|✔|Information about email messages that contain phishing threats.|
|**Campaigns**|✔||Information about malicious email that Defender for Office 365 Plan 2 identified as part of a [coordinated phishing or malware campaign](campaigns.md).|
|**Content malware**|✔|✔|Information about malicious files that were identified by [Safe Attachments for Sharepoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).|
|**URL clicks**|✔||Information about user clicks on URLs in email messages, Teams messages, SharePoint, and OneDrive.|

The rest of this article explains the report views and actions that are available in Threat Explorer and Real-time detections.

## All email view in Threat Explorer

The **All email** view in Threat Explorer shows information about all email messages sent by external users into your organization, or email sent between internal users in your organization.

:::image type="content" source="../../media/te-rtd-all-email view.png" alt-text="The All email view showing the chart, available pivots for the chart, and views for the details table." lightbox="../../media/te-rtd-all-email view.png":::

The view is available on the **Explorer** page in the Defender portal at **Email & collaboration** \> **Explorer** \> **All email** tab. Or, to go directly to the **All email** view on the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.

By default, the view is filtered by data from yesterday and today. To change the date filter, select the date range filter, and then select **Start Date** and **End date** values up to 30 days ago.

:::image type="content" source="../../media/te-rtd-date-filter.png" alt-text="The date filter used in Threat Explorer and Real-time detections in the Defender portal." lightbox="../../media/te-rtd-date-filter.png":::

By default, no filters (queries) are applied to the data. The steps to create filters are described in the [Filters in Threat Explorer and Real-time detections](#data-filters-in-threat-explorer-and-real-time-detections) section later in this article.

The filterable properties that are available in the **Delivery action** box in the **All email** view are described in the following table:

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

The date/time filter and the data filters (queries) that you configure affect the data that's shown in the chart and details table. Use the following options to further organize the data:

- **Chart pivots**: Select an available value from **Select pivot for histogram chart** to change how the filtered or unfiltered chart data is organized and displayed.
- **Details table views**: Select an available view tab for the details table to change how the details table is organized and displayed.

These options are described in the following subsections.

> [!TIP]
> Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export chart data** to export the filtered or unfiltered chart data to a CSV file.
>
> Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the filtered or unfiltered details table data to a CSV file.
>
> To remove the chart from the page (maximize the size of the details table), do either of the following steps:
>
> - Select :::image type="icon" source="../../media/m365-cc-sc-chart-view-icon.png" border="false"::: **Chart View** \> :::image type="icon" source="../../media/m365-cc-sc-list-view-icon.png" border="false"::: **List View** at the top of the page.
> - Select :::image type="icon" source="../../media/m365-cc-sc-show-list-view-icon.png" border="false"::: **Show list view** between the chart and the views for the details table.

### Delivery action chart pivot in the All email view in Threat Explorer

Although this chart pivot doesn't look like it's selected, **Delivery action** is the default chart pivot in the **All email** view.

### Sender domain chart pivot in the All email view in Threat Explorer

### Sender IP chart pivot in the All email view in Threat Explorer

### Detection technology chart pivot in the All email view in Threat Explorer

### Full URL chart pivot in the All email view in Threat Explorer

### URL domain chart pivot in the All email view in Threat Explorer

### URL domain and path chart pivot in the All email view in Threat Explorer

### Email view for the details area in the All email view in Threat Explorer

**Email** is the default view for the details area in the **All email** view.

You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **Date**<sup></sup>
- **Subject**<sup></sup>
- **Recipient**<sup></sup>
- **Recipient domain**
- **Tags**<sup></sup>
- **Sender address**<sup></sup>
- **Sender display name**
- **Sender domain**<sup></sup>
- **Sender IP**
- **Sender mail from address**
- **Sender mail from domain**
- **Additional actions**<sup></sup>
- **Delivery action**
- **Latest delivery location**<sup></sup>
- **Original delivery location**<sup></sup>
- **System overrides source**
- **System overrides**
- **Alert ID**
- **Internet message ID**
- **Network message ID**
- **Mail language**
- **Exchange transport rule**
- **Connector**
- **Context**
- **Data loss prevention rule**
- **Threat type**<sup></sup>
- **Detection technology**
- **Attachment Count**
- **URL Count**
- **Email size**

To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Remove columns from the view.
- Zoom out in your web browser.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export up to 200,000 results to a CSV file.

**Take action**

### URL clicks view for the details area in the All email view in Threat Explorer

The **URL clicks** view shows a chart that can be organized using pivots as described in the following subsections.



### Top URLs view for the details area in the All email view in Threat Explorer

### Top clicks view for the details area in the All email view in Threat Explorer

### Top targeted users view for the details area in the All email view in Threat Explorer

### Email origin view for the details area in the All email view in Threat Explorer

### Campaign view for the details area in the All email view in Threat Explorer




## Malware view in Threat Explorer and Real-time detections

## Phish view in Threat Explorer and Real-time detections

## Campaigns view in Threat Explorer

## Content malware view in Threat Explorer and Real-time detections

## URL clicks view in Threat Explorer

## Data filters in Threat Explorer and Real-time detections

The steps to create data filters (queries) are the same in all views in Threat Explorer and Real-time detections:

1. Identify the filter property using the tables in the preview view description sections earlier in this article.

2. Select an available filter operator. The available filter operators depend on the property type as described in the following table:

   |Operator|Property type|
   |---|---|
   |**Equal any of**|Text <br/> Integer <br/> Discreet values|
   |**Equal none of**|Text <br/> Discreet values|
   |**Greater than**|Integer|
   |**Less than**|Integer|

3. Enter or select one or more property values. For text values and integers, you can enter multiple values separated by commas.

   Multiple values in the property value use the OR logical operator. For example, **Sender address** \> **Equal any of** \> `bob@fabrikam.com,cindy@fabrikam.com` means **Sender address** \> **Equal any of** \> `bob@fabrikam.com` OR `cindy@fabrikam.com`.

   After you enter or select one or more property values, the completed filter condition appears below the filter creation boxes.

4. To add another filter condition, repeat the previous three steps.

   The filter conditions below the filter creation boxes are separated by the logical operator that was selected at the time you created the second or subsequent filter conditions. The default value is **AND**, but you can also select **OR**.

   The same logical operator is used between all filter conditions: they're all **AND** or they're all **OR**. To change the existing logical operators, select the logical operator box, and then select **AND** or **OR**.

   To edit an existing condition, double-click on it to bring the selected property, filter operator, and values back into the corresponding boxes.

   To remove an existing condition, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: on the condition.

5. To apply the filter to the chart and the details table, select **Refresh**

   :::image type="content" source="../../media/te-rtd-query-builder.png" alt-text="An example query in Threat Explorer or Real-time detections showing multiple conditions." lightbox="../../media/te-rtd-query-builder.png":::

   > [!TIP]
   > **Save query** isn't available in Real-time detections. It's available only in Threat Explorer.

### Saved filters in Threat Explorer

Threat Explorer allows you to save filters (queries) for later use.

To save a filter in Threat Explorer, do the following steps:

1. After you create the filter as described in the previous section, select **Save query** \> :::image type="icon" source="../../media/m365-cc-sc-save-icon.png" border="false"::: **Save query**.

2. In the **Save query** flyout that opens, configure the following options:
   - **Query name**: Enter a unique name for the query.
   - Select one of the following options:
     - **Exact dates**: Select a start date and end date in the boxes. The oldest start date that you can select is 30 days before today. The newest end date that you can select is today.
     - **Relative dates**: Select the number of days in the **Show last nn days when search is run**. The default value is 7, but you can select 1 to 30.
   - **Track query**: By default, this option isn't selected.

   When you're finished in the **Save query** flyout, select **Save**, and then select **OK** in the confirmation dialog.

:::image type="content" source="../../media/te-rtd-query-save.png" alt-text="The Save query flyout in Threat Explorer in the Defender portal." lightbox="../../media/te-rtd-query-save.png":::

Where to open/use query???

**Save query as**???

**Saved query settings**???

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
