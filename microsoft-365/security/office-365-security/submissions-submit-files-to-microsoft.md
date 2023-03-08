---
title: Submit malware and non-malware to Microsoft for analysis
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid: 12eba50e-661d-44b8-ae94-a34bc47fb84d
ms.collection:
  - m365-security
  - tier1
description: Admins and end-users can learn about submitting undetected malware or mis-identified malware attachments to Microsoft for analysis.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 12/05/2022
---

# Submit malware, non-malware, and other suspicious files to Microsoft for analysis

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> If you're an admin in an organization with Exchange Online mailboxes, we recommend that you use the **Submissions** page in the Microsoft 365 Defender portal. For more information, see [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](submissions-admin.md).

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP includes anti-malware protection that's automatically enabled. For more information, see [Anti-malware protection in EOP](anti-malware-protection-about.md).

You've probably heard the following best practices for years:

- Avoid opening messages that look suspicious.
- Never open an attachment from someone you don't know.
- Avoid opening attachments in messages that urge you to open or click them.
- Avoid opening files downloaded from the internet unless they're from a verified source.
- Don't use anonymous USB drives.

But what can you do if you receive a message with a suspicious attachment or have a suspicious file on your system? Or what if you suspect that your computer or device was infected by an email attachment that made it past our filters or a file you downloaded from the internet? In these cases, you should submit the suspicious attachment or file to Microsoft. Conversely, if an attachment in an email message or file was incorrectly identified as malware or some other threat, you can submit that, too.

## What do you need to know before you begin?

- Messages with attachments that contain scripts or other malicious executables are considered malware, and you can use the procedures in this article to report them.

- Messages with links to malicious sites are considered spam. For more information about reporting spam and non-spam messages, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

- Files that block you from your accessing your system and demand money to open them are considered ransomware.

## Submit malware files to Microsoft

Organizations that have a Microsoft 365 Defender subscription, or Microsoft 365 Defender for Endpoint Plan 2 can submit files using the **Submissions** page in the Microsoft 365 Defender portal. For more information, see [Use admin submission for submitting files in Microsoft Defender for Endpoint](../defender-endpoint/admin-submissions-mde.md).

Or, you can go to the Microsoft Security Intelligence page at <https://www.microsoft.com/wdsi/filesubmission> to submit the file. To receive analysis updates, sign in or enter a valid email address. We recommend using your Microsoft work or school account.

After you've uploaded the file or files, note the **Submission ID** that's created for your sample submission (for example, `7c6c214b-17d4-4703-860b-7f1e9da03f7f`).

:::image type="content" source="../../media/EOP-Malware-Protection-Center.png" alt-text="The submission details in the Windows Defender Security Intelligence website" lightbox="../../media/EOP-Malware-Protection-Center.png":::

After we receive the sample, we'll investigate. If we determine that the sample file is malicious, we'll take corrective action to prevent the malware from going undetected.

If you continue receiving infected messages or attachments, then you should copy the message headers from the email message, and contact Microsoft Customer Service and Support for further assistance. Be sure to have your **Submission ID** ready as well.

## Submit non-malware files to Microsoft

Organizations that have a Microsoft 365 Defender Subscription or Microsoft 365 Defender for Endpoint Plan 2 can submit files using the **Submissions** page in the Microsoft 365 Defender portal. For more information, see [Use admin submission for submitting files in Microsoft Defender for Endpoint](../defender-endpoint/admin-submissions-mde.md).

Or, you can go to the Microsoft Security Intelligence page at <https://www.microsoft.com/wdsi/filesubmission> to submit the file. To receive analysis updates, sign in or enter a valid email address. We recommend using your Microsoft work or school account.

You can also submit a file that you believe was incorrectly identified as malware to the website. (Just select **No** for the question **Do you believe this file contains malware?**)

After we receive the sample, we'll investigate. If we determine that the sample file is clean, we'll take corrective action to prevent the file from being detected as malware.
