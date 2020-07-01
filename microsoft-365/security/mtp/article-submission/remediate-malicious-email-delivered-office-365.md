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

[Mail with malware is Zapped page showing time of Zap execution.](../../media/tp-RemediationArticle3.png)

All remediations (either direct approval or two-step approval) created through Threat Explorer, and approved actions coming from automated investigations, show up in the Action Center, which can be accessed via the left navigation under *Review *> **Action Center**.

[The action center with a list of threats by date and severity.](../../media/tp-RemediationArticle4.png)

Action Center shows all remediation actions for the past 30 days. Actions taken through Explorer show up with the same name provided by the security operations teams when the remediation was created. Actions taken through automated investigations are surfaced with titles that begin with the related alert that triggered the investigation – for e.g. “Zap email cluster…”.

Each remediation item can be opened to view details about it. When a remediation item is opened, it shows basic remediation details, the remediation name, creation date, description, threat severity, and status. It also shows two tabs. 

1. **Mail submission tab**: These are the number of emails submitted through Threat Explorer or automated investigations to be remediated. These emails can be: 

[The action center with actionable and not actionable threats.](../../media/tp-RemediationArticle5.png)

**Actionable**: Emails in the following cloud mailbox locations can be acted upon and moved i.e. any email within the remediable category can be moved from one location to another: 
  - Inbox 
  - Junk  
  - Deleted folder 
  - Soft deleted folder 

[!NOTE]
> Currently, only an end user with access to the mailbox can recover items from a soft delete folder.

**Not actionable**: Emails in the following locations cannot be acted upon or moved as a part of the email actions i.e. emails in non-remediable category cannot be moved either in the non-remediable category, nor in remediable. Non-remediable locations are: 

  - Quarantine 
  - Hard deleted folder
  - On-prem / external 
  - Failed / dropped 
Suspicious messages submitted are categorized as either remediable or non-remediable. In most cases, remediable and non-remediable messages should add up to the total messages submitted. However, there can be rare cases where messages submitted may not add up to the sum of remediable and non-remediable items, and could be either higher or lower than the total submitted message count. This can happen due to system delays, time-outs, or expired messages. Messages expire based on Explorer’s retention period for your organization. 

Unless you are remediating old messages after your organization’s Explorer retention period, if you see inconsistencies in numbers, it is advisable to re-try remediating items. For system delays, remediation updates are typically refreshed within a few hours. 

If your organization’s retention period for email in Explorer is 30 days, and you are remediating emails going 29-30 days back, mail submission counts may not always add up as the emails might have started moving out of retention period already. 

If remediations are stuck in an “In progress” state for a while, it’s likely due to system delays. It could take up to a few hours to remediate. There can be a variation observed in mail submission counts as some of the emails were not a part of the query while starting remediation, due to system delays. It is a good idea to re-try remediating in such cases.  

For best results, remediation should be done in smaller batches of around 50k or lesser emails.  

Of all emails in mail submission, remediable emails are the only ones that will be acted upon during remediation. Non-remediable emails cannot be remediated by the Office 365 email system, as they are not stored in cloud mailboxes. 

For emails found in quarantine, admins can go to quarantine to take actions on those emails if required, but the emails will expire out of quarantine if not manually purged. Emails quarantined due to malicious content are not accessible by end-users, so security personnel need not take any specific action to get rid of the threat in quarantine. If the emails are on-prem or external, the end-user can be contacted to address the suspicious email or use separate email server/security tools for removal. These emails can be identified by applying delivery location = on-prem / external filter in Threat Explorer. For failed or dropped email, or email not accessible by the end-user, there shouldn’t be email to mitigate, since they don’t reach the mailbox. 

This is how a submission shows up in Action Center. A remediation can contain multiple submissions. If multiple actions get approved through one automated investigation, each email or email cluster action shows up in the same remediation as a different submission.

[ZAP email cluster flyout panel.](../../media/tp-RemediationArticle6.png)

Clicking on a mail submission item will show details of that remediation such as the query (when remediation is triggered through automated investigations or Threat Explorer through selecting a query), start time, and end time, of remediation. It also displays a list of messages that were submitted for remediation. As messages move out of the Explorer retention period, the messages will disappear from this list. This list also shows individual messages from the list which are remediable.

2. **Action logs tab**: This tab shows the result of messages remediated, including details like approved date, approver (admin who approved the action), action, status, and counts.  

Status is the overall status of the remediation. Status can be: 

  **Started**: When a remediation gets triggered. 
  **Queued**: When the remediation is queued up for mitigation of emails. 
  **In progress**: When the mitigation is in progress. 
  **Completed**: When the mitigation on all remediable emails is done either successfully or with some failures. 
  **Failed**: When no remediations are successful. 

As only remediable emails can be acted upon, each email’s cleanup is looked at as successful or failed. From the total remediable emails, we expose the successful and failed mitigations. 

  **Success**: When the desired action on remediable emails is accomplished and matches the intention of admin. For example: An admin wants to remove emails from mailboxes, so they take the action of soft deleting emails. If a remediable email is not found in the original folder after the action is taken, the Status will show as successful.  

  **Failure**: When the desired action on remediable emails fails. For example: An admin wants to remove emails from mailboxes, so he takes the action of soft deleting emails. If a remediable email is still found in the mailbox, Status will show as failed. 

Clicking on any item in action log, displays details of remediation. For successful items, if the details say, successful, or not found in mailbox, it means that item was already removed from the mailbox. Sometimes there are failures that happen due to a systemic error during remediation, and in those cases, it is a good idea to re-try remediation.  

Remediation is a powerful tool to mitigate threats, and address suspicious, emails. It helps keep an organization safe and secure.  

## More info

See https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered?view=o365-worldwide

