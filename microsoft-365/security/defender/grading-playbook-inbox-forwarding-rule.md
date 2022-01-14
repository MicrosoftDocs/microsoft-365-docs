---
title: Investigate suspicious inbox forwarding rule
description: Investigate suspicious inbox forwarding rule.
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
# Investigate suspicious inbox forwarding rule

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors can use compromised user accounts for several malicious purposes including reading emails in a user’s inbox, creating inbox rules to forward emails to external accounts, sending phishing mails, among others. Malicious inbox rules are widely common during business email compromise (BEC) and phishing campaigns, and it important to monitor them consistently.

## How to use this playbook?
This playbook helps you investigate any incident related to suspicious inbox forwarding rules that attackers configure to perform malicious tasks. You can review the alerts and take recommended actions to remediate the attack and protect your network. 

### Planning phase

To ensure that you can conduct the investigation process accurately and achieve the desired outcome, it is essential to plan thoroughly in the beginning. Elements of planning include identifying scope, use cases, and success criteria. This playbook is for security teams, including SOC analysts and IT administrators, who review, investigate, and grade the alerts.

### Scope

The scope of the playbook is to provide methodical steps to assess if the alert is a true positive case. 

### Use cases

Use cases represent user stories for intended users. For example:

- As an SOC analyst, I need to assess and review the generated alerts [incident management]
- As an SOC analyst, I need to search for data in my environment and check for potential threats and suspicious activities [advanced hunting]

## Success criteria

The investigation is considered a success if the analyst reviews the alert and gathers the required information to accurately grade the alert. 

## Microsoft Defender for Cloud Apps

Microsoft Defender for Cloud Apps is a Cloud Access Security Broker (CASB) that supports various deployment modes including log collection, API connectors, and reverse proxy. It provides rich visibility, control over data travel, and sophisticated analytics to identify and combat cyberthreats across all your Microsoft and third-party cloud services.

Defender for Cloud Apps natively integrates with leading Microsoft solutions and is designed with security professionals in mind. It provides simple deployment, centralized management, and innovative automation capabilities.

The Defender for Cloud Apps framework includes the capability to protect your network against cyberthreats and anomalies, detects unusual behavior across cloud apps to identify ransomware, compromised users or rogue applications. It enables the analysis of high-risk usage and can remediate automatically to limit the risk to your organization.

## Inbox rules

Inbox rules are set to automatically manage email messages based on predefined criteria. For example, you can create an inbox rule to move all messages from your manager into another folder, or forward messages you receive to another email address.

### Suspicious inbox forwarding rule

After gaining access to users' mailboxes, attackers often create an inbox rule that allow them to exfiltrate sensitive data and use it for malicious purposes. 

These malicious inbox rules aim to automate the exfiltration process, such that by certain rule filters, every email in the target user’s inbox that matches the rule criteria will be forwarded to the attacker’s mailbox. For example, an attacker might want to gather sensitive data related to finance. They will set an inbox rule to forward all emails that contain keywords such as ‘finance’ and ‘invoice’ in the subject or message body, to their mailbox.

Suspicious inbox forwarding rule might be very tricky to catch by analysts because creation of inbox rule is very common and usual activity performed by users on a regular basis, and therefore it’s important to monitor the alerts. 

## Security alert classifications

All Defender for Cloud Apps alerts can be classified as one of the following activity types:

- True positive (TP): An alert on a confirmed malicious activity.
- Benign true positive (B-TP): An alert on suspicious but not malicious activity, such as a penetration test or other authorized suspicious action.
- False positive (FP): An alert on a non-malicious activity.

## Prerequisites

The pre-requisites section covers the specific requirements that you should have prior to the investigation. 

The researcher or SOC analyst must have access to Microsoft 365 Defender incidents and advanced hunting.

## Workflow

The following flowchart illustrates the steps you should follow to investigate this alert.
 
ART: Flowchart

## Investigation steps

This section contains detailed step-by-step guidance to respond to the incident and take the recommended steps to protect your organization from further attacks.

### Review generated alerts

You can review the alert as shown in the images below.

ART: Notification in the alert queue

ART: Details of alert that is triggered for malicious inbox forwarding rule

### Investigation process

### Investigate rule parameters 

The purpose of this stage is to determine if the rules look suspicious by certain criteria:

Recipients of the forwarding rule:

- Validate destination email address is not an additional mailbox owned by the same user (avoiding cases where the user is self-forwarding emails between personal mailboxes). 
- Validate the destination email address is not an internal address or sub-domain that belong to the company.

Filters:
 
- If the inbox rule contains filters which search for specific keywords in the subject or body of the email, check whether the provided keywords, such as finance, credentials, and networking, among others, seem related to malicious activity. You can find these filters under the following attributes (which shows up in the event RawEventData column): “BodyContainsWords”, “SubjectContainsWords” or “SubjectOrBodyContainsWords”
- If the attacker chooses not to set any filter to the mails, and instead the inbox rule forwards all the mailbox items to the attacker’s mailbox), then this behavior is suspicious as well. 

### Investigate IP address

Review the attributes that related to the IP address that performed the relevant event of rule creation:

1. Search for other suspicious cloud activities that originated from the same IP in the tenant. For instance, suspicious activity might be multiple failed logins attempts. 
2. Is the ISP common and reasonable for this user?
3. Is the location common and reasonable for this user?

### Investigate any suspicious activity with the user inbox before creating rules

You can review all user activities before creating rules, check for indicators of compromise, and investigate user actions that seem suspicious. For instance, multiple failed logins.  

- Login: Validate that the login activity prior to the rule creation event is not suspicious (common location / ISP / user-agent). 
- Other alerts/incidents 

   a.	Did other alerts trigger for the user prior to the rule creation. If so, then this might indicate that the user got compromised. 

   b.	If the alert correlates with other alerts to indicate an incident, then does the incident contain other true positive alerts? 

## Advanced hunting queries

Advanced hunting is a query-based threat hunting tool that lets you inspect events in your network to locate threat indicators. 

To find all the new inbox rule events during a specific time window, run this query.  

```kusto
let start_date = now(-10h); 
let end_date = now();
let user_id = ""; // enter here the user id
CloudAppEvents
| where Timestamp between (start_date .. end_date)
| where AccountObjectId == user_id
| where ActionType in ("Set-Mailbox", "New-InboxRule", "Set-InboxRule") //set new inbox rule related operations
| project Timestamp, ActionType, CountryCode, City, ISP, IPAddress, RuleConfig = RawEventData.Parameters, RawEventData
```

*RuleConfig* will contain the rule configuration.

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

To check whether the user-agent is common for the user by looking at the history of the user, run this query.

```kusto
let alert_date = now(); //enter alert date 
let timeback = 60d; 
let userid = ""; //enter here user id 
CloudAppEvents 
| where Timestamp between ((alert_date-timeback)..(alert_date-1h)) 
| where AccountObjectId == userid 
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by UserAgent
```

To check if other users created forward rule to the same destination (could indicate that other users are compromised as well), run this query.

```kusto
let start_date = now(-10h); 
let end_date = now();
let dest_email = ""; // enter here destination email as seen in the alert
CloudAppEvents
| where Timestamp between (start_date .. end_date)
| where ActionType in ("Set-Mailbox", "New-InboxRule", "Set-InboxRule") //set new inbox rule related operations
| project Timestamp, ActionType, CountryCode, City, ISP, IPAddress, RuleConfig = RawEventData.Parameters, RawEventData
| where RuleConfig has dest_email
```

## Recommended actions

1. Disable the malicious inbox rule. 
2. Reset the user’s credentials. 
3. Search for other malicious activities performed by the impacted user.
4. Check for other suspicious activity in the tenant originated from the same IP or from the same ISP (if the ISP is uncommon) to find other compromised users.

## See also

- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Investigate incidents](investigate-incidents.md)
