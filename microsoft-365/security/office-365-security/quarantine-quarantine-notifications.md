---
title: Quarantine notifications (end-user spam notifications) in Microsoft 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MED150
  - MET150
ms.assetid: 56de4ed5-b0aa-4195-9f46-033d7cc086bc
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn about end-user spam notifications for quarantined messages in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 7/24/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Use quarantine notifications to release and report quarantined messages

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine holds potentially dangerous or unwanted messages. For more information, see [Quarantined messages in EOP](quarantine-about.md).

> [!NOTE]
> Quarantine isn't available in Microsoft 365 operated by 21Vianet.

For [supported protection features](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features), _quarantine policies_ define what users are allowed to do to quarantined messages based on why the message was quarantined. Default quarantine policies enforce the historical capabilities for the security feature that quarantined the message as described in the table [here](quarantine-end-user.md). Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users. For more information, see [Create quarantine policies](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

Quarantine notifications aren't turned on in the default quarantine notifications named AdminOnlyAccessPolicy or DefaultFullAccessPolicy. Quarantine notifications are turned on in the following default quarantine policies:

- **DefaultFullAccessWithNotificationPolicy** that's used in [preset security policies](preset-security-policies.md).
- **NotificationEnabledPolicy** [if your organization has it](quarantine-policies.md#full-access-permissions-and-quarantine-notifications).

Otherwise, to turn on quarantine notifications in quarantine policies, you need to [create and configure a new quarantine policy](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

Admins can also use the global settings in quarantine policies to customize quarantine notifications in the following ways:

- Add translations in up to three languages.
- Customize the sender and logo that's used in the notification.
- Notification frequency (every four hours, daily, or weekly).

For instructions, see [Configure global quarantine notification settings](quarantine-policies.md#configure-global-quarantine-notification-settings-in-the-microsoft-365-defender-portal).

For shared mailboxes, quarantine notifications are supported only for users who are granted FullAccess permission to the mailbox. For more information, see [Use the EAC to edit shared mailbox delegation](/Exchange/collaboration-exo/shared-mailboxes#use-the-eac-to-edit-shared-mailbox-delegation).

> [!NOTE]
> By default, messages that are quarantined as high confidence phishing by anti-spam policies, malware by anti-malware policies or Safe Attachments, or by mail flow rules (also known as transport rules) are available only to admins. For more information, see the table at [Find and release quarantined messages as a user in EOP](quarantine-end-user.md).
>
> Quarantine notifications for messages sent to distribution groups or mail-enabled security groups are sent to all group members.
>
> Quarantine notifications for messages sent to Microsoft 365 Groups are sent to all group members only if the **Send copies of group conversations and events to group members** setting is turned on.

When users receive a quarantine notification, the following information is available for each quarantined message:

- **Sender**: The email address of the sender of the quarantined message.
- **Subject**: The Subject line of the quarantined message.
- **Date**: The date/time that the message was quarantined in UTC.

The actions that are available for messages in the quarantine notification depends on why the message was quarantined and the permissions in the associated quarantine policy. For more information, see [Quarantine policy permission details](quarantine-policies.md#quarantine-policy-permission-details).

- **Review message**: Available for all messages in quarantine notifications.

  Selecting the action takes you to the details flyout of the message in quarantine. It's the same result as going to the **Email** tab on the **Quarantine** page at <https://security.microsoft.com/quarantine?viewid=Email>, and selecting the message by clicking anywhere in the row other than the check box next to the first column. For more information, see [View quarantined message details](quarantine-end-user.md#view-quarantined-message-details).

- **Release**: Available for messages that were quarantined by features using a quarantine policy with the **Full access** permission group or the individual **Allow recipients to release a message from quarantine** (_PermissionToRelease_) permission. For example, DefaultFullAccessWithNotificationPolicy, NotificationEnabledPolicy, or custom quarantine policies.

  Selecting the action opens an informational web page that acknowledges the message was released from quarantine (for example, **Spam message was released from quarantine**). The **Release status** value of the message on the **Email** tab of the **Quarantine** page is **Released**. The message is delivered to the user's Inbox (or some other folder, depending on any [Inbox rules](https://support.microsoft.com/office/c24f5dea-9465-4df4-ad17-a50704d66c59) in the mailbox).

  Users can't release their own messages that were quarantined as **malware** by anti-malware or Safe Attachments policies, or as **high confidence phishing** by anti-spam policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware or high-confidence phishing messages.

- **Request release**: Available for messages that were quarantined by features using a quarantine policy with the **Limited access** permission group or the individual **Allow recipients to request a message to be released from quarantine** (_PermissionToRequestRelease_) permission. For example, custom quarantine policies.

  Selecting the action opens an informational web page that acknowledges the request to release the message from quarantine (**The message release request has been initiated. The tenant admin will determine if the request should be approved or denied.**). The **Release status** value of the message on the **Email** tab of the **Quarantine** page is **Release requested**.

- **Block Sender**: Available for messages that were quarantined by features using a quarantine policy with the **Full access**or **Limited access** permission group, or the individual ***Block sender** (_PermissionToBlockSender_) permission. For example, DefaultFullAccessWithNotificationPolicy, NotificationEnabledPolicy, or custom quarantine policies.

  For this action to work correctly, users need to be enabled for remote PowerShell. For instructions, see [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell).

  This action opens an informational web page to acknowledge that the message was added to the Blocked Senders list in the user's mailbox (for example, **Spam message sender was blocked in quarantine**).

  For more information about the Blocked Senders list, see [Block messages from someone](https://support.microsoft.com/office/274ae301-5db2-4aad-be21-25413cede077#__toc304379667) and [Use Exchange Online PowerShell to configure the safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).

  > [!TIP]
  > The organization can still receive mail from the blocked sender. Messages from the sender are delivered to user Junk Email folders or to quarantine. To delete messages from the sender upon arrival, use [mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) to **Block the message**.

:::image type="content" source="../../media/quarantine-notification.png" alt-text="A sample quarantine notification." lightbox="../../media/quarantine-notification.png":::
