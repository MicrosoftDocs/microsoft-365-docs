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

The following information is available in this article:

- [A general walkthrough of Threat Explorer and Real-time detections](#threat-explorer-and-real-time-detections-walk-through)
- [The threat hunting experience using Threat Explorer and Real-time detections](#the-threat-hunting-experience-using-threat-explorer-and-real-time-detections)
- [Extended capabilities in Threat Explorer](#extended-capabilities-in-threat-explorer)
- [Email security scenarios in Threat Explorer and Real-time detections](#email-security-scenarios-in-threat-explorer-and-real-time-detections)

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

Also, be sure to test your display options. Different audiences (for example, management) might react better or worse to different presentations of the same data.

For example, in Threat Explorer the **All email** view, the **Email origin** and **Campaigns** views (tabs) are available in the details area at the bottom of the page:

- For some audiences, the world map in the **Email origin** tab might do a better job of showing how widespread the detected threats are.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png" alt-text="The world map in the Email origin view in the details area of the All email view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png":::

- Others might find the detailed information in the table in the **Campaigns** tab more useful to convey the information.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-campaign-tab.png" alt-text="The details table in the Campaign tab in the All email view view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-campaign-tab.png":::

You can use this information for the following results:

- To show the need for security and protection.
- To later demonstrate the effectiveness of any actions.

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

## The threat hunting experience using Threat Explorer and Real-time detections

Threat Explorer or Real-time detections helps your security operations team investigate and respond to threats efficiently. The following subsections explain how Threat Explorer and Real-time detections can help you find threats.

### Threat hunting from Alerts

The **Alerts** page is available in the Defender portal at **Incidents & alerts** \> **Alerts**, or directly at <https://security.microsoft.com/alerts>.

Many alerts with the **Detection source** value **MDO** have the :::image type="icon" source="../../media/m365-cc-sc-show-trends-icon.png" border="false"::: **View messages in Explorer** action available at the top of the alert details flyout.

The alert details flyout opens when you click anywhere on the alert other than the check box next to the first column. For example:

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

### Tags in Threat Explorer

In Defender for Office 365 Plan 2, if you use [user tags](user-tags-about.md) to mark high value targets accounts (for example, the **Priority account** tag) you can use those tags as filters. This method shows phishing attempts directed at high value target accounts during a specific time period. For more information about user tags, see [User tags](user-tags-about.md).

User tags are available in the following locations in Threat Explorer:

- **All email** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer).
  - [An available column in the **Email** tab (view) of the details area](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer).
  - [The **Subject** details flyout from an entry in the **Email** tab (view)](threat-explorer-real-time-detections-about.md#subject-details-from-the-email-view-of-the-details-area-in-the-all-email-view)
- **Malware** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections).
  - [An available column in the **Email** tab (view) of the details area in the **Malware** view](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections).
  - [[The **Subject** details flyout from an entry in the **Email** tab (view)](threat-explorer-real-time-detections-about.md#subject-details-from-the-email-view-of-the-details-area-in-the-all-email-view)
- **Phish** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).
  - [An available column in the **Email** tab (view) of the details](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).
  - [[The **Subject** details flyout from an entry in the **Email** tab (view)](threat-explorer-real-time-detections-about.md#subject-details-from-the-email-view-of-the-details-area-in-the-all-email-view)
- **URL clicks** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#url-clicks-view-in-threat-explorer).
  - [An available column in the **Results** tab (view) of the details area in the **URL clicks** view](threat-explorer-real-time-detections-about.md#results-view-for-the-details-area-of-the-url-clicks-view-in-threat-explorer).

<!--- ### Updated Timeline View

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/tags-urls.png" alt-text="Screenshot of the URL tags." lightbox="../../media/tags-urls.png":::
>
Learn more by watching [this video](https://www.youtube.com/watch?v=UoVzN0lYbfY&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=4). --->

### Threat information for email messages

Pre-delivery and post-delivery actions on email messages are consolidated into a single record, regardless of the different post-delivery events that affected the message. For example:

- [Zero-hour auto purge (ZAP)](zero-hour-auto-purge.md).
- Manual remediation (admin action).
- [Dynamic Delivery](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies).

[The **Subject** details flyout from the **Email** tab (view)](threat-explorer-real-time-detections-about.md#subject-details-from-the-email-view-of-the-details-area-in-the-all-email-view) in the **All email**, **Malware**, or **Phish** views shows the associated threats and the corresponding detection technologies that are associated with the email message. A message can have zero, one, or multiple threats.

- In the **Delivery details** section, the **Detection technology** property shows the detection technology that identified the threat. **Detection technology** is also available as a chart pivot or a column in the details table for many views in Threat Explorer and Real-time detections.

- The **URLs** section shows specific **Threat** information for any URLs in the message. For example, **Malware**, **Phish**, **Spam** or **None**.

> [!TIP]
> Verdict analysis might not necessarily be tied to entities. The filters evaluate content and other details of an email message before assigning a verdict. For example, an email message might be classified as phishing or spam, but no URLs in the message are stamped with a phishing or spam verdict.

:::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout.png" alt-text="The details tab after you select a subject in the Email tab of the details area in the All email view." lightbox="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout.png":::

<!-- ### Updated timeline view (upcoming)

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/Email_Timeline.png" alt-text="Screenshot of the updated Timeline View." lightbox="../../media/Email_Timeline.png":::

Timeline view identifies all delivery and post-delivery events. It includes information about the threat identified at that point of time for a subset of these events. Timeline view also provides information about any additional action taken (such as ZAP or manual remediation), along with the result of that action. Timeline view information includes:

- **Source:** Source of the event. It can be admin/system/user.
- **Event:** Includes top-level events like original delivery, manual remediation, ZAP, submissions, and Dynamic Delivery.
- **Action:** The specific action that was taken either as part of ZAP or admin action (for example, soft delete).
- **Threats:** Covers the threats (malware, phish, spam) identified at that point of time.
- **Result/Details:** More information about the result of the action, such as whether it was performed as part of ZAP/admin action. --->

## Extended capabilities in Threat Explorer

The following subsections describe filters that are exclusive to Threat Explorer.

### Exchange mail flow rules (transport rules)

To find messages that were affected by Exchange mail flow rules (also known as transport rules), you have the following options in the **All email**, **Malware**, and **Phish** views in Threat Explorer (not in Real-time detections):

- **Exchange transport rule** is a selectable value for the **Primary override source**, **Override source**, and **Policy type** filterable properties.
- **Exchange transport rule** is a filterable property. You enter a partial text value for the name of the rule.

For more information, see the following links:

- [All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#all-email-view-in-threat-explorer)
- [Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections)
- [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections)

The **Email** tab (view) for the details area of the **All email**, **Malware**, and **Phish** views in Threat Explorer also have **Exchange transport rule** as an available column that's not selected by default. This column shows the name of the transport rule. For more information, see the following links:

- [Email view for the details area of the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)
- [Email view for the details area of the Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections)
- [Email view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)

> [!TIP]
> For the permissions required to search for mail flow rules by name in Threat Explorer, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections). No special permissions are required to see rule names in email details flyouts, details tables, and exported results.

### Inbound connectors

Inbound connectors specify specific settings for email sources for Microsoft 365. For more information, see [Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).

To find messages that were affected by inbound connectors, you can use the **Connector** filterable property to search for connectors by name in the **All email**, **Malware**, and **Phish** views in Threat Explorer (not in Real-time detections). You enter a partial text value for the name of the connector. For more information, see the following links:

- [All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#all-email-view-in-threat-explorer)
- [Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections)
- [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections)

The **Email** tab (view) for the details area of the **All email**, **Malware**, and **Phish** views in Threat Explorer also have **Connector** as an available column that's not selected by default. This column shows the name of the connector. For more information, see the following links:

- [Email view for the details area of the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)
- [Email view for the details area of the Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections)
- [Email view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)

## Email security scenarios in Threat Explorer and Real-time detections

The following subsections describe scenarios in Threat Explorer and Real-time detections for common email security scenarios.

### View phishing email sent to impersonated users and domains

For more information about user and domain impersonation protection in anti-phishing policies in Defender for Office 365, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

In the default or custom anti-phishing policies, you need to specify the users and domains to protect from impersonation, including domains you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)). In the Standard or Strict preset security policies, domains that you own automatically receive impersonation protection, but you need to specify any users or custom domains for impersonation protection. For instructions, see the following articles:

- [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md)
- [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)

Use the following steps to review phish messages and search for impersonated users or domains.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Phish** view. For more information about the **Phish** view, see [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

4. Do any of the following steps:
   - **Find any user or domain impersonation attempts**:
     - Select the **Sender address** (property) box, and then select **Detection technology** in the **Basic** section of the drop down list.
     - Verify **Equal any of** is selected as the filter operator.
     - In the property value box, select **Impersonation domain** and **Impersonation user**

   - **Find specific impersonated user attempts**:
     - Select the **Sender address** (property) box, and then select **Impersonated user** in the **Basic** section of the drop down list.
     - Verify **Equal any of** is selected as the filter operator.
     - In the property value box, enter the full email address of the recipient. Separate multiple recipient values by commas.

   - **Find specific impersonated domain attempts**:
     - Select the **Sender address** (property) box, and then select **Impersonated domain** in the **Basic** section of the drop down list.
     - Verify **Equal any of** is selected as the filter operator.
     - In the property value box, enter the domain (for example, contoso.com). Separate multiple domain values by commas.

5. Enter more conditions using other filterable properties as required. For instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).

6. When you're finished creating the filter conditions, select **Refresh**.

7. In the details area below the chart, verify the **Email** tab (view) is selected.

   You can sort the entries and show more columns as described in [Email view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).

   If you select the **Subject** or **Recipient** value of an entry in the table, a details flyout opens. For more information, see [Subject details from the Email view of the details area in the Phish view](threat-explorer-real-time-detections-about.md#subject-details-from-the-email-view-of-the-details-area-in-the-phish-view) and [Recipient details from the Email view of the details area in the Phish view](threat-explorer-real-time-detections-about.md#recipient-details-from-the-email-view-of-the-details-area-in-the-phish-view).

<!--- ### Email timeline

The **Email timeline** is a new Explorer feature that improves the hunting experience for admins. It cuts the time spent checking different locations to try to understand the event. When multiple events happen at or close to the same time an email arrives, those events are displayed in a timeline view. Some events that happen to your email post-delivery are captured in the **Special action** column. Admins can combine  information from the timeline with the special action taken on the mail post-delivery to get insight into how their policies work, where the mail was finally routed, and, in some cases, what the final assessment was.

For more information, see [Investigate and remediate malicious email that was delivered in Office 365](threat-explorer-investigate-delivered-malicious-email.md). -->

### Export URL click data

You can export URL click data to a CSV file to view the **Network Message ID** and **Click verdict** values, which helps explain where your URL click traffic originated.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Phish** view. For more information about the **Phish** view, see [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range, and then select **Refresh**. The default is yesterday and today.

4. In the details area, select the **Top URLs** or **Top clicks** tab (view).

5. In the **Top URLs** or **Top clicks** view, select one or more entries from the table by selecting the check box next to the first column, and then select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export**.
**Explorer** \> **Phish** \> **Clicks** \> **Top URLs** or **URL Top Clicks** \> select any record to open the URL flyout.

You can use the Network Message ID value to search for specific messages in Threat Explorer or Real-time detections or associated third-party tools. These searches identify the email message that's associated with a click result. Having the correlated Network Message ID makes for quicker and more powerful analysis.

### View malware detected in email

Use the following steps in Threat Explorer or Real-time detections to see the malware detected in email by Microsoft 365.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Malware** view. For more information about the **Phish** view, see [Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

4. Select the **Sender address** (property) box, and then select **Detection technology** in the **Basic** section of the drop down list.
   - Verify **Equal any of** is selected as the filter operator.
   - In the property value box, select one or more of the following values:
     - **Anti-malware protection**
     - **File detonation**
     - **File detonation reputation**
     - **File reputation**
     - **Fingerprint matching**

5. Enter more conditions using other filterable properties as required. For instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).

6. When you're finished creating the filter conditions, select **Refresh**.

The report shows the results that malware detected in email, using the technology options you selected. From here, you can conduct further analysis.

### Report messages as clean

You can use the **Submissions** page in the Defender portal at <https://security.microsoft.com/reportsubmission> to [report messages as clean (false positives) to Microsoft](submissions-admin.md#report-good-email-to-microsoft). But you can also submit messages as clean to Microsoft from Explorer or Real-time detections.

For instructions, see the [Email remediation](#email-remediation) section earlier in this article.

To summarize:

1. Select :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action** on an email in the **All email**, **Malware**, or **Phish** views in Threat Explorer or Real-time detections in the **Email** tab (view) of the details area below the chart.

2. On the **Choose response actions** page of the **Take action** wizard, select **Submit to Microsoft for review** and then select one of the following options:
   - **I've confirmed it's clean**: Select this value if you're sure that the message is clean. The following options appear:
     - **Allow messages like this**: If you select this value, allow entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options also appear:
       - **Remove entry after**: The default value is **1 day**, but you can also select **7 days**, **30 days**, or a **Specific date** that's less than 30 days.
       - **Allow entry note**: Enter an optional note that contains additional information.
   - **It appears clean**: Select one of these values if you're unsure and you want a verdict from Microsoft.

### View phishing URL and click verdict data

Safe Links protection tracks URLs that were allowed, blocked, and overridden. Safe Links protection is on by default, thanks to Built-in protection in [preset security policies](preset-security-policies.md). Safe Links protection is on in the Standard and Strict preset security policies. You can also create an configure Safe Links protection in [custom Safe Links policies](safe-links-policies-configure.md). For more information about the Safe Links policy settings, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

Use the following steps to see phishing attempts using URLs in email messages.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Phish** view. For more information about the **Phish** view, see [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

4. Select the **Sender address** (property) box, and then select **Click verdict** in the **URLs** section of the drop down list.
   - Verify **Equal any of** is selected as the filter operator.
   - In the property value box, select one or more of the following values:
     - **Blocked**
     - **Blocked overridden**

   For explanations of the **Click verdict** values, see **Click verdict** in [Filterable properties in the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer).

5. Enter more conditions using other filterable properties as required. For instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).

6. When you're finished creating the filter conditions, select **Refresh**.

The **Top URLs** tab (view) in the details area below the chart shows the count of **Messages blocked**, **Messages junked**, and **Messages delivered** for the top five URLs. For more information, see [Top URLs view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#top-urls-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).

The **Top clicks** tab (view) in the details area below the chart shows the top five clicked links that were wrapped by Safe Links. URL clicks on unwrapped links don't show up here. For more information, see [Top clicks view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#top-clicks-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).

These URL tables show URLs that were blocked or visited despite a warning, so you can see the potential bad links that were presented to users. From here, you can conduct further analysis.

Select a URL from an entry in the to view more information. For more information, see [URL details for the Top URLs and Top clicks tabs in Phish view](threat-explorer-real-time-detections-about.md#top-urls-details-for-the-phish-view).

> [!TIP]
> In the URL details flyout, the filtering on email messages is removed to show the full view of the URL's exposure in your environment. This behavior lets you filter for specific email messages, find specific URLs that are potential threats, and then expand your understanding of the URL exposure in your environment without having to add URL filters in the **Phish** view.

## Start automated investigation and response in Threat Explorer

[Automated investigation and response (AIR)](air-about-office.md) in Defender for Office 365 Plan 2 can save time and effort as you investigate and mitigate cyberattacks. You can configure alerts that trigger a security playbook, and you can start AIR in Threat Explorer. For details, see [Example: A security administrator triggers an investigation from Explorer](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).

### More ways to use Threat Explorer and Real-time detections

In addition to the scenarios outlined in this article, you have more options available in Explorer or Real-time detections. For more information, see the following articles:

- [Find and investigate malicious email that was delivered](threat-explorer-investigate-delivered-malicious-email.md)
- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
- [Automated investigation and response in Microsoft Defender XDR](../defender/m365d-autoir.md)
- [Trigger an investigation from Threat Explorer](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).
- [Investigate emails with the Email Entity Page](mdo-email-entity-page.md)
