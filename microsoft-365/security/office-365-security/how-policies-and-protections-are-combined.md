---
title: How policies and protections are combined when mail is red-flagged
description: Describes what policies and protections apply when e-mail encounters multiple protections and is scanned by multiple forms of detection. What policies apply, and what actions to take, when email is marked malware, spam, high confidence spam, phishing, and bulk by EOP, and/or ATP.
keywords: security, malware, Microsoft 365, M365, security center, ATP, Microsoft Defender ATP, Office 365 ATP, Azure ATP
ms.author: tracyp
author: MSFTTracyp
manager: dansimp
ms.date: 03/26/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
---

# What policy applies when multiple protection methods and detection scans run on your email

Potentially, your incoming mail may be flagged by multiple forms of protection (for example both EOP *and* ATP), and multiple detection scans (such as spam *and* phishing). This is possible because there are ATP Anti-phishing policies for ATP customers, and EOP Anti-phishing policies for EOP customers. This also means the message may navigate multiple detection scans for malware, phishing, and user-impersonation, for example. Given all this activity, there may be some confusion as to which policy applies.

In general, a policy applied to a message is identified in the **X-Forefront-Antispam-Report** header in the **CAT (Category)** property. If you have multiple Anti-phishing policies, the one at the highest priority will apply.

The Policies below apply to _all organizations_.

|Priority |Policy  |Category  |Where Managed |
|---------|---------|---------|---------|
|1     | Malware      | MALW      | Malware policy   |
|2     | Phishing     | PHSH     | Configure your spam filter policies     |
|3     | High confidence spam      | HSPM        | Configure your spam filter policies        |
|4     | Spoofing        | SPOOF        | Anti-phishing policy, spoof intelligence        |
|5     | Spam         | SPM         | Configure your spam filter policies         |
|6     | Bulk         | BULK        | Configure your spam filter policies         |

In addition, these policies apply to _organizations with ATP_.

|Priority |Policy  |Category  |Where Managed |
|---------|---------|---------|---------|
|7     | Domain Impersonation         | DIMP         | Set up Office 365 ATP anti-phishing and anti-phishing policies        |
|8     | User Impersonation        | UIMP         | Set up Office 365 ATP anti-phishing and anti-phishing policies         |

As an example, if you have two policies with their respective priorities:

|Policy  |Priority  |User/Domain Impersonation  |Anti-spoofing  |
|---------|---------|---------|---------|
|A     | 1        | On        |Off         |
|B     | 2        | Off        | On        |

If a message comes in identified as both _user impersonation_ and _spoofing_ (see anti-spoofing in the table above), and the same set of users scoped to policy A is scoped to policy B, then the message is flagged and treated as a _spoof_. However, no action is applied because though spoof runs at a higher priority (4) than User Impersonation (8), Anti-spoofing is turned off.

Keep in mind, administrators can create a prioritized list of policies (see the priority field above), but only one policy will run and apply its actions. That means a user in both policy A and B will have the higher priority policy (A is #1) run, and the message will not filter through any further policies. If the anti-spoofiing is off, no actions will be run.

Because there is a potential to have many groups of users in many policies, it may behoove administrators to consider using fewer policies with more capabilities. It is also important to be certain that all users are covered by a comprehensive policy.

To make other types of phishing policy apply, you will need to adjust the settings of who the various policies apply to.



