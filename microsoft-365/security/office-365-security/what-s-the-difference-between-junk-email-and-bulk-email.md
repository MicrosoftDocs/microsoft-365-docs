---
title: What's the difference between junk email and bulk email?
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 8079f193-1b40-4081-9e5d-d0e50dfbcc59
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the differences between junk email (spam) and bulk email (gray mail) in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# What's the difference between junk email and bulk email in EOP?

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, customers sometimes ask: "what's the difference between junk email and bulk email?" This topic explains the difference and describes the controls that are available in EOP.

- **Junk email** is spam, which are unsolicited and universally unwanted messages (when identified correctly). By default, the EOP rejects spam based on the reputation of the source email server. If a message passes source IP inspection, it's sent to spam filtering. If the message is classified as spam by spam filtering, the message is (by default) delivered to the intended recipients and moved to their Junk Email folder.

  - You can configure the actions to take on spam filtering verdicts. For instructions, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

  - If you disagree with the spam filtering verdict, you can report messages that you consider to be spam or non-spam to Microsoft in several ways, as described in [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

- **Bulk email** (also known as _gray mail_), is more difficult to classify. Whereas spam is a constant threat, bulk email is often one-time advertisements or marketing messages. Some users want bulk email messages (and in fact, they have deliberately signed up to receive them), while other users consider bulk email to be spam. For example, some users want to receive advertising messages from the Contoso Corporation or invitations to an upcoming conference on cyber security, while other users consider these same messages to be spam.

  For more information about how bulk email is identified, see [Bulk complaint level (BCL) in EOP](bulk-complaint-level-values.md).

## How to manage bulk email

Because of the mixed reaction to bulk email, there isn't universal guidance that applies to every organization.

Anti-spam polices have a default BCL threshold that's used to identify bulk email as spam. Admins can increase or decrease the threshold. For more information, see the following topics:

How to Tune Bulk:

From Septemeber Microsoft Defender for Office 365 Plan 2/E5 customers can access BCL from advanced hunting which will allow admins to look at all the bulk senders in their tenant, along with corresponding BCL values and volume of emails received. You can drill down into the bulk senders by using other columns in ‘EmailEvents’ table under ‘Email & collaboration’ schema. For more details, refer to the schema over here: EmailEvents

If Contoso tenant has set their current bulk threshold to 7 in AntiSpam policy, Contoso will receive emails from all senders with BCL < 7 in their inbox.  Admins can run the query below to get list of all bulk senders in the tenant. This will allow admins to identify wanted and unwanted senders. If any bulk sender admins interact with has a BCL score that doesn’t fit with tenant’s bulk threshold, submit the sender’s messages and add the sender to the Tenant Allow and Block List (TABL) list.

EmailEvents
| where BulkComplaintLevel >= 1 and Timestamp > datetime(2022-09-XXT00:00:00Z)
| summarize count() by SenderMailFromAddress, BulkComplaintLevel

For example, Microsoft assigns a BCL score of 7 to one of tenant’s partner senders, sender6@fabrikam.com, and marks the mail as bulk. Since Contoso needs that message, Contoso should add sender6@fabrikam.com to Tenant Allow and Block List (TABL) and also submit the sender’s messages to Microsoft for Microsoft for evaluation
 

Other SKU Customers can use the Threat protection status (TPS) report to identify wanted and unwanted bulk senders, or to try the features in Microsoft 365 Defender for Office 365 Plan 2 for free. Use the 90-day Defender for Office 365 trial at the Microsoft 365 Defender portal trials hub. Learn about who can sign up and trial terms here.

Step 1: Go to Threat protection status report and filter by View data by Email > Spam.
 
Step 2: Filter for Bulk emails, select an email to investigate and click on email entity to learn more about the sender. (Note: Email Entity is only available for P2SKU customers)
 
 
 

Step 3: Once you have identified wanted and unwanted senders, adjust the bulk threshold to your desired level and if there are bulk senders you interact with that have a BCL score that doesn’t fit tenant’s bulk threshold. Submit the messages of the sender and add the sender to TABL list.

Note: Based on sensitivity of the tenant to bulk emails, tenant admins can either choose the best bulk threshold that suits the admins needs, or, ideally, follow the MDO recommendations.


- [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

- [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings)

Another option that's easy to overlook: if a user complains about receiving bulk email, but the messages are from reputable senders that pass spam filtering in EOP, have the user check for a unsubscribe option in the bulk email message.
