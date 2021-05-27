---
title: Admin review for reported messages
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: Admin
ms.topic: how-to

localization_priority: Normal
ms.collection:
  - M365-security-compliance
description: Learn how to review messages that are reported and give feedback to your users. 
ms.technology: mdo
ms.prod: m365-security
---

# Admin review for reported messages

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with Exchange Online mailboxes and Microsoft Defender for Office 365, admins can now send templated messages back to end users after they review reported messages. This can be customized for your organization and based on your admin’s verdict as well.

This feature is designed to give feedback to your users but does not change the verdicts of messages in the system. To help Microsoft update and improve its filters, you will need to submit messages for analysis using [Admin submission](admin-submission.md).

You will only be able to mark and notify users of review results if the message was reported as a [false positives or false negatives](report-false-positives-and-false-negatives.md).

## What do you need to know before you begin?

- Open the [Security & Compliance Center](https://protection.office.com/), and go to the [User submissions page](https://protection.office.com/userSubmissionsReportMessage.). 
- To modify the configuration for User submissions, you need to be a member of one of the following role groups:
    - Organization Management or Security Administrator in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - Organization Management in [Exchange Online](https://docs.microsoft.com/en-us/Exchange/permissions-exo/permissions-exo).
- You'll also need access to the Exchange Online PowerShell. If the account that you're trying to use doesn't have access to Exchange Online PowerShell, you'll receive an error that says *Specify an email address in your domain*. 
- For more information about enabling or disabling access to Exchange Online PowerShell, see the following topics:
    - [Enable or disable access to Exchange Online PowerShell](https://docs.microsoft.com/en-us/powershell/exchange/disable-access-to-exchange-online-powershell?view=exchange-ps)
    - [Client Access Rules in Exchange Online](https://docs.microsoft.com/en-us/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules)

## Configure the messages used to notify users

1. In the Security & Compliance Center, go to **Threat management** > **Policy** > **User submissions**.
2. In the User submissions page, under **Email notifications for admin review results**, enable the **Email results of reported message** by moving the radio button to **On**.
3. If you want to specify the sender display name, check the box for **Specify a sender display name**, and enter in the name you wish to use. This will be the email address that will be seen in Outlook, but the actual message will be coming from Submissions@messaging.microsoft.com.
4. If you want to customize any of the templates, click **Customize email notification**. In this flyout, you will be able to customize only the following:
    - Phishing
    - Junk
    - No threats found
    - Awareness training
    - Footer
5. When you're finished, click **Save**. To clear these values, click **Restore back** on the User submissions page.



