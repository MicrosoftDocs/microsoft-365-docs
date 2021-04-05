---
title: Step-by-Step Threat filtering stack in Microsoft Defender for Office 365 
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 04/05/2021
audience: ITPro
ms.topic: conceptual
localization_priority: Normal
description: Follow the path of an incoming message through the threat filtering stack in Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---
# Step-by-step threat filtering in Microsoft Defender for Office 365


The Microsoft Defender for Office 365 (MDO) filtering stack can be broken out into 4 phases, as in this article. Generally speaking, incoming mail passes through all of these phases before delivery, but the actual path email takes is subject to an organization's MDO configuration.

> [!TIP]
> Stay tuned till the end of this article for the unified graphic.

## Phase 1 - Edge Protection

Unfortunately, Edge blocks that were once *critical* are now relatively simple for bad actors to overcome. Over time, less traffic is blocked here, but it remains an important part of the stack.  

Edge blocks are designed to be automatic. In the case of false positive, senders will be notified and told how to address their issue. Connectors from trusted partners with limited reputation can ensure deliverability, or temporary overrides can be put in place, when onboarding new endpoints.

:::image type="content" source="../../media/mdo-filtering-stack/mdo-filter-stack-phase1.PNG" alt-text="Phase 1 of filtering in MDO is Edge Protection.":::

1. **Network throttling** protects Office 365 infrastructure and customers from Denial of Service (DOS) attacks by limiting the number of messages that can be submitted by a specific set of infrastructure.

2. **IP reputation and throttling** will block messages being sent from known bad connecting IP addresses. If a specific IP sends many messages in a short period of time they will be throttled.

3. **Domain reputation** will block any messages being sent from a known bad domain.

4. **Directory-based edge filtering** blocks attempts to harvest an organization’s directory information through SMTP.

5. **Backscatter detection** prevents an organization from being attacked through invalid non-delivery reports (NDRs).

6. **Enhanced filtering for connectors** preserves authentication information even when traffic passes through another device before it reaches Office 365. This improves filtering stack accuracy, including heuristic clustering, anti-spoofing, and anti-phishing machine learning models, even when in complex or hybrid routing scenarios.

## Phase 2 - Sender Intelligence

Features in sender intelligence are critical for catching spam, bulk, impersonation, and unauthorized spoof messages, and also factor into phish detection. Most of these features are individually configurable.

:::image type="content" source="../../media/mdo-filtering-stack/mdo-filter-stack-phase2.PNG" alt-text="Phase 2 of filtering in MDO is Sender intelligence.":::

1. **Account compromise detection** triggers and alerts are raised when an account has anomalous behavior, consistent with compromise. In some cases, the user account is blocked and prevented from sending any further email messages until the issue is resolved by an organization's security operations team.

2. **Email Authentication** involves both customer configured methods and methods set up in the Cloud, aimed at ensuring that senders are authorized, authentic mailers. These methods resist spoofing.
    - **SPF** can reject mails based on DNS TXT records that list IP addresses and servers allowed to send mail on the organization’s behalf.
    - **DKIM** provides an encrypted signature that authenticates the sender.
    - **DMARC** lets admins mark SPF and DKIM as required in their domain and enforces alignment between the results of these two technologies.
    - **ARC** is not customer configured, but builds on DMARC to work with forwarding in mailing lists, while recording an authentication chain.

3. **Spoof intelligence** is capable of filtering those allowed to ‘spoof’ (that is, those sending mail on behalf of another account, or forwarding for a mailing list) from malicious spoofers imitating an organizational, or known external, domain. It separates legitimate ‘on behalf of’ mail from senders spoofing to deliver spam and phishing messages. 

    **Intra-org spoof intelligence** detects and blocks spoof attempts from a domain within the organization.

4. **Cross-domain spoof intelligence** detects and blocks spoof attempts from a domain outside of the organization.

5. **Bulk filtering** lets admins configure a bulk confidence level (BCL) indicating whether the message was sent from a bulk sender. Administrators can use the Bulk Slider in the Antispam policy to decide what level of bulk mail to treat as spam.

6. **Mailbox intelligence** learns from standard user email behaviors. It leverages a user's communication graph to detect when a sender only appears to be someone the user usually communicates with, but is actually malicious. This method detects impersonation.

7. **Mailbox intelligence impersonation** enables or disables enhanced impersonation results based on each user's individual sender map. When enabled, this feature helps to identify impersonation.

8. **User impersonation** allows an admin to create a list of high value targets likely to be impersonated. If a mail arrives where the sender only appears to have the same name and address as the protected high value account, the mail is marked or tagged. (For example, *trαcye@contoso.com* for *tracye@contoso.com*).

9. **Domain impersonation** detects domains that are similar to the recipient’s domain and that attempt to look like an internal domain. For example, this impersonation *tracye@liwαre.com* for *tracye@litware.com*.

## Phase 3 - Content Filtering

In this phase the filtering stack begins to handle the specific contents of the mail, including its hyperlinks and attachments.

:::image type="content" source="../../media/mdo-filtering-stack/mdo-filter-stack-phase3.PNG" alt-text="Phase 3 of filtering in MDO is Content Filtering.":::

1. **Transport rules** also known as Mailflow-, or Exchange Transport Rules, allow an admin to take a wide range of actions when an equally wide range of conditions are met for a message. All messages that flow through your organization are evaluated against the enabled mail flow / transport rules.

2. **Microsoft Defender Antivirus** and two *third-party Antivirus engines* are used to detect all known malware in attachments.

3. The anti-virus (AV) engines are also used to true-type all attachments, so that **Type blocking** can block all attachments of types the admin specifies.

4. Whenever Microsoft Defender for Office 365 (MDO) detects a malicious attachment, the file’s hash, and a hash of its active content, are added to Exchange Online Protection (EOP) reputation. **Attachment reputation blocking** will block that file across all Office 365, and on endpoints, through MSAV cloud calls.

5. **Heuristic clustering** can determine that a file is suspicious based on delivery heuristics. When a suspicious attachment is found, the entire campaign pauses, and the file is sandboxed. If the file is found to be malicious, the entire campaign is blocked.

6. **Machine learning models** act on the header, body content, and URLs of a message to detect phishing attempts.

7. Microsoft uses a determination of reputation from URL sandboxing as well as URL reputation from third party feeds in **URL reputation blocking**, to block any message with a known malicious URL.

8. **Content heuristics** can detect suspicious messages based on structure and word frequency within the body of the message, using machine learning models.

9. **Safe attachments** sandboxes every attachment for MDO customers, using dynamic analysis to detect never-before seen threats.

10. **Linked content detonation** treats every URL linking to a file in an email as an attachment, asynchronously sandboxing the file at the time of delivery.

11. **URL Detonation** happens when upstream anti-phishing technology finds a message or URL to be suspicious. URL detonation sandboxes the URLs in the message at the time of delivery.

## Phase 4 - Post-Delivery Protection

The last stage takes place after mail or file delivery, acting on mail that is in various mailboxes and files and links that appear in clients like Microsoft Teams.

:::image type="content" source="../../media/mdo-filtering-stack/mdo-filter-stack-phase4.PNG" alt-text="Phase 4 of filtering in MDO is Post-delivery protection.":::

1. **Safe Links** is MDO’s time-of-click protection. Every URL in every message is wrapped to point to Microsoft Safe Links servers. When a URL is clicked it is checked against the latest reputation, before the user is redirected to the target site. The URL is asynchronously sandboxed to update its reputation.

2. **Phish Zero-Hour Auto-purge (ZAP)** retroactively detects and neutralizes malicious phishing messages that have already been delivered to Exchange Online mailboxes.

3. **Malware ZAP** retroactively detects and neutralizes malicious malware messages that have already been delivered to Exchange Online mailboxes.

4. **Spam ZAP** retroactively detects and neutralizes malicious spam messages that have already been delivered to Exchange Online mailboxes.

5. **Campaign Views** let administrators see the big picture of an attack, faster and more completely, than any team could without automation. Microsoft leverages the vast amounts of anti-phishing, anti-spam, and anti-malware data across the entire service to help identify campaigns, and then allows admins to investigate them from start to end, including targets, impacts, and flows, that are also available in a downloadable campaign write-up.

6. **The Report Message add-ins** enable people to easily report false positives (good email, mistakenly marked as *bad*) or false negatives (bad email marked as *good*) to Microsoft for further analysis.

7. **Safe Links for Office clients** offers the same Safe links time-of-click protection, natively, inside of Office clients like Word, PowerPoint, and Excel. 

8. **Protection for OneDrive, SharePoint, and Teams** offers the same Safe Attachments protection against malicious files, natively, inside of OneDrive, SharePoint, and Microsoft Teams.

9. When a URL that points to a file is selected post delivery, **linked content detonation** displays a warning page until the sandboxing of the file is complete, and the URL is found to be safe.


## The filtering stack diagram

The final diagram (as with, all parts of the diagram composing it) *is subject to change as the product grows and develops*. Bookmark this page and use the feedback option you'll find at the bottom if you need to ask for updates. For your records, this is the the stack with all the phases in order:

:::image type="content" source="../../media/mdo-filtering-stack/mdo-filter-stack-phase5.PNG" alt-text="All the phases of filtering in MDO in order, 1 to 4.":::

## More information

Special thanks from MSFTTracyP and the docs writing team, to Jason Rogers and Giulian Garruba for this content.
