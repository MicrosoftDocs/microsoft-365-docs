---
title: Alert classification for suspicious IP address related to password spraying activity
description: Alert classification for suspicious IP address related to password spraying activity to review the alerts and take recommended actions to remediate the attack and protect your network.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, devices, users, 365, microsoft, m365, password, spray, alert classification, alert grading, cloud apps, suspicious IP, classify alert
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: diannegali
author: dgali297
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
ms.date: 04/05/2022
---

# Alert classification for suspicious IP addresses related to password spray attacks

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors use password guessing techniques to gain access to user accounts. In a password spray attack, the threat actor might resort to a few of the most used passwords against many different accounts. Attackers successfully compromise accounts using password spraying since many users still utilize default and weak passwords.

This playbook helps you investigate instances where IP addresses have been labeled risky or associated with a password spray attack, or suspicious unexplained activities were detected, such as a user signing in from an unfamiliar location or a user getting unexpected multi-factor authentication (MFA) prompts. This guide is for security teams like the security operations center (SOC) and IT administrators who review, handle/manage, and classify the alerts. This guide helps in quickly classifying the alerts as either [true positive (TP) or false positive (FP)](investigate-alerts.md) and, in the case of TP, take recommended actions to remediate the attack and mitigate the security risks.

The intended results of using this guide are:

- You've identified the alerts associated with password-spray IP addresses as malicious (TP) or false positive (FP) activities.

- You've taken the necessary action if IP addresses have been performing password spray attacks.

## Investigation steps

This section contains step-by-step guidance to respond to the alert and take the recommended actions to protect your organization from further attacks.

### 1. Review the alert

Here's an example of a password spray alert in the alert queue:

:::image type="content" source="../../media/alert-grading-playbook-password-spray/fig1-password-spray-alert.png" alt-text="Screenshot of Microsoft Defender 365 alert." lightbox="../../media/alert-grading-playbook-password-spray/fig1-password-spray-alert.png":::

This means there's suspicious user activity originating from an IP address that might be associated with a brute-force or password spray attempt according to threat intelligence sources.

### 2. Investigate the IP address

- Look at the [activities](microsoft-365-security-center-defender-cloud-apps.md) that originated from the IP:

  - **Is it mostly failed attempts to sign in?**

  - **Does the interval between attempts to sign in look suspicious?** Automated password spray attacks tend to have a regular time interval between attempts.

  - **Are there successful attempts of a user/several users signing in with [MFA](/microsoft-365/admin/security-and-compliance/multi-factor-authentication-microsoft-365) prompts?** The existence of these attempts might indicate that the IP isn't malicious.

  - **Are legacy protocols used?** Using protocols like POP3, IMAP, and SMTP might indicate an attempt to perform a password spray attack. Finding `Unknown(BAV2ROPC)` in the user agent (Device type) in the [Activity log](/defender-cloud-apps/activity-filters#ip-address-insights) indicates use of legacy protocols. You can refer to the example below when looking at the Activity log. This activity must be further correlated to other activities.

    :::image type="content" source="../../media/alert-grading-playbook-password-spray/fig2-password-spray-alert.png" alt-text="Screenshot of Microsoft Defender 365 interface showing the Device type." lightbox="../../media/alert-grading-playbook-password-spray/fig2-password-spray-alert.png":::

    _Figure 1. The Device type field shows `Unknown(BAV2ROPC)` user agent in Microsoft 365 Defender._

  - **Check the use of anonymous proxies or the Tor network.** Threat actors often use these alternative proxies to hide their information, making them difficult to trace. However, not all use of said proxies correlate with malicious activities. You must investigate other suspicious activities that might provide better attack indicators.
  - Is the IP address coming from a virtual private network (VPN)? Is the VPN trustworthy? **Check if the IP originated from a VPN and review the organization behind it by using tools** like [RiskIQ](https://community.riskiq.com/learn-more/enterprise). 
  - **Check other IPs with the same subnet/ISP.** Sometimes password spray attacks originate from many different IPs within the same subnet/ISP.
- **Is the IP address common for the tenant?** Check the Activity log to see if the tenant has seen the IP address in the past 30 days.
- **Search for other suspicious activities or alerts that originated from the IP in the tenant.** Examples of activities to look out for might include email deletion, forwarding rules creation, or file downloads after a successful attempt to sign in.
- **Check the IP address' risk score** by using tools like RiskIQ.

### 3. Investigate suspicious user activity after signing in

Once a suspicious IP is recognized, you can review the accounts that signed in. It's possible that a group of accounts were compromised and successfully used to sign in from the IP or other similar IPs.

Filter all successful attempts to sign in from the IP address around and shortly after the time of the alerts. Then search for malicious or unusual activities in such accounts after signing in.

- User account activities

   **Validate that the activity in the account preceding the password spray activity is not suspicious.** For example, check if there's anomalous activity based on common location or ISP, if the account is utilizing a user-agent that it didn't use before, if any other guest accounts were created, if any other credentials were created after the account signed in from a malicious IP, among others.

- Alerts

  **Check whether the user received other alerts preceding the password spray activity.** Having these alerts indicate that the user account might be compromised. Examples include impossible travel alert, activity from infrequent country/region, and suspicious email deletion activity, among others.

- Incident

  **Check whether the alert is associated with other alerts that indicate an incident.** If so, then check whether the incident contains other true positive alerts.

## Advanced hunting queries

[Advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview) is a query-based threat hunting tool that lets you inspect events in your network and locate threat indicators.

Use this query to find accounts with attempts to sign in with the highest risk scores that came from the malicious IP. This query also filters all successful attempts to sign in with corresponding risk scores.

```kusto
let start_date = now(-7d);
let end_date = now();
let ip_address = ""; // enter here the IP address
AADSignInEventsBeta
| where Timestamp between (start_date .. end_date)
| where IPAddress == ip_address
| where isnotempty(RiskLevelDuringSignIn)
| project Timestamp, IPAddress, AccountObjectId, RiskLevelDuringSignIn, Application, ResourceDisplayName, ErrorCode
| sort by Timestamp asc
| sort by AccountObjectId, RiskLevelDuringSignIn
| partition by AccountObjectId ( top 1 by RiskLevelDuringSignIn ) // remove line to view all successful logins risk scores
```

Use this query to check if the suspicious IP used legacy protocols in attempts to sign in.

```kusto
let start_date = now(-8h);
let end_date = now();
let ip_address = ""; // enter here the IP address
AADSignInEventsBeta
| where Timestamp between (start_date .. end_date)
| where IPAddress == ip_address
| summarize count() by UserAgent
```

Use this query to review all alerts in the last seven days associated with the suspicious IP.

```kusto
let start_date = now(-7d);
let end_date = now();
let ip_address = ""; // enter here the IP address
let ip_alert_ids = materialize ( 
        AlertEvidence
            | where Timestamp between (start_date .. end_date)
            | where RemoteIP == ip_address
            | project AlertId);
AlertInfo
| where Timestamp between (start_date .. end_date)
| where AlertId in (ip_alert_ids)
```

Use this query to review account activity for suspected compromised accounts.

```kusto
let start_date = now(-8h);
let end_date = now();
let ip_address = ""; // enter here the IP address
let compromise_users = 
    materialize ( AADSignInEventsBeta
                    | where Timestamp between (start_date .. end_date)
                    | where IPAddress == ip_address
                    | where ErrorCode == 0
                    | distinct AccountObjectId);
CloudAppEvents
    | where Timestamp between (start_date .. end_date)
    | where AccountObjectId in (compromise_users)
    | summarize ActivityCount = count() by AccountObjectId, ActivityType
    | extend ActivityPack = pack(ActivityType, ActivityCount)
    | summarize AccountActivities = make_bag(ActivityPack) by AccountObjectId
```

Use this query to review all alerts for suspected compromised accounts.

```kusto
let start_date = now(-8h); // change time range
let end_date = now();
let ip_address = ""; // enter here the IP address
let compromise_users = 
    materialize ( AADSignInEventsBeta
                    | where Timestamp between (start_date .. end_date)
                    | where IPAddress == ip_address
                    | where ErrorCode == 0
                    | distinct AccountObjectId);
let ip_alert_ids = materialize ( AlertEvidence
    | where Timestamp between (start_date .. end_date)
    | where AccountObjectId in (compromise_users)
    | project AlertId, AccountObjectId);
AlertInfo
| where Timestamp between (start_date .. end_date)
| where AlertId in (ip_alert_ids)
| join kind=innerunique ip_alert_ids on AlertId
| project Timestamp, AccountObjectId, AlertId, Title, Category, Severity, ServiceSource, DetectionSource, AttackTechniques
| sort by AccountObjectId, Timestamp
```

## Recommended Actions

1. [Block the attacker's IP address.](/azure/active-directory/conditional-access/block-legacy-authentication)
2. Reset user accounts' credentials.
3. Revoke access tokens of compromised accounts.
4. [Block legacy authentication.](/azure/active-directory/conditional-access/howto-conditional-access-policy-block-legacy)
5. [Require MFA for users](/microsoft-365/business-premium/m365bp-turn-on-mfa) if possible to [enhance account security](/azure/active-directory/authentication/tutorial-enable-azure-mfa) and make account compromise by a password spray attack difficult for the attacker.
6. Block the compromised user account from signing in if needed.

## See also

- [Overview of alert classification](alert-grading-playbooks.md)
- [Classifying password spray attacks](alert-grading-password-spray-attack.md)
- [Investigate alerts](investigate-alerts.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
