---
title: Safe Attachments
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 6e13311e-92ae-495e-a619-56d770199170
ms.collection: 
  - m365-security
  - tier1
description: Admins can learn about the Safe Attachments feature in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Safe Attachments in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Safe Attachments in [Microsoft Defender for Office 365](defender-for-office-365.md) provides an additional layer of protection for email attachments that have already been scanned by [anti-malware protection in Exchange Online Protection (EOP)](anti-malware-protection-about.md). Specifically, Safe Attachments uses a virtual environment to check attachments in email messages before they're delivered to recipients (a process known as _detonation_).

Safe Attachments protection for email messages is controlled by Safe Attachments policies. Although there's no default Safe Attachments policy, the **Built-in protection** preset security policy provides Safe Attachments protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Attachments policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md). You can also create Safe Attachments policies that apply to specific users, group, or domains. For instructions, see [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md).

The following table describes scenarios for Safe Attachments in Microsoft 365 and Office 365 organizations that include Microsoft Defender for Office 365 (in other words, lack of licensing is never an issue in the examples).

|Scenario|Result|
|---|---|
|Pat's Microsoft 365 E5 organization has no Safe Attachments policies configured.|Pat is protected by Safe Attachments due to the **Built-in protection** preset security policy that applies to all recipients who aren't otherwise defined in Safe Attachments policies.|
|Lee's organization has a Safe Attachments policy that applies only to finance employees. Lee is a member of the sales department.|Lee and the rest of the sales department are protected by Safe Attachments due to the **Built-in protection** preset security policy that applies to all recipients who aren't otherwise defined in Safe Attachments policies.|
|Yesterday, an admin in Jean's organization created a Safe Attachments policy that applies to all employees. Earlier today, Jean received an email message that included an attachment.|Jean is protected by Safe Attachments due to that custom Safe Attachments policy. <br/><br/> Typically, it takes about 30 minutes for a new policy to take effect.|
|Chris's organization has long-standing Safe Attachments policies for everyone in the organization. Chris receives an email that has an attachment, and then forwards the message to external recipients.|Chris is protected by Safe Attachments. <br/><br/> If the external recipients are in a Microsoft 365 organization, then the forwarded messages are also protected by Safe Attachments.|

Safe Attachments scanning takes place in the same region where your Microsoft 365 data resides. For more information about datacenter geography, see [Where is your data located?](https://products.office.com/where-is-your-data-located?geo=All)

> [!NOTE]
> The following features are located in the global settings of Safe Attachments policies in the Microsoft 365 Defender portal. But, these settings are enabled or disabled globally, and don't require Safe Attachments policies:
>
> - [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).
> - [Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md)

## Safe Attachments policy settings

This section describes the settings in Safe Attachments policies:

- **Recipient filters**: You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:
  - **Users**
  - **Groups**
  - **Domains**

  You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

  > [!IMPORTANT]
  > Multiple different types of conditions or exceptions are not additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
  >
  > - Users: romain@contoso.com
  > - Groups: Executives
  >
  > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
  >
  > Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

- **Safe Attachments unknown malware response**: This setting controls the action for Safe Attachments malware scanning in email messages. The available options are described in the following table:

  |Option|Effect|Use when you want to:|
  |---|---|---|
  |**Off**|Attachments aren't scanned for malware by Safe Attachments. Messages are still scanned for malware by [anti-malware protection in EOP](anti-malware-protection-about.md).|Turn scanning off for selected recipients. <br/><br/> Prevent unnecessary delays in routing internal mail. <br/><br/> **This option is not recommended for most users. You should only use this option to turn off Safe Attachments scanning for recipients who only receive messages from trusted senders. ZAP will not quarantine messages if Safe Attachments is turned off and a malware signal is not received. For details, see [Zero-hour auto purge](zero-hour-auto-purge.md)**|
  |**Monitor**|Delivers messages with attachments and then tracks what happens with detected malware. <br/><br/> Delivery of safe messages might be delayed due to Safe Attachments scanning.|See where detected malware goes in your organization.|
  |**Block**|Prevents messages with detected malware attachments from being delivered. <br/><br/> Messages are quarantined. By default, only admins (not users) can review, release, or delete the messages.¹ <br/><br/> Automatically blocks future instances of the messages and attachments. <br/><br/> Delivery of safe messages might be delayed due to Safe Attachments scanning.|Protects your organization from repeated attacks using the same malware attachments. <br/><br/> This is the default value, and the recommended value in Standard and Strict [preset security policies](preset-security-policies.md).|
  |**Dynamic Delivery**|Delivers messages immediately, but replaces attachments with placeholders until Safe Attachments scanning is complete. <br/><br/> Messages that contain malicious attachments are quarantined. By default, only admins (not users) can review, release, or delete the messages.¹ <br/><br/> For details, see the [Dynamic Delivery in Safe Attachments policies](#dynamic-delivery-in-safe-attachments-policies) section later in this article.|Avoid message delays while protecting recipients from malicious files.|

  ¹ Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy). Users can't release their own messages that were quarantined as malware by Safe Attachments, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

- **Redirect messages with detected attachments**: **Enable redirect** and **Send messages that contain blocked, monitored, or replaced attachments to the specified email address**: For the **Monitor** action only, send messages that contain malware attachments to the specified internal or external email address for analysis and investigation.

  The recommendation for Standard and Strict policy settings is to enable redirection. For more information, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings).

- **Priority**: If you create multiple policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied (the highest priority policy for that recipient).

  For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

### Dynamic Delivery in Safe Attachments policies

> [!NOTE]
> Dynamic Delivery works only for Exchange Online mailboxes.

The Dynamic Delivery action in Safe Attachments policies seeks to eliminate any email delivery delays that might be caused by Safe Attachments scanning. The body of the email message is delivered to the recipient with a placeholder for each attachment. The placeholder remains until the attachment is found to be safe, and then the attachment becomes available to open or download.

If an attachment is found to be malicious, the message is quarantined.

Most PDFs and Office documents can be previewed in safe mode while Safe Attachments scanning is underway. If an attachment is not compatible with the Dynamic Delivery previewer, the recipients will see a placeholder for the attachment until Safe Attachments scanning is complete.

If you're using a mobile device, and PDFs aren't rendering in the Dynamic Delivery previewer on your mobile device, try opening the message in Outlook on the web (formerly known as Outlook Web App) using your mobile browser.

Here are some considerations for Dynamic Delivery and forwarded messages:

- If the forwarded recipient is protected by a Safe Attachments policy that uses the Dynamic Delivery option, then the recipient sees the placeholder, with the ability to preview compatible files.
- If the forwarded recipient is not protected by a Safe Attachments policy, the message and attachments will be delivered without any Safe Attachments scanning or attachment placeholders.

There are scenarios where Dynamic Delivery is unable to replace attachments in messages. These scenarios include:

- Messages in public folders.
- Messages that are routed out of and then back into a user's mailbox using custom rules.
- Messages that are moved (automatically or manually) out of cloud mailboxes to other locations, including archive folders.
- Inbox rules move the message out of the Inbox into a different folder.
- Deleted messages.
- The user's mailbox search folder is in an error state.
- Exchange Online organizations where Exclaimer is enabled. To resolve this issue, see [KB4014438](https://support.microsoft.com/help/4014438).
- [S/MIME)](/exchange/security-and-compliance/smime-exo/smime-exo) encrypted messages.
- You configured the Dynamic Delivery action in a Safe Attachments policy, but the recipient doesn't support Dynamic Delivery (for example, the recipient is a mailbox in an on-premises Exchange organization). However, [Safe Links in Microsoft Defender for Office 365](safe-links-policies-configure.md) is able to scan Office file attachments that contain URLs (if Safe Links scanning of support Office apps is turned on in the applicable Safe Links policy).

## Submitting files for malware analysis

- If you receive a file that you want to send to Microsoft for analysis, see [Submit malware and non-malware to Microsoft for analysis](submissions-submit-files-to-microsoft.md).
- If you receive an email message (with or without an attachment) that you want to submit to Microsoft for analysis, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).
