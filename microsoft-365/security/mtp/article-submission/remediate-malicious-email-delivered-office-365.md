---
title: Remediate malicious email that was delivered in Office 365
author:  
ms.author: tracyp
manager: 
ms.topic: article
ms.service: Microsoft Threat Protection
audience: admin
f1.keywords:
- NOCSH
localization_priority: Normal
MS.collection: 
search.appverid: MET150
description: Threat remediation
appliesto: 
- Microsoft Threat Protection
---

# Remediate malicious email that was delivered in Office 365

Remediation means taking a proscribed action against a threat. Malicious mails sent into your organization may be cleaned up either by the system, through ZAP (Zero-hour Auto-Purge), or by the security teams through remediation actions like move to inbox, move to junk, move to deleted items folder, soft delete, or hard delete. Office Advanced Threat Protection (Office ATP) P2 / E5 offers security operations teams the ability to mediate threats in emails and collaboration issues through manual hunting and automated investigations.

> [!NOTE]
> For security teams to remediate emails, they need to have search and purge role assigned to them. Role assignment is done through permissions in security and compliance center. 

# What you need to know before you begin

To perform certain actions, such as viewing message headers or downloading email message content, you must have a new role called *Preview* added to another appropriate role group. The following table clarifies required roles and permissions.

|Activity  |Role group |Preview role needed?  |
|---------|---------|---------|
|Use Threat Explorer (and real-time detections) to analyze threats ​    |Global Administrator <br> Security Administrator <br> Security Reader     | No   |
|Use Threat Explorer (and real-time detections) to view headers for email messages ​as well as preview and download quarantined email messages    |Global Administrator <br> Security Administrator <br>Security Reader   |       No  |
|Use Threat Explorer to view headers and download email messages delivered to mailboxes     |Global Administrator <br>Security Administrator <br> Security Reader <br> Preview   |   Yes      |

> [!NOTE]
> *Preview* is a role and not a role group; the Preview role must be added to an existing role group for Office 365. The Global Administrator role is assigned the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), and the Security Administrator and Security Reader roles are assigned in the Security & Compliance Center ([https://protection.office.com](https://protection.office.com)). To learn more about roles and permissions, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

> [!NOTE]
> Admins can take required actions on emails but to get their action approved, they must have the "Search and Purge" role assigned to them via Security and Compliance Center > Permissions.

## Setup

See 

## Manage

See https://microsoft-my.sharepoint-df.com/:w:/p/shubjain/EZrXgYtoFKpLszlKFeUrBVIBA__urRlQQ9EigAyBKyG5Xg?e=ALO9sA

## More info

See https://microsoft-my.sharepoint-df.com/:w:/p/shubjain/EZrXgYtoFKpLszlKFeUrBVIBA__urRlQQ9EigAyBKyG5Xg?e=ALO9sA
