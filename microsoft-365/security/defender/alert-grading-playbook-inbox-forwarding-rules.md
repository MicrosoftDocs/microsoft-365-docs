---
title: Alert classification for suspicious inbox forwarding rules
description: Alert classification for suspicious inbox forwarding rules to review the alerts and take recommended actions to remediate the attack and protect your network.
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

# Alert classification for suspicious inbox forwarding rules

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors can use compromised user accounts for several malicious purposes including reading emails in a user's inbox, creating inbox rules to forward emails to external accounts, sending phishing mails, among others. Malicious inbox rules are widely common during business email compromise (BEC) and phishing campaigns, and it important to monitor them consistently.

This playbook helps you investigate alerts for suspicious inbox forwarding rules and quickly grade them as either a true positive (TP) or a false positive (TP). You can then take recommended actions for the TP alerts to remediate the attack.

For an overview of alert classification for Microsoft Defender for Office 365 and Microsoft Defender for Cloud Apps, see the [introduction article](alert-grading-playbooks.md).

The results of using this playbook are:

- You've identified the alerts associated with inbox forwarding rules as malicious (TP) or benign (FP) activities.

  If malicious, you have removed malicious inbox forwarding rules.

- You've taken the necessary action if emails have been forwarded to a malicious email address.

## Inbox forwarding rules

You configure inbox rules to automatically manage email messages based on predefined criteria. For example, you can create an inbox rule to move all messages from your manager into another folder, or forward messages you receive to another email address.

### Suspicious inbox forwarding rules

After gaining access to users' mailboxes, attackers often create an inbox rule that allows them to exfiltrate sensitive data to an external email address and use it for malicious purposes.

Malicious inbox rules automate the exfiltration process. With specific rules, every email in the target user's inbox that matches the rule criteria will be forwarded to the attacker's mailbox. For example, an attacker might want to gather sensitive data related to finance. They create an inbox rule to forward all emails that contain keywords, such as 'finance' and 'invoice' in the subject or message body, to their mailbox.

Suspicious inbox forwarding rules might be difficult to detect because maintenance of inbox rules is common task done by users. Therefore, it's important to monitor the alerts.

## Workflow

Here's the workflow to identify suspicious email forwarding rules.

:::image type="content" source="../../media/alert-grading-playbook-inbox-forwarding-rules/alert-grading-playbook-inbox-forwarding-rules-workflow.png" alt-text="Alert investigation workflow for inbox forwarding rules" lightbox="../../media/alert-grading-playbook-inbox-forwarding-rules/alert-grading-playbook-inbox-forwarding-rules-workflow.png":::

## Investigation steps

This section contains detailed step-by-step guidance to respond to the incident and take the recommended steps to protect your organization from further attacks.

### Review generated alerts

Here's an example of an inbox forwarding rule alert in the alert queue.

:::image type="content" source="../../media/alert-grading-playbook-inbox-forwarding-rules/alert-grading-playbook-inbox-forwarding-rules-alert-queue.png" alt-text="Example of a notification in the alert queue" lightbox="../../media/alert-grading-playbook-inbox-forwarding-rules/alert-grading-playbook-inbox-forwarding-rules-alert-queue.png":::

Here's an example of the details of alert that was triggered by a malicious inbox forwarding rule.

:::image type="content" source="../../media/alert-grading-playbook-inbox-forwarding-rules/alert-grading-playbook-inbox-forwarding-rules-alert-description.png" alt-text="Details of alert that was triggered by a malicious inbox forwarding rule" lightbox="../../media/alert-grading-playbook-inbox-forwarding-rules/alert-grading-playbook-inbox-forwarding-rules-alert-description.png":::

### Investigate rule parameters

The purpose of this stage is to determine if the rules look suspicious by certain criteria:

Recipients of the forwarding rule:

- Validate destination email address isn't an additional mailbox owned by the same user (avoiding cases where the user is self-forwarding emails between personal mailboxes).
- Validate the destination email address isn't an internal address or sub-domain that belongs to the company.

Filters:

- If the inbox rule contains filters, which search for specific keywords in the subject or body of the email, check whether the provided keywords, such as finance, credentials, and networking, among others, seem related to malicious activity. You can find these filters under the following attributes (which shows up in the event RawEventData column): "BodyContainsWords", "SubjectContainsWords" or "SubjectOrBodyContainsWords"
- If the attacker chooses not to set any filter to the mails, and instead the inbox rule forwards all the mailbox items to the attacker's mailbox), then this behavior is suspicious as well.

### Investigate IP address

Review the attributes that related to the IP address that performed the relevant event of rule creation:

1. Search for other suspicious cloud activities that originated from the same IP in the tenant. For instance, suspicious activity might be multiple failed login attempts.
2. Is the ISP common and reasonable for this user?
3. Is the location common and reasonable for this user?

### Investigate any suspicious activity with the user inbox before creating rules

You can review all user activities before creating rules, check for indicators of compromise, and investigate user actions that seem suspicious. For instance, multiple failed sign ins.

- Sign ins:

  Validate that the sign in activity prior to the rule creation event isn't suspicious (such as the common location, ISP, or user-agent).

- Other alerts or incidents
  - Did other alerts trigger for the user prior to the rule creation. If so, then this might indicate that the user got compromised.
  - If the alert correlates with other alerts to indicate an incident, then does the incident contain other true positive alerts?

## Advanced hunting queries

[Advanced Hunting](advanced-hunting-overview.md) is a query-based threat hunting tool that lets you inspect events in your network and locate threat indicators.

Run this query to find all the new inbox rule events during a specific time window.

```kusto
let start_date = now(-10h);
let end_date = now();
let user_id = ""; // enter here the user id
CloudAppEvents
| where Timestamp between (start_date .. end_date)
| where AccountObjectId == user_id
| where Application == @"Microsoft Exchange Online"
| where ActionType in ("Set-Mailbox", "New-InboxRule", "Set-InboxRule") //set new inbox rule related operations
| project Timestamp, ActionType, CountryCode, City, ISP, IPAddress, RuleConfig = RawEventData.Parameters, RawEventData
```

*RuleConfig* will contain the rule configuration.

Run this query to check whether the ISP is common for the user by looking at the history of the user.

```kusto
let alert_date = now(); //enter alert date
let timeback = 30d;
let userid = ""; //enter here user id
CloudAppEvents
| where Timestamp between ((alert_date-timeback)..(alert_date-1h))
| where AccountObjectId == userid
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by ISP
```

Run this query to check whether the country/region is common for the user by looking at the history of the user.

```kusto
let alert_date = now(); //enter alert date
let timeback = 30d;
let userid = ""; //enter here user id
CloudAppEvents
| where Timestamp between ((alert_date-timeback)..(alert_date-1h))
| where AccountObjectId == userid
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by CountryCode
```

Run this query to check whether the user-agent is common for the user by looking at the history of the user.

```kusto
let alert_date = now(); //enter alert date
let timeback = 30d;
let userid = ""; //enter here user id
CloudAppEvents
| where Timestamp between ((alert_date-timeback)..(alert_date-1h))
| where AccountObjectId == userid
| make-series ActivityCount = count() default = 0 on Timestamp  from (alert_date-timeback) to (alert_date-1h) step 12h by UserAgent
```

Run this query to check if other users created forward rule to the same destination (could indicate that other users are compromised as well).

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
2. Reset the user's account credentials. You can also verify if the user account has been compromised with Microsoft Defender for Cloud Apps, which gets security signals from Azure Active Directory (Azure AD) Identity Protection.
3. Search for other malicious activities performed by the impacted user.
4. Check for other suspicious activity in the tenant originated from the same IP or from the same ISP (if the ISP is uncommon) to find other compromised users.

## See also

- [Overview of alert classification](alert-grading-playbooks.md)
- [Suspicious email forwarding activity](alert-grading-playbook-email-forwarding.md)
- [Suspicious inbox manipulation rules](alert-grading-playbook-inbox-manipulation-rules.md)
- [Investigate alerts](investigate-alerts.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
