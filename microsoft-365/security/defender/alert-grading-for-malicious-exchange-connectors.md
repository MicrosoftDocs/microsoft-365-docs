---
title: Alert grading for malicious exchange connectors
description: Alert grading recipients from malicious exchange connectors activity and protect their network from malicious attack.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
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
  - MET150
ms.date: 02/07/2023
---

# Alert classification for malicious exchange connectors

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Threat actors use compromised exchange connectors for sending out spam and phishing emails in bulk to unsuspecting recipients by masquerading legitimate emails. Since the connector is compromised, the emails would usually be trusted by the recipients. These kinds of phishing emails are common vectors for phishing campaigns, and business email compromise (BEC) scenario. Hence, such emails need to be monitored heavily due to the likelihood of successful recipients' compromises being high.

The playbook helps in investigating instances, where malicious connectors are setup/deployed by malicious actors. Accordingly, they take necessary steps to remediate the attack and mitigate the security risks arising from it. Playbook is available for security teams like security operations center (SOC) and IT administrators, who review, handle/manage, and grade the alerts. Playbook will help in classifying the alerts as either true positive (TP) or false positive (FP). If there is TP, playbook will take necessary recommended actions for remediating the attack.

Following are the results of using a playbook:

- Determination of the alert as malicious (TP) or benign (FP).
- If malicious, remediate/remove the malicious connector from the environment.

## Exchange Connectors

Exchange connectors are a collection of instructions that customize the way your email flows to and from your Microsoft 365 or Office 365 organization. Usually, most Microsoft 365 and Office 365 organizations don't need connectors for regular mail flow.

Connectors are used to route mail traffic between remote email systems and Office 365 (O365) or O365, and on-premises email systems.

## Malicious Exchange Connectors

Attackers may compromise an existing exchange connector or compromise an admin, and set up a new connector by sending phish or spam/bulk emails.

The typical indicators of a malicious connector can be found when looking at email traffic and its headers. For example, when email traffic is observed from a connector node with a mismatch in P1 (header sender) and P2 (envelope sender) sender addresses along with no information on Sender's AccountObjectId.

This alert tries to identify such instances of mail flow, wherein the mail sending activity seems suspicious adding to that relevant information on sender is unavailable.

## Playbook workflow

You must follow the sequence to identify malicious exchange connectors:

- Identify which accounts are sending emails:
  - Do accounts appear to be compromised?
- Identify the connector relaying on emails to check:
  - If the connector is supposed to send out high volume emails?
  - If the connector was modified or created recently?
- Are emails going to internal email addresses?
  - Are emails going to external addresses (Spray and pray spam)?
  - Are emails going to external addresses belonging to customers or vendors (supply chain type attack)?
- Check if the FROM header and Envelope Sender domains are the same or different.

## Investigating malicious connectors

This section describes the steps to investigate an alert and remediate the security risk due to this incident.

- Determine whether the connector demonstrates bad (malicious) behavior.
  - Look for events indicating unusual mail traffic and identify, whether any new exchange connector was added recently.
    - For mail traffic observed, determine if the email accounts are compromised by inspecting whether the accounts are responsible for unusual mail traffic.
  - Look for mail content containing malicious artifacts (bad links/attachments).
  - Look for domains that are not part of your environment.
- Determine the email accounts are not compromised. Identify the connector that was recently added or modified in the environment.
- Look for:
  - Field values in the P1 sender (email header sender) and P2 sender (envelope sender), and check whether there's a mismatch.
  - Empty values in the SenderObjectId field.
- Use telemetry data to note:
  - The NetworkMessageId (Message ID) of the emails that were sent from the malicious connector.
  - The connector creation date, last modified date, and last modified by date.
  - The IP address of the connector from where the email traffic is observed.

## Advanced Hunting Queries

You can use [advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview?) queries to gather information related to an alert and determine whether the activity is suspicious.

Ensure you have access to the following tables:

|Table Name|Description|
|---|---|
|EmailEvents| Contains information related to email flow.|
|CloudAppEvents|Contains audit log of user activities.|
|IdentityLogonEvents|Contains login information for all users.|

## References

AHQs samples for reference:

- Run this KQL to check new connector creation.

  ```KQL
  //modify timeWindow to modify the lookback.
  let timeWindow = now(-7d); let timeNow = now();
  CloudAppEvents
  | where Timestamp between (timeWindow .. timeNow)
  | where isnotempty(AccountObjectId)
  | where ActionType == "New-InboundConnector"
  | mvexpand property = RawEventData.Parameters
  | extend ConnectorName = iff(property.Name == "Name", property.Value, ""), 
  IsEnabled = iff((property.Name == "Enabled" and property.Value == "True"), 
  true, false)
  | where isnotempty( ConnectorName) or IsEnabled
  | project-reorder ConnectorName, IsEnabled
  ```

- Run this KQL to check the volume of events from the alerted connector with time window of before and after the alerts.

  ```KQL
  //modify timeWindow to modify the lookback.
  let timeWindow = now(-7d); let timeNow = now();
  let connectorOperations = pack_array("Set-OutboundConnector", 
  "New-OutboundConnector", "Set-InboundConnector", "New-InboundConnector");
  let mailThreshold = 100; //define threshold for inspection and filtering
  let myConnector= //use this code block to specify relevant connector(s)
  CloudAppEvents
  | where Timestamp between (timeWindow .. timeNow)
  | where ActionType has_any (connectorOperations)
  | mv-expand property = RawEventData.Parameters
  | where property.Name == "Name"
  | summarize by ConnectorName=tostring(property.Value)
  ;
  EmailEvents
  | where isnotempty( toscalar (myConnector))
  | where Timestamp between (timeWindow .. timeNow)
  | where isnotempty( SenderObjectId) and isnotempty( Connectors)
  | where Connectors in (toscalar (myConnector))
  | summarize MailCount = dcount(NetworkMessageId) by Connectors, 
  SenderObjectId, bin(Timestamp, 1h)
  | where MailCount >= mailThreshold
   ```

- Run this KQL to check whether emails are being sent to external domains.

  ```KQL
  //modify timeWindow to modify the lookback.
  let timeWindow = now(-7d); let timeNow = now();
  EmailEvents
  | where Timestamp between (timeWindow .. timeNow)
  | where isnotempty( SenderObjectId)
  | extend RecipientDomain= split(RecipientEmailAddress, "@")[1]
  | where (SenderFromDomain != RecipientDomain) or (SenderMailFromDomain 
  != RecipientDomain)
  | where EmailDirection !in ("Intra-org" , "Inbound") //comment this line to 
  look across all mailflow directions
  ```

  - If sent to external domains, who else in the environment is sending similar emails (Could indicate compromised user if recipient is unknown domain).

     ```KQL
     //modify timeWindow to modify the lookback.
     let timeWindow = now(-7d); let timeNow = now();
     let countThreshold= 100; //modify count threshold accordingly 
     EmailEvents
     | where Timestamp between (timeWindow .. timeNow)
     | where isnotempty( SenderObjectId)
     | extend RecipientDomain= split(RecipientEmailAddress, "@")[1]
     | where (SenderFromDomain != RecipientDomain) or (SenderMailFromDomain 
     != RecipientDomain)
     | where EmailDirection !in ("Intra-org" , "Inbound")
     | summarize MailCount= dcount(NetworkMessageId) by SenderObjectId, 
     SenderFromAddress, SenderMailFromAddress , bin(Timestamp, 1h)
     | where MailCount > countThreshold
     ```

    - Check the mail content for bad behavior
    - Look at URLs in the email or email having attachments.

## AHQ considerations

Following are the AHQ considerations for protecting the recipients from malicious attack.

- Check for admin logins for those who frequently manage connectors from unusual locations (generate stats and exclude locations from where most successful logins are observed).

- Look for login failures from unusual locations.

  ```
  //modify timeWindow to modify the lookback.
  let timeWindow = now(-7d); let timeNow = now();
  let logonFail= materialize (
  IdentityLogonEvents
  | where Timestamp between (timeWindow .. timeNow)
  | where isnotempty(AccountObjectId)
  | where Application != "Active Directory"
  | where ActionType == "LogonFailed"
  | where ISP != "Microsoft Azure"
  | summarize failedLogonCount=count(), LatestTime = max(Timestamp), 
  EarliestTime = min(Timestamp) by AccountObjectId, Application, ISP, 
  CountryCode, bin(Timestamp, 60s)
  | where failedLogonCount > 100);
  // let hasLogonFails = isnotempty(toscalar (logonFail));
  let logonFailUsers = materialize ( logonFail | distinct AccountObjectId | 
  take 100);
  let hasLogonFails = isnotempty(toscalar (logonFailUsers));
  let logonSuccess=
  IdentityLogonEvents
  | where hasLogonFails
  | where Timestamp between (timeWindow .. timeNow)
  | where AccountObjectId in (logonFailUsers)
  | where Application != "Active Directory"
  | where ISP != "Microsoft Azure"
  | where ActionType == "LogonSuccess"
  | project SuccessTime= Timestamp, ReportId, AccountUpn, AccountObjectId, 
  ISP, CountryCode, Application;
  logonFail
  | join kind = innerunique logonSuccess on AccountObjectId, ISP, Application
  | where SuccessTime between (LatestTime .. (LatestTime + 10s))
  | summarize arg_min(SuccessTime, ReportId), EarliestFailedTime=min
  (EarliestTime), LatestFailedTime=max(LatestTime), failedLogonCount=
  take_any(failedLogonCount), SuccessLogonCount=count(), ISPSet=
  make_set(ISP), CountrySet=make_set(CountryCode), AppSet=make_set
  (Application) by AccountObjectId, AccountUpn
  | project-rename Timestamp=SuccessTime
  ```

## Recommended actions

Once it's determined that the observed alert activities are part of TP, classify those alerts and perform the actions below:

- Disable or remove the connector that was found to be malicious.
- If the admin account was compromised, reset the admin's account credentials. Also, disable/revoke tokens for the compromised admin account and enable multi-factor authentication for all admin accounts.
- Look for suspicious activities performed by the admin.
- Check for other suspicious activities across other connectors in the environment.

## See also

- [Overview of alert classification](alert-grading-playbooks.md)
- [Investigate alerts](investigate-alerts.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
