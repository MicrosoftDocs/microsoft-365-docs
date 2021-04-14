---
title: "The Microsoft Defender for Office 365 (MDO) email entity page"
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 01/21/2021
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
ms.collection:
- M365-security-compliance
- m365initiative-defender-office365
description: Microsoft Defender for Office 365 E5 and P1 and P2 customers can now get a 360-degree view of each email with email entity page.
---
# The Email entity page

**In this article:**
- [Reach the email entity page](#reach-the-email-entity-page)
- [Read the email entity page](#read-the-email-entity-page)
- [Use email entity page tabs](#use-email-entity-page-tabs)
- [New to the email entity page](#new-to-the-email-entity-page)

Admins of Microsoft Defender for Office 365 (or MDO) E5, and MDO P1 and P2 have a 360-degree view of email using the **Email entity page**. This go-to email page was created to enhance information delivered on the [Threat Explorer 'email details' fly-out](threat-explorer-views.md).

## Reach the email entity page

Either of the existing Office Security and Compliance center (protection.office.com) or new Microsoft 365 Security center (security.microsoft.com) will let you see and use the email entity page..

|Center|URL|Navigation|
|---|---|---|
|Security & Compliance |protection.office.com|Threat Management \> Explorer|
|Microsoft 365 security center |security.microsoft.com|Email & Collaboration \> Explorer|

In Threat Explorer, select the subject of an email you're investigating. A gold bar will display at the top of the email fly-out for that mail. This invitation to the new page, reads 'Try out our new email entity page with enriched data...'. Select to view the new page.

:::image type="content" source="../../media/email-entities-1-navigation-to-ee.png" alt-text="You will see a gold banner with the words *Try out our new email entity page with enriched data* to navigate to the new experience.":::

:::image type="content" source="../../media/email-entities-2-eep.png" alt-text="This graphic of the email entity page focuses on headings that you'll see. Note the email header is displayed here.":::

> [!NOTE]
> The permissions needed to view and use this page are the same as to view Threat Explorer. The admin must be a member of Global admin or global reader, or Security admin or security reader.

## Read the email entity page

The structure is designed to be easy to read and navigate through at a glance. Various tabs along the top of the page allow you to investigate in more detail. Here's how the layout works:

1. The most required fields are on the left side of the fly-out. These details are 'sticky', meaning they're anchored to the left no matter the tab you navigate to in the rest of the fly-out.

    :::image type="content" source="../../media/email-entities-3-left-panel.png" alt-text="Graphic of the email entity page with the left side highlighted. The title and facts about the mail delivery are over here.":::

2. On the top-right corner are the actions that can be taken on an email. Any actions that can be taken through Explorer will also be available through email entity page.

    :::image type="content" source="../../media/email-entities-5-preview.png" alt-text="Graphic of the email entity page with the *right* side highlighted, this time. Actions like 'Email preview' and 'Go to quarantine' are here.":::

3. Deeper analysis can be done by sorting through the rest of the page. Check the email detection details, email authentication status, and header. This area should be looked on a case-by-case basis, but the info in these tabs is available for any email.

    :::image type="content" source="../../media/email-entities-4-middle-panel.png" alt-text="The main panel of this page includes the email header and authentication status.":::

### Use email entity page tabs

The tabs along the top of the entity page will allow you to investigate email efficiently.

1. **Timeline**: The timeline view for an email (per the Threat Explorer timeline) shows the original delivery to post-delivery events that happen on an email. For emails that have no post-delivery actions, the view shows the original delivery row in timeline view. Events like: Zero-hour auto purge (ZAP), Remediate, URL clicks, et cetera, from sources like: system, admin, and user, show up here, in the order in which they occurred.
2. **Analysis**: Analysis shows fields that help admins analyze an email in depth. For cases where admins need to understand more about detection, sender / recipient, and email authentication details, they should use the Analysis tab. Links for Attachments and URLs are also found on this page, under 'Related Entities'. Both attachments and identified threats are numbered here, and clicking will take you straight to the Attachments and URL pages. This tab also has a View header option to *show the email header*. Admins can compare any detail from email headers, side by side with information on the main panel, for clarity.
3. **Attachments**: This examines attachments found in the email with other details found on attachments. The number of attachments shown is currently limited to 10. Notice that detonation details for attachments found to be malicious is also shown here.
4. **URLs**: This tab lists URLs found in the email with other details about the URLs. The number of URLs is limited to 10 right now, but these 10 are prioritized to show *malicious URLs first*. Prioritization saves you time and guess-work. The URLs which were found to be malicious and detonated will also be shown here.
5. **Similar emails**: This tab lists all emails similar to the *network message id + recipient* combination specific to this email. Similarity is based on the *body of the message*, only. The determinations made on mails to categorize them as 'similar' don't include a consideration of *attachments*.

## New to the email entity page

There are new capabilities that come with this email entity page. Here's the list.

### Email preview for Cloud mailboxes

Admins can preview emails in Cloud mailboxes, ***if*** the mails are still present in the Cloud. In case of a soft delete (by an admin, or user), or ZAP (to quarantine), emails are no longer present in the Cloud location. In that case, admins won't be able to preview those specific mails. Emails that were dropped, or where delivery failed, never actually made it into the mailbox. As a result, admins won’t be able to preview those emails either.

> [!WARNING]
> Previewing emails requires a special role called ***Preview*** to be assigned to admins. You can add this role by going to **Permissions & roles** > **Email & collaboration roles** in *security.microsoft.com*, or **Permissions** in *protection.office.com*. Add the ***Preview*** role to any of the role groups, or a copy of a role group that allows admins in your organization to work in Threat Explorer.

### Detonation details

These details are specific to email attachments and URLs.

Users will see enriched detonation details for known malicious attachments or hyperlinks found in their mailboxes, including Detonation chain, Detonation summary, Screenshot, and Observed behavior details to help customers understand why the attachment or URL was deemed malicious and detonated.

- *Detonation chain*: A single file or URL detonation can trigger multiple detonations. The Detonation chain tracks the path of detonations, including the original malicious file or URL that caused the verdict, and all other files or URLs effected by the detonation. These URLs or attached files may not be directly present in the email, but including that analysis is important to determining why the file or URL was found to be malicious.
- *Detonation summary*: This gives information on:
  - Detonation time range.
  - Verdict of the attached file, or URL.
  - Related info (file number, URLs, IPs, or Domains), which are other entities examined during detonation.
- *Detonation screenshot*: This shows screenshot(s) taken during detonation process.
- *Detonation details*: These are the exact behavior details of each process that took place during the detonation.

:::image type="content" source="../../media/email-entities-6-detonation-page.png" alt-text="Screenshot of the detonation summary showing the chain, summary, detonation details, and screenshot under the heading *Deep Analysis*.":::

### Other innovations

*Tags*: These are tags applied to users. If the user is a recipient, admins will see a *recipient* tag. Likewise, if the user is a sender, a *sender* tag. This will appear in the left side of the email entities page (in the part that's described as *sticky* and, thus, anchored to the page).

*Latest delivery location*: The latest delivery location is the location where an email landed after system actions like ZAP, or admin actions like Move to Deleted Items, finish. Latest delivery location is not intended to inform admins of the message's *current* location. For example, if a user deletes a message, or moves it to archive, the delivery location won't be updated. However, if a system action has taken place and updated the location (like a ZAP resulting in an email moving to Quarantine) this would update the Latest delivery location to Quarantine.

*Email details*: Details required for a deeper understanding of email available in the *Analysis* tab.

- *Exchange Transport Rules (ETRs or Mailflow rules)*: These rules are applied to a message at the transport layer and take precedence over phish and spam verdicts. These can be only created and modified in the Exchange admin center, but if any ETR applies to a message, the ETR name and GUID will be shown here. Valuable information for tracking purposes.

- *System Overrides*: This is a means of making exceptions to the delivery location intended for a message by overriding the delivery location given by system (as per the threat and detection tech).

- *Junk Mailbox Rule*: 'Junk' is hidden Inbox rule that's enabled by default in every mailbox.
  - When the Junk email rule is enabled on the mailbox, Exchange Online Protection (EOP) is able to move messages to Junk according to some criteria. The move can be based on spam filtering verdict action *Move message to Junk Email folder*, or on the Blocked Senders list on the mailbox. Disabling the Junk email rule prevents the delivery of messages to the Junk email folder based on the *Safe Senders* list on the mailbox.
  - When the junk email rule is *disabled* on the mailbox, EOP can't move messages to the Junk Email folder based on the spam filtering verdict action *Move message to Junk Email folder*, or the safe list collection on the mailbox.

- *Bulk Complaint Level (BCL)*: The bulk complaint level (BCL) of the message. A higher BCL indicates a bulk mail message is more likely to generate complaints (the natural result if the email is likely to be spam).

- *Spam Confidence Level (SCL)*: The spam confidence level (SCL) of the message. A higher value indicates the message is more likely to be spam.

- *Domain Name*: Is the sender domain name.

- *Domain Owner*: Specifies the owner of the sending domain.

- *Domain Location*: Specifies the location of the sending domain.

- *Domain Created Date*: Specifies the date of creation of the sending domain. A newly created domain is something you could be cautious of if other signals indicate some suspicious behavior.

*Email Authentication*: Email authentication methods used by Microsoft 365 include SPF, DKIM, and DMARC.

- Sender Policy Framework (**SPF**):  Describes results for SPF check for the message. Possible values can be:
  - Pass (IP address): The SPF check for the message passed and includes the sender's IP address. The client is authorized to send or relay email on behalf of the sender's domain.
  - Fail (IP address): The SPF check for the message failed and includes the sender's IP address. This is sometimes called hard fail.
  - Softfail (reason): The SPF record designated the host as not being allowed to send but is in transition.
  - Neutral: The SPF record explicitly states that it does not assert whether the IP address is authorized to send.
  - None: The domain doesn't have an SPF record, or the SPF record doesn't evaluate to a result.
  - Temperror: A temporary error has occurred. For example, a DNS error. The same check later might succeed.
  - Permerror: A permanent error has occurred. For example, the domain has a badly formatted SPF record.

- DomainKeys Identified Mail (**DKIM**):
  - Pass: Indicates the DKIM check for the message passed.
  - Fail (reason): Indicates the DKIM check for the message failed and why. For example, if the message was not signed or the signature was not verified.
  - None: Indicates that the message was not signed. This may or may not indicate that the domain has a DKIM record or the DKIM record does not evaluate to a result, only that this message was not signed.

- Domain-based Message Authentication, Reporting and Conformance (**DMARC**):
  - Pass: Indicates the DMARC check for the message passed.
  - Fail: Indicates the DMARC check for the message failed.
  - Bestguesspass: Indicates that no DMARC TXT record for the domain exists, but if one had existed, the DMARC check for the message would have passed.
  - None: Indicates that no DMARC TXT record exists for the sending domain in DNS.

*Composite Authentication*: This is a value is used by Microsoft 365 to combine email authentication like SPF, DKIM, and DMARC, to determine if the message is authentic. It uses the *From:* domain of the mail as the basis of evaluation.
