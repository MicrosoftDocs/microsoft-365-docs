---
title: "Safety tips in email messages in Office 365"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 10/6/2016
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- BCS160
ms.assetid: fb4f8e49-0468-4be2-8fa6-99501f1ad9d5
ms.collection:
- M365-security-compliance
description: "Introduces safety tips for email messages filtered by the EOP and Office 365 spam filter."
---

# Safety tips in email messages in Office 365

Exchange Online Protection (EOP) and Office 365 protect you with spam, phishing, and malware prevention. Today, some of these attacks are so well crafted that they look legitimate. Sending messages to the Junk Email folder isn't always enough. Now, when you check your email in Outlook or Outlook on the web, EOP automatically checks the sender and adds a safety tip to the top of the email.

The safety tip—a color-coded message—will warn you about potentially harmful messages. Most messages in your inbox won't have a safety tip. You'll only see them when EOP and Office 365 has information you need to help prevent spam, phishing, and malware attacks. If safety tips do show up on in your inbox, you can use the following examples to learn more about each type of safety tip.

- Suspicious mail (red safety tip).

    ![Screenshot that shows a red safety tip.](../../media/5078a0be-e556-44a1-b169-09d780d26898.png)

    A red safety tip in an email means that the message you received contains something suspicious, such as a phishing scam. We recommend that you delete this kind of email message from your inbox without opening it.

- Spam (yellow safety tip).

    ![Screenshot that shows a yellow safety tip.](../../media/793c9265-ea44-48fd-a98f-804fadd4163b.png)

    A yellow safety tip in an email means that the message has been marked as spam. If you don't recognize and trust the sender of the message, don't download any attachments or pictures and don't click any links in the message. In Outlook on the web, you can click **It's not spam** in the yellow bar of a junk mail item to move the message to your inbox. If the yellow safety tip appears on a message that was delivered to your inbox, it's probably there because you've disabled moving spam to your Junk Email folder.

- Safe mail (green safety tip).

    ![Screenshot that shows a green safety tip.](../../media/acbc11d0-f626-4848-9fbf-66eeeda3f803.png)

    In addition to unsafe messages, we'll also tell you about valid messages from senders we trust with a green safety tip. A green safety tip in an email means that we checked the sender of the message and verified that it's safe. Microsoft maintains this list of trusted senders which includes financial organizations and others that are frequently spoofed or impersonated.

- Unfiltered mail (gray safety tip).

    ![Screenshot that shows a gray safety tip.](../../media/c4d0cf8f-08e9-4c84-beee-1d9e0b022e0a.png)

    We'll also tell you when we skipped checking a mail because it's from a sender you trust on your Safe Senders list or if a mail flow rule exists to bypass filtering.

    The gray safety tip also shows up when external images are blocked, that is, the message is in your inbox and doesn't appear to be spam, but contains external images that you haven't opted to download.

## Working with safety tips

Safety tips are always enabled for Outlook on the web, even though not every message will receive one. Office 365 admins can turn safety tips off for other email clients such as Outlook. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

If you disagree with how EOP categorized a message (that is, the message is not spam or it should have been marked as spam), you can submit the messages to Microsoft for analysis to help make your experience better. For instructions, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md). You can also click on the Feedback link in the safety tip to submit comments directly to Microsoft to help us improve.
