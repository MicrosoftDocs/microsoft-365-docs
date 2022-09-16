---
title: Find and release quarantined messages as a user
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Consumer/IW
ms.topic: how-to

ms.localizationpriority: high
search.appverid:
  - MET150
  - MEW150
ms.assetid: efff08ec-68ff-4099-89b7-266e3c4817be
ms.collection:
  - M365-security-compliance
ms.custom:
  - seo-marvel-apr2020
description: Users can learn how to view and manage quarantined messages in Exchange Online Protection (EOP) that should have been delivered to them.
ms.subservice: mdo
ms.service: microsoft-365-security
adobe-target: true
---

# Find and release quarantined messages as a user in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine holds potentially dangerous or unwanted messages. For more information, see [Quarantine in EOP](quarantine-email-messages.md).

As an ordinary user (not an admin), the **default** capabilities that are available to you as a recipient of a quarantined message are described in the following table:

|Quarantine reason|View|Release|Delete|
|---|:---:|:---:|:---:|
|**Anti-spam policies**||||
|Bulk|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Spam|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|High confidence spam|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Phishing|![Check mark.](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|High confidence phishing||||
|**Anti-phishing policies**||||
|Spoof intelligence protection in EOP|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Impersonated user protection in Defender for Office 365|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Impersonated domain protection in Defender for Office 365|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Mailbox intelligence protection in Defender for Office 365|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|**Anti-malware policies**||||
|Email messages with attachments that are quarantined as malware.||||
|**Safe Attachments in Defender for Office 365**||||
|Safe Attachments policies that quarantine email messages with malicious attachments as malware.||||
|Safe Attachments for SharePoint, OneDrive, and Microsoft Teams that quarantines malicious files as malware.||||
|**Mail flow rules (transport rules)**||||
|Mail flow rules that quarantine email messages.||||

_Quarantine policies_ define what users are allowed to do to quarantined messages based on why the message was quarantined in [supported features](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features). Default quarantine policies enforce the historical capabilities as described in the previous table. Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users in supported features. For more information, see [Quarantine policies](quarantine-policies.md).

You view and manage your quarantined messages in the Microsoft 365 Defender portal or (if an admin has set this up) quarantine notifications from quarantine policies.

## What do you need to know before you begin?

- To open the Microsoft 365 Defender portal, go to <https://security.microsoft.com>. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

- Admins can configure how long messages are kept in quarantine before they're permanently deleted in anti-spam policies. Messages that have expired from quarantine are unrecoverable. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

- By default, messages that were quarantined for high confidence phishing, malware, or by mail flow rules are only available to admins, and aren't visible to users. For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).

## View your quarantined messages

> [!NOTE]
> Your ability to view quarantined messages is controlled by the [quarantine policy](quarantine-policies.md) that applies to the quarantined message type (which might be the [default quarantine policy for the quarantine reason](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features)).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine**. To go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

2. On the **Quarantine** page, you can sort the results by clicking on an available column header. Click **Customize columns**  to change the columns that are shown. The default values are marked with an asterisk (<sup>\*</sup>):

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

   When you're finished, click **Apply**.

3. To filter the results, click **Filter**. The following filters are available in the **Filters** flyout that appears:
   - **Message ID**: The globally unique identifier of the message.
   - **Sender address**
   - **Recipient address**
   - **Subject**
   - **Time received**: Enter a **Start time** and **End time** (date).
   - **Expires**: Filter messages by when they will expire from quarantine:
     - **Today**
     - **Next 2 days**
     - **Next 7 days**
     - **Custom**: Enter a **Start time** and **End time** (date).
   - **Quarantine reason**:
     - **Bulk**
     - **Spam**
     - **Phishing**: The spam filter verdict was **Phishing** or anti-phishing protection quarantined the message ([spoof settings](set-up-anti-phishing-policies.md#spoof-settings) or [impersonation protection](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)).
     - **High confidence phishing**
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

   When you're finished, click **Apply**. To clear the filters, click ![Clear filters icon.](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

4. Use **Search** box and a corresponding value to find specific messages. Wildcards aren't supported. You can search by the following values:
   - Message ID
   - Sender email address
   - Recipient email address
   - Subject. Use the entire subject of the message. The search is not case-sensitive.
   - Policy name. Use the entire policy name. The search is not case-sensitive.

   After you've entered the search criteria, press ENTER to filter the results.

   > [!NOTE]
   > The **Search** box on the main **Quarantine** page will search only quarantined items in the current view, not the entire quarantine. To search all quarantined items, use **Filter** and the resulting **Filters** flyout.

After you find a specific quarantined message, select the message to view details about it, and to take action on it (for example, view, release, download, or delete the message).


### View quarantined message details

When you select quarantined message from the list, the following information is available in the details flyout that appears.

:::image type="content" source="../../media/quarantine-user-message-details.png" alt-text="The details flyout of a quarantined message" lightbox="../../media/quarantine-user-message-details.png":::

When you select an email message in the list, the following message details appear in the **Details** flyout pane:

- **Message ID**: The globally unique identifier for the message.
- **Sender address**
- **Received**: The date/time when the message was received.
- **Subject**
- **Quarantine reason**
- **Policy type**: The type of policy. For example, **Anti-spam policy**.
- **Recipient count**
- **Recipients**: If the message contains multiple recipients, you need to click **Preview message** or **View message header** to see the complete list of recipients.
- **Expires**: The date/time when the message will be automatically and permanently deleted from quarantine.

To take action on the message, see the next section.

> [!NOTE]
> To remain in the details flyout, but change the quarantined message that you're looking at, use the up and down arrows at the top of the flyout.
>
> :::image type="content" source="../../media/quarantine-message-details-flyout-up-down-arrows.png" alt-text="The up and down arrows in the details flyout of a quarantined message" lightbox="../../media/quarantine-message-details-flyout-up-down-arrows.png":::

### Take action on quarantined email

> [!NOTE]
> Your ability to take action on quarantined messages is controlled by the [quarantine policy](quarantine-policies.md) that applies to the quarantined message type (which might be the [default quarantine policy for the quarantine reason](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features)). This section describes all available actions.

After you select a quarantined message from the list, the following actions are available in the details flyout:

:::image type="content" source="../../media/quarantine-user-message-details-flyout-actions.png" alt-text="The available actions in the details flyout of a quarantined message" lightbox="../../media/quarantine-user-message-details-flyout-actions.png":::

- ![Release email icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release email**<sup>\*</sup>: Delivers the message to your Inbox.

- ![View message headers icon.](../../media/m365-cc-sc-eye-icon.png) **View message headers**: Choose this link to see the message header text. The **Message header** flyout appears with the following links:
- **Copy message header**: Click this link to copy the message header (all header fields) to your clipboard.
- **Microsoft Message Header Analyzer**: To analyze the header fields and values in depth, click this link to go to the Message Header Analyzer. Paste the message header into the **Insert the message header you would like to analyze** section (CTRL+V or right-click and choose **Paste**), and then click **Analyze headers**.

The following actions are available after you click ![More actions icon.](../../media/m365-cc-sc-more-actions-icon.png) **More actions**:

- ![Preview message icon.](../../media/m365-cc-sc-eye-icon.png) **Preview message**: In the flyout that appears, choose one of the following tabs:
  - **Source**: Shows the HTML version of the message body with all links disabled.
  - **Plain text**: Shows the message body in plain text.

- ![Remove from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Remove from quarantine**: After you click **Yes** in the warning that appears, the message is immediately deleted without being sent to the original recipients.

- ![Download email icon.](../../media/m365-cc-sc-download-icon.png) **Download email**: In the flyout that appears, configure the following settings:
  - **Reason for downloading file**: Enter descriptive text.
  - **Create password** and **Confirm password**: Enter a password that's required to open the downloaded message file.

  When you're finished, click **Download**, and then **Done** to save a local copy of the message. The .eml message file is save in a compressed file named Quarantined Messages.zip in your **Downloads** folder. If the .zip file already exists, a number is appended to the filename (for example, Quarantined Messages(1).zip).

- ![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png) **Block sender**: Add the sender to the Blocked Senders list in **your** mailbox. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).

<sup>\*</sup> This option is not available for messages that have already been released (the **Released status** value is **Released**).

If you don't release or remove the message, it will be deleted after the default quarantine retention period expires (as shown in the **Expires** column).

> [!NOTE]
> On a mobile device, the description text isn't available on the action icons.
>
> :::image type="content" source="../../media/quarantine-user-message-details-flyout-mobile-actions.png" alt-text="The details of a quarantined message with available actions highlighted" lightbox="../../media/quarantine-user-message-details-flyout-mobile-actions.png":::

>
> The icons in order and their corresponding descriptions are summarized in the following table:
>
> |Icon|Description|
> |---:|---|
> |![Release email icon.](../../media/m365-cc-sc-check-mark-icon.png)|**Release email**|
> |![View message headers icon.](../../media/m365-cc-sc-eye-icon.png)|**View message headers**|
> |![Preview message icon.](../../media/m365-cc-sc-eye-icon.png)|**Preview message**|
> |![Remove from quarantine icon.](../../media/m365-cc-sc-delete-icon.png)|**Remove from quarantine**|
> |![Block sender icon.](../../media/m365-cc-sc-block-sender-icon.png)|**Block sender**|

#### Take action on multiple quarantined email messages

When you select multiple quarantined messages in the list (up to 100) by clicking in the blank area to the left of the first column, the **Bulk actions** drop down list appears where you can take the following actions:

:::image type="content" source="../../media/quarantine-user-message-bulk-actions.png" alt-text="The bulk actions drop down list for messages in quarantine" lightbox="../../media/quarantine-user-message-bulk-actions.png":::

- ![Release messages icon.](../../media/m365-cc-sc-check-mark-icon.png) **Release messages**: Delivers the messages to your Inbox.
- ![Remove from quarantine icon.](../../media/m365-cc-sc-delete-icon.png) **Delete messages**:  After you click **Yes** in the warning that appears, the messages are immediately removed from quarantine without being sent to the original recipients.
