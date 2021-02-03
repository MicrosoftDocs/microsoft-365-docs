---
title: Configuring and controlling external email forwarding, Automatic forwarding, 5.7.520 Access Denied, disable external forwarding, Your administrator has disabled external forwarding, outbound anti-spam policy
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: overview

localization_priority: Normal
ms.assetid: 
ms.custom: 
  - seo-marvel-apr2020
description: .
ms.technology: mdo
ms.prod: m365-security
---

# Control automatic external email forwarding in Microsoft 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

As an admin, you might have company requirements to restrict or control automatically forwarded messages to external recipients (recipients outside of your organization). Email forwarding can be a useful feature, but can also pose a security risk due to the potential disclosure of information. Attackers might use this information to attack your organization or partners.

The following types of automatic forwarding are available in Microsoft 365:

- Users can configure [Inbox rules](https://support.microsoft.com/office/c24f5dea-9465-4df4-ad17-a50704d66c59) to automatically forward messages to external senders (deliberately or as a result of a compromised account).

- Admins can configure [mailbox forwarding](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding) (also known as _SMTP forwarding_) to automatically forward messages to external recipients. The admin can choose whether to simply forward messages, or keep copies of forwarded messages in the mailbox.

You can use outbound spam filter policies to control automatic forwarding to external recipients. Three settings are available:

- **Automatic**: Automatic external forwarding is blocked. Internal automatic forwarding of messages will continue to work. This is the default setting.
- **On**: Automatic external forwarding is allowed and not restricted.
- **Off**: Automatic external forwarding is disabled and will result in a non-delivery report (also known as an NDR or bounce message) to the sender.

For instructions on how to configure these settings, see [Configure outbound spam filtering in EOP](configure-the-outbound-spam-policy.md).

> [!NOTE]
>
> - Disabling automatic forwarding disables any Inbox rules (users) or mailbox forwarding (admins) that redirect messages to external addresses.
>
> - Automatic forwarding of messages between internal users isn't affected by the settings in outbound spam filter policies.
>
> - You can see information about users that are automatically forwarding messages to external recipients in the [Auto-forwarded messages report](mfi-auto-forwarded-messages-report.md).

## How the outbound spam filter policy settings work with other automatic email forwarding controls

As an admin, you might have already configured other controls to allow or block automatic email forwarding. For example:

- [Remote domains](https://docs.microsoft.com/exchange/mail-flow-best-practices/remote-domains/remote-domains) to allow or block automatic email forwarding to some or all external domains.

- Conditions and actions in Exchange [mail flow rules](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) to detect and block automatically forwarded messages to external recipients.

Remote domain settings and mail flow rules are independent of the settings in outbound spam filter policies. For example:

- You allow automatic forwarding for a remote domain, but you block automatic forwarding in outbound spam filter policies. In this example, automatically forwarded messages are blocked.

- You allow automatic forwarding in outbound spam filter policies, but you use mail flow rules or remote domain settings to block automatically forwarded email. In this example, the mail flow rules or remote domain settings will block automatically forwarded messages.

This feature independence allows you to (for example) allow automatic forwarding in outbound spam filter policies, but use remote domains to control the external domains that users can forward messages to.

## The blocked email forwarding message

When a message is detected as automatically forwarded, and the organizational policy *blocks* that activity, the message is returned to the sender in an NDR that contains the following information:

`5.7.520 Access denied, Your organization does not allow external forwarding. Please contact your administrator for further assistance. AS(7555)`
