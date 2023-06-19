---
title: What's the difference between junk email and bulk email?
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 8079f193-1b40-4081-9e5d-d0e50dfbcc59
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the differences between junk email (spam) and bulk email (gray mail) in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# What's the difference between junk email and bulk email in EOP?

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, customers sometimes ask: "What's the difference between junk email and bulk email?" This article explains the difference and describes the controls that are available in EOP.

- **Junk email** is spam, which is an unsolicited and universally unwanted message (when identified correctly). EOP rejects spam based on the reputation of the source email server. If a message passes source IP inspection, it continues through spam filtering. If the message is classified as **Spam** or **High confidence spam** by spam filtering, what happens to the message depends on the verdict and the anti-spam policy that detected the message:
  - **Spam**:
    - **Default anti-spam policy, new anti-spam policies, and [Standard preset security policy](preset-security-policies.md)**: Deliver the message to recipient Junk Email folders.
    - **Strict preset security policy**: [Quarantine the message](quarantine-end-user.md).
  - **High confidence spam**:
    - **Default anti-spam policy and new anti-spam policies**: Deliver the message to recipient Junk Email folders.
    - **Standard and Strict preset security policies**: Quarantine the message.

  In the default anti-spam policy and in new anti-spam policies, you can configure the action to take on spam filtering verdicts. For instructions, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

  If you disagree with the spam filtering verdict, you can report messages as spam or good to Microsoft in several ways, as described in [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

- **Bulk email** (also known as _gray mail_), is more difficult to classify. Whereas spam is a constant threat, bulk email is often one-time advertisements or marketing messages. Some users want bulk email messages (and in fact, they have deliberately signed up to receive them), while other users consider bulk email to be spam. For example, some users want to receive advertising messages from the Contoso Corporation or invitations to an upcoming conference on cybersecurity, while other users consider these same messages to be spam.

  For more information about how bulk email is identified, see [Bulk complaint level (BCL) in EOP](anti-spam-bulk-complaint-level-bcl-about.md).

## How to manage bulk email

Because of the mixed reaction to bulk email, there isn't universal guidance that applies to every organization.

Anti-spam policies have a default BCL threshold that's used to identify bulk email as spam, and a specific action to take on those bulk messages. For more information, see the following articles:

- [Bulk complaint level (BCL) in EOP](anti-spam-bulk-complaint-level-bcl-about.md)
- [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).
- [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings)

Another option that's easy to overlook: if a user complains about receiving bulk email, but the messages are from reputable senders that pass spam filtering in EOP, have the user check for an unsubscribe option in the bulk email message.

## How to tune bulk email

As of September 2022, Microsoft Defender for Office 365 Plan 2 customers can access BCL from [advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview). This feature allows admins to look at all bulk senders who sent mail to their organization, their corresponding BCL values, and the amount of email that was received. You can drill down into the bulk senders by using other columns in **EmailEvents** table in the **Email & collaboration** schema. For more information, see [EmailEvents](/microsoft-365/security/defender/advanced-hunting-emailevents-table).

For example, if Contoso has set their current bulk threshold to 7 in anti-spam policies, Contoso recipients receive email from all senders in their Inbox if the BCL value is 7 or less. Admins can run the following query to get a list of all bulk senders in the organization:

```console
EmailEvents
| where BulkComplaintLevel >= 1 and Timestamp > datetime(2022-09-XXT00:00:00Z)
| summarize count() by SenderMailFromAddress, BulkComplaintLevel
```

This query allows admins to identify wanted and unwanted senders. If a bulk sender has a BCL score that's less than the bulk threshold, admins can [report the sender's messages to Microsoft for analysis](submissions-admin.md#report-good-email-to-microsoft). This action also adds the sender as an allow entry in the Tenant Allow/Block List.

Organizations without Defender for Office 365 Plan 2 can try the features in Microsoft 365 Defender for Office 365 Plan 2 for free. Use the 90-day Defender for Office 365 evaluation at <https://security.microsoft.com/atpEvaluation>. Learn about who can sign up and trial terms [here](try-microsoft-defender-for-office-365.md) or you can use the [Threat protection status report](reports-email-security.md#threat-protection-status-report) to identify wanted and unwanted bulk senders:

1. Open the **Threat protection status** report at one of the following URLs:
   - **EOP**: <https://security.microsoft.com/reports/TPSAggregateReport>
   - **Defender for Office 365**: <https://security.microsoft.com/reports/TPSAggregateReportATP>

2. Select **View data by Email \> Spam** and **Chart breakdown by Detection Technology**.

3. Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. In the **Filters** flyout that opens, select only **Bulk** in the **Detection** section.

   Use the **Bulk complaint level** slider to filter the bulk detections by BCL value.

   When you're finished in the **Filters** flyout, select **Apply**.

4. In Defender for Office 365 Plan 2, select a bulk message to investigate, and then select email entity to learn more about the sender.

5. After you identify wanted and unwanted bulk senders, adjust the bulk threshold in the default anti-spam policy and in custom anti-spam policies. If some bulk senders don't fit within your bulk threshold, [report the messages to Microsoft for analysis](submissions-admin.md#report-good-email-to-microsoft).

Admins can follow the [recommended bulk threshold values](recommended-settings-for-eop-and-office365.md#anti-spam-anti-malware-and-anti-phishing-protection-in-eop) or choose a bulk threshold value that suits the needs of their organization.
