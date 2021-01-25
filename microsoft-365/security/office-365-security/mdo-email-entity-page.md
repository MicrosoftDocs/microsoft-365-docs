---
title: "The Microsoft Defender for Office 365 (MDO) email entity page"
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 01/21/2021
audience: ITPro
ms.topic: How-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
description: Microsoft Defender for Office 365 E5 and ATP P1 and ATP P2 customers can now get a 360-degree view of each email with email entity page. 
---
# The Email entity page

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Microsoft Defender for Office 365 (or MDO) E5, and MDO P1 and P2 admins can now get a 360-degree view of email using the **Email entity page** <get URL from Shubhanshi>. This go-to email page was created to enhance information delivered on the [Threat Explorer 'email details' fly-out](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/threat-explorer-views?view=o365-worldwide), giving administrators a 360-degree view of an email.

## Reach the email entity page

Either of the existing Office Security and Compliance center (protection.office.com) or new Microsoft 365 Security center (security.microsoft.com) will let you see and use the email entity page.

|Center  |URL  |Navigation  |
|---------|---------|---------|
|Security & Compliance |protection.office.com | Threat Management > Explorer   |
|Microsoft 365 security center |security.microsoft.com | Email & Collaboration > Explorer |

Once in Explorer, click the subject of an email you are investigating, and notice the gold bar at the top of the email fly-out. This invitation to the new page, reads 'Try out our new email entity page with enriched data...'. Select it to navigate to the new page.

:::image type="content" source="../../media/email-entitypage-banner.png" alt-text="You will see a gold banner with the words *Try out our new email entity page with enriched data*, to click and navigate to the new experience.":::

:::image type="content" source="../../media/email-entitypage-flyout.png" alt-text="This graphic of the email entity page focuses on headings that you'll see. Note that the email header is displayed here.":::

> [!NOTE]
> The permissions needed to view and use this page are the same as to view Threat Explorer. The admin must be a member of Global admin or global reader, or Security admin or security reader.

## Read the email entity page

The structure is designed to be easy to read and navigate through at a glance. Various tabs along the top of the page allow you to investigate in more detail. Here's how the layout works:

1. The most required fields are on the left side of the fly-out. These details are 'sticky', meaning they're anchored to the left no matter the tab you navigate to in the rest of the fly-out.

:::image type="content" source="../../media/email-entitypage-panel1.png" alt-text="Graphic of the email entity page with the left side highlighted. The title and facts about the mail delivery are over here.":::

2. On the top right corner are the actions that can be taken on an email. Any actions that can be taken through Explorer will also be available through email entity page.

:::image type="content" source="../../media/email-entitypage-panel2.png" alt-text="Graphic of the email entity page with the *right* side highlighted, this time. Actions like 'Email preview' and 'Go to quarantine' are here.":::

3. Deeper analysis can be done by sorting through the rest of the page, including the email detection details, email authentication status, and header. This area should be looked on a case-by-case basis, but the info in these tabs is available for any email.

:::image type="content" source="../../media/email-entitypage-panel3png.png" alt-text="The main panel of this page includes the email header, and will tell you if email authentication methods are Pass or Fail. No more guess work.":::

### Use email entity page tabs

The tabs along the top of the entity page will allow you to investigate email efficiently.

1. **Timeline**: This is the timeline view for an email (per the Threat Explorer timeline), and shows the original delivery to post-delivery events that happen on an email. For emails that have no post-delivery actions, the view shows the original delivery row in timeline view. Events like Zero-hour auto purge (ZAP), Remediate, URL clicks, et cetera, from sources like system, admin, and user show up here, in the order in which they occurred.
2. **Analysis**: This shows fields that help admins analyze an email in depth. For cases where admins need to understand more about detection, sender / recipient, and email authentication details, they should use the Analysis tab. Links for Attachments and URLs are also found on this page, under 'Related Entities'. Both attachments and identified threats are numbered here, and clicking will take you straight to the Attachments and URL pages. This tab also has a View header option to *show the email header*. Admins can compare any detail from email headers, side by side with information on the main panel, for clarity.
3. **Attachments**: This examines attachments found in the email with other details found on attachments. The number of attachments shown is currently limited to 10. Notice that detonation details for attachments found to be malicious is also shown here.
4. **URLs**: This tab lists URLs found in the email with other details about the URLs. The number of URLs is currently limited to 10. However, these 10 are prioritized to show *malicious URLs first*, saving you time and guess-work. The URLs which were found to be malicious and detonated will also be shown here.
5. **Similar emails**: This tab lists all emails similar to the *network message id + recipient* combination specific to this email. Similarity is based on the *body of the message*, only. The determinations made on mails to categorize them as 'similar' don't include a consideration of *attachments*.

## New to the email entity page

There are new capabilities that come with this email entity page. Here's the list.

### Email preview for Cloud mailboxes
Admins can preview emails in Cloud mailboxes, ***if*** the mails are still present in the Cloud. In case of a soft delete (by an admin, or user), or ZAP (to quarantine), emails are no longer present in the Cloud location. In that case, admins won't be able to preview those specific mails. Emails that were dropped, or where delivery failed, never actually made it into the mailbox. As a result, admins won’t be able to preview those emails either.

> [!WARNING]
>Previewing emails requires a special role called ***Preview*** to be assigned to admins. You can add this role by going to **Permissions & roles** > **Email & collaboration roles** in *security.microsoft.com*, or **Permissions** in *protection.office.com*. Add the ***Preview*** role to any of the role groups, or a copy of a role group that allows admins in your organization to work in Threat Explorer.

### Detonation details

These details are specific to email attachments and URLs.

Users will see enriched detonation details for known malicious attachments or hyperlinks found in their mailboxes, including Detonation chain, Detonation summary, Screenshot, and Observed behavior details to help customers understand why the attachment or URL was deemed malicious and detonated.
 
- *Detonation chain*: A single file or URL detonation can trigger multiple detonations. The Detonation chain tracks the path of detonations, including the original malicious file or URL that caused the verdict, and all other files or URLs effected by the detonation. These URLs or attached files may not be directly present in the email, but including that analysis is important to determining why the file or URL was found to be malicious.
- *Detonation summary*: This gives information on:
    - Detonation time range.
    - Verdict of the attached file, or URL.
    - Related info (file number, URLs, IPs, or Domains): These were other entities examined during detonation.
    - Detonation screenshot: This shows screenshot(s) taken during detonation process.
    - Detonation details: These are the exact behavior details of each process that took place during the detonation.
:::image type="content" source="../../media/email-entitypage-panelNew1.png" alt-text="Screenshot of the detonation summary showing the chain, summary, detonation details, and screenshot under the heading *Deep Analysis*.":::

