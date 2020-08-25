---
title: "ATP Safe Attachments"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: Admin
ms.date: 05/17/2019
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 6e13311e-92ae-495e-a619-56d770199170
ms.collection:
- M365-security-compliance
- seo-marvel-apr2020
description: "In this article, you'll learn about the ATP Safe Attachments feature for Office 365 and how to get the feature for your subscription."
---

# Safe Attachments in Office 365 ATP

Safe Attachments is a feature in [Office 365 Advanced Threat Protection (ATP)](office-365-atp.md) that checks attachments in inbound email messages. Safe Attachments protection for email messages is controlled by Safe Attachments policies. There is no default Safe Attachments policy, **so to get the protection of Safe Attachments, you need to create at least one Safe Attachments policy**. For instructions, see [Set up Safe Attachments policies in ATP](set-up-atp-safe-attachments-policies.md).

Here's how Safe Attachments works for attachments in email messages:

Lee receives an email message with an attachment. It is not obvious to Lee whether that attachment is safe or actually contains malware designed to steal Lee's user credentials. Several days ago, a security administrator in Lee's organization created and configured a Safe Attachments policy that applies to Lee. The email attachment is opened and tested in a virtual environment before Lee receives it. If the attachment is determined to be malicious, it will be removed automatically. If the attachment is determined to be safe, it will open as expected when Lee clicks on it.

> [!NOTE]
> The following features are associated with Safe Attachments policies in the Security & Compliance Center, but these settings are enabled or disabled globally, and don't require a Safe Attachments policy:
>
> - [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md).
>
> - [Safe Documents in Microsoft 365 E5](safe-docs.md)

Safe Attachments scanning takes place in the same region where your Microsoft 365 data resides. For more information about datacenter geography, see [Where is your data located?](https://products.office.com/where-is-your-data-located?geo=All)

## Safe Attachments policy settings

These are the important settings in Safe Attachments policies:

- **Unknown malware response**: This setting controls the action for unknown malware in email attachments. The available options are described in the following table:

  ****

  |Option|Effect|Use when you want to:|
  |---|---|---|
  |**Off**|Attachments aren't scanned for malware by Safe Attachments. Messages are still scanned for malware by [anti-malware protection in EOP](anti-malware-protection.md).|Turn scanning off for selected recipients. <br/><br/> Prevent unnecessary delays in routing internal mail. <br/><br/> **This option is not recommended for most users. You should only use this option to turn off Safe Attachments scanning for recipients who only get messages from trusted senders.**|
  |**Monitor**|Delivers messages with attachments and then tracks what happens with detected malware. <br/><br/> Delivery of safe messages might be delayed due to Safe Attachments scanning.|See where detected malware goes in your organization.|
  |**Block**|Prevents messages with detected malware attachments from being delivered. <br/><br/> Messages are [quarantined](manage-quarantined-messages-and-files.md) where only admins (not end-users) can review, release, or delete the messages. <br/><br/> Automatically blocks future instances of the messages and attachments. <br/><br/> Delivery of safe messages might be delayed due to Safe Attachments scanning.|Protects your organization from repeated attacks using the same malware attachments. <br/><br/> This is the recommended action in Standard and Strict [preset security policies](preset-security-policies.md).|
  |**Replace**|Removes detected malware attachments. <br/><br/> Notifies recipients that attachments have been removed. <br/><br/>  Messages are [quarantined](manage-quarantined-messages-and-files.md) where only admins (not end-users) can review, release, or delete the messages. <br/><br/> Delivery of safe messages might be delayed due to Safe Attachments scanning.|Raise visibility to recipients that attachments were removed because of detected malware.|
  |**Dynamic Delivery**|Delivers messages immediately, but replaces attachments with placeholders until Safe Attachments scanning is complete. <br/><br/> For details, see the [Dynamic Delivery](#dynamic-delivery) section later in this topic.|Avoid message delays while protecting recipients from malicious files <br/> <br/> Enable recipients to preview attachments in safe mode while scanning is taking place|
  |

- **Enable redirect**: For **Block**, **Monitor**, or **Replace** actions, send the attachments to the specified internal or external email address for analysis and investigation.

- **Apply the above selection if malware scanning for attachments times out or error occurs**: Always select this option if you select **Enabled redirect**. Otherwise, messages might be lost in the event of scanning time outs or errors.

- **Recipient filters**: You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:

  - **The recipient is**
  - **The recipient domain is**
  - **The recipient is a member of**

  You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Priority**: If you create multiple custom anti-malware policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied.

  For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

### Dynamic Delivery

Dynamic Delivery eliminates email delays by sending the body of an email message through to the recipient with a placeholder for each email attachment. The placeholder remains until a copy of the attachment is scanned and determined to be safe by Safe Attachments scanning.

Dynamic delivery works only for Exchange Online mailboxes.

As each attachment is scanned and determined to be safe, it's available to open or download in the message. If an attachment is determined to be malicious, the message is [quarantined](manage-quarantined-messages-and-files.md) where only admins (not end-users) can review, release, or delete the messages.

Most PDFs and Office documents can be previewed in safe mode while Safe Attachments scanning is underway. If an attachment is not compatible with the Dynamic Delivery previewer, email recipients see a placeholder for the attachment until Safe Attachments scanning is complete.

If you're using a mobile device, and PDFs aren't rendering in the Dynamic Delivery previewer on your mobile device, try opening the message in Outlook on the web (formerly known as Outlook Web App) using your mobile browser.

Considerations for message forwarding:

- If the forwarded recipient is covered by a Safe Attachments policy that uses the Dynamic Delivery option, then the recipient sees the placeholder, with the ability to preview compatible files.
- If the forwarded recipient is not covered by a Safe Attachments policy, the message and attachments will be delivered without any Safe Attachments scanning or attachment placeholders.

## Scenarios where Safe Attachments doesn't scan messages

There are scenarios where Safe Attachments is unable to scan messages. These scenarios are described in the following list:

- Messages in public folders.

- Messages that are routed out of and then back into a user's mailbox using custom rules.

- Messages that are moved (automatically or manually) out of cloud mailboxes to other locations, including archive folders.

- Deleted messages.

- The user's mailbox search folder is in an error state.

- Exchange Online organization where Exclaimer is enabled. To resolve this, see [KB4014438](https://support.microsoft.com/help/4014438).

- [S/MIME)](s-mime-for-message-signing-and-encryption.md) encrypted messages.

- You configured a Safe Attachments policy for Dynamic Delivery, but Dynamic Delivery isn't supported for the recipient (for example, a mailbox in an on-premises Exchange organization). However, [Safe Links](set-up-atp-safe-links-policies.md) is able to scan Office file attachments that contain URLs (depending on how the Safe Links policies are configured).

## How to know if ATP Safe Attachments protection is in place

After you have [defined (or reviewed) your ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md), one good way to see how the service is working is by [viewing reports for Advanced Threat Protection](view-reports-for-atp.md).

The following table describes some example scenarios. In all of these cases, we assume the organization has a Microsoft 365 subscription that includes Advanced Threat Protection.

****

|Example scenario|Does ATP Safe Attachments protection apply in this case?|
|---|---|
|Pat's organization has Office 365 E5, but no one has defined any policies for ATP Safe Attachments yet.|No. Although the feature is available, at least one ATP Safe Attachments policy must be defined in order for ATP Safe Attachments protection to be in place.|
|Lee is an employee in the sales department at Contoso. Lee's organization has an ATP Safe Attachments policy in place that applies to finance employees only.|No. In this case, finance employees would have ATP Safe Attachments protection, but other employees, including the sales department, would not until policies that include those groups are defined.|
|Yesterday, an administrator at Jean's organization set up an ATP Safe Attachments policy that applies to all employees. Earlier today, Jean received an email message that includes an attachment.|Yes. In this example, Jean has a license for Advanced Threat Protection, and an ATP Safe Attachments policy that includes Jean has been defined. It typically takes about 30 minutes for a new policy to take effect across datacenters; since a day has passed in this case, the policy should be in effect.|
|Chris's organization has Office 365 E5 with ATP Safe Attachments policies in place for everyone in the organization. Chris receives an email that has an attachment, and forwards the message to others who are outside the organization.|ATP Safe Attachments protection is in place for messages that Chris receives. If the recipients' organizations also have ATP Safe Attachments policies in place, then the message that Chris forwards would be subject to those policies when the forwarded message arrives.|
|Jamie's organization has ATP Safe Attachments policies in place, and [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md) has been turned on. Jamie assumes that every file in SharePoint Online has been scanned and is safe to open or download.|ATP Safe Attachments protection is in place according to the policies that are defined; however, this does not mean that every single file in SharePoint Online, OneDrive for Business, or Microsoft Teams is scanned. (To learn more, see [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md).)|
|

## Submitting files for malware analysis

- If you receive a file that you want to ask Microsoft to analyze, visit [Submit a file for malware analysis](https://aka.ms/wdsi/submit).

- If you receive an email message (with or without an attachment) that you want to submit to Microsoft for analysis, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).
