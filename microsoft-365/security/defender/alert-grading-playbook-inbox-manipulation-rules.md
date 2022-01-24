---
title: Investigate suspicious inbox manipulation rules
description: Investigate suspicious inbox manipulation rules to review the alerts and take recommended actions to remediate the attack and protect your network.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid: 
  - MOE150
ms.technology: m365d
---
# Investigate suspicious inbox manipulation rules

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors can use compromised user accounts for several malicious purposes including reading emails in a user’s inbox, creating inbox rules to forward emails to external accounts, delete traces, sending phishing mails, among others. Malicious inbox rules are widely common during business email compromise (BEC) and phishing campaigns, and it is important to monitor them consistently. 

This playbook helps you investigate any incident related to suspicious inbox manipulation rules configured by attackers and take recommended actions to remediate the attack and protect your network. This playbook is for security teams, including SOC analysts and IT administrators who review, investigate, and grade the alerts.  

## Inbox rules

Inbox rules are set to automatically manage email messages based on predefined criteria. For example, you can create an inbox rule to move all messages from your manager into another folder, or forward messages you receive to another email address.

### Suspicious inbox manipulation rules

Adversaries might set up email rules to hide incoming emails in the compromised user mailbox to hide their malicious activities from the user. They might also set rules in the compromised user mailbox to delete emails, move the emails into another less noticeable folder (like RSS), or forward mails to an external account. Some rules might move all the emails to another folder and mark them as “read”, while some rules might move only mails which contain specific keywords in the email message or subject. For example, the inbox rule might be set to look for keywords like “invoice”, “phish”, “do not reply”, “suspicious email”, or “spam” among others, and move them to an external email account. Attackers might also use the compromised user mailbox to distribute spam, phishing emails, or malware. 

### Security alert classifications

All Defender for Cloud Apps alerts can be classified as one of the following activity types:

- True positive (TP): An alert on a confirmed malicious activity.
- Benign true positive (B-TP): An alert on suspicious but not malicious activity, such as a penetration test or other authorized suspicious action.
- False positive (FP): An alert on a non-malicious activity.

## Prerequisites

The researcher or SOC analyst must have access to Microsoft 365 Defender incidents and advanced hunting.

## Workflow

ART: The following flowchart illustrates the steps you should follow to investigate this alert. Steps to investigate suspicious inbox manipulation rule
 
## Investigation steps

This section contains detailed step-by-step guidance to respond to the incident and take the recommended steps to protect your organization from further attacks.

### Review generated alerts

You can review the alert as shown in the images below.

ART: Notification in the alert queue

ART Details of the alert that is triggered for inbox manipulation rule

### Investigate rule parameters 

The purpose of this stage is to determine if the rules look suspicious according to the following rule parameters or criteria:

Keywords:

- The attacker might apply the manipulation rule only to emails that contains certain words. You can find these keywords under certain attributes such as: “BodyContainsWords”, “SubjectContainsWords” or “SubjectOrBodyContainsWords”. 
- If there are filtering by keywords, then check whether the keywords seem suspicious to you (common scenarios are to filter emails related to the attacker activities, such as “phish”, “spam”, “do not reply”, among others).
- If there is no filter at all, it might be suspicious as well.

Destination folder:

- To stay under the radar and evade security detection, the attacker might move the emails to a less noticeable folder and mark the emails as read (for example, “RSS” folder). If the attacker applies “MoveToFolder“ and “MarkAsRead” action, check whether the destination folder is somehow related to the keywords in the rule to decide if it seems suspicious or not. 

Delete all:

- Some attackers will just delete all the incoming emails to hide their activity. Mostly, a rule of “delete all incoming emails” without filtering them with keywords is an indicator of malicious activity. This figure shows an example of a “delete all incoming emails” rule configuration.
 
ART: Example of ‘delete every incoming email’ART: rule (as seen on RawEventData.Parameters) of the relevant event log. 

### Investigate IP address

Review the attributes of  the IP address that performed the relevant event of rule creation:

1. Search for other suspicious cloud activities that originated from the same IP in the tenant. For instance, suspicious activity might be multiple failed login attempts. 
2. Is the ISP common and reasonable for this user?
3. Is the location common and reasonable for this user?

## Investigate suspicious activity by user prior to creating rules

You can review all user activities before creating rules, check for indicators of compromise, and investigate user actions that seem suspicious. For instance, multiple failed logins. 

- Login activity: Validate that the login activity prior to the rule creation is not suspicious. (common location / ISP / user-agent). 
- Alerts: Check whether the user received alerts prior to creating the rules. This could indicate that the user account might be compromised. For example, impossible travel alert, infrequent country, multiple failed logins, among others.)
- Incident: Check whether the alert is associated with other alerts that indicate an incident. If so, then check whether the incident contains other true positive alerts.

## Advanced hunting queries

Advanced hunting is a query-based threat hunting tool that lets you inspect events in your network to locate threat indicators. 
To find all the new inbox rule events during specific time window, run this query.  

```kusto
let start_date = now(-10h); 
let end_date = now();
let user_id = ""; // enter here the user id
CloudAppEvents
| where Timestamp between (start_date .. end_date)
| where AccountObjectId == user_id
| where ActionType in ("Set-Mailbox", "New-InboxRule", "Set-InboxRule") //set new inbox rule related operations
| project Timestamp, ActionType, CountryCode, City, ISP, IPAddress, RuleConfig = RawEventData.Parameters, RawEventData

The *RuleConfig* column will provide the new inbox rule configuration.```

To check whether the ISP is common for the user by looking at the history of the user, run this query.

```kusto
let alert_date = now(); //enter alert date 
let timeback = 60d; 
let userid = ""; //enter here user id 
CloudAppEvents 
| where Timestamp between ((alert_date-timeback)..(alert_date-1h)) 
| where AccountObjectId == userid 
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by ISP 
```

To check whether the country is common for the user by looking at the history of the user, run this query.

```kusto
let alert_date = now(); //enter alert date 
let timeback = 60d; 
let userid = ""; //enter here user id 
CloudAppEvents 
| where Timestamp between ((alert_date-timeback)..(alert_date-1h)) 
| where AccountObjectId == userid 
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by CountryCode
```

To check whether the user agent is common for the user by looking at the history of the user, run this query.

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
2. Reset the user account credentials of the user. 
3. Search for other malicious activities performed by the impacted user account.
4. Check for other suspicious activity in the tenant that originated from the same IP or from the same ISP (if the ISP is uncommon) to find other compromised user accounts.

## See also

- [Overview of alert grading](alert-grading-playbook.md)
- [Suspicious email forwarding activity](alert-grading-playbook-email-forwarding.md)
- [Suspicious inbox forwarding rules](alert-grading-playbook-inbox-forwarding-rules.md)
