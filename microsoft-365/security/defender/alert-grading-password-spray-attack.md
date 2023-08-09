---
title: Alert classification for password spray attacks
description: Alert classification guide for password spray attacks coming to review the alerts and take recommended actions to remediate the attack and protect your network.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, devices, users, 365, microsoft, m365, password, spray, alert classification, alert grading, cloud apps, password spray, password spray attack
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

# Alert classification for password spray attacks

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors use innovative ways to compromise their target environments. One type of attack gaining traction is the password spray attack, where attackers aim to access many accounts within a network with minimal effort. Unlike traditional brute force attacks, where threat actors try many passwords on a single account, password spray attacks focus on guessing the correct password for many accounts with a limited set of commonly used passwords. It makes the attack particularly effective against organizations with weak or easily guessable passwords, leading to severe data breaches and financial losses for organizations.

Attackers use automated tools to repeatedly attempt to gain access to a specific account or system using a list of commonly used passwords. Attackers sometimes abuse legitimate cloud services by creating many virtual machines (VMs) or containers to launch a password spray attack.

This playbook helps investigate cases where suspicious behavior is observed as indicative of a password spray attack. This guide is for security teams like the security operations center (SOC) and IT administrators who review, handle/manage, and classify the alerts. This guide helps in quickly classifying the alerts as either [true positive (TP) or false positive (FP)](investigate-alerts.md) and, in the case of TP, take recommended actions to remediate the attack and mitigate the security risks.

The intended results of using this guide are:

- You've identified the alerts associated with password spray attempts as malicious (TP) or false positive (FP) activities.

- You've taken the necessary actions to remediate the attack.

## Investigation steps

This section contains step-by-step guidance to respond to the alert and take the recommended actions to protect your organization from further attacks.

### 1. Investigate the security alerts

  - **Are the alerted sign-in attempts coming from a suspicious location?** Check sign-in attempts from locations other than those typical for impacted user accounts. Multiple sign-in attempts from one or many users are helpful indicators.

### 2. Investigate suspicious user activity

  - **Are there unusual events with uncommon properties?** Unique properties for an impacted user, like unusual ISP, country/region, or city, might indicate suspicious sign-in patterns. 

  - **Is there a marked increase in email or file-related activities?** Suspicious events like increased attempts in mail access or send activity or an increase in uploading of files to SharePoint or OneDrive for an impacted user are some signs to look for.

  - **Are there multiple failed sign-in attempts?** A high number of failed sign-in attempts from various IPs and geographic locations by an impacted user might indicate a password spray attack.

  - **Identify the ISP from the sign-in activity of an impacted user.** Check for sign-in activities by other user accounts from the same ISP.
  
  - **Inspect any recent modifications in your environment:**
      - Changes in Office 365 applications like Exchange Online permission, mail auto-forwarding, mail redirection
      - Modifications in PowerApps, like automated data transmission configuration through PowerAutomate
      - Modifications in Azure environments, like Azure portal subscription changes
      - Changes to SharePoint Online, like the impacted user account gaining access to multiple sites or files with sensitive/confidential/company-only content
  
  - **Inspect the impacted account's activities that occur within a short time span on multiple platforms and apps.** Audit events to check the timeline of activities, like contrasting the user's time spent reading or sending email followed by allocating resources to the user's account or other accounts.

### 3. Investigate possible follow-on attacks

**Inspect your environment for other attacks involving impacted user accounts** as attackers often perform malicious activities after a successful password spray attack. Consider investigating the following possibly suspicious activities:

- [Multi-factor authentication (MFA)](/microsoft-365/admin/security-and-compliance/multi-factor-authentication-microsoft-365)-related attacks

   - Attackers use **MFA fatigue** to bypass this security measure that organizations adopt to protect their systems. **Check for multiple MFA requests raised by an impacted user account.**
   - Attackers might perform **MFA tampering** using an impacted user account with elevated privileges by disabling MFA protection for other accounts within the tenant. **Check for suspicious admin activities performed by an impacted user.**

- Internal phishing attacks

  - Attackers might use an impacted user account to send internal phishing mails. **Check suspicious activities like email forwarding or creation of inbox manipulation or inbox forwarding rules.** The following playbooks can guide you to further investigate email events:
      - [Classifying alerts for suspicious email forwarding activity](alert-grading-playbook-email-forwarding.md)
      - [Classifying alerts for suspicious inbox forwarding rules](alert-grading-playbook-inbox-forwarding-rules.md)
      - [Classifying alerts for suspicious inbox manipulation rules](alert-grading-playbook-inbox-manipulation-rules.md)
  - **Check whether the user received other alerts before the password spray activity.** Having these alerts indicate that the user account might be compromised. Examples include impossible travel alert, activity from infrequent country/region, and suspicious email deletion activity, among others.

## Advanced hunting queries

[Advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview) is a query-based threat hunting tool that lets you inspect events in your network and locate threat indicators.

Use these queries to gather more information related to the alert and determine whether the activity is suspicious.

Ensure you have access to the following tables:
- [AadSignInEventsBeta](advanced-hunting-aadsignineventsbeta-table.md)
- [CloudAppEvents](advanced-hunting-cloudappevents-table.md)
- [DeviceEvents](advanced-hunting-deviceevents-table.md)
- [EmailEvents](advanced-hunting-emailevents-table.md)
- [EmailUrlInfo](advanced-hunting-emailurlinfo-table.md)
- [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md)
- [UrlClickEvents](advanced-hunting-urlclickevents-table.md)


Use this query to identify password spray activity.

```kusto
IdentityLogonEvents
| where Timestamp > ago(7d)
| where ActionType == "LogonFailed"
| where isnotempty(RiskLevelDuringSignIn)
| where AccountObjectId == <Impacted User Account Object ID>
| summarize TargetCount = dcount(AccountObjectId), TargetCountry = dcount(Location), TargetIPAddress = dcount(IPAddress) by ISP
| where TargetCount >= 100
| where TargetCountry >= 5
| where TargetIPAddress >= 25
```

Use this query to identify other activities from the alerted ISP.

```kusto
CloudAppEvents
| where Timestamp > ago(7d)
| where AccountObjectId == <Impacted User Account Object ID>
| where ISP == <Alerted ISP>
| summarize count() by Application, ActionType, bin(Timestamp, 1h)
```

Use this query to identify sign-in patterns for the impacted user.

```kusto
IdentityLogonEvents
| where Timestamp > ago(7d)
| where AccountObjectId == <Impacted User Account Object ID>
| where ISP == <Alerted ISP>
| where Application != "Active Directory"
| summarize SuccessCount = countif(ActionType == "LogonSuccess"), FailureCount = countif(ActionType == "LogonFailed") by ISP
```

Use this query to identify MFA fatigue attacks.

```kusto
AADSignInEventsBeta
| where Timestamp > ago(1h)
//Error Code : 50088 : Limit on telecom MFA calls reached
//Error Code : 50074 : Strong Authentication is required.
| where ErrorCode in  ("50074","50088")
| where isnotempty(AccountObjectId)
| where isnotempty(IPAddress)
| where isnotempty(Country)
| summarize (Timestamp, ReportId) = arg_max(Timestamp, ReportId), FailureCount = count() by AccountObjectId, Country, IPAddress
| where FailureCount >= 10
```

Use this query to identify MFA reset activities.

```kusto
let relevantActionTypes = pack_array("Disable Strong Authentication.","system.mfa.factor.deactivate", "user.mfa.factor.update", "user.mfa.factor.reset_all", "core.user_auth.mfa_bypass_attempted");
CloudAppEvents
AlertInfo
| where Timestamp > ago(1d)
| where isnotempty(AccountObjectId)
| where Application in ("Office 365","Okta")
| where ActionType in (relevantActionTypes)
| where RawEventData contains "success"
| project Timestamp, ReportId, AccountObjectId, IPAddress, ActionType



CloudAppEvents
| where Timestamp > ago(1d)
| where ApplicationId == 11161 
| where ActionType == "Update user." 
| where isnotempty(AccountObjectId)
| where RawEventData has_all("StrongAuthenticationRequirement","[]")
| mv-expand ModifiedProperties = RawEventData.ModifiedProperties
| where ModifiedProperties.Name == "StrongAuthenticationRequirement" and ModifiedProperties.OldValue != "[]" and ModifiedProperties.NewValue == "[]"
| mv-expand ActivityObject = ActivityObjects
| where ActivityObject.Role == "Target object"
| extend TargetObjectId = tostring(ActivityObject.Id)
| project Timestamp, ReportId, AccountObjectId, ActivityObjects, TargetObjectId
```

Use this query to find new email inbox rules created by the impacted user.

```kusto
CloudAppEvents
| where AccountObjectId == <ImpactedUser>
| where Timestamp > ago(21d)
| where ActionType == "New-InboxRule"
| where RawEventData.SessionId in (suspiciousSessionIds)
```

## Recommended actions

Once you determine that the activities associated with this alert are malicious, classify those alerts as TP and take these actions for remediation:

1. Reset the user's account credentials.
2. Revoke access tokens of the compromised account.
3. Use number matching in Microsoft Authenticator to mitigate MFA fatigue attacks.
4. Apply the principle of least privilege. Create accounts with minimum privilege required to complete tasks.
5. Configure blocking based on the sender's IP address and domains if the artifacts are related to email.
6. Block URLs or IP addresses (on the network protection platforms) that were identified as malicious during the investigation.

## See also

- [Overview of alert classification](alert-grading-playbooks.md)
- [Investigate alerts](investigate-alerts.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
