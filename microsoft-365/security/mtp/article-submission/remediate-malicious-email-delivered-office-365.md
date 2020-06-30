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

## Manual and automated remediation

**Manual hunting** takes place when security teams identify threats manually, using the search and filtering capabilities in Threat Explorer. Manual remediation on emails can be triggered through any email view (Malware, Phish, or All email) after finding a set of emails which need to be remediated.

[Manual hunting in Office 365 Threat Explorer by date.](../../media/tp-RemediationArticle1.png)

The selection of emails can be done in multiple ways through Threat Explorer: 

1. Choosing emails by hand: This means security operations teams can use filters in respective views and select a few emails from Threat Explorer that need to be remediated. The upper limit to selecting emails is one hundred (100). Security operations teams cannot pick more than hundred emails, manually. 

2. Query selection: Security operations teams can select an entire query by using the top “select all” button. The same query is shown in action center mail submission details as well. 

3. Query selection with exclusion: There may be times when security operations teams decide to remediate emails by both selecting an entire query and excluding a few emails from the query, manually. To do so, an admin can use “Select All” button and scroll down to exclude a few emails, manually. The maximum number of emails the query can hold is one thousand (1,000), and the maximum number of exclusions is one hundred (100), in this case.

Once emails are selected from Threat Explorer, remediation creation can begin by taking direct action, or by queuing up emails for an action: 

1. Direct approval: When actions like ‘Move to inbox’, ‘Move to junk’, ‘Move to deleted items’, ‘Soft delete’, ‘Hard delete’ are selected by security personnel with appropriate permissions, and next steps are followed till remediation creation, the remediation process begins to execute a selected action. A temporary flyout shows remediation in progress. 

2. Two step approval: ‘Add to remediation’ action can be taken by an admin who does not have appropriate permissions or who needs to wait longer to execute the action. In this case, the remediation action is not executed directly. Instead, emails are added to a remediation container that must be approved to execute. Until the remediation is approved, the email will not be remediated. Once the remediation is approved, actions will be taken on the email. 

**Automated investigation and response (AIR)** actions are triggered by alerts or by security operations teams from inside Threat Explorer. They may include some recommended remediations that must be approved by security operations teams. These remediation actions are included on the Action tab within the automated investigation.  

## Manage

See https://microsoft-my.sharepoint-df.com/:w:/p/shubjain/EZrXgYtoFKpLszlKFeUrBVIBA__urRlQQ9EigAyBKyG5Xg?e=ALO9sA

## More info

See https://microsoft-my.sharepoint-df.com/:w:/p/shubjain/EZrXgYtoFKpLszlKFeUrBVIBA__urRlQQ9EigAyBKyG5Xg?e=ALO9sA
