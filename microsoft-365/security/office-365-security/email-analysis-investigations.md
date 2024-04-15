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
ms.service: defender-office-365
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Email analysis in investigations for Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

During the automated investigation of alerts, Microsoft Defender for Office 365 analyzes the original email for threats and identifies other email messages that are related to the original email and potentially part of an attack. This analysis is important because email attacks rarely consist of a single email.

The automated investigation's email analysis identifies email clusters using attributes from the original email to query for email sent and received by your organization. This analysis is similar to how a security operations analyst would hunt for the related email in Explorer or Advanced Hunting. Several queries are used to identify matching email messages because attackers typically morph the email parameters to avoid security detection. The clustering analysis performs these checks to determine how to handle email involved in the investigation:

- The email analysis creates queries (clusters) of email using attributes from the original email: sender values (IP address, sender domain) and contents (subject, cluster ID) in order to find email that might be related.
- If analysis of the original email's URLs and files identifies that some are malicious (that is, malware or phishing), then it also creates queries or clusters of email containing the malicious URL or file.
- Email clustering analysis counts the threats associated with the similar email in the cluster to determine whether the email is malicious, suspicious, or has no clear threats. If the cluster of email matching the query has a sufficient amount of spam, normal phishing, high confidence phishing or malware threats, the email cluster gets that threat type applied to it.
- The email clustering analysis also checks the latest delivery location of the original email and messages in the email clusters to help identify messages that potentially need removal or have already been remediated or prevented. This analysis is important because attackers morph malicious content plus security policies and protection might vary between mailboxes. This capability leads to situations where malicious content might still sit in mailboxes, even though one or more malicious email messages have been prevented or detected and removed by zero-hour auto purge (ZAP).
- Email clusters that are considered malicious due to malware, high confidence phishing, malicious files, or malicious URL threats get a pending action to soft delete messages that are still in the cloud mailbox (Inbox or Junk Email folders). If malicious email or email clusters are "Not In Mailbox" (blocked, quarantined, failed, soft deleted, etc.) or "On-premises/External" with none in the cloud mailbox, then no pending action is set up to remove them.
- If any of the email clusters are determined to be malicious, then the threat identified by the cluster is applied back to the original email involved in the investigation. This behavior is similar to a security operations analyst using email hunting results to determine the verdict of an original email based on similar email. This result ensures that regardless of whether an original email's URLs, files, or source email indicators are detected or not, the system can identify malicious email messages that are potentially evading detection through personalization, morphing, evasion, or other attacker techniques.
- In the user compromise investigation, additional email clusters are created to identify potential email issues created by the mailbox. This process includes a clean email cluster (good email from user, potential data exfiltration, and potential command/control email), suspicious email clusters (email containing spam or normal phishing), and malicious email clusters (email containing malware or high confidence phishing). These email clusters provide security operations analysts data to determine other problems that might need to be addressed from a compromise, and visibility on which messages might have triggered the original alerts (for example, phishing/spam that triggered user sending restrictions)

Email clustering analysis via similarity and malicious entity queries ensures that email problems are fully identified and cleaned up, even if only one email from an attack gets identified. You can use links from the email cluster details side panel views to open the queries in Explorer or Advanced Hunting to perform deeper analysis and change the queries if needed. This capability enables manual refinement and remediation if you find the email cluster's queries too narrow or too broad (including unrelated email).

Here are additional enhancements to email analysis in investigations.

## AIR investigation ignores advanced delivery items (SecOps mailboxes and phishing simulation messages)

During the email clustering analysis, all clustering queries ignore SecOps mailboxes and phishing simulation URLs that are identified Advanced delivery policy. SecOps mailboxes and phishing simulation URLs aren't shown in the query to keep the clustering attributes simple and easy to read. These exclusions ensure that messages sent to SecOps mailboxes and messages that contain phishing simulation URLs are ignored during threat analysis and don't get removed during any remediation.

> [!NOTE]
> When opening an email cluster to view it in Explorer from the email cluster details, the phishing simulation and SecOps mailbox filters are be applied in Explorer, but aren't shown. If you change the Explorer filters, dates, or refresh the query within the page, then the phishing simulation/SecOps filter exclusions are removed, and matching email messages are shown once again. If you refresh the Explorer page using the browser refresh function, the original query filters are re-loaded, including the phishing simulation/SecOps filters, but removing any subsequent changes you had made.

## AIR updates pending email action status

The investigation email analysis calculates email threats and locations at the time of the investigation to create the investigation evidence and actions. This data can get stale and outdated when actions outside of the investigation affect the email involved in the investigation. For example, security operations manual hunting and remediation might clean up email included in an investigation. Likewise, deletion actions approved in parallel investigations or ZAP automatic quarantine actions might have removed email. In addition, delayed detections of threats after email delivery might change the number of threats included in the investigation's email queries/clusters.

To ensure investigation actions are up to date, investigations that contain pending actions periodically re-run the email analysis queries to update the email locations and threats.

- When the email cluster data changes, it updates the threat and latest delivery location counts.
- If email or email cluster with pending actions no longer are in the mailbox, then the pending action is canceled, and the malicious email/cluster considered remediated.
- Once all the investigation's threats have been remediated or canceled as previously described, then the investigation transitions to a remediated state and the original alert resolved.

## The display of incident evidence for email and email clusters

Email-based evidence in the **Evidence and Response** tab for an incident now displays the following information.

:::image type="content" source="../../media/email-analysis-investigations/email-analysis-evidence-example.png" alt-text="The email analysis information in Evidence and Response" lightbox="../../media/email-analysis-investigations/email-analysis-evidence-example.png":::

From the numbered callouts in the figure:

1. You can perform remediation actions, in addition to the **Action Center**.
2. You can take remediation action for email clusters with a **Malicious** verdict (but not **Suspicious**).
3. For the email spam verdict, phishing is split into high confidence and normal phishing.

   For a Malicious verdict, the threat categories are malware, high confidence phishing, malicious URL, and malicious file.

   For a Suspicious verdict, the threat categories are spam and normal phishing.

4. The email count by is based the latest delivery location and includes counters for email in mailboxes, not in mailboxes, and on-premises.
5. Includes the date and time of the query, which might get updated for latest data.

For email or email clusters in the **Entities** tab of an investigation, **Prevented** means that there was no malicious email in the mailbox for this item (mail or cluster). Here's an example.

:::image type="content" source="../../media/email-analysis-investigations/email-analysis-evidence-example-prevented.png" alt-text="A prevented email." lightbox="../../media/email-analysis-investigations/email-analysis-evidence-example-prevented.png":::

In this example, the email is malicious but not in a mailbox.

## Next steps

- [View pending or completed remediation actions](air-review-approve-pending-completed-actions.md)
