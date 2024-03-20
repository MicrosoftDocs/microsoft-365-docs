---
title: The email entity page in Defender for Office 365
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 2/22/2024
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdo
ms.localizationpriority: medium
ms.collection:
- m365-security
- tier1
- highpri
ms.custom:
description: Admins can learn about the Email entity page in Microsoft Defender for Office 365. This page show many details about email messages. For example, email headers, threat detection details, the latest and original delivery locations, delivery actions, and IDs (for example, the Network message ID and the associated Alert Id).
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# The Email entity page in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have a 360-degree view of email using the _Email entity page_ in the Microsoft Defender portal. This go-to email page was created to the enhance information that's delivered throughout Defender for Office 365 and Microsoft Defender XDR.

This article explains the layout and features on the Email entity page.

See email details in the experiences below, including [previewing and downloading the email](#email-preview-and-download-for-cloud-mailboxes), the email headers _with the option to copy_, Detection details, Threats detected, Latest and Original delivery locations, Delivery actions, and IDs like Alert ID, Network Message ID and more.

## Permissions and licensing for the Email entity page

To use the email entity page, you need to be assigned permissions. The permissions and licensing are the same as Threat Explorer (Explorer) and Real-time detections. For more information, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

## Where to find the Email entity page

There are no direct links to the **Email entity** page from the Defender portal, because the URL contains specific details about the URL.

The :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** action is available in the Defender portal wherever you find details about email messages. For example:

- Advanced Hunting
- Alerts
- Reporting
- The Action Center
- **Threat Explorer** (**Explorer**) on the **Explorer** page at <https://security.microsoft.com/threatexplorerv3> or **Real-time detections** on the **Real-time detections** page at <https://security.microsoft.com/realtimereportsv3>. Use one of the following methods:
  - Verify the **All email** view is selected \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.
  - Select the **Malware** view \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.
  - Select the **Phish** view \> verify the **Email** tab (view) in the details area is selected \> click on the **Subject** value in an entry.

  **Open email entity** is available at the top of the Subject details flyout that opens. For more information, see [Email view for the details area of the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer).

- **Quarantine**: On the **Quarantine** page at <https://security.microsoft.com/quarantine> \> verify the **Email** tab is selected \> select an entry by clicking anywhere in the row other than the check box. **Open email entity** is available at the top of the details flyout that opens. For more information, see [View quarantined email details](quarantine-admin-manage-messages-files.md#view-quarantined-email-details).
- **Admin email submissions**: On the **Submissions** page at <https://security.microsoft.com/reportsubmission> \> select the **Emails** tab \> select an entry by clicking anywhere in the row other than the check box. **Open email entity** is available at the top of the details flyout that opens. For more information, see [View email attachment admin submissions to Microsoft](submissions-admin.md#view-email-attachment-admin-submissions-to-microsoft).
- **User reported email submissions**: On the **Submissions** page at <https://security.microsoft.com/reportsubmission> \> select the **User reported** tab \> select an entry by clicking anywhere in the row other than the check box. **Open email entity** is available at the top of the details flyout that opens. For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft).

## How to read the email entity page

:::image type="content" source="../../media/email-entity-main-page.png" alt-text="Screenshot of the Email entity page showing the available details pane and tabs." lightbox="../../media/email-entity-main-page.png":::

The details pane on the left side of the page contains collapsible sections with details about the message. These sections remain constant as long as you're on the page. The available sections are:

- **Tags** section. Shows any users tags (including Priority accounts) that are assigned to senders or recipients. For more information about user tags, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).
- **Detection details** section:
  - **Original Threats**
  - **Original delivery location**
  - **Latest Threats**
  - **Latest delivery location**
  - **Detection technology**
  - **Delivery action**
  - **Primary Override : Source**
- **Email details** section:
  - **Directionality**
  - **Recipient (To)**<sup>\*</sup>
  - **Sender**<sup>\*</sup>
  - **Time received**
  - **Internet Message ID**<sup>\*</sup>
  - **Network Message ID**<sup>\*</sup>
  - **Cluster ID**
  - **Language**

  <sup>\*</sup> This property has a :::image type="icon" source="../../media/m365-cc-sc-copy-icon.png" border="false"::: **Copy** action available.

## Actions

The following actions are available near the top of the page:

- :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action**: For information, see [Remediate using Take action](threat-explorer-threat-hunting.md#remediate-using-take-action).
- :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: **Email preview**¹
- :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More options**:
  - :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Download email**¹

    > [!TIP]
    > **Download email** isn't available for messages that were quarantined. Instead, [download a password protected copy of the message from quarantine](quarantine-admin-manage-messages-files.md#download-email-from-quarantine).

¹ The **Email preview** and **Download email** actions require the **Preview** role in [Email & collaboration permissions](mdo-portal-permissions.md). By default, this role is assigned to the **Data Investigator** and **eDiscovery Manager** role groups. Members of only the **Organization Management** or **Security Administrators** role groups can't open these actions. You can add the members of the groups to the **Data Investigator** and **eDiscovery Manager** role groups, or you can [create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) with the same roles as **Organization Management** or **Security Administrator**, and then add the **Search and Purge** role to the custom role group.

The tabs (views) along the top of the page allow you to investigate email efficiently. These views are described in the following subsections.

### Timeline view

The **Timeline** view shows the delivery and post-delivery events that happened to the message.

The following information is available. Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

- **Timeline**
- **Source**
- **Event types**
- **Result**
- **Threats**
- **Details**

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find information on the page. Type text in the box and then press the ENTER key.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the data to a CSV file.

A message with no post-delivery actions is likely to have only one row, likely with the **Result** value **Inbox folder - Delivered**. Other actions add more rows to the view.

For information about the available actions, see the Actions section.

:::image type="content" source="../../media/email-entity-timeline-view.png" alt-text="Screenshot of the Timeline view on the Email entity page." lightbox="../../media/email-entity-timeline-view.png":::

### Analysis tab

### URL tab

## Similar emails tab

### How to use the email entity page tabs

The tabs along the top of the entity page allow you to investigate email efficiently.

1. **Timeline**: 
2. **Analysis**: Analysis shows fields that help admins analyze an email in depth. For cases where admins need to understand more about detection, sender / recipient, and email authentication details, they should use the Analysis tab. Links for Attachments and URLs are also found on this page, under 'Related Entities'. Both attachments and identified threats are numbered here, and clicking takes you straight to the Attachments and URL pages. This tab also has a View header option to *show the email header*. Admins can compare any detail from email headers, side by side with information on the main panel, for clarity.
3. **Attachments**: This examines attachments found in the email with other details found on attachments. The number of attachments shown is currently limited to 10. Notice that detonation details for attachments found to be malicious is also shown here.
4. **URLs**: This tab lists URLs found in the email with other details about the URLs. The number of URLs is limited to 10 right now, but these 10 are prioritized to show *malicious URLs first*. Prioritization saves you time and guess-work. The URLs that were found to be malicious and detonated are also shown here.
5. **Similar emails**: This tab lists all emails similar to the *network message id + recipient* combination specific to this email. Similarity is based on the *body of the message*, only. The determinations made on mails to categorize them as 'similar' don't include a consideration of *attachments*.

## Available on the email entity page

Here are some helpful specifics to get started.

### Email preview and download for Cloud mailboxes

Admins can preview and download emails in Cloud mailboxes, ***if*** the mails are still accessible to Microsoft in an Exchange Online mailbox. In case of a soft delete (by an admin, or user), or ZAP (to quarantine), the emails are no longer present in the Exchange Online mailbox. In that case, admins won't be able to preview or download those specific emails. Emails that were dropped, or where delivery failed, never made it into the mailbox and as a result, admins won't be able to preview or download those emails either.

> [!IMPORTANT]
> Previewing and downloading emails requires a special role called **Preview**. You can assign this role in the following locations:
>
> - [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) (Affects the Defender portal only, not PowerShell): **Security operations/Raw data (email & collaboration)/Email content (read)**.
> - [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Data Investigator** or **eDiscovery Manager** role groups. Or, you can [create a new role group](mdo-portal-permissions.md#create-email--collaboration-role-groups-in-the-microsoft-defender-portal) and add the **Preview** role to it.

### Detonation details

These details are specific to email attachments and URLs. Users can see these details by going to Explorer and applying the *detection technology* filter set to file detonation or URL detonation. Emails filtered for file detonation will contain a malicious file with detonation details, and those filtered for URLs contain a malicious URL and its detonation details.

Users see enriched detonation details for known malicious attachments or URLs found in their emails, which got detonated for their specific tenant. It includes the Detonation chain, Detonation summary, Screenshot, and Observed behavior details to help customers understand why the attachment or URL was deemed malicious and detonated.

1. *Detonation chain*. A single file or URL detonation can trigger multiple detonations. The Detonation chain tracks the path of detonations, including the original malicious file or URL that caused the verdict, and all other files or URLs affected by the detonation. These URLs or attached files may not be directly present in the email, but including that analysis is important to determining why the file or URL was found to be malicious.

    > [!NOTE]
    > This may show just the top level item if none of the entities linked to it were found to be problematic, or were detonated.

1. *Detonation Summary* gives a basic summary for detonation such as *analysis time*, the time when detonation occurred, OS and application, the operating system and application in which the detonation occurred, file size, and verdict reason.
1. *Screenshots* show the screenshots captured during detonation. There can be multiple screenshots during detonation. No screenshots are captured for
    - Container type files like .zip or .rar.
    - If a URL opens into a link that directly downloads a file. However, you'll see the downloaded file in the detonation chain.
1. *Behavior Details* are an export that shows behavior details like exact events that took place during detonation, and observables that contain URLs, IPs, domains, and files that were found during detonation (and can either be problematic or benign). Be aware, there may be no behavior details for:
    - Container files like .zip or .rar that are holding other files.

### Other features that make the Email entity page helpful

*Tags*: These are tags applied to users. If the user is a recipient, admins will see a *recipient* tag. Likewise, if the user is a sender, a *sender* tag. This appears in the left side of the email entities page (in the part that's described as *sticky* and, thus, anchored to the page).

*Latest delivery location*: The latest delivery location is the location where an email landed after system actions like ZAP, or admin actions like Move to Deleted Items, finish. Latest delivery location isn't intended to inform admins of the message's *current* location. For example, if a user deletes a message, or moves it to archive, the delivery location won't be updated. However, if a system action has taken place and updated the location (like a ZAP resulting in an email moving to quarantine) this would update the Latest delivery location to quarantine.

*Email details*: Details required for a deeper understanding of email available in the *Analysis* tab.

- *Exchange mail flow rules (also known as transport rules)*: These rules are applied to a message at the transport layer and take precedence over phish and spam verdicts. Mail flow rules are created and modified in the Exchange admin center at <https://admin.exchange.microsoft.com/#/transportrules>, but if any mail flow rule applies to a message, the rule name and GUID will be shown here. Valuable information for tracking purposes.

- *Primary Override: Source*: Primary override and source refer to the tenant or user setting which impacted the delivery of the email, overriding the delivery location given by the system (as per the threat and detection technology). As an example, this could be an email blocked due to a tenant configured mail flow rule or an email allowed due to an end-user setting for Safe Senders.

- *All Overrides*: All Overrides refer to the list of overrides (tenant or user settings) that was applied on the email, which may or may not have impacted the delivery of an email. As an example, if a tenant configured mail flow rule, as well as a tenant configured policy setting (for example, from the Tenant Allow/Block List), is applied to an email, then both will be listed in this field. You can check the primary override field to determine the setting that impacted the delivery of the email.

- *Bulk Complaint Level (BCL)*: The bulk complaint level (BCL) of the message. A higher BCL indicates a bulk mail message is more likely to generate complaints (the natural result if the email is likely to be spam).

- *Spam Confidence Level (SCL)*: The spam confidence level (SCL) of the message. A higher value indicates the message is more likely to be spam.

- *Client type*: Indicates the Client type from which the email was sent like REST.

- *Forwarding*: For scenarios with autoforwarding, it indicates the forwarding user as well as the forwarding type like ETR or SMTP forwarding.

- *Distribution list*: Shows the distribution list, if the recipient received the email as a member of the list. It shows the top level distribution list if there are nested distribution lists involved.

- *To, Cc*: Indicates the addresses that are listed in To, Cc fields of an email. The information in these fields is restricted to 5000 characters.

- *Domain Name*: Is the sender domain name.

- *Domain Owner*: Specifies the owner of the sending domain.

- *Domain Location*: Specifies the location of the sending domain.

- *Domain Created Date*: Specifies the date of creation of the sending domain. A newly created domain is something you could be cautious of if other signals indicate some suspicious behavior.

*Email Authentication*: Email authentication methods used by Microsoft 365 include SPF, DKIM, and DMARC.

- Sender Policy Framework (**SPF**):  Describes results for SPF check for the message. Possible values can be:
  - Pass (IP address): The SPF check for the message passed and includes the sender's IP address. The client is authorized to send or relay email on behalf of the sender's domain.
  - Fail (IP address): The SPF check for the message failed, and includes the sender's IP address. This is sometimes called hard fail.
  - Softfail (reason): The SPF record designated the host as not being allowed to send but is in transition.
  - Neutral: The SPF record explicitly states that it doesn't assert whether the IP address is authorized to send.
  - None: The domain doesn't have an SPF record, or the SPF record doesn't evaluate to a result.
  - Temperror: A temporary error has occurred. For example, a DNS error. The same check later might succeed.
  - Permerror: A permanent error has occurred. For example, the domain has a badly formatted SPF record.

- DomainKeys Identified Mail (**DKIM**):
  - Pass: Indicates the DKIM check for the message passed.
  - Fail (reason): Indicates the DKIM check for the message failed and why. For example, if the message wasn't signed or the signature wasn't verified.
  - None: Indicates that the message wasn't signed. This may or may not indicate that the domain has a DKIM record or the DKIM record doesn't evaluate to a result, only that this message wasn't signed.

- Domain-based Message Authentication, Reporting, and Conformance (**DMARC**):
  - Pass: Indicates the DMARC check for the message passed.
  - Fail: Indicates the DMARC check for the message failed.
  - Bestguesspass: Indicates that no DMARC TXT record for the domain exists, but if one had existed, the DMARC check for the message would have passed.
  - None: Indicates that no DMARC TXT record exists for the sending domain in DNS.

*Composite Authentication*: This is a value used by Microsoft 365 to combine email authentication like SPF, DKIM, and DMARC, to determine if the message is authentic. It uses the *From:* domain of the mail as the basis of evaluation.

## Actions you can take on the Email entity Page

Security teams can take email actions. For example:

- Soft delete and hard delete.
- Move to junk.
- Move to inbox.
- Trigger an investigation.
- Submit to Microsoft for review in line.

You can also trigger **Tenant level block** actions for files, URLs, or senders from the Email entity page.

You'll be able to select **Take actions** from the top right corner of the entity page and this will open the Action wizard for you to select the specific action you need.

> [!TIP]
We're adding the ability to take multiple actions together. You can take email remediation actions, create submissions, tenant level block actions (block senders, domains, files, and URLs), investigative actions, and proposed remediation from the **same panel**. Actions are now contextual and grouped together depending on the **latest location of the email message**.

:::image type="content" source="../../media/Take-ActionWizard-Email-entity.png" alt-text="Take action from entity page." lightbox="../../media/Take-ActionWizard-Email-entity.png":::

In the existing Action wizard you can take email actions, create email submissions, block senders and sender domains, take investigative actions, and do two step approval (add to remediation) in the same flyout. The flyout follows a consistent flow for ease of use. The Action wizard uses the same system as Explorer actions (for example, for Delete, Submissions, and Investigation actions). You can see and track these actions in the Unified action center at <https://security.microsoft.com/action-center/history> (for deleted emails), on the Submission page at <https://security.microsoft.com/reportsubmission> (for submissions), and in the Tenant Allow/Block List at <https://security.microsoft.com/tenantAllowBlockList> page (for block entries).

> [!TIP]
> These enhancements bring the following benefits:
>
> - SecOps can now select multiple actions together in the single flow.
> - We grouped actions together for a logical grouping of good (false positive) and bad (false negative) message actions.
> - Actions are contextual in nature in the same panel. For example, if the message is in already in Inbox, the **Move to Inbox** action is grayed out.
>
> There are no changes to the action permissions.

We're also bringing tenant-level blocks for URLs and attachments to the respective **Email entity**, **URL**, and **Attachments** tabs. After approval, you can track the block entries for URLs and attachments on the **URLs** and **Files** tabs on the **Tenant Allow/Block List** page.

:::image type="content" source="../../media/Block-URL-Email-entity.png" alt-text="Take block URL action from entity page." lightbox="../../media/Block-URL-Email-entity.png":::

See [permissions](mdo-portal-permissions.md) required to take these actions.

### The Email summary panel

The email summary panel is a summarized view of the full email entity page. It contains standardized details about the email (for example, detections), as well as context-specific information (for example, for Quarantine or Submissions metadata). The email summary panel replaces the traditional email flyouts throughout Microsoft Defender for Office 365.

:::image type="content" source="../../media/open-email-entity-mdo.png" alt-text="Open the email entity link." lightbox="../../media/open-email-entity-mdo.png":::

> [!NOTE]
> To view all the components, click on the **Open email entity** link to open the full email entity page.

The email summary panel is divided into the following sections:

- *Delivery details*: Contains information about threats and corresponding confidence level, detection technologies, and original and latest delivery location.

- *Email details*: Contains information about email properties like sender name, sender address, time received, authentication details, and other several other details.

- *URLs*: By default, you see 3 URLs and their corresponding threats. You can always select **View all URLs** to expand and see all URLs and export them.

- *Attachments*: By default, you see 3 attachments. You can always select **View all attachments** to expand and see all attachments.

In addition to the above sections, you also see sections specific to few experiences that are integrated with the summary panel:

- Submissions:

  - *Submission details*: Contains information about the specific submissions such as:
    - Date submitted
    - Subject
    - Submission type
    - Reason for submitting
    - Submission ID
    - Submitted by

  - *Result details*: Messages that are submitted are reviewed. You can see the result of your submission as well as any recommended next steps.

- Quarantine:

  - *Quarantine details*: Contains quarantine-specific details. For more information, see [Manage quarantined messages](quarantine-admin-manage-messages-files.md#view-quarantined-email-details).

    - Expires: The date/time when the message is automatically and permanently deleted from quarantine.
    - Released to: All email addresses (if any) to which the message has been released.
    - Not yet released to: All email addresses (if any) to which the message hasn't yet been released.

  - *Quarantine actions*: For more information on different quarantine actions, see [Manage quarantined messages](quarantine-admin-manage-messages-files.md#take-action-on-quarantined-email).
