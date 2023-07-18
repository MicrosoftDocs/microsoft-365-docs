---
title: Alert grading for session cookie theft alert
description: Review, manage and grade the session cookie theft alert as True Positive (TP) or False Positive (FP), and if there is TP, take recommended actions to remediate the attack and mitigate the security risks arising because of it.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, cookie theft, AiTM, Attacker-in-the-middle, Adversary-in-the-middle, session theft, aitm cookie theft, aitm session theft.
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: how-to
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
ms.date: 10/18/2022
---

# Alert grading for session cookie theft alert

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

This article contains information about alert grading for Session Cookie theft alerts in Microsoft 365 Defender:

- **Stolen session cookie was used**
- **Authentication request from AiTM-related phishing page**

Threat actors have started using innovative ways to infiltrate their target environments. Taking inspiration from Adversary-in-the-Middle attacks, this type of attack uses phishing to steal credentials or their sign-in session in order to carry out malicious actions. BEC campaigns are an excellent example.

This attack works by setting up an intermediate (phishing) site, effectively working as a proxy connection between the user and the legitimate website that the attacker is impersonating. By acting as an intermediary (proxy), the attacker is able to steal the target's password and session cookie. The attacker is therefore able to authenticate to a legitimate session as they're authenticating on behalf of the user.

This playbook helps in investigating cases where suspicious behavior is observed indicative of an Attack-in-the-middle (AiTM) type of attack for cookie theft. This helps security teams like security operations center (SOC) and IT administrators to review, manage and grade the alerts as True Positive (TP) or False Positive (FP), and if it's TP, take recommended actions to remediate the attack and mitigate the security risks arising because of it.

The results of using this playbook are:

- You have identified the alerts associated with AiTM as malicious (TP) or benign (FP) activities.
- If identified as malicious, you've taken the necessary action to remediate the attack.

## Investigating steps

1. Investigate whether the affected user has triggered any other security alerts.

    - Focus on alerts that are based on geo-location anomalies for sign ins `[AadSignInEventsBeta or IdentityLogonEvents]`.
    - Investigate for relevant sign-in events by looking at Session ID information `[AadSignInEventsBeta]`.
        - Look for events associated with the identified (stolen) session ID to trace activities performed using the stolen cookie `[CloudAppEvents]`.
        - Look for a time difference between sign-in activities where there's a difference in the geo-location. Multiple sessions shouldn't be possible for the same account with different locations (indicating that the session could be stolen).
    - Check for alerts generated for the account from the corporate host.
        - If the account is compromised, there could be alerts that preceded the compromise indicating attacks, for example, SmartScreen alerts `[NetworkConnectionEvents]`.

2. Investigate suspicious behavior.
    - Look for events indicating unusual patterns to identify suspicious patterns `[CloudAppEvents]` like uncommon properties for Users like ISP/Country/City, etc.
    - Look for events that indicate new or previously unseen activities, such as sign-in attempts [success/failure] into new or never-before-used services, an increase in mail access activity, a change in Azure resource utilization, etc.
    - Inspect any recent modifications in your environment starting from:
        - Office 365 applications (like Exchange online permission changes, mail auto forwarding or redirection)
        - PowerApps (like configuring automated data transmission through PowerAutomate)
        - Azure environments (for example, Azure portal subscription modifications, etc.)
        - SharePoint Online (accesses to multiple sites, or for files that have sensitive content like credential info, or financial statements), etc.)
    - Inspect operations observed in multiple platforms (EXO, SPO, Azure, etc.) within a short time span for the affected user.
        - For example, timelines for audit events of mail read/send operations and Azure resource allocation/modifications (new machine provisioning or adding to AAD) shouldn't coincide with each other.

3. Investigate possible follow-on attacks. AiTM attacks are usually a means-to-an-end and not the endgame, so inspect your environment for other attacks that follow for the affected accounts.
    - An example would be looking into BEC cases
        - Look for search activities seen on the alerted user account mailbox `[CloudAppEvents]`.
            - Search activities in the mailbox could have keywords observed in financial fraud (for example, invoices, payments, etc.), which are suspicious.
            - Also look for inbox rules created with the intention of moving and marking as read (something along the lines of ActionType in (New-InboxRule, UpdateInboxRules, Set-InboxRule) and RawEventData has_all (MarkAsRead, MoveToFolder, Archive)).
    - Look for mail flow events [EmailEvents & EmailUrlInfo on NetworkMessageId] where the multiple emails are sent with the same Url.
        - Follow up with inspecting whether an increase or a high volume of mail deletion (ActivityType as Trash or Delete) is observed `[CloudAppEvents]` for the mailbox account.
        - Matching behavior could be deemed as highly suspicious.
    - Examine device events for Url events that match click events `[DeviceEvents on AccountName|AccountUpn]` for Office365 emails.
        - Matching the events for click sources (for example, different IP addresses for the same Url) could be an indication of malicious behavior.

## Advanced hunting queries

[Advanced hunting](advanced-hunting-overview.md) is a query-based threat hunting tool that lets you inspect events in your network and locate threat indicators.
Use these queries to gather more information related to the alert and determine whether the activity is suspicious.

Ensure you have access to the following tables:

- AadSignInEventsBeta - contains sign-in information for users.
- IdentityLogonEvents - contains logon information for users.
- CloudAppEvents - contains audit logs of user activities.
- EmailEvents - contains mail flow/traffic information.
- EmailUrlInfo - contains Url information contained in emails.
- UrlClickEvents - contains Url click logs for Urls that were clicked in the emails.
- DeviceEvents - contains device activity audit events.

Use the query below to identify suspicious logon behavior:

```kusto
let OfficeHomeSessionIds = 
AADSignInEventsBeta
| where Timestamp > ago(1d)
| where ErrorCode == 0
| where ApplicationId == "4765445b-32c6-49b0-83e6-1d93765276ca" //OfficeHome application 
| where ClientAppUsed == "Browser" 
| where LogonType has "interactiveUser" 
| summarize arg_min(Timestamp, Country) by SessionId;
AADSignInEventsBeta
| where Timestamp > ago(1d)
| where ApplicationId != "4765445b-32c6-49b0-83e6-1d93765276ca"
| where ClientAppUsed == "Browser" 
| project OtherTimestamp = Timestamp, Application, ApplicationId, AccountObjectId, AccountDisplayName, OtherCountry = Country, SessionId
| join OfficeHomeSessionIds on SessionId
| where OtherTimestamp > Timestamp and OtherCountry != Country
```

Use the below query for identifying uncommon countries/regions: 

```kusto
AADSignInEventsBeta 
| where Timestamp > ago(7d) 
| where ApplicationId == "4765445b-32c6-49b0-83e6-1d93765276ca" //OfficeHome application 
| where ClientAppUsed == "Browser" 
| where LogonType has "interactiveUser" 
| summarize Countries = make_set(Country) by AccountObjectId, AccountDisplayName
```

Use this query to find new email Inbox rules created during a suspicious sign-in session: 

```kusto
//Find suspicious tokens tagged by AAD "Anomalous Token" alert
let suspiciousSessionIds = materialize(
AlertInfo
| where Timestamp > ago(7d)
| where Title == "Anomalous Token"
| join (AlertEvidence | where Timestamp > ago(7d) | where EntityType == "CloudLogonSession") on AlertId
| project sessionId = todynamic(AdditionalFields).SessionId);
//Find Inbox rules created during a session that used the anomalous token
let hasSuspiciousSessionIds = isnotempty(toscalar(suspiciousSessionIds));
CloudAppEvents
| where hasSuspiciousSessionIds
| where Timestamp > ago(21d)
| where ActionType == "New-InboxRule"
| where RawEventData.SessionId in (suspiciousSessionIds)
```

## Recommended actions

Once you determine that the alert activities are malicious, classify those alerts as True Positive (TP) and perform the following actions:

- Reset the user's account credentials. Also, disable/revoke tokens for the compromised account.
- If the artifacts that were found were related to email, configure block based on Sender IP address and Sender domains.
  - Domains that are typo-squatted might either clear DMARC, DKIM, SPF policies (since the domain is different altogether) or they might return "null results (as it's probably not configured by the threat actor).
- Block URLs or IP addresses (on the network protection platforms) that were identified as malicious during the investigation.

## See also

[From cookie theft to BEC](https://www.microsoft.com/security/blog/2022/07/12/from-cookie-theft-to-bec-attackers-use-aitm-phishing-sites-as-entry-point-to-further-financial-fraud/)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
