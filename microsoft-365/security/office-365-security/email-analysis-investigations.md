---
title: Email analysis in investigations for Microsoft Defender for Office 365
f1.keywords:
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.collection:
- m365-security
- m365initiative-defender-office365
- tier3
keywords: automated incident response, investigation, remediation, threat protection
description: See how email analysis in investigations work in Microsoft Defender for Office 365.
ms.custom:
- air
- seo-marvel-mar2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Email analysis in investigations for Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

During the automated investigation of alerts, Microsoft Defender for Office 365 analyzes the original email for threats and identifies other emails that are related to the original email and potentially part of an attack. This analysis is important because email attacks rarely consist of a single email.

The automated investigation's email analysis identifies email clusters using attributes from the original email to query for emails sent and received by your organization. This is similar to a security operations analyst would hunt for the related emails in Explorer or Advanced Hunting. Several queries are used to identify matching emails because attackers typically morph the email parameters to avoid security detection. The clustering analysis performs these checks to determine how to handle emails involved in the investigation:

- The email analysis creates queries (clusters) of emails using attributes from the original email – sender values (IP address, sender domain) and contents (subject, cluster ID) in order to find emails that might be related.
- If analysis of the original email's URLs and files identifies that some are malicious (that is, malware or phish), then it will also create queries or clusters of emails containing the malicious URL or file.
- Email clustering analysis counts the threats associated with the similar emails in the cluster to determine whether the emails are malicious, suspicious, or have no clear threats. If the cluster of emails matching the query has a sufficient amount of spam, normal phish, high confidence phish or malware threats, the email cluster gets that threat type applied to it.
- The email clustering analysis also checks the latest delivery location of the original email and emails in the email clusters to help identify if the emails potentially still need removal or have already been remediated or prevented. This analysis is important because attackers morph malicious content plus security policies and protection may vary between mailboxes. This capability leads to situations where malicious content may still sit in mailboxes, even though one or more malicious emails have been prevented or detected and removed by zero-hour auto purge (ZAP).
- Email clusters that are considered malicious due to malware, high confidence phish, malicious files, or malicious URL threats will get a pending action to soft delete the emails when the emails are still in the cloud mailbox (inbox or junk folder). If malicious emails or email clusters are only "Not In Mailbox" (blocked, quarantined, failed, soft deleted, etc.) or "On-premises/External" with none in the cloud mailbox, then no pending action will be set up to remove them.
- If any of the email clusters are determined to be malicious, then the threat identified by the cluster will get applied back to the original email involved in the investigation. This behavior is similar to a security operations analyst using email hunting results to determine the verdict of an original email based on similar emails. This result ensures that regardless of whether an original email's URLs, files, or source email indicators are detected or not, the system can identify malicious emails that are potentially evading detection through personalization, morphing, evasion, or other attacker techniques.
- In the user compromise investigation, additional email clusters are created to identify potential email issues created by the mailbox. This process includes a clean email cluster (good emails from user, potential data exfiltration, and potential command/control emails), suspicious email clusters (emails containing spam or normal phish) and malicious email clusters (emails containing malware or high confidence phish). These email clusters provide security operations analysts data to determine what other problems may need to be addressed from a compromise, and visibility on which emails may have triggered the original alerts (for example, phish/spam that triggered user sending restrictions)

Email clustering analysis via similarity and malicious entity queries ensures that email problems are fully identified and cleaned up, even if only one email from an attack gets identified. You can use links from the email cluster details side panel views to open the queries in Explorer or Advanced Hunting to perform deeper analysis and change the queries if needed. This capability enables manual refinement and remediation if you find the email cluster's queries too narrow or too broad (including unrelated emails).

Here are additional enhancements to email analysis in investigations.

## AIR investigation ignores advanced delivery items (SecOps mailbox and PhishEDU messages)

During the email clustering analysis, all clustering queries will ignore security mailboxes set up as Security Operations mailboxes in the Advanced Delivery policy. Similarly, the email clustering queries will ignore phish simulation (education) messages that are configured in the Advanced Delivery policy. Neither the SecOps nor the PhishEdu exclusion values are shown in the query to keep the clustering attributes simple and easy to read. This exclusion ensures that threat intelligence and operational mailboxes (SecOps mailboxes) and the phish simulations (PhishEdu) are ignored during threat analysis and do not get removed during any remediation.

> [!NOTE]
> When opening an email cluster to view it in Explorer from the email cluster details, the PhishEdu and SecOps mailbox filters will be applied in Explorer but will not be shown. If you change the Explorer filters, dates, or refresh the query within the page – then the PhishEdu/SecOps filter exclusions will get removed and emails that match these will be shown once again. If you refresh the Explorer page using the browser refresh function, the original query filters will get re-loaded, including the PhishEdu/SecOps filters – but removing any subsequent changes you had made.

## AIR updates pending email action status

The investigation email analysis calculates email threats and locations at the time of the investigation to create the investigation evidence and actions. This data can get stale and outdated when actions outside of the investigation affect the emails involved in the investigation. For example, security operations manual hunting and remediation may clean up emails included in an investigation. Likewise, deletion actions approved in parallel investigations or Zero-hour auto purge (ZAP) automatic quarantine actions may have removed emails. In addition, delayed detections of threats after email delivery may change the number of threats included in the investigation's email queries/clusters.

To ensure investigation actions are up to date, any investigation that has pending actions will periodically re-run the email analysis queries to update the email locations and threats.

- When the email cluster data changes, it will update the threat and latest delivery location counts.
- If emails or email cluster with pending actions no longer are in the mailbox, then the pending action will be canceled, and the malicious email/cluster considered remediated.
- Once all the investigation's threats have been remediated or canceled as noted above, then the investigation will transition to a remediated state and the original alert resolved.

## The display of incident evidence for email and email clusters

Email-based evidence in the **Evidence and Response** tab for an incident now displays the following information.

:::image type="content" source="../../media/email-analysis-investigations/email-analysis-evidence-example.png" alt-text="The email analysis information in Evidence and Response" lightbox="../../media/email-analysis-investigations/email-analysis-evidence-example.png":::

From the numbered callouts in the figure:

1. You can perform remediation actions, in addition to the **Action Center**.
2. You can take remediation action for email clusters with a **Malicious** verdict (but not **Suspicious**).
3. For the email spam verdict, phishing is split into high confidence and normal phish.

   For a Malicious verdict, the threat categories are malware, high confidence phish, malicious URL, and malicious file.

   For a Suspicious verdict, the threat categories are spam and normal phish.

4. The email count by is based the latest delivery location and includes counters for email in mailboxes, not in mailboxes, and on-premises.
5. Includes the date and time of the query, which might get updated for latest data.

For email or email clusters in the **Entities** tab of an investigation, **Prevented** means that there was no malicious emails in the mailbox for this item (mail or cluster). Here is an example.

:::image type="content" source="../../media/email-analysis-investigations/email-analysis-evidence-example-prevented.png" alt-text="A prevented email." lightbox="../../media/email-analysis-investigations/email-analysis-evidence-example-prevented.png":::

In this example, the email is malicious but not in a mailbox.

## Next steps

- [View pending or completed remediation actions](air-review-approve-pending-completed-actions.md)
