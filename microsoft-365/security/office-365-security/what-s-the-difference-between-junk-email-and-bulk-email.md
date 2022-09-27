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
ms.subservice: mdo
ms.service: microsoft-365-security
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

- [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).
- [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings)

Another option that's easy to overlook: if a user complains about receiving bulk email, but the messages are from reputable senders that pass spam filtering in EOP, have the user check for a unsubscribe option in the bulk email message.

## How to tune bulk email

In September 2022, Microsoft Defender for Office 365 Plan 2 customers can access BCL from [advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview). This feature allows admins to look at all bulk senders who sent mail to their organization, along with the corresponding BCL values and the email volume received. You can drill down into the bulk senders by using other columns in **EmailEvents** table in the **Email & collaboration** schema. For more information, see [EmailEvents](/microsoft-365/security/defender/advanced-hunting-emailevents-table).

For example, if Contoso has set their current bulk threshold to 7 in anti-spam policies, Contoso recipients will receive email from all senders with BCL \< 7 in their Inbox. Admins can run the following query to get a list of all bulk senders in the organization:

```console
EmailEvents
| where BulkComplaintLevel >= 1 and Timestamp > datetime(2022-09-XXT00:00:00Z)
| summarize count() by SenderMailFromAddress, BulkComplaintLevel
```

This query allows admins to identify wanted and unwanted senders. If a bulk sender has a BCL score that doesn't meet the bulk threshold, admins can [submit the sender’s messages to Microsoft for analysis](allow-block-email-spoof.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-domains-and-email-addresses-in-the-submissions-portal), which adds the sender as an allow entry to the Tenant Allow/Block List.

Organizations without Defender for Office 365 Plan 2 can try the features in Microsoft 365 Defender for Office 365 Plan 2 for free. Use the 90-day Defender for Office 365 evaluation at <https://security.microsoft.com/atpEvaluation>. Learn about who can sign up and trial terms [here](try-microsoft-defender-for-office-365.md) or you can use the [Threat protection status report](view-email-security-reports.md#threat-protection-status-report) to identify wanted and unwanted bulk senders:

1. In the Threat protection status report, select **View data by Email \> Spam**. To go directly to the report, open one of the following URLs:

   - EOP: <https://security.microsoft.com/reports/TPSAggregateReport>
   - Defender for Office 365: <https://security.microsoft.com/reports/TPSAggregateReportATP>

2. Filter for Bulk email, select an email to investigate and click on email entity to learn more about the sender. Email entity is available only for Defender for Office 365 Plan 2 customers.

3. Once you have identified wanted and unwanted senders, adjust the bulk threshold to your desired level. If there are bulk senders with BCL score that doesn't fit within your bulk threshold, [submit the messages to Microsoft for analysis](allow-block-email-spoof.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-domains-and-email-addresses-in-the-submissions-portal), which adds the sender as an allow entry to the Tenant Allow/Block List.

Admins can follow the [recommended bulk threshold values](/microsoft-365/security/office-365-security/recommended-settings-for-eop-and-office365.md#anti-spam-anti-malware-and-anti-phishing-protection-in-eop) bulk threshold values or choose a bulk threshold value that suits the needs of their organization.
