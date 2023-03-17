---
title: Manage quarantined messages and files as an admin
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MED150
  - MET150
ms.assetid: 065cc2cf-2f3a-47fd-a434-2a20b8f51d0c
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn how to view and manage quarantined messages for all users in Exchange Online Protection (EOP). Admins in organizations with Microsoft Defender for Office 365 can also manage quarantined files in SharePoint Online, OneDrive for Business, and Microsoft Teams.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 3/28/2023
---

# Manage quarantined messages and files as an admin

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes and in Microsoft Teams, quarantine holds potentially dangerous or unwanted messages. 

Admins can view, release, and delete all types of quarantined messages for all users. Admins can also report false positives to Microsoft.

By default, only admins can manage messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (also known as transport rules). But admins can use _quarantine policies_ to define what users are allowed to do to quarantined messages based on why the message was quarantined (for supported features). For more information, see [Quarantine policies](quarantine-policies.md).

Admins in organizations with Microsoft Defender for Office 365 can also manage files that were quarantined by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md) and [Zero-hour auto purge](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams).

You view and manage quarantined messages in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

Watch this short video to learn how to manage quarantined messages as an administrator.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWGGPF]

## What do you need to know before you begin?

- To open the Microsoft 365 Defender portal, go to <https://security.microsoft.com>. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): **Security Data / email quarantine (manage)** (management via PowerShell). Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Take action on quarantined messages for all users_: Membership in the **Organization Management**, **Security Administrator**, or **Quarantine Administrator** role groups.
    - _Submit messages from quarantine to Microsoft_:  Membership in the **Security Administrator** role group.
    - _Read-only access to quarantined messages for all users_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in the **Quarantine Administrator** role group. To do quarantine procedures in Exchange Online PowerShell, you also need membership in the **Hygiene Management** role group in Exchange Online RBAC.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- Quarantined messages are retained for a default period of time based on why they were quarantined. After the retention period expires, the messages are automatically deleted and are not recoverable. For more information, see [Quarantined email messages in EOP and Defender for Office 365](quarantine-about.md).

## Use the Microsoft 365 Defender portal to manage quarantined email messages

### View quarantined email

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine**. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

2. On the **Quarantine** page, verify that the **Email** tab is selected.

3. You can sort the results by clicking on an available column header. Click **Customize columns**  to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

   - **Time received**<sup>\*</sup>
   - **Subject**<sup>\*</sup>
   - **Sender**<sup>\*</sup>
   - **Quarantine reason**<sup>\*</sup>
   - **Release status**<sup>\*</sup>
   - **Policy type**<sup>\*</sup>
   - **Expires**<sup>\*</sup>
   - **Recipient**
   - **Message ID**
   - **Policy name**
   - **Message size**
   - **Mail direction**
   - **Recipient tag**

   When you're finished, click **Apply**.

4. To filter the results, click **Filter**. The following filters are available in the **Filters** flyout that appears:
   - **Message ID**: The globally unique identifier of the message.

     For example, you used [message trace](message-trace-scc.md) to look for a message that was sent to a user in your organization, and you determine that the message was quarantined instead of delivered. Be sure to include the full message ID value, which might include angle brackets (\<\>). For example: `<79239079-d95a-483a-aacf-e954f592a0f6@XYZPR00BM0200.contoso.com>`.

   - **Sender address**
   - **Recipient address**
   - **Subject**
   - **Time received**: Enter a **Start time** and **End time** (date).
   - **Expires**: Filter messages by when they will expire from quarantine:
     - **Today**
     - **Next 2 days**
     - **Next 7 days**
     - **Custom**: Enter a **Start time** and **End time** (date).
   - **Recipient tag**
   - **Quarantine reason**:
     - **Transport rule** (mail flow rule)
     - **Bulk**
     - **Spam**
     - **Malware**: Anti-malware policies in EOP or Safe Attachments policies in Defender for Office 365. The **Policy Type** value indicates which feature was used.
     - **Phishing**: The spam filter verdict was **Phishing** or anti-phishing protection quarantined the message ([spoof settings](anti-phishing-policies-about.md#spoof-settings) or [impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)).
     - **High confidence phishing**
   - **Recipient**: **All users** or **Only me**. End users can only manage quarantined messages sent to them.
   - **Release status**: Any of the following values:
     - **Needs review**
     - **Approved**
     - **Denied**
     - **Release requested**
     - **Released**
   - **Policy Type**: Filter messages by policy type:
     - **Anti-malware policy**
     - **Safe Attachments policy**
     - **Anti-phishing policy**
     - **Anti-spam policy**
     - **Transport rule** (mail flow rule)

   When you're finished, click **Apply**. To clear the filters, click ![Clear filters icon.](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

5. Use the **Search** box and a corresponding value to find specific messages. Wildcards aren't supported. You can search by the following values:
   - Sender email address
   - Subject. Use the entire subject of the message. The search is not case-sensitive.

   After you've entered the search criteria, press ENTER to filter the results.

   > [!NOTE]
   > The **Search** box on the main **Quarantine** page will search only quarantined items in the current view, not the entire quarantine. To search all quarantined items, use **Filter** and the resulting **Filters** flyout.

After you find a specific quarantined message, select the message to view details about it, and to take action on it (for example, view, release, download, or delete the message).

### View quarantined email details

When you select quarantined message from the list, the following information is available in the details flyout that appears.

:::image type="content" source="../../media/quarantine-message-details-flyout.png" alt-text="The details flyout of a quarantined message" lightbox="../../media/quarantine-message-details-flyout.png":::

- **Message ID**: The globally unique identifier for the message. Available in the **Message-ID** header field in the message header.
- **Sender address**
- **Received**: The date/time when the message was received.
- **Subject**
- **Quarantine reason**: Shows if a message has been identified as **Spam**, **Bulk**, **Phish**, matched a mail flow rule (**Transport rule**), or was identified as containing **Malware**.
- **Policy type**
- **Policy name**
- **Recipient count**
- **Recipients**: If the message contains multiple recipients, you need to click **Preview message** or **View message header** to see the complete list of recipients.
- **Recipient tag**: For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).
- **Expires**: The date/time when the message will be automatically and permanently deleted from quarantine.
- **Released to**: All email addresses (if any) to which the message has been released.
- **Not yet released to**: All email addresses (if any) to which the message has not yet been released.

To take action on the message, see the next section.

> [!NOTE]
> To remain in the details flyout, but change the quarantined message that you're looking at, use the up and down arrows at the top of the flyout.
>
> :::image type="content" source="../../media/quarantine-message-details-flyout-up-down-arrows.png" alt-text="The up and down arrows in the details flyout of a quarantined message" lightbox="../../media/quarantine-message-details-flyout-up-down-arrows.png":::

### Take action on quarantined email

After you select a quarantined message from the list, the following actions are available in the details flyout:

:::image type="content" source="../../media/quarantine-message-details-flyout-actions.png" alt-text="The Available actions in the details flyout of a quarantined message" lightbox="../../media/quarantine-message-details-flyout-actions.png":::

- ![Release email icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release email**<sup>\*</sup>: In the flyout pane that appears, configure the following options:
  - **Add sender to your organization's allow list**: Select this option to prevent messages from the sender from being quarantined.
  - Choose one of the following options:
    - **Release to all recipients**
    - **Release to specific recipients**: Select the recipients in the **Recipients** box that appears
  - **Send a copy of this message to other recipients**: Select this option and enter the recipient email addresses in the **Recipients** box that appears.

    > [!NOTE]
    > To send a copy of the message to other recipients, you must also release the message at least one of the original recipients (select **Release to all recipients** or **Release to specific recipients**).

  - **Submit the message to Microsoft to improve detection (false positive)**: This option is selected by default, and reports the erroneously quarantined message to Microsoft as a false positive. If the message was quarantined as spam, bulk, phishing, or containing malware, the message is also reported to the Microsoft Spam Analysis Team. Depending on the results of their analysis, the service-wide spam filter rules might be adjusted to allow the message through.

  - **Allow messages like this**: This option is turned off by default (![Toggle off.](../../media/scc-toggle-off.png)). Turn it on (![Toggle on](../../media/scc-toggle-on.png)) to temporarily prevent messages with similar URLs, attachments, and other properties from being quarantined. When you turn this option on, the following options are available:
    - **Remove after**: Select how long you want to allow messages like this. Select **1 day** to **30 days**. The default is 30.
    - **Optional note**: Enter a useful description for the allow.

  When you're finished, click **Release message**.

  Notes about releasing messages:

  - You can't release a message to the same recipient more than once.
  - Only recipients who haven't received the message will appear in the list of potential recipients.
  - Only members of the **Security Administrators** role group can see and use the **Submit the message to Microsoft to improve detection (false positive)** and **Allow messages like this** options.

- ![Share email icon.](../../media/m365-cc-sc-share-email-icon.png) **Share email**: In the flyout that appears, add one or more recipients to receive a copy of the message. When you're finished, click **Share**.

The following actions are available after you click ![More actions icon.](../../media/m365-cc-sc-more-actions-icon.png) **More actions**:

- ![View message headers icon.](../../media/m365-cc-sc-view-message-headers-icon.png) **View message headers**: Choose this link to see the message header text. The **Message header** flyout appears with the following links:
  - **Copy message header**: Click this link to copy the message header (all header fields) to your clipboard.
  - **Microsoft Message Header Analyzer**: To analyze the header fields and values in depth, click this link to go to the Message Header Analyzer. Paste the message header into the **Insert the message header you would like to analyze** section (CTRL+V or right-click and choose **Paste**), and then click **Analyze headers**.

- ![Preview message icon.](../../media/m365-cc-sc-preview-message-icon.png) **Preview message**: In the flyout that appears, choose one of the following tabs:
  - **Source**: Shows the HTML version of the message body with all links disabled.
  - **Plain text**: Shows the message body in plain text.

- ![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete from quarantine**: After you click **Yes** in the warning that appears, the message is immediately deleted without being sent to the original recipients.

- ![Download email icon.](../../media/m365-cc-sc-download-icon.png) **Download email**: In the flyout that appears, configure the following settings:
  - **Reason for downloading file**: Enter descriptive text.
  - **Create password** and **Confirm password**: Enter a password that's required to open the downloaded message file.

  When you're finished, click **Download**, and then **Done** to save a local copy of the message. The .eml message file is save in a compressed file named Quarantined Messages.zip in your **Downloads** folder. If the .zip file already exists, a number is appended to the filename (for example, Quarantined Messages(1).zip).

- ![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png) **Block sender**: Add the sender to the Blocked Senders list in **your** mailbox. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).

- ![Submit only icon.](../../media/m365-cc-sc-create-icon.png) **Submit only**: Reports the message to Microsoft for analysis. In the flyout that appears, choose the following options:
  - **Select the submission type**: **Email** (default), **URL**, or **File**.
  - **Add the network message ID or upload the email file**: Select one of the following options:
    - **Add the email network message ID** (default, with the corresponding value in the box)
    - **Upload the email file (.msg or eml)**: Click **Browse files** to find and select the .msg or .eml message file to submit.
  - **Choose a recipient who had an issue**: Select one (preferred) or more original recipients of the message to analyze the policies that were applied to them.
  - **Select a reason for submitting to Microsoft**: Choose one of the following options:
    - **Should not have been blocked (false positive)** (default): The following options are available:
      - **Allow messages like this**: This option is turned off by default (![Toggle off.](../../media/scc-toggle-off.png)). Turn it on (![Toggle on](../../media/scc-toggle-on.png)) to temporarily prevent messages with similar URLs, attachments, and other properties from being quarantined. When you turn this option on, the following options are available:
        - **Remove after**: Select how long you want to allow messages like this. Select **1 day** to **30 days**. The default is 30.
        - **Optional note**: Enter a useful description for the allow.
    - **Should have been blocked (false negative)**.

  When you're finished, click **Submit**.

<sup>\*</sup> This option is not available for messages that have already been released (the **Released status** value is **Released**).

If you don't release or remove the message, it will be deleted after the default quarantine retention period expires (as shown in the **Expires** column).

> [!NOTE]
> On a mobile device, the description text isn't available on the action icons.
>
> :::image type="content" source="../../media/quarantine-message-details-flyout-mobile-actions.png" alt-text="The details of a quarantined message with available actions being highlighted" lightbox="../../media/quarantine-message-details-flyout-mobile-actions.png":::
>
> The icons in order and their corresponding descriptions are summarized in the following table:
>
> |Icon|Description|
> |---:|---|
> |![Release email icon.](../../media/m365-cc-sc-check-mark-icon.png)|**Release email**|
> |![Share email icon.](../../media/m365-cc-sc-share-email-icon.png)|**Share email**|
> |![View message headers icon.](../../media/m365-cc-sc-view-message-headers-icon.png)|**View message headers**|
> |![Preview message icon.](../../media/m365-cc-sc-preview-message-icon.png)|**Preview message**|
> |![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png)|**Delete from quarantine**|
> |![Download email icon.](../../media/m365-cc-sc-download-icon.png)|**Download email**|
> |![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png)|**Block sender**|
> |![Submit only icon.](../../media/m365-cc-sc-create-icon.png)|**Submit only**|

#### Take action on multiple quarantined email messages

When you select multiple quarantined messages in the list (up to 100) by clicking in the blank area to the left of the first column, the **Bulk actions** drop down list appears where you can take the following actions:

:::image type="content" source="../../media/quarantine-message-bulk-actions.png" alt-text="The Bulk actions drop-down list for messages in quarantine" lightbox="../../media/quarantine-message-bulk-actions.png":::

- ![Release email icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release messages**: Releases messages to all recipients. In the flyout that appears, you can choose the following options, which are the same as when you release a single message:
  - **Add sender to your organization's allow list**
  - **Send a copy of this message to other recipients**
  - **Submit the message to Microsoft to improve detection (false positive)**
  - **Allow messages like this**:
    - **Remove after**: **1 day** to **30 days**
    - **Optional note**

  When you're finished, click **Release message**.

  > [!NOTE]
  > Consider the following scenario: john@gmail.com sends a message to faith@contoso.com and john@subsidiary.contoso.com. Gmail bifurcates this message into two copies that are both routed to quarantine as phishing in Microsoft. An admin releases both of these messages to admin@contoso.com. The first released message that reaches the admin mailbox is delivered. The second released message is identified as duplicate delivery and is skipped. Message are identified as duplicates if they have the same message ID and received time.

- ![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete messages**:  After you click **Yes** in the warning that appears, the messages are immediately removed from quarantine without being sent to the original recipients.
- ![Download email icon.](../../media/m365-cc-sc-download-icon.png) **Download messages**
- ![Submit only icon.](../../media/m365-cc-sc-create-icon.png) **Submit only**

## Use the Microsoft 365 Defender portal to manage quarantined files in Defender for Office 365

> [!NOTE]
> The procedures for quarantined files in this section are available only to Microsoft Defender for Office 365 Plan 1 or Plan 2 subscribers.

In organizations with Defender for Office 365, admins can manage files that were quarantined by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams. To enable protection for these files, see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md).

> [!NOTE]
> Files quarantined in SharePoint or OneDrive are removed fom quarantine after 30 days, but the blocked files remain in SharePoint or OneDrive in the blocked state.

### View quarantined files

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine**. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

2. On the **Quarantine** page, select the **Files** tab (**Email** is the default tab).

3. You can sort the results by clicking on an available column header. Click **Customize columns** to change the columns that are shown. The default columns are marked with an asterisk (<sup>\*</sup>):
   - **User**<sup>\*</sup>
   - **Location**<sup>\*</sup>
   - **Attachment filename**<sup>\*</sup>
   - **File URL**<sup>\*</sup>
   - **File Size**
   - **Release status**<sup>\*</sup>
   - **Expires**<sup>\*</sup>
   - **Detected by**
   - **Modified by time**

   When you're finished, click **Apply** or **Cancel**.

4. To filter the results, click **Filter**. The following filters are available in the **Filters** flyout that appears:
   - **Time received**: **Start time** and **End time** (date).
   - **Expires**: **Start time** and **End time** (date).
   - **Quarantine reason**: The only available value is **Malware**.
   - **Policy type**

   When you're finished, click **Apply** or **Cancel**.

After you find a specific quarantined file, select the file to view details about it, and to take action on it (for example, view, release, download, or delete the file).

### View quarantined file details

When you select a quarantined file from the list, the following information is available in the details flyout that opens:

:::image type="content" source="../../media/quarantine-file-details-flyout.png" alt-text="The details flyout of a quarantined file" lightbox="../../media/quarantine-file-details-flyout.png":::

- **File Name**
- **File URL**: URL that defines the location of the file (for example, in SharePoint Online).
- **Malicious content detected on** The date/time the file was quarantined.
- **Expires**: The date when the file will be deleted from quarantine.
- **Detected by**
- **Released?**
- **Malware Name**
- **Document ID**: A unique identifier for the document.
- **File Size**: In kilobytes (KB).
- **Organization** Your organization's unique ID.
- **Last modified**
- **Modified By**: The user who last modified the file.
- **Secure Hash Algorithm 256-bit (SHA-256) value**: You can use this hash value to identify the file in other reputation stores or in other locations in your environment.

To take action on the file, see the next section.

> [!NOTE]
> To remain in the details flyout, but change the quarantined file that you're looking at, use the up and down arrows at the top of the flyout.
>
> :::image type="content" source="../../media/quarantine-file-details-flyout-up-down-arrows.png" alt-text="The up and down arrows in the details flyout of quarantined files" lightbox="../../media/quarantine-file-details-flyout-up-down-arrows.png":::

### Take action on quarantined files

After you select a quarantined file from the list, the following actions are available in the details flyout:

:::image type="content" source="../../media/quarantine-file-details-flyout-actions.png" alt-text="The actions in the details flyout of a quarantined file" lightbox="../../media/quarantine-file-details-flyout-actions.png":::

- ![Release file icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release file**<sup>\*</sup>: In the flyout pane that appears, turn on or turn off **Report files to Microsoft for analysis**, and then click **Release**.
- ![Release file icon.](../../media/m365-cc-sc-check-mark-icon.png)
- ![Download file icon.](../../media/m365-cc-sc-download-icon.png) **Download file**: In the flyout that appears, select **I understand the risks from downloading this file**, and then click **Download** to save a local copy of the file.
- ![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete from quarantine**: After you click **Yes** in the warning that appears, the file is immediately deleted.
- ![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png) **Block sender**: Add the sender to the Blocked Senders list in **your** mailbox. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).

<sup>\*</sup> This option is not available for files that have already been released (the **Released status** value is **Released**).

If you don't release or remove the file, it will be deleted after the default quarantine retention period expires (as shown in the **Expires** column).

#### Take action on multiple quarantined files

When you select multiple quarantined files in the list (up to 100) by clicking in the blank area to the left of the **Subject** column, the **Bulk actions** drop down list appears where you can take the following actions:

:::image type="content" source="../../media/quarantine-file-bulk-actions.png" alt-text="The Bulk actions drop down list for files in quarantine" lightbox="../../media/quarantine-file-bulk-actions.png":::

- ![Release file icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release file**: In the flyout pane that appears, turn on or turn off **Report files to Microsoft for analysis**, and then click **Release**.
- ![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete from quarantine**: After you click **Yes** in the warning that appears, the file is immediately deleted.
- ![Download file icon.](../../media/m365-cc-sc-download-icon.png) **Download file**: In the flyout that appears, select **I understand the risks from downloading this file**, and then click **Download** to save a local copy of the file.

## Use the Microsoft 365 Defender portal to manage quarantined messages in Microsoft Teams

> [!NOTE]
> This section lists new features which are currently in preview.

When a potentially malicious message is detected in a chat message in Microsoft Teams, zero-hour auto purge (ZAP) removes the message and quarantines it. Admins can view and manage these quarantined messages. Note that the message is quarantined for 30 days, after that it is permanently removed.

For the preview release, this feature is enabled by default. 

> [!NOTE]
> Quarantine in Microsoft Teams is available only to customers with Microsoft Defender for Office 365 E5 and Defender for Office P2 subscriptions.

### View quarantined messages in Microsoft Teams

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine**. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

2. On the **Quarantine** page, select the **Teams messages** tab.

   :::image type="content" source="../../media/admin-quarantine-teams-message-tab.png" alt-text="The Teams messages tab in quarantine" lightbox="../../media/admin-quarantine-teams-message-tab.png"::: 

3. You can sort the results by clicking on an available column header. Click **Customize columns** to change the columns that are shown. 
   - **Teams message text**: Contains the subject for the teams message.
   - **Time received**: The time the message is received by the recipient. 
   - **Release status**: Shows whether the message is already reviewed and released or needs review. 
   - **Participants**: The total number of users who received the message.
   - **Sender**: The person who sent the message that was quarantined.
   - **Quarantine reason**: Available options are "High confidence phish" and "Malware".
   - **Policy type**: Date when the message is quarantined.
   - **Quarantined status**: The available options are "Needs review", "Released", and "Processing release".  
   - **Expires**: Indicates the time after which the message is removed from quarantine. By default, this is 30 days.
   - **Recipient address**: Email address of the recipients.
   - **Message ID**: Includes the chat message ID.

4. To filter the results, click **Filter**. Select the columns you want, and then click **Apply**.

### View quarantined message details in Microsoft Teams

When you select a quarantined message from the list, the following information is available in the details flyout that opens:

:::image type="content" source="../../media/admin-quarantine-teams-details-flyout.png" alt-text="The teams message details flyout in quarantine" lightbox="../../media/admin-quarantine-teams-details-flyout.png":::

- **Quarantine details**: Includes quarantine reason, expiry date, quarantine policy type, and other information.
- **Message details**: Includes the primary threat reason, date and time of the message sent, and the sender address. Also includes the Teams message ID and the detection technology.
- **Sender**: Includes the sender name, their domain location, and whether the sender is from outside the organization.
- **Participants**: The names and email IDs of all the people who received the same message.
- **URLs**: Includes the details of any malicious URls that were detected in the chat message.

To take action on the message, see the next section.

### Take action on quarantined messages in Microsoft Teams

After you select a quarantined message from the list, the following actions are available in the details flyout:

:::image type="content" source="../../media/admin-quarantine-teams-actions-details.png" alt-text="The actions menu for messages in quarantine" lightbox="../../media/admin-quarantine-teams-action-details.png":::

- **Release**: Allows the admin to release the message only to the recipients within the organization.
- **Preview message**: Preview the message in quarantine before taking any action.
- **Delete from quarantine**:  Deletes the message permanently from quarantine for all users in the organization.
- **Download message**: Downloads the message as a plain .txt for the admin. 
- **Submit for review**: Allows the admin to submit the message to Microsoft for review.

If you don't release or remove the file, it will be deleted after the default quarantine retention period expires (30 days).

#### Take action on multiple quarantined messages

When you select multiple quarantined files in the list by clicking the checkbox next to the messages, the **More** option appears:

:::image type="content" source="../../media/admin-quarantine-teams-bulk-action.png" alt-text="The Bulk action options for files in quarantine" lightbox="../../media/admin-quarantine-teams-bulk-action.png":::

- **Release**: Select this option to release message to the intended recipients within the organization.
- **Delete messages**: Select this option to delete the message permanently from quarantine.
- **Submit for review**: Select this option to submit the message to Microsoft for review.
- **Download messages**: Select this option to save a local copy of the message.

## Use Exchange Online PowerShell or standalone EOP PowerShell to manage quarantined email messages

The cmdlets that you use to view and manage messages and files in quarantine are described in this section.

- [Delete-QuarantineMessage](/powershell/module/exchange/delete-quarantinemessage)
- [Export-QuarantineMessage](/powershell/module/exchange/export-quarantinemessage)
- [Get-QuarantineMessage](/powershell/module/exchange/get-quarantinemessage)
- [Preview-QuarantineMessage](/powershell/module/exchange/preview-quarantinemessage): Note that this cmdlet is only for messages, not quarantined files from Safe Attachments for SharePoint, OneDrive, and Microsoft Teams.
- [Release-QuarantineMessage](/powershell/module/exchange/release-quarantinemessage)

## Use PowerShell to manage quarantined messages in Microsoft Teams

To manage quarantined messages for the Microsoft Teams chat, the admin will need to use the [Get-QuarantineMessage](/powershell/module/exchange/get-quarantinemessage) cmdlet with the following parameters to identify the messages.

The available parameters for the QuarantineScenarios are Email, SPO, and Teams.

Similarly, the parameters for EmailQuarantineTypes are Bulk, HighConfPhish, Malware, Phish, Spam, and TransportRule

The parameter for SPOQuarantineTypes is Malware.

And the parameters for TeamsQuarantineTypes are HighConfPhish and Malware.

Then, the admin can select a quarantined message from the list to view or take action on.

**Example**:

```powershell
  Get-QuarantineMessage
   -Identity <c14401cf-aa9a-465b-cfd5-08d0f0ca37c5\4c2ca98e-94ea-db3a-7eb8-3b63657d4db7>
   [-Email]
```

## For more information

[Quarantined messages FAQ](quarantine-faq.yml)
