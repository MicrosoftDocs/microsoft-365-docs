---
title: "Configuring and controlling external email forwarding, Automatic forwarding, 5.7.520 Access Denied, disable external forwarding, Your administrator has disabled external forwarding, outbound anti-spam policy"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 07/01/2020
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 
ms.custom:
- seo-marvel-apr2020
description: "."
---

# Configuring external email forwarding in Office 365

External forwarding is controlled by the *outbound anti-spam policy* and scoped to users based on the configured setting. Currently 3 settings are supported:

- **Automatic** – In this mode the system is responsible for deciding if a forwarded message is allowed or not.  This is the default mode and in this mode the system will block automatic external forwarding.

- **On** – Automatic external forwarding is allowed and not restricted.

- **Off** – Automatic external forwarding is disabled and will result in a Non-delivery report (NDR) to the end user.

See [Configure outbound spam filtering in EOP](https://docs.microsoft.com/microsoft-365/security/office-365-security/configure-the-outbound-spam-policy?view=o365-worldwide) for more information on how to configure these settings.

## Controlling external email forwarding

As an admin of an organization you may have company requirements to restrict or control who is able to automatically forward emails using inbox rules, or SMTP forwarding, outside of the organization. Email forwarding can be a useful feature, but can also pose a risk through the potential disclosure of information, even by providing information to attackers that can be leveraged to attack the organization or its partners.

Office 365 doesn't allow automatic external forwarding by either Inbox rules or mail box configuration, which provides a secure default policy. However, the admin can modify these settings for all, or some, users in the organization. Forwarding messages between internal users isn't affected by such a modification.

> [!NOTE]
> Disabling automatic forwarding to external addresses in Office 365 is being rolled out in phases with details communicated via [Message Center](https://admin.microsoft.com/Adminportal/Home?source=applauncher&ref=/MessageCenter) posts. To help administrators prepare for these changes have them modify policies ahead of time to ensure there is no disruption to their users.

More information about users that are using automatic forwarding (inbox rules or SMTP forwarding) in your organization can be found in the [auto-forwarded messages report](https://docs.microsoft.com/microsoft-365/security/office-365-security/mfi-auto-forwarded-messages-report?view=o365-worldwide).

## How does this policy work with other automatic forwarding controls
As an admin you can may already have other types of controls in place such blocking automatic forwarding in [remote domains](https://docs.microsoft.com/en-us/exchange/mail-flow-best-practices/remote-domains/remote-domains) or by the use of an Exchange Transport Rule (ETR). Both of these controls are independent of this particular feature, for example if you allow automatic forwarding for a remote domain, but block automatic forwarding via the outbound spam policy the result will be that the automatically forwarded message is blocked. Similarly if you allow automatic forwarding in the outbound spam policy but block it in an ETR or remote domain then the message will be blocked by either of these controls. This allows you to, for example, allow automatic forwarding in the outbound spam policy and utilize remote domains to control the domains that users can automatic forward messages to.


## The blocked email forwarding message

When a message is detected as automatically forwarded and the organizational policy *blocks* that activity a **Non-delivery report (NDR)** will be generated back to the end user. The report will indicate the message was not delivered. The NDR will have the following format: 

`5.7.520 Access Denied – Your administrator has disabled external forwarding – AS(XXXX)`
