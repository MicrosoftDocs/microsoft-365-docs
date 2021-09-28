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

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

As an admin, you might have company requirements to restrict or control automatically forwarded messages to external recipients (recipients outside of your organization). Email forwarding can be a useful, but can also pose a security risk due to the potential disclosure of information. Attackers might use this information to attack your organization or partners.

The following types of automatic forwarding are available in Microsoft 365:

- Users can configure [Inbox rules](https://support.microsoft.com/office/c24f5dea-9465-4df4-ad17-a50704d66c59) to automatically forward messages to external senders (deliberately or as a result of a compromised account).
- Admins can configure [mailbox forwarding](/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding) (also known as _SMTP forwarding_) to automatically forward messages to external recipients. The admin can choose whether to simply forward messages, or keep copies of forwarded messages in the mailbox.

> [!NOTE]
> Users with automatic forwarding from on-premises email systems through Microsoft 365 will be subject to the same policy controls as cloud mailboxes in an upcoming update. This update will be communicated via Message Center post.

You can use outbound spam filter policies to control automatic forwarding to external recipients. Three settings are available:

- **Automatic - System-controlled**: Automatic external forwarding is blocked. Internal automatic forwarding of messages will continue to work. This is the default setting.
- **On**: Automatic external forwarding is allowed and not restricted.
- **Off**: Automatic external forwarding is disabled and will result in a non-delivery report (also known as an NDR or bounce message) to the sender.

For instructions on how to configure these settings, see [Configure outbound spam filtering in EOP](configure-the-outbound-spam-policy.md).

> [!NOTE]
>
> - Disabling automatic forwarding disables any Inbox rules (users) or mailbox forwarding (admins) that redirect messages to external addresses.
>
> - Automatic forwarding of messages between internal users isn't affected by the settings in outbound spam filter policies.


## How the outbound spam filter policy settings work with other automatic email forwarding controls

As an admin, you might have already configured other controls to allow or block automatic email forwarding. For example:

- [Remote domains](/exchange/mail-flow-best-practices/remote-domains/remote-domains) to allow or block automatic email forwarding to some or all external domains.
- Conditions and actions in Exchange [mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) to detect and block automatically forwarded messages to external recipients.

Remote domain settings and mail flow rules are independent of the settings in outbound spam filter policies. For example:

- You allow automatic forwarding for a remote domain, but you block automatic forwarding in outbound spam filter policies. In this example, automatically forwarded messages are blocked.
- You allow automatic forwarding in outbound spam filter policies, but you use mail flow rules or remote domain settings to block automatically forwarded email. In this example, the mail flow rules or remote domain settings will block automatically forwarded messages.

This feature independence allows you to (for example) allow automatic forwarding in outbound spam filter policies, but use remote domains to control the external domains that users can forward messages to.

## How to find users that are automatically forwarding

You can see information about users that are automatically forwarding messages to external recipients in the **Auto-forwarded messages** report for cloud-based accounts. For on-premises users that automatically forward from their on-premises email system through Microsot 365, you need to create a mail flow rule to track these users. For instructions on how to create a mail flow rule, see [Use the EAC to create a mail flow rule](/exchange/security-and-compliance/mail-flow-rules/manage-mail-flow-rules#use-the-eac-to-create-a-mail-flow-rule).

The following information is required to create the mail flow rule in the Exchange admin center (EAC):

- **Apply this rule if** (condition): A **message header** \> **matches these text patterns**. Note you might need to click **More options** to see this option.
  - **Header name**: `X-MS-Exchange-Inbox-Rules-Loop`
  - **Header value**: `.`

  The condition looks like this: **'X-MS-Exchange-Inbox-Rules-Loop'** header matches **'.'**

  This condition will match any value for the header.

- (Optional) **Do the following** (action): You can configure an optional action. For example, add a header field and value to the message, but this action is not required.
- Set **Audit this rue with severity level** to the value **Low**, **Medium**, or **High**. This setting allows you to use the mail flow report to get details of users that are forwarding.

## Blocked email forwarding messages

When a message is detected as automatically forwarded, and the [outbound spam filter](configure-the-outbound-spam-policy.md) policy *blocks* that activity, the message is returned to the sender in an NDR that contains the following information:

`5.7.520 Access denied, Your organization does not allow external forwarding. Please contact your administrator for further assistance. AS(7555)`
