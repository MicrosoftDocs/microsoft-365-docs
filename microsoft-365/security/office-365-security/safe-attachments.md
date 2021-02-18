---
title: Safe Attachments
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.date: 
ms.topic: overview

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 6e13311e-92ae-495e-a619-56d770199170
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
  - seo-marvel-apr2020
description: Admins can learn about the Safe Attachments feature in Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---

# Safe Attachments in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

Safe Attachments in [Microsoft Defender for Office 365](defender-for-office-365.md) provides an additional layer of protection for email attachments that have already been scanned by [anti-malware protection in Exchange Online Protection (EOP)](anti-malware-protection.md). Specifically, Safe Attachments uses a virtual environment to check attachments in email messages before they're delivered to recipients (a process known as _detonation_).

Safe Attachments protection for email messages is controlled by Safe Attachments policies. There is no default Safe Attachments policy, **so to get the protection of Safe Attachments, you need to create one or more Safe Attachments policies**. For instructions, see [Set up Safe Attachments policies in Defender for Office 365](set-up-safe-attachments-policies.md).

The following table describes scenarios for Safe Attachments in Microsoft 365 and Office 365 organizations that include Microsoft Defender for Office 365 (in other words, lack of licensing is never an issue in the examples).

****

|Scenario|Result|
|---|---|
|Pat's Microsoft 365 E5 organization has no Safe Attachments policies configured.|Pat is not protected by Safe Attachments. <p> An admin must create at least one Safe Attachments policy for Safe Attachments protection to be active. Furthermore, the conditions of the policy must include Pat if Pat is to be protected by Safe Attachments.|
|Lee's organization has a Safe Attachments policy that applies only to finance employees. Lee is a member of the sales department.|Lee is not protected by Safe Attachments. <p> Finance employees are protected by Safe Attachments, but sales employees (and other employees) are not.|
|Yesterday, an admin in Jean's organization created a Safe Attachments policy that applies to all employees. Earlier today, Jean received an email message that included an attachment.|Jean is protected by Safe Attachments. <p> Typically, it takes about 30 minutes for a new policy to take effect.|
|Chris's organization has long-standing Safe Attachments policies for everyone in the organization. Chris receives an email that has an attachment, and then forwards the message to external recipients.|Chis is protected by Safe Attachments. <p> If the external recipients also have Safe Attachments policies in their organization, then the forwarded messages are subject to those policies.|
|

Safe Attachments scanning takes place in the same region where your Microsoft 365 data resides. For more information about datacenter geography, see [Where is your data located?](https://products.office.com/where-is-your-data-located?geo=All)

> [!NOTE]
> The following features are located in the global settings of Safe Attachments policies in the Security & Compliance Center. But, these settings are enabled or disabled globally, and don't require Safe Attachments policies:
>
> - [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md).
>
> - [Safe Documents in Microsoft 365 E5](safe-docs.md)

## Safe Attachments policy settings

This section describes the settings in Safe Attachments policies:

- **Safe Attachments unknown malware response**: This setting controls the action for Safe Attachments malware scanning in email messages. The available options are described in the following table:

  ****

  |Option|Effect|Use when you want to:|
  |---|---|---|
  |**Off**|Attachments aren't scanned for malware by Safe Attachments. Messages are still scanned for malware by [anti-malware protection in EOP](anti-malware-protection.md).|Turn scanning off for selected recipients. <p> Prevent unnecessary delays in routing internal mail. <p> **This option is not recommended for most users. You should only use this option to turn off Safe Attachments scanning for recipients who only receive messages from trusted senders.**|
  |**Monitor**|Delivers messages with attachments and then tracks what happens with detected malware. <p> Delivery of safe messages might be delayed due to Safe Attachments scanning.|See where detected malware goes in your organization.|
  |**Block**|Prevents messages with detected malware attachments from being delivered. <p> Messages are [quarantined](manage-quarantined-messages-and-files.md) where only admins (not end-users) can review, release, or delete the messages. <p> Automatically blocks future instances of the messages and attachments. <p> Delivery of safe messages might be delayed due to Safe Attachments scanning.|Protects your organization from repeated attacks using the same malware attachments. <p> This is the default value, and the recommended value in Standard and Strict [preset security policies](preset-security-policies.md).|
  |**Replace**|Removes detected malware attachments. <p> Notifies recipients that attachments have been removed. <p>  Messages are [quarantined](manage-quarantined-messages-and-files.md) where only admins (not end-users) can review, release, or delete the messages. <p> Delivery of safe messages might be delayed due to Safe Attachments scanning.|Raise visibility to recipients that attachments were removed because of detected malware.|
  |**Dynamic Delivery**|Delivers messages immediately, but replaces attachments with placeholders until Safe Attachments scanning is complete. <p> For details, see the [Dynamic Delivery in Safe Attachments policies](#dynamic-delivery-in-safe-attachments-policies) section later in this article.|Avoid message delays while protecting recipients from malicious files. <p> Enable recipients to preview attachments in safe mode while scanning is taking place.|
  |

- **Redirect attachment on detection: Enable redirect** and **Send the attachment to the following email address**: For **Block**, **Monitor**, or **Replace** actions, send messages that contain malware attachments to the specified internal or external email address for analysis and investigation.

  The recommendation for Standard and Strict policy settings is to enable redirection. For more information, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings).

- **Apply the above selection if malware scanning for attachments times out or error occurs**: The action specified by **Safe Attachments unknown malware response** is taken on messages even when Safe Attachments scanning can't complete. Always select this option if you select **Enable redirect**. Otherwise, messages might be lost.

- **Recipient filters**: You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:

  - **The recipient is**
  - **The recipient domain is**
  - **The recipient is a member of**

  You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Priority**: If you create multiple policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied.

  For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

### Dynamic Delivery in Safe Attachments policies

> [!NOTE]
> Dynamic Delivery works only for Exchange Online mailboxes.

The Dynamic Delivery action in Safe Attachments policies seeks to eliminate any email delivery delays that might be caused by Safe Attachments scanning. The body of the email message is delivered to the recipient with a placeholder for each attachment. The placeholder remains until the attachment is found to be safe, and then the attachment becomes available to open or download.

If an attachment is found to be malicious, the message is quarantined. Only admins (not end-users) can review, release, or delete messages that were quarantined by Safe Attachments scanning. For more information, see [Manage quarantined messages and files as an admin](manage-quarantined-messages-and-files.md).

Most PDFs and Office documents can be previewed in safe mode while Safe Attachments scanning is underway. If an attachment is not compatible with the Dynamic Delivery previewer, the recipients will see a placeholder for the attachment until Safe Attachments scanning is complete.

If you're using a mobile device, and PDFs aren't rendering in the Dynamic Delivery previewer on your mobile device, try opening the message in Outlook on the web (formerly known as Outlook Web App) using your mobile browser.

Here are some considerations for Dynamic Delivery and forwarded messages:

- If the forwarded recipient is protected by a Safe Attachments policy that uses the Dynamic Delivery option, then the recipient sees the placeholder, with the ability to preview compatible files.

- If the forwarded recipient is not protected by a Safe Attachments policy, the message and attachments will be delivered without any Safe Attachments scanning or attachment placeholders.

There are scenarios where Dynamic Delivery is unable to replace attachments in messages. These scenarios include:

- Messages in public folders.

- Messages that are routed out of and then back into a user's mailbox using custom rules.

- Messages that are moved (automatically or manually) out of cloud mailboxes to other locations, including archive folders.

- Deleted messages.

- The user's mailbox search folder is in an error state.

- Exchange Online organizations where Exclaimer is enabled. To resolve this, see [KB4014438](https://support.microsoft.com/help/4014438).

- [S/MIME)](s-mime-for-message-signing-and-encryption.md) encrypted messages.

- You configured the Dynamic Delivery action in a Safe Attachments policy, but the recipient doesn't support Dynamic Delivery (for example, the recipient is a mailbox in an on-premises Exchange organization). However, [Safe Links in Microsoft Defender for Office 365](set-up-safe-links-policies.md) is able to scan Office file attachments that contain URLs (depending on how the [global settings for Safe Links](configure-global-settings-for-safe-links.md) are configured).

## Submitting files for malware analysis

- If you receive a file that you want to send to Microsoft for analysis, see [Submit malware and non-malware to Microsoft for analysis](submitting-malware-and-non-malware-to-microsoft-for-analysis.md).

- If you receive an email message (with or without an attachment) that you want to submit to Microsoft for analysis, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).
