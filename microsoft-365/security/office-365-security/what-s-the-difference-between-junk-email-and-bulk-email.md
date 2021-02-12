---
title: What&apos;s the difference between junk email and bulk email?
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual

localization_priority: Normal
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

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](https://go.microsoft.com/fwlink/?linkid=2148611)
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

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
