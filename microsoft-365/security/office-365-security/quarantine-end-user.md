---
title: Find and release quarantined messages as a user
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Consumer/IW
ms.topic: how-to
ms.localizationpriority: high
search.appverid:
  - MET150
  - MEW150
ms.assetid: efff08ec-68ff-4099-89b7-266e3c4817be
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - seo-marvel-apr2020
description: Users can learn how to view and manage quarantined messages in Exchange Online Protection (EOP) that should have been delivered to them.
ms.subservice: mdo
ms.service: microsoft-365-security
adobe-target: true
ms.date: 3/3/2023
---

# Find and release quarantined messages as a user in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine holds potentially dangerous or unwanted messages. For more information, see [Quarantine in EOP](quarantine-about.md).

As an ordinary user (not an admin), the **default** capabilities that are available to you as a recipient of a quarantined message are described in the following table:

|Quarantine reason|View|Release|Delete|
|---|:---:|:---:|:---:|
|**Anti-spam policies**||||
|&nbsp;&nbsp;&nbsp;Bulk|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Spam|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;High confidence spam|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Phishing|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;High confidence phishing||||
|**Anti-phishing policies**||||
|&nbsp;&nbsp;&nbsp;Spoof intelligence protection in EOP|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Impersonated user protection in Defender for Office 365|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Impersonated domain protection in Defender for Office 365|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Mailbox intelligence impersonation protection in Defender for Office 365|✔|✔|✔|
|**Anti-malware policies**||||
|&nbsp;&nbsp;&nbsp;Email messages with attachments that are quarantined as malware.||||
|**Safe Attachments in Defender for Office 365**||||
|&nbsp;&nbsp;&nbsp;Safe Attachments policies that quarantine email messages with malicious attachments as malware.||||
|&nbsp;&nbsp;&nbsp;Safe Attachments for SharePoint, OneDrive, and Microsoft Teams that quarantines malicious files as malware.||||
|**Mail flow rules (transport rules)**||||
|&nbsp;&nbsp;&nbsp;Mail flow rules that quarantine email messages (directly, not by marking them as spam).||||

In [supported protection features](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features), _quarantine policies_ define what users are allowed to do to quarantined messages based on why the message was quarantined. Default quarantine policies enforce the historical capabilities for messages as described in the previous table. Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

You view and manage your quarantined messages in the Microsoft 365 Defender portal or (if an admin has set this up) quarantine notifications from quarantine policies.

## What do you need to know before you begin?

- To open the Microsoft 365 Defender portal, go to <https://security.microsoft.com>. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

- Admins can configure how long messages are kept in quarantine before they're permanently deleted in anti-spam policies. Messages that have expired from quarantine are unrecoverable. For more information, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

- By default, messages that were quarantined for high confidence phishing, malware, or by mail flow rules are only available to admins, and aren't visible to users. For more information, see [Manage quarantined messages and files as an admin in EOP](quarantine-admin-manage-messages-files.md).

## View your quarantined messages

> [!NOTE]
> Your ability to view quarantined messages is controlled by the quarantine policy that applies to the reason why the message was quarantined (which might be the default quarantine policy as described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md)).

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine** \> **Email** tab. Or, to go directly to the **Email** tab on the **Quarantine** page, use <https://security.microsoft.com/quarantine?viewid=Email>.

On the **Email** tab, you can decrease the vertical spacing in the list by clicking ![Change list spacing to compact or normal icon.](../../media/m365-cc-sc-standard-icon.png) **Change list spacing to compact or normal** and then selecting ![Compact list icon.](../../media/m365-cc-sc-compact-icon.png) **Compact list**.

You can sort the results by clicking on an available column header. Click ![Customize columns icon.](../../media/m365-cc-sc-customize-icon.png) **Customize columns** to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

- **Time received**<sup>\*</sup>
- **Subject**<sup>\*</sup>
- **Sender**<sup>\*</sup>
- **Quarantine reason**<sup>\*</sup>
- **Release status**<sup>\*</sup>
- **Policy type**<sup>\*</sup>
- **Expires**<sup>\*</sup>
- **Recipient**<sup>\*</sup>
- **Message ID**
- **Policy name**
- **Message size**
- **Mail direction**
- **Recipient tag**

To filter the results, click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter**. The following filters are available in the **Filters** flyout that opens:

- **Message ID**: The globally unique identifier of the message.
- **Sender address**
- **Recipient address**
- **Subject**
- **Time received**:
  - **Last 24 hours**
  - **Last 7 days**
  - **Last 14 days**
  - **Last 30 days** (default)
  - **Custom**: Enter a **Start time** and **End time** (date).
- **Expires**: Filter messages by when they expire from quarantine:
  - **Today**
  - **Next 2 days**
  - **Next 7 days**
  - **Custom**: Enter a **Start time** and **End time** (date).
- **Recipient tag**
- **Quarantine reason**:
  - **Transport rule** (mail flow rule)
  - **Bulk**
  - **Spam**
  - **Data loss prevention**
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

When you're finished on the **Filters** flyout, click **Apply**. To clear the filters, click ![Clear filters icon.](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

Use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box and a corresponding value to find specific messages. Wildcards aren't supported. You can search by the following values:

- Sender email address
- Subject. Use the entire subject of the message. The search isn't case-sensitive.

After you've entered the search criteria, press the enter ENTER key to filter the results.

> [!NOTE]
> The **Search** box searches for quarantined items in the current view, not all quarantined items. To search all quarantined items, use **Filter** and the resulting **Filters** flyout.

After you find a specific quarantined message, select the message to view details about it and to take action on it (for example, view, release, download, or delete the message).

> [!TIP]
> On mobile devices, the previously described controls are available under ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More**.
>
> :::image type="content" source="../../media/quarantine-user-message-main-page-mobile-actions.png" alt-text="Selecting a quarantined message and then selecting More on a mobile device." lightbox="../../media/quarantine-user-message-main-page-mobile-actions.png":::

### View quarantined message details

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine** \> **Email** tab. Or, to go directly to the **Email** tab on the **Quarantine** page, use <https://security.microsoft.com/quarantine?viewid=Email>.

2. On the **Email** tab, select the quarantined message by clicking anywhere in the row other than the check box.

In the details flyout that opens, the following information is available:

- **Quarantine details** section:
  - **Received**: The date/time when the message was received.
  - **Expires**: The date/time when the message is automatically and permanently deleted from quarantine.
  - **Subject**
  - **Quarantine reason**: Shows if a message has been identified as **Spam**, **Bulk**, **Phish**, matched a mail flow rule (**Transport rule**), or was identified as containing **Malware**.
  - **Policy type**
  - **Policy name**
  - **Recipient count**
  - **Recipients**: If the message contains multiple recipients, you might need to click **...** \> **Preview message** or ***...** \> **View message header** to see the complete list of recipients.
- **Email details** section:
  - **Sender address**
  - **Time received**
  - **Network message ID**
  - **Recipients**

:::image type="content" source="../../media/quarantine-user-message-details.png" alt-text="The details flyout of a quarantined message" lightbox="../../media/quarantine-user-message-details.png":::

To take action on the message, see the next section.

> [!TIP]
> To remain in the details flyout but change the quarantined message that you're looking at, use the up and down arrows at the top of the flyout.
>
> :::image type="content" source="../../media/quarantine-message-details-flyout-up-down-arrows.png" alt-text="The up and down arrows in the details flyout of a quarantined message" lightbox="../../media/quarantine-message-details-flyout-up-down-arrows.png":::

## Take action on quarantined email

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine** \> **Email** tab. Or, to go directly to the **Email** tab on the **Quarantine** page, use <https://security.microsoft.com/quarantine?viewid=Email>.

2. On the **Email** tab, select the quarantined email message by using either of the following methods:

   - Select the message from the list by selecting the check box next to the first column. The available actions are no longer grayed out. 

     :::image type="content" source="../../media/quarantine-user-message-selected-message-actions.png" alt-text="Available actions after you select a quarantined message on the Email tab of the Quarantine page." lightbox="../../media/quarantine-user-message-selected-message-actions.png":::

   - Select the message from the list by clicking anywhere in the row other than the check box. The available actions are in the details flyout that opens.

     :::image type="content" source="../../media/quarantine-user-message-details-flyout-actions.png" alt-text="The available actions in the details flyout of a quarantined message" lightbox="../../media/quarantine-user-message-details-flyout-actions.png":::

   Using either method to select the message, some actions are available under ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More** or **More options**.

After you select the quarantined message, the available actions are described in the following subsections.

> [!TIP]
> On mobile devices, the action experience is slightly different:
>
> - When you select the message by selecting the check box, all actions are under ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More**:
>
>   :::image type="content" source="../../media/quarantine-user-message-main-page-mobile-actions.png" alt-text="Selecting a quarantined message and then selecting More on a mobile device." lightbox="../../media/quarantine-user-message-main-page-mobile-actions.png":::
>
> - When you select the message by clicking anywhere other than the check box, most options are available under ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More** in the details flyout:
>
>   :::image type="content" source="../../media/quarantine-user-message-details-flyout-mobile-actions.png" alt-text="The details of a quarantined message with available actions shown." lightbox="../../media/quarantine-user-message-details-flyout-mobile-actions.png":::

### Release quarantined email

> [!NOTE]
> Your ability to release quarantined messages is controlled by the quarantine policy for the protection feature that quarantined the message (which might be a default quarantine policy as described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md)).
>
> A quarantine policy can allow you to release a message or request the release of a message, but both options aren't available for the same message. A quarantine policy can also prevent you from releasing or requesting the release of quarantined messages.

This action isn't available for email messages that have already been released (the **Release status** value is **Released**).

If you don't release or remove a message, it's automatically deleted from quarantine after the date shown in the **Expires** column.

After you select the message, use either of the following methods to release it (deliver it to your mailbox):

- **On the Email tab**: Click ![Release icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release**.
- **In the details flyout of the selected message**: Click ![Release email icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release email**.

In the **Release message to your Inbox** flyout that opens, select **Report message as having no threats** as appropriate, and then click **Release message**.

When you're finished on the **Release message to your Inbox** flyout, click **Release message**.

In the **Messages released to your Inbox** flyout that opens, click **Done**.

Back on the **Email** tab, the **Release status** value of the message is **Released**.

### Request the release of quarantined email

> [!NOTE]
> Your ability to request the release of quarantined messages is controlled by the quarantine policy for the protection feature that quarantined the message.
>
> A quarantine policy can allow you to release a message or request the release of a message, but both options aren't available for the same message. A quarantine policy can also prevent you from releasing or requesting the release of quarantined messages.

This action isn't available for email messages where you already requested release (the **Release status** value is **Released requested**).

If you don't release or remove a message, it's automatically deleted from quarantine after the date shown in the **Expires** column.

After you select the message, use either of the following methods to request its release:

- **On the Email tab**: Click ![Request release icon.](../../media/m365-cc-sc-edit-icon.png) **Request release**.
- **In the details flyout of the selected message**: Click ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** \> ![Request release icon.](../../media/m365-cc-sc-edit-icon.png) **Request release**..

In the **Request release** flyout that opens, review the information, click **Request release**. In the **Release requested** flyout that opens, click **Done**.

Back on the **Quarantine page**, the **Release status** value of the message is **Release requested**. An admin will review your request and approve it or deny it.

### Delete email from quarantine

When you delete an email message from quarantine, the message is removed and isn't sent to the original recipients.

If you don't release or remove a message, it's automatically deleted from quarantine after the date shown in the **Expires** column.

After you select the message, use either of the following methods to remove it:

- **On the Email tab**: Click ![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete messages**.
- **In the details flyout of the selected message**: Click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** \> ![Delete from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete from quarantine**.

In the **Delete (n) messages from quarantine** flyout that opens, use one of the following methods to delete the message:

- Select **Permanently delete the message from quarantine** and then click **Delete**: The message is permanently deleted and isn't recoverable.
- Click **Delete** only: The message is deleted, but is potentially recoverable.

After you click **Delete** on the **Delete (n) messages from quarantine** flyout, you return to the **Email** tab where the message is no longer listed.

### Preview email from quarantine

After you select the message, use either of the following methods to preview it:

- **On the Email tab**: Click ![Preview message icon.](../../media/m365-cc-sc-preview-message-icon.png) **Preview message**.
- **In the details flyout of the selected message**: Click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** \> ![Preview message icon.](../../media/m365-cc-sc-preview-message-icon.png) **Preview message**.

In the flyout that opens, choose one of the following tabs:
  - **Source**: Shows the HTML version of the message body with all links disabled.
  - **Plain text**: Shows the message body in plain text.

### View email message headers

After you select the message, use either of the following methods to view the message headers:

- **On the Email tab**: Click ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More** \> ![View message headers icon.](../../media/m365-cc-sc-view-message-headers-icon.png) **View message headers**.
- **In the details flyout of the selected message**: Click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** \> ![View message headers icon.](../../media/m365-cc-sc-view-message-headers-icon.png) **View message headers**.

In the **Message header** flyout that opens, the message header (all header fields) is shown.

Use ![Copy message header icon.](../../media/m365-cc-sc-copy-icon.png) **Copy message header** to copy the message header to the clipboard.

Click the **Microsoft Message Header Analyzer** link to analyze the header fields and values in depth. Paste the message header into the **Insert the message header you would like to analyze** section (CTRL+V or right-click and choose **Paste**), and then click **Analyze headers**.

### Block email senders from quarantine

The Block senders action adds the message sender to the Blocked Senders list in the your mailbox. For more information about blocking senders, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4)

After you select the message, use either of the following methods to add the message sender to the Blocked Senders list in your mailbox:

- **On the Email tab**: Click ![More icon.](../../media/m365-cc-sc-more-actions-icon.png) **More** \> ![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png) **Block sender**.
- **In the details flyout of the selected message**: Click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** \> ![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png) **Block sender**.

In the **Block sender** flyout that opens, review the information about the sender, and then click **Block**.

### Take action on multiple quarantined email messages

When you select multiple quarantined messages on the **Email** tab by selecting the check boxes next to the first column, the following bulk actions are available on the **Email** tab (depending on the **Release status** values of the messages that you selected):

- [Release quarantined email](#release-quarantined-email)
- [Request the release of quarantined email](#request-the-release-of-quarantined-email)
- [Delete email from quarantine](#delete-email-from-quarantine)
