---
title: Threat hunting in Threat Explorer and Real-time detections
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.date: 3/5/2024
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

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWyPRU]

> [!TIP]
> Advanced hunting in Microsoft Defender XDR supports an easy-to-use query builder that doesn't use the Kusto Query Language (KQL). For more information, see [Build queries using guided mode](/microsoft-365/security/defender/advanced-hunting-query-builder).

The following information is available in this article:

- [A general walkthrough of Threat Explorer and Real-time detections](#threat-explorer-and-real-time-detections-walkthrough)
- [The threat hunting experience using Threat Explorer and Real-time detections](#the-threat-hunting-experience-using-threat-explorer-and-real-time-detections)
- [Extended capabilities in Threat Explorer](#extended-capabilities-in-threat-explorer)

> [!TIP]
> For email scenarios using Threat Explorer and Real-time detections, see the following articles:
>
> - [Email security with Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-email-security.md)
> - [Investigate malicious email that was delivered in Microsoft 365](threat-explorer-investigate-delivered-malicious-email.md)

## What do you need to know before you begin?

- Threat Explorer is included in Defender for Office 365 Plan 2. Real-time detections is included in Defender for Office Plan 1:
  - The differences between Threat Explorer and Real-time detections are described in [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).
  - The differences between Defender for Office 365 Plan 2 and Defender for Office Plan 1 are described in the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-security-comparison.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

- For permissions and licensing requirements for Threat Explorer and Real-time detections, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

## Threat Explorer and Real-time detections walkthrough

Threat Explorer or Real-time detections is available in the **Email & collaboration** section in the Microsoft Defender portal at <https://security.microsoft.com>:

- **Real-time detections** is available in _Defender for Office 365 Plan 1_. The **Real-time detections** page is available directly at <https://security.microsoft.com/realtimereportsv3>.

  :::image type="content" source="../../media/te-rtd-select-real-time-detections.png" alt-text="Screenshot of the Real-time detections selection in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-real-time-detections.png":::

- **Threat Explorer** is available in _Defender for Office 365 Plan 2_. The **Explorer** page is available directly at <https://security.microsoft.com/threatexplorerv3>.

  :::image type="content" source="../../media/te-rtd-select-threat-explorer.png" alt-text="Screenshot of the Explorer selection in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-threat-explorer.png":::

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

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png" alt-text="Screenshot of the world map in the Email origin view in the details area of the All email view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png":::

- Others might find the detailed information in the table in the **Campaigns** tab more useful to convey the information.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-campaign-tab.png" alt-text="Screenshot of the details table in the Campaign tab in the All email view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-campaign-tab.png":::

You can use this information for the following results:

- To show the need for security and protection.
- To later demonstrate the effectiveness of any actions.

### Email investigation

In the **All email**, **Malware**, or **Phish** views in Threat Explorer or Real-time detections, email message results are shown in a table in the **Email** tab (view) of the details area below the chart.

When you see a suspicious email message, click on the **Subject** value of an entry in the table. The details flyout that opens contains :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** at the top of the flyout.

:::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png" alt-text="Screenshot of the actions available in the email details flyout after you select a Subject value in the Email tab of the details area in the All email view." lightbox="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png":::

The Email entity page pulls together everything you need to know about the message and its contents so you can determine whether the message is a threat. For more information, see [Email entity page overview](mdo-email-entity-page.md).

### Email remediation

After you determine that an email message is a threat, the next step is remediating the threat. You remediate the threat in Threat Explorer or Real-time detections using **Message actions** or :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action**.

These actions are available in the **All email**, **Malware**, or **Phish** views in Threat Explorer or Real-time detections in the **Email** tab (view) of the details area below the chart:

- Select one or more entries in the table by selecting the check box next to the first column. **Message actions** is available directly in the tab. For more information, see [Remediate using Message actions](#remediate-using-message-actions).

  - **Threat Explorer**:

    :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-tab-message-selected-message-actions-threat-explorer.png" alt-text="Screenshot of the Email tab of the All email view in Threat Explorer showing a selected message and the available actions in Message actions." lightbox="../../media/te-rtd-all-email-view-details-area-email-tab-message-selected-message-actions-threat-explorer.png":::

  - **Real-time detections**:

    :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-tab-message-selected-message-actions-real-time-detections.png" alt-text="Screenshot of the Email tab of the All email view in Real-time detections showing a selected message and the available actions in Message actions." lightbox="../../media/te-rtd-all-email-view-details-area-email-tab-message-selected-message-actions-real-time-detections.png":::

- Click on the **Subject** value of an entry in the table. The details flyout that opens contains :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action** at the top of the flyout. For more information, see [Remediate using Take action](#remediate-using-take-action).

  :::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png" alt-text="Screenshot of the actions available in the email details flyout after you select a Subject value in the Email tab of the details area in the All email view." lightbox="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png":::

#### Remediate using Message actions

In Threat Explorer and Real-time detections, selecting one or more messages enables **Message actions** on the **Email** tab (view) in the details area of the view:

- In Threat Explorer, the available **Message actions** in the **All email**, **Malware**, and **Phish** views are described in the following list:

  - **Move & delete**¹
    - Move to junk folder
    - Move to deleted items
    - Soft delete
    - Hard delete
    - Move to inbox
  - **Track & notify**
    - Trigger investigation
    - Investigate Sender
    - Investigate Recipient
    - Add to remediation
    - Contact recipients|
  - **Start new submission**
    - Submit to Microsoft

  ¹ The **Move & delete** actions require the **Search and Purge** role in [Email & collaboration permissions](mdo-portal-permissions.md). By default, this role is assigned to the **Data Investigator** and **Organization Management** role groups. Members of the **Security Administrators** role group don't see these actions. You can add the members of the group to the **Data Investigator** role group, or you can [create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) with the **Search and Purge** role assigned, and then add the members of the **Security Administrators** role group.

- In Real-time detectionsAvailable, the available **Message actions** in the **Malware** and **Phish** views are described in the following list:
  - **Start new submission**
    - Report clean
    - Report phishing
    - Report malware
    - Report spam

##### Move & delete actions in Threat Explorer

The following actions are available in the **Move & delete** category:

- **Move to Junk folder**: Move the message to the Junk Email folder.
- **Move to Deleted Items**: Move the message to the Deleted items folder.
- **Soft delete**: Delete the message from the Deleted items folder (move to the Recoverable Items\Deletions folder). The message is recoverable by the user and admins.
- **Hard delete**: Purge the deleted message. Admins can recover hard deleted items using single-item recovery. For more information about hard deleted and soft deleted items, see [Soft-deleted and hard-deleted items](/compliance/assurance/assurance-exchange-online-data-deletion#soft-deleted-and-hard-deleted-items).
- **Move to Inbox**: Move the message to the Inbox.

> [!TIP]
> Selecting **Move to Inbox** for message with the value **Quarantine** for the **Latest delivery location** property releases the message from quarantine.

When you select an action, a remediation wizard opens:

1. On the **Name your remediation** page, enter a unique, descriptive name and an optional description to track and identify the selected action, and then select **Next**.

2. On the **Determine severity** page, configure the following settings:
   - **Severity**: Choose one of the following values:
     - **High** (this is the default value)
     - **Medium**
     - **Low**
   - **Status**: The value **Open** is selected, and you can't change it.

   When you're finished on the **Determine severity** page, select **Next**.

3. On the **Review and trigger action** page, review your previous selections.

   Select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the impacted assets to a CSV file. By default, the filename is **Impacted assets.csv** located in the **Downloads** folder.

   Select **Back** or **Edit** to change your selections.

   When you're finished on the **Review and trigger action** page, select **Next**.

4. The **Submit actions** page contains the following information:
   - The unique **Approval ID** value (for example, `d5f139`) and a link to the **History** tab of the **Action Center** at <https://security.microsoft.com/action-center/history>.
   - The following information about the email message:
     - **Date**
     - **Recipient**
     - **Subject**
     - **Status**

   When you're finished on the **Submit actions** page, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: **Close**.

##### Track & notify actions in Threat Explorer

- **Trigger investigation**, **Investigate sender**, **Investigate recipient**: Selecting one of these actions immediately creates the investigation. Selecting **OK** in the confirmation dialog opens the **Investigations** page in the Defender portal at <https://security.microsoft.com/airinvestigation> to show the new investigation in the list.

- **Add to remediation**: Selecting this option opens the **Create a new remediation or add to an existing one** wizard:
   1. On the **Create a remediation investigation** page, select one of the following values:
      - **Create a new remediation**: When you select **Next**, you go to the **Name your remediation** page.
        1. On the **Name your remediation** page, enter a unique, descriptive name and an optional description to track and identify the selected action, and then select **Next**.
        2. On the **Determine severity** page, select the **Severity** level (**High**, **Medium**, or **Low**; **High** is the default), and then select **Next**.

      - **Add to an existing remediation**: When you select **Next**, you go to the **Choose an existing remediation** page where you select the existing remediation from the **Submit emails to the following remediations** list, and then select **Next**.

   2. On the **Review the scope of this remediation** page, review the **Date**, **Recipient**, **Subject**, and **Sender** information on the page, and then select **Next**.
   3. The **Submit actions** page repeats the information from the previous page, and includes a link to the **Pending** tab of the **Action center** page at <https://security.microsoft.com/action-center/history>. When you're finished on the **Submit actions** page, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: **Close**.

- **Contact recipients**: Opens a new email message in the registered email client on your computer (for example, Microsoft Outlook) with the affected recipients in the Bcc box.

##### Start new submission actions in Threat Explorer

When you select **Submit to Microsoft**, the **Submit to Microsoft for analysis** flyout opens. Select one of the following values:

- **I've confirmed it's clean**: Select this value if you're sure that the message is clean. When you select **Next**, the following items are available on a new flyout that opens:
  - **Allow messages like this**: If you select this value, allow entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options also appear:
  - **Remove allow entry after**: The default value is **30 days**, but you can also select **1 day**, **7 days**, or a **Specific date** that's less than 30 days.
  - **Allow entry note**: Enter an optional note that contains additional information.

  When you're finished in this flyout, select **Submit**.

- **It appears clean** or **It appears suspicious**: Select one of these values if you're unsure and you want a verdict from Microsoft, and then select **Submit**.

- **I've confirmed it's a threat**: Select this value if you're sure that the item is malicious, and then select **Spam**, **Phish**, or **Malware** in the **Choose a category** section that appears. When you select **Next**, the following items are available on a new flyout that opens:
  - **Block all emails from this sender or domain**: This option is selected by default to add block entries to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. When this option is selected, the following options are also available:
    - Select **Sender** or **Domain** to block the specific email address or all email addresses in the domain. **Sender** is selected by default.
    - **Remove block entry after**: The default value is **30 days**, but you can also select **1 day**, **7 days**, or a **Specific date** that's less than 30 days.
    - **Block entry note**: Enter an optional note that contains additional information.

  When you're finished in this flyout, select **Submit**.

##### Start new submission actions in Real-time detections

Selecting an action from the **Start new submission** category in Real-time detections results in the following options:

- **Report clean**: In the **Submit message as clean to Microsoft** dialog that opens, configure the following settings:
  - **Allow emails with similar attributes (URL, sender, etc.)**: If you select this value, allow entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options are also available:
    - **Remove allow entry after**: The default value is **30 days**, but you can also select **1 days**, **7 days**, or a **Specific date** that's less than 30 days.
    - **Allow entry note**: Enter an optional note that contains additional information.

  When you're finished in the dialog, select **Submit**.

- **Report phishing**: In the **Submit message as phishing to Microsoft** dialog that opens, configure the following options:
  - **Block all emails from this sender or domain**: If you select this value, block entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options are also available:
    - Select **Sender** or **Domain** to block the specific email address or all email addresses in the domain. **Sender** is selected by default.
    - **Remove block entry after**: The default value is **30 days**, but you can also select **1 days**, **7 days**, or a **Specific date** that's less than 30 days.
    - **Block entry note**: Enter an optional note that contains additional information.

  When you're finished in the dialog, select **Submit**.

- **Report malware**: In the **Submit message as malware to Microsoft** dialog that opens, configure the following options:
  - **Block all emails from this sender or domain**: If you select this value, allow entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options are also available:
    - Select **Sender** or **Domain** to block the specific email address or all email addresses in the domain. **Sender** is selected by default.
    - **Remove block entry after**: The default value is **30 days**, but you can also select **1 days**, **7 days**, or a **Specific date** that's less than 30 days.
    - **Block entry note**: Enter an optional note that contains additional information. 

  When you're finished in the dialog, select **Submit**.

- **Report spam**: In the **Submit message as spam to Microsoft** dialog that opens, configure the following options:
  - **Block all emails from this sender or domain**: If you select this value, block entries are added to the [Tenant Allow/Block List](tenant-allow-block-list-about.md) for the sender and any related URLs or attachments in the message. The following options are also available:
    - Select **Sender** or **Domain** to block the specific email address or all email addresses in the domain. **Sender** is selected by default.
    - **Remove block entry after**: The default value is **30 days**, but you can also select **1 days**, **7 days**, or a **Specific date** that's less than 30 days.
    - **Block entry note**: Enter an optional note that contains additional information.

  When you're finished in the dialog, select **Submit**.

#### Remediate using Take action

After you click on the **Subject** value of an entry in the details table of the **Email** tab (view), selecting :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action** at the top of the flyout opens the **Take action** wizard in a new flyout.

:::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout-actions-only.png" alt-text="Screenshot of the actions available in the email details flyout after you select a Subject value in the Email tab of the details area in the All email, Malware, or Phish views in Threat Explorer or Real-time detections.":::

The available actions in the **Take action** wizard in Threat Explorer and Real-time detections are listed in the following table:

|Action|Threat<br/>Explorer|Real-time<br/>Detections|
|---|:---:|:---:|
|**Move to mailbox folder**|✔¹||
|**Submit to Microsoft for review**|✔|✔|
|**Initiate automated investigation**|✔||
|**Propose remediation**|✔|✔|

¹ This action requires the **Search and Purge** role in [Email & collaboration permissions](mdo-portal-permissions.md). By default, this role is assigned to the **Data Investigator** and **Organization Management** role groups. Members of the **Security Administrators** role group don't see this action. You can add the members of the group to the **Data Investigator** role group, or you can [create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) with the **Search and Purge** role assigned, and then add the members of the **Security Administrators** role group.

1. On the **Choose response actions** page, select one or more of the following options in the **Email message actions** section:

   - **Move to mailbox folder**: Select one of the available values that appear:
     - **Junk**: Move the message to the Junk Email folder.
     - **Inbox**: Move the message to the Inbox.

       If the message has the value **Quarantine** for the **Latest delivery location** property, selecting **Inbox** releases the message from quarantine as described on the page. Select one of the following values that appears:

       - **Release to one or more of the original recipients of the email**
       - **Release to all recipients**.

     - **Deleted items**: Move the message to the Deleted items folder.
     - **Soft deleted items**: Delete the message from the Deleted items folder (move to the Recoverable Items\Deletions folder). The message is recoverable by the user and admins.
     - **Hard deleted items**: Purge the deleted message. Admins can recover hard deleted items using single-item recovery. For more information about hard deleted and soft deleted items, see [Soft-deleted and hard-deleted items](/compliance/assurance/assurance-exchange-online-data-deletion#soft-deleted-and-hard-deleted-items).

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

       The number of blocked entities is shown (for example, **4/4 entities to be blocked**). Select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** to reopen the **Add to block rule** and make changes.

   - **Initiate automated investigation**: Threat Explorer only. Select one of the following values that appear:
     - **Investigate email**
     - **Investigate recipient**
     - **Investigate sender**
     - **Contact recipients**

   - **Propose remediation**: Select one of the following values that appear:
     - **Create new**: This value triggers a soft delete email pending action that needs to be approved by an admin in the Action center.
     - **Add to existing**: Use this value to apply actions to this email message from an existing remediation. In the **Submit email to the following remediations** box, select the existing remediation.

   When you're finished on the **Choose response actions** page, select **Next**.

2. On the **Choose target entities** page, configure the following options:

   - **Name** and **Description**: Enter a unique, descriptive name and an optional description to track and identify the selected action.

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

:::image type="content" source="../../media/alerts-mdo-details-flyout-actions.png" alt-text="Screenshot of the available actions in the alert details flyout of an alert with the Detections source value MDO from the Alerts page in the Defender portal." lightbox="../../media/alerts-mdo-details-flyout-actions.png":::

Selecting **View messages in Explorer** opens Threat Explorer in the **All email** view with the property filter **Alert ID** selected for the alert. The **Alert ID** value is a unique GUID value for the alert (for example, 89e00cdc-4312-7774-6000-08dc33a24419).

**Alert ID** is a filterable property in the following views in Threat Explorer and Real-time detections:

- [The **All email** view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer).
- [The **Malware** view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-malware-view-in-threat-explorer-and-real-time-detections)
- [The **Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-phish-view-in-threat-explorer-and-real-time-detections)

In those views, **Alert ID** is available as a selectable column in the details area below the chart in the following tabs (views):

- [The **Email** view for the details area of the **All email** view in Threat Explorer](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)
- [The **Email** view for the details area of the **Malware** view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections)
- [The **Email** view for the details area of the **Phish** view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)

In the [email details flyout that opens when you click on a **Subject** value from one of the entries](threat-explorer-real-time-detections-about.md#email-details-from-the-email-view-of-the-details-area-in-the-all-email-view), the **Alert ID** link is available in the **Email details** section of the flyout. Selecting the **Alert ID** link opens the **View alerts** page at <https://security.microsoft.com/viewalertsv2> with the alert selected and the details flyout open for the alert.

:::image type="content" source="../../media/view-alerts-page-with-details-flyout.png" alt-text="Screenshot of the alert details flyout on the View alerts page after you select an Alert ID from the email details flyout of an entry in the Email tab from the All email, Malware, or Phish views in Threat Explorer or Real-time detections." lightbox="../../media/view-alerts-page-with-details-flyout.png":::

### Tags in Threat Explorer

In Defender for Office 365 Plan 2, if you use [user tags](user-tags-about.md) to mark high value targets accounts (for example, the **Priority account** tag) you can use those tags as filters. This method shows phishing attempts directed at high value target accounts during a specific time period. For more information about user tags, see [User tags](user-tags-about.md).

User tags are available in the following locations in Threat Explorer:

- **All email** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer).
  - [An available column in the **Email** tab (view) of the details area](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer).
  - [The email details flyout from an entry in the **Email** tab (view)](threat-explorer-real-time-detections-about.md#email-details-from-the-email-view-of-the-details-area-in-the-all-email-view)
- **Malware** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections).
  - [An available column in the **Email** tab (view) of the details area in the **Malware** view](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections).
  - [[The email details flyout from an entry in the **Email** tab (view)](threat-explorer-real-time-detections-about.md#email-details-from-the-email-view-of-the-details-area-in-the-all-email-view)
- **Phish** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).
  - [An available column in the **Email** tab (view) of the details](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).
  - [The email details flyout from an entry in the **Email** tab (view)](threat-explorer-real-time-detections-about.md#email-details-from-the-email-view-of-the-details-area-in-the-all-email-view)
- **URL clicks** view:
  - [As a filterable property](threat-explorer-real-time-detections-about.md#url-clicks-view-in-threat-explorer).
  - [An available column in the **Results** tab (view) of the details area in the **URL clicks** view](threat-explorer-real-time-detections-about.md#results-view-for-the-details-area-of-the-url-clicks-view-in-threat-explorer).

### Threat information for email messages

Pre-delivery and post-delivery actions on email messages are consolidated into a single record, regardless of the different post-delivery events that affected the message. For example:

- [Zero-hour auto purge (ZAP)](zero-hour-auto-purge.md).
- Manual remediation (admin action).
- [Dynamic Delivery](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies).

[The email details flyout from the **Email** tab (view)](threat-explorer-real-time-detections-about.md#email-details-from-the-email-view-of-the-details-area-in-the-all-email-view) in the **All email**, **Malware**, or **Phish** views shows the associated threats and the corresponding detection technologies that are associated with the email message. A message can have zero, one, or multiple threats.

- In the **Delivery details** section, the **Detection technology** property shows the detection technology that identified the threat. **Detection technology** is also available as a chart pivot or a column in the details table for many views in Threat Explorer and Real-time detections.

- The **URLs** section shows specific **Threat** information for any URLs in the message. For example, **Malware**, **Phish**, **Spam, or **None**.

> [!TIP]
> Verdict analysis might not necessarily be tied to entities. The filters evaluate content and other details of an email message before assigning a verdict. For example, an email message might be classified as phishing or spam, but no URLs in the message are stamped with a phishing or spam verdict.

Select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** at the top of the flyout to see exhaustive details about the email message. For more information, see [The Email entity page in Microsoft Defender for Office 365](mdo-email-entity-page.md).

:::image type="content" source="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout.png" alt-text="Screenshot of the email details flyout after you select a Subject value in the Email tab of the details area in the All email view." lightbox="../../media/te-rtd-all-email-view-email-tab-details-area-subject-details-flyout.png":::

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

For specific scenarios, see the following articles:

- [Email security with Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-email-security.md)
- [Investigate malicious email that was delivered in Microsoft 365](threat-explorer-investigate-delivered-malicious-email.md)

### More ways to use Threat Explorer and Real-time detections

In addition to the scenarios outlined in this article, you have more options in Explorer or Real-time detections. For more information, see the following articles:

- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
- [Automated investigation and response in Microsoft Defender XDR](../defender/m365d-autoir.md)
- [Trigger an investigation from Threat Explorer](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).
