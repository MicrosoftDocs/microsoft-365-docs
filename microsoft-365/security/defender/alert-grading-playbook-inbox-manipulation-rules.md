---
title: Alert classification for suspicious inbox manipulation rules
description: Alert classification for suspicious inbox manipulation rules to review the alerts and take recommended actions to remediate the attack and protect your network.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, alert classification, alert grading, classify alert
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid:
  - MOE150
  - met150
ms.date: 04/05/2023
---

# Alert classification for suspicious inbox manipulation rules

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors can use compromised user accounts for many malicious purposes including reading emails in a user's inbox, creating inbox rules to forward emails to external accounts, deleting traces, and sending phishing mails. Malicious inbox rules are common during business email compromise (BEC) and phishing campaigns and it is important to monitor for them consistently.

This playbook helps you investigate any incident related to suspicious inbox manipulation rules configured by attackers and take recommended actions to remediate the attack and protect your network. This playbook is for security teams, including security operations center (SOC) analysts and IT administrators who review, investigate, and grade the alerts. You can quickly grade alerts as either a true positive (TP) or a false positive (TP) and take recommended actions for the TP alerts to remediate the attack.

The results of using this playbook are:

- You have identified the alerts associated with inbox manipulation rules as malicious (TP) or benign (FP) activities.

  If malicious, you have removed malicious inbox manipulation rules.

- You have taken the necessary action if emails have been forwarded to a malicious email address.

## Inbox manipulation rules

Inbox rules are set to automatically manage email messages based on predefined criteria. For example, you can create an inbox rule to move all messages from your manager into another folder, or forward messages you receive to another email address.

### Malicious inbox manipulation rules

Attackers might set up email rules to hide incoming emails in the compromised user mailbox to obscure their malicious activities from the user. They might also set rules in the compromised user mailbox to delete emails, move the emails into another less noticeable folder (like RSS), or forward mails to an external account. Some rules might move all the emails to another folder and mark them as "read", while some rules might move only mails which contain specific keywords in the email message or subject.

For example, the inbox rule might be set to look for keywords like "invoice", "phish", "do not reply", "suspicious email", or "spam" among others, and move them to an external email account. Attackers might also use the compromised user mailbox to distribute spam, phishing emails, or malware.

## Workflow

Here is the workflow to identify suspicious inbox manipulation rule activities.

:::image type="content" source="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-workflow.png" alt-text="Alert investigation workflow for inbox manipulation rules" lightbox="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-workflow.png":::

## Investigation steps

This section contains detailed step-by-step guidance to respond to the incident and take the recommended steps to protect your organization from further attacks.

### 1. Review the alerts

Here's an example of an inbox manipulation rule alert in the alert queue.

:::image type="content" source="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-alert-queue.png" alt-text="Example of an inbox manipulation rule" lightbox="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-alert-queue.png":::

Here's an example of the details of an alert that was triggered by a malicious inbox manipulation rule.

:::image type="content" source="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-alert-description.png" alt-text="Details of alert that was triggered by a malicious inbox manipulation rule" lightbox="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-alert-description.png":::

### 2. Investigate inbox manipulation rule parameters

Determine if the rules look suspicious according to the following rule parameters or criteria:

- Keywords

   The attacker might apply the manipulation rule only to emails that contains certain words. You can find these keywords under certain attributes such as: "BodyContainsWords", "SubjectContainsWords" or "SubjectOrBodyContainsWords".

   If there are filtering by keywords, then check whether the keywords seem suspicious to you (common scenarios are to filter emails related to the attacker activities, such as "phish", "spam", "do not reply", among others).

   If there is no filter at all, it might be suspicious as well.

- Destination folder

   To evade security detection, the attacker might move the emails to a less noticeable folder and mark the emails as read (for example, "RSS" folder). If the attacker applies "MoveToFolder" and "MarkAsRead" action, check whether the destination folder is somehow related to the keywords in the rule to decide if it seems suspicious or not.

- Delete all

   Some attackers will just delete all the incoming emails to hide their activity. Mostly, a rule of "delete all incoming emails" without filtering them with keywords is an indicator of malicious activity.

Here's an example of a "delete all incoming emails" rule configuration (as seen on RawEventData.Parameters) of the relevant event log.

:::image type="content" source="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-delete-log.png" alt-text="Example of a delete all incoming emails rule configuration" lightbox="../../media/alert-grading-playbook-inbox-manipulation-rules/alert-grading-playbook-inbox-manipulation-rules-delete-log.png":::

### 3. Investigate the IP address

Review the attributes of the IP address that performed the relevant event of rule creation:

- Search for other suspicious cloud activities that originated from the same IP in the tenant. For instance, suspicious activity might be multiple failed login attempts.
- Is the ISP common and reasonable for this user?
- Is the location common and reasonable for this user?

### 4. Investigate suspicious activity by the user prior to creating the rules

You can review all user activities before rules were created, check for indicators of compromise, and investigate user actions that seem suspicious.

For instance, for multiple failed logins, examine:

- Login activity

   Validate that the login activity prior to the rule creation is not suspicious. (common location / ISP / user-agent).

- Alerts

   Check whether the user received alerts prior to creating the rules. This could indicate that the user account might be compromised. For example, impossible travel alert, infrequent country/region, multiple failed logins, among others.)

- Incident

   Check whether the alert is associated with other alerts that indicate an incident. If so, then check whether the incident contains other true positive alerts.

## Advanced hunting queries

[Advanced Hunting](advanced-hunting-overview.md) is a query-based threat hunting tool that lets you inspect events in your network to locate threat indicators.

Use this query to find all the new inbox rule events during specific time window.

```kusto
let start_date = now(-10h);
let end_date = now();
let user_id = ""; // enter here the user id
CloudAppEvents
| where Timestamp between (start_date .. end_date)
| where AccountObjectId == user_id
| where Application == @"Microsoft Exchange Online"
| where ActionType in ("Set-Mailbox", "New-InboxRule", "Set-InboxRule", "UpdateInboxRules") //set new inbox rule related operations
| project Timestamp, ActionType, CountryCode, City, ISP, IPAddress, RuleConfig = RawEventData.Parameters, RawEventData
```

The *RuleConfig* column will provide the new inbox rule configuration.

Use this query to check whether the ISP is common for the user by looking at the history of the user.

```kusto
let alert_date = now(); //enter alert date
let timeback = 60d;
let userid = ""; //enter here user id
CloudAppEvents
| where Timestamp between ((alert_date-timeback)..(alert_date-1h))
| where AccountObjectId == userid
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by ISP
```

Use this query to check whether the country/region is common for the user by looking at the history of the user.

```kusto
let alert_date = now(); //enter alert date
let timeback = 60d;
let userid = ""; //enter here user id
CloudAppEvents
| where Timestamp between ((alert_date-timeback)..(alert_date-1h))
| where AccountObjectId == userid
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by CountryCode
```

Use this query to check whether the user agent is common for the user by looking at the history of the user.

```kusto
let alert_date = now(); //enter alert date
let timeback = 60d;
let userid = ""; //enter here user id
CloudAppEvents
| where Timestamp between ((alert_date-timeback)..(alert_date-1h))
| where AccountObjectId == userid
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by UserAgent
```

## Recommended actions

1. Disable the malicious inbox rule.
2. Reset the user account's credentials. You can also verify if the user account has been compromised with Microsoft Defender for Cloud Apps, which gets security signals from Azure Active Directory (Azure AD) Identity Protection.
3. Search for other malicious activities performed by the impacted user account.
4. Check for other suspicious activity in the tenant that originated from the same IP or from the same ISP (if the ISP is uncommon) to find other compromised user accounts.

## See also

- [Overview of alert classification](alert-grading-playbooks.md)
- [Suspicious email forwarding activity](alert-grading-playbook-email-forwarding.md)
- [Suspicious inbox forwarding rules](alert-grading-playbook-inbox-forwarding-rules.md)
- [Investigate alerts](investigate-alerts.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
