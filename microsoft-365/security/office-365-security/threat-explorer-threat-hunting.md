---
title: Threat hunting in Threat Explorer and Real-time detections
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.date: 2/23/2024
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
description: Learn about threat hunting and remediation in Microsoft Defender for Office 365 using Threat Explorer or Real-time detections in the Microsoft Defender portal.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Threat hunting in Threat Explorer and Real-time detections in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have **Explorer** (also known as **Threat Explorer**) or **Real-time detections**. These features are powerful, near real-time tools to help Security Operations (SecOps) teams investigate and respond to threats. For more information, see [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).

Threat Explorer or Real-time detections allow you to take the following actions:

- See malware detected by Microsoft 365 security features.
- View phishing URL and click verdict data.
- Start an automated investigation and response process (Threat Explorer only).
- Investigate malicious email.
- And more.

Watch this short video to learn how to hunt and investigate email and collaboration-based threats using Defender for Office 365.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWyPRU]

> [!TIP]
> Advanced hunting in Microsoft Defender XDR supports an easy-to-use query builder that doesn't use the Kusto Query Language (KQL). For more information, see [Build queries using guided mode](/microsoft-365/security/defender/advanced-hunting-query-builder).

## Threat Explorer and Real-time detections walk-through

Threat Explorer or Real-time detections is available in the **Email & collaboration** section in the Microsoft Defender portal at <https://security.microsoft.com>:

- **Real-time detections** is available in _Defender for Office 365 Plan 1_. The **Real-time detections** page is available directly at <https://security.microsoft.com/realtimereportsv3>.

  :::image type="content" source="../../media/te-rtd-select-real-time-detections.png" alt-text="Real-time detections in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-real-time-detections.png":::

- **Threat Explorer** is available in _Defender for Office 365 Plan 2_. The **Explorer** page is available directly at <https://security.microsoft.com/threatexplorerv3>.

  :::image type="content" source="../../media/te-rtd-select-threat-explorer.png" alt-text="Explorer in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-threat-explorer.png":::

Threat Explorer contains the same information and capabilities as Real-time detections, but with the following additional features:

- More views.
- More property filtering options, including the option to save queries.
- Threat hunting and remediation actions.

For more information about the differences between Defender for Office 365 Plan 1 and Plan 2, see the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-security-comparison.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

Use the tabs (views) at the top of the page to start your investigation.

The available views in Threat Explorer and Real-time detections are described in the following table:

|View|Threat<br/>Explorer|Real-time<br/>detections|Description|
|---|:---:|:---:|---|
|**All email**|✔||Default view for Threat Explorer. Information about all email messages sent by external users into your organization, or email sent between internal users in your organization.|
|**Malware**|✔|✔|Default view for Real-time detections. Information about email messages that contain malware.|
|**Phish**|✔|✔|Information about email messages that contain phishing threats.|
|**Campaigns**|✔||Information about malicious email that Defender for Office 365 Plan 2 identified as part of a [coordinated phishing or malware campaign](campaigns.md).|
|**Content malware**|✔|✔|Information about malicious files detected by the following features: <ul><li>[Built-in virus protection in SharePoint, OneDrive, and Microsoft Teams](anti-malware-protection-for-spo-odfb-teams-about.md)</li><li>[Safe Attachments for Sharepoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li></ul>|
|**URL clicks**|✔||Information about user clicks on URLs in email messages, Teams messages, SharePoint files, and OneDrive files.|

Use the date/time filter and the available filter properties in the view to refine the results:

- For instructions to create filters, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).
- The available filter properties for each view are described in the following locations:
  - [Filterable properties in the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer)
  - [Filterable properties in the Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-malware-view-in-threat-explorer-and-real-time-detections)
  - [Filterable properties in the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-phish-view-in-threat-explorer-and-real-time-detections)
  - [Filterable properties in the Campaigns view in Threat Explorer](campaigns.md#filters-on-the-campaigns-page)
  - [Filterable properties in the Content malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-content-malware-view-in-threat-explorer-and-real-time-detections)
  - [Filterable properties in the URL clicks view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-url-clicks-view-in-threat-explorer)

> [!TIP]
> Remember to select **Refresh** after you create or update the filter. The filters affect the information in the chart and the details area of the view.

You can think of refining the focus in Threat Explorer or Real-time detections as layers to make retracing your steps easier:

- The first layer is the view you're using.
- The second later is the filters you're using in that view.

For example, you can retrace the steps you took to find a threat by recording your decisions like this: To find the issue in Threat Explorer, I used the **Malware** view and used a **Recipient** filter focus.

> [!TIP]
> If you use [User tags](user-tags-about.md) to mark high value targets accounts (for example, the **Priority account** tag) you can use those tags as filters. For example, the **Phish** view with a **Tags** filter focus. This method shows phishing attempts directed at high value target accounts during a specific time period.

Also, be sure to test your display options. Different audiences (for example, management) might react better or worse to different presentations of the same data.

For example, in Threat Explorer the **All email** view, the **Email origin** and **Campaigns** views (tabs) are available in the details area at the bottom of the page:

- For some audiences, the world map in the **Email origin** tab might do a better job of showing how widespread the detected threats are.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png" alt-text="The world map in the Email origin view in the details area of the All email view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png":::

- Others might find the detailed information in the table in the **Campaigns** tab more useful to convey the information.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-campaign-tab.png" alt-text="The details table in the Campaign tab in the All email view view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-campaign-tab.png":::

You can use this information for the following results:

- To show the need for security and protection.
- To later demonstrate the effectiveness of any actions.

### Threat hunting from Alerts

In Defender for Office 365 Plan 2, the **Alerts** page is available in the Defender portal at <https://security.microsoft.com/alerts>. Many alerts with the **Detection source** value **MDO** have the :::image type="icon" source="../../media/m365-cc-sc-show-trends-icon.png" border="false"::: **View messages in Explorer** action available at the top of the alert details flyout. The alert details flyout opens when you click anywhere on the alert other than the check box next to the first column. For example:

- **A potentially malicious URL click was detected**
- **Admin submission result completed**
- **Email messages containing malicious URL removed after delivery​**
- **Email messages removed after delivery**
- **Messages containing malicious entity not removed after delivery**
- **Phish not zapped because ZAP is disabled**

:::image type="content" source="../../media/alerts-mdo-details-flyout-actions.png" alt-text="The available actions in the alert details flyout of an alert with the Detections source value MDO from the Alerts page in the Defender portal." lightbox="../../media/alerts-mdo-details-flyout-actions.png":::

Selecting **View messages in Explorer** opens Threat Explorer in the **All email** view with the property filter **Alert ID** selected for the alert. The **Alert ID** value is a unique GUID value for the alert (for example, 89e00cdc-4312-7774-6000-08dc33a24419).

**Alert ID** is a filterable property in the following views in Threat Explorer and Real-time detections:

- [The **All email** view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer).
- [The **Malware** view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-malware-view-in-threat-explorer-and-real-time-detections)
- [The **Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-phish-view-in-threat-explorer-and-real-time-detections)

In those views, **Alert ID** is available as a selectable column in the details area below the chart in the following tabs (views):

- [The **Email** view for the details area of the **All email** view in Threat Explorer](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)
- [The **Email** view for the details area of the **Malware** view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections)
- [The **Email** view for the details area of the **Phish** view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)

In the [details flyout that opens when you click on a **Subject** value from one of the entries](threat-explorer-real-time-detections-about.md#subject-details-from-the-email-view-of-the-details-area-in-the-all-email-view), the **Alert ID** link is available in the **Email details** section of the flyout. Selecting the **Alert ID** link opens the **View alerts** page at <https://security.microsoft.com/viewalertsv2> with the alert selected and the details flyout open for the alert.

:::image type="content" source="../../media/view-alerts-page-with-details-flyout.png" alt-text="The alert details flyout on the View alerts page after you select an Alert ID from the Subject details flyout of an entry in the Email tab from the All email, Malware, or Phish views in Threat Explorer or Real-time detections." lightbox="../../media/view-alerts-page-with-details-flyout.png":::

### Email investigation

In the **All email**, **Malware**, or **Phish** views in Threat Explorer or Real-time detections, email message results are shown in a table in the **Email** tab (view) of the details area below the chart.

When you see a suspicious email message, click on the **Subject** value of an entry in the table. The details flyout that opens contains :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** at the top of the flyout.

:::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png" alt-text="The actions available in the details tab after you select a Subject value in the Email tab of the details area in the All email view." lightbox="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png":::

The Email entity page pulls together everything you need to know about the message and its contents so you can determine whether the message is a threat. For more information, see [Email entity page overview](mdo-email-entity-page.md).

### Email remediation

After you determine that an email message is a threat, the next step is remediating the threat. You remediate the threat in Threat Explorer or Real-time detections using :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action**.

> [!TIP]
> For the required permissions, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

**Take action** is available in the **All email**, **Malware**, or **Phish** views in Threat Explorer or Real-time detections in the **Email** tab (view) of the details area below the chart:

- Select one or more entries in the table by selecting the check box next to the first column. :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action** is available directly in the tab.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-tab-message-selected.png" alt-text="The Email tab of the All email view in Threat Explorer showing a selected message and Take action available." lightbox="../../media/te-rtd-all-email-view-details-area-email-tab-message-selected.png":::

- Click on the **Subject** value of an entry in the table. The details flyout that opens contains :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action** at the top of the flyout.

  :::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png" alt-text="The actions available in the details tab after you select a Subject value in the Email tab of the details area in the All email view." lightbox="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png":::

Selecting **Take action** opens the **Take action** wizard in a flyout:

1. On the **Choose response actions** page, configure the following options:
   - **Show all response actions**: By default, only actions that apply to the selected entity (message or file) are available. To show all response actions, slide the toggle to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **On**.  <!--- Not available in MDOP1 tenant--->

   - **Email message actions** section: Select one or more of the available options:

     - **Move to mailbox folder** <!--- Security Administrator is not enough--->

     - **Submit to Microsoft for review**: Select one of the available values that appear:
       - **I've confirmed it's clean**: Select this value if you're sure that the message is clean. The following options appear:
         - **Allow messages like this**: If you select this value, allow entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options also appear:
           - **Remove entry after**: The default value is **1 day**, but you can also select **7 days**, **30 days**, or a **Specific date** that's less than 30 days.
           - **Allow entry note**: Enter an optional note that contains additional information.
       - **It appears clean** or **It appears suspicious**: Select one of these values if you're unsure and you want a verdict from Microsoft.
       - **I've confirmed it's a threat**: Select this value if you're sure that the item is malicious, and then select one of the following values in the **Choose a category** section that appears:
         - **Phish**
         - **Malware**
         - **Spam**

         After you select one of those values, a **Select entities to block** flyout opens where you can select one or more entities associated with the message (sender address, sender domain, URLs, or file attachments) to add as block entries to the Tenant Allow/Block list.

         After you select the items to block, select **Add to block rule** to close the **Select entities to block** flyout. Or, select no items and then select **Cancel**.

         Back on the **Choose response actions** page, select an expiration option for the block entries:

         - :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: **Expire on**: Select a date for block entries to expire.
         - :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **Never expire**

         The number of blocked entities is shown (for exampe, **4/4 entities to be blocked**). Select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** to reopen the **Add to block rule** and make changes.

     - **Initiate automated investigation**: Threat Explorer only. Select one of the following values that appear:
       - **Investigate email**
       - **Investigate recipient**
       - **Investigate sender**
       - **Contact recipients**

     - **Propose remediation**: Select one of the following values that appear:  <!--- Security Administrator is not enough--->
       - **Create new**: This value triggers a soft delete email pending action that needs to be approved by an admin in the Action center.
       - **Add to existing**: Use this value to apply actions to this email message from an existing remediation. In the **Submit email to the following remediations** box, select the existing remediation.

   When you're finished on the **Choose response actions** page, select **Next**.

2. On the **Choose target entities** page, configure the following options:

   - **Name** and **Description**: Enter a unique, descriptive name and an optional description to track and identify each selected action on the applicable pages in the Defender portal. For example:
     - The Action center.
     - The Tenant Allow/Block List

   The rest of the page is a table that lists the affected assets. The table is organized by the following columns:

   - **Impacted asset**: The affected assets from the previous page. For example:
     - **Recipient email address**
     - **Entire tenant**
   - **Action**: The selected actions for the assets from the previous page. For example:
     - Values from **Submit to Microsoft for review**:
       - **Report as clean**
       - **Report**
       - **Report as malware**, **Report as spam**, or **Report as phishing**
       - **Block sender**
       - **Block sender domain**
       - **Block URL**
     - Values from **Initiate automated investigation**:
       - **Investigate email**
       - **Investigate recipient**
       - **Investigate sender**
       - **Contact recipients**
     - Values from **Propose remediation**:
       - **Create new remediation**
       - **Add to existing remediation**
   - **Target entity**: For example:
     - The **Network Message ID value** of the email message.
     - The blocked sender email address.
     - The blocked sender domain.
     - The blocked URL.
   - **Expires on**: Values exist only for allow or block entries in the Tenant/Allow Block List. For example:
     - **Never expire** for block entries.
     - The expiration date for allow or block entries.
   - **Scope**: Typically, this value is **MDO**.

   When you're finished on the **Choose target entities** page, select **Next**.

3. On the **Review and submit** page, review your previous selections.

   Select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the impacted assets to a CSV file. By default, the filename is **Impacted assets.csv** located in the **Downloads** folder.

   Select **Back** to go back and change your selections.

   When you're finished on the **Review and submit** page, select **Submit**.
