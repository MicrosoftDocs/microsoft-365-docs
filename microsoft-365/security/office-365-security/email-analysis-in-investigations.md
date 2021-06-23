---
title: Email analysis in investigations for Microsoft Defender for Office 365
f1.keywords: 
- NOCSH
author: JoeDavies-MSFT
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
localization_priority: Normal
search.appverid: 
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
keywords: automated incident response, investigation, remediation, threat protection
ms.date: 01/29/2021
description: See how email analysis in investigations work in Microsoft Defender for Office 365
ms.custom: 
- air
- seo-marvel-mar2020
ms.technology: mdo
ms.prod: m365-security
---

# Email analysis in investigations for Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

During the automated investigation of alerts, Microsoft Defender for Office 365 will analyze the original email for threats, as well as identify other emails that are related to the original email and potentially part of an attack.  This is important since email attacks rarely consist of a single email.  

•	AIR true verdict change – apply and use all of the MDO threat types (spam, normal phish, high confidence phish, and malware)  vs. only use malware and phish threat types. – alignment with Explorer/AH, plus addresses some customer requests to only act on truly malicious items (malware, high confidence phish) and ignore the rest.  This reduces overall action volume as well.
•	AIR email analysis refresh – update email items that are ‘pending approval’ so that any items that are mitigated through other actions get reflected in AIR evidence/actions.   Another improvement on action volume – in that system or admin approved actions will clear out other overlapping pending items.



The automated investigation’s email analysis identifies email clusters using attributes from the original email to query for emails sent and received by your organization, much like a security operations analyst would hunt for the related emails in Explorer or Advanced Hunting.  Several queries are used to identify matching emails, as attackers typically will morph the email parameters to avoid security detection.  The clustering analysis performs a number of checks to determine how to handle emails involved in the investigation as follows.

- The email analysis creates queries (clusters) of emails using attributes from the original email – sender values (IP address, sending domain) and contents (subject, cluster ID) in order to find emails that are related.
- If analysis of the original email’s URLs and files identifies that some are malicious (i.e. malware or phish), then it will also create queries/clusters of emails containing the malicious URL/file.
- Email clustering analysis counts the threats associated with the matching emails in the cluster, to determine whether the emails are malicious, suspicious, or have no clear threats.  If the cluster of emails matching the query has sufficient number of spam, normal phish, high confidence phish or malware threats, the email cluster gets that threat type applied to it.  
- The email clustering analysis also checks the latest delivery location of the original email and emails in the email clusters to help identify if the emails potentially still need removal or have already been remediated or prevented.  This is important because attackers morph malicious content plus security policies and protection may vary between mailboxes.  This leads to situations where malicious content may still sit in mailboxes, even though one or more malicious emails had been detected and removed by Zero hour Auto Protection (ZAP).
- Email clusters that are considered malicious due to malware, high confidence phish, malicious files, or malicious URLs threats will get a pending action to soft delete the emails when there are still in the cloud mailbox (inbox or junk folder).  If malicious emails or email clusters are only ‘Not In Mailbox’ (blocked, quarantined, failed, soft deleted, etc.) or ‘On-premise/External’ with none in the cloud mailbox, then no pending action will be setup to remove them.
- If any of the email clusters are determined to be malicious, then the threat identified by the cluster will get applied back to the original email involved in the investigation.  This is similar to a security operations analyst using email hunting results to determine the verdict of an original email based on matching emails.  This ensures that regardless of whether an original email’s URLs, files, or source email indicators are detected or not, the system can identify malicious emails that are potentially evading detection through personalization, morphing, evasion, or other attacker techniques.
- In the user compromise investigation, additional email clusters are created to identify potential email issues created by the mailbox.  This includes a clean email cluster (good emails from user, potential data exfiltration, and potential command/control emails), suspicious email clusters (emails containing spam or normal phish) and malicious email clusters (emails containing malware or high confidence phish).  These email clusters provide security operations analysts data to determine what other problems may need to be addressed from a compromise, as well as visibility on which emails may have triggered the original alerts (e.g. phish/spam that triggered user sending restrictions)

Email clustering analysis via similarity and malicious entity queries ensures that email problems are fully identified and cleaned up, even if only one email from an attack gets identified.  You can use links from the email cluster details side panel views to open the queries in Explorer or Advanced Hunting to perform deeper analysis and change the queries if needed.  This enables manual refinement and remediation if you find the email cluster’s queries too narrow or too broad (including unrelated emails).


## AIR investigation to ignore advanced delivery items (SecOps mailbox and PhishEDU messages) – frequent customer request to not delete things from threat intel and submission mailboxes, as well as not delete phishing simulations


During the email clustering analysis, all clustering queries will ignore security mailboxes setup as Security Operations mailboxes in the Advanced Delivery policy.  Similarly, the email clustering queries will ignore phish simulation (education) messages that are configured in the Advanced Delivery policy.  Neither the SecOps nor the PhishEdu exclusion values are shown in the query to keep the clustering attributes simpler and easier to read.  This exclusion ensures that threat intelligence and operational mailboxes (SecOps mailboxes), as well as the phish simulations (PhishEdu) are ignored during threat analysis and do not get removed during any remediation.  


>[!Note]
>When opening an email cluster to view it in Explorer from the email cluster details, the PhishEdu and SecOps mailbox filters will be applied in Explorer but will not be shown.  If you change the Explorer filters, dates, or refresh the query within the page – then the PhishEdu/SecOps filter exclusions will get removed and emails that match these will be shown once again.  If you refresh the Explorer page using the browser refresh function, the original query filters will get re-loaded, including the PhishEdu/SecOps filters – but removing any subsequent changes you had made.
>

## AIR latest delivery location change – leverage current email location to determine actions vs. old behavior of only using original delivery action – frequent customer request to only generate actions when there really is something to delete.  This also address customer concerns around action volume.

The investigation email analysis calculates email threats and locations at the time of the investigation to create the investigation evidence and actions.  This data can get stale and outdated when actions outside of the investigation affect the emails involved in the investigation.  For example, security operations manual hunting and remediation may clean up emails included an investigation.  Likewise, deletion actions approved in parallel investigations or Zero-hour Auto Protection (ZAP) automatic quarantine actions may have removed emails.  In addition, delayed detections of threats after email delivery may change the number of threats included in the investigation’s email queries/clusters.  
To ensure investigation actions are up-to-date, any investigation that has pending actions will periodically re-run the email analysis queries to update the email locations and threats.  

- When the email cluster data changes, it will update the threat and latest delivery location counts.  
- If emails or email cluster with pending actions no longer are in the mailbox, then the pending action will be cancelled, and the malicious email/cluster considered remediated.
- Once all the investigation’s threats have been remediated or cancelled as noted above, then the investigation will transition to a remediated state and the original alert resolved.

## Next steps

- [View pending or completed remediation actions](air-review-approve-pending-completed-actions.md)