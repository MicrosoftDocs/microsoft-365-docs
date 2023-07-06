---
title: Investigate malicious email that was delivered in Microsoft 365, Find and investigate malicious email
keywords: TIMailData-Inline, Security Incident, incident, Microsoft Defender for Endpoint PowerShell, email malware, compromised users, email phish, email malware, read email headers, read headers, open email headers,special actions
f1.keywords:
  - NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 6/15/2023
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 8f54cd33-4af7-4d1b-b800-68f8818e5b2a
ms.collection:
  - m365-security
  - tier1
description: Learn how to use threat investigation and response capabilities to find and investigate malicious email.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Investigate malicious email that was delivered in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

[Microsoft Defender for Office 365](defender-for-office-365.md) enables you to investigate activities that put people in your organization at risk, and to take action to protect your organization. For example, if you are part of your organization's security team, you can find and investigate suspicious email messages that were delivered. You can do this by using [Threat Explorer (or real-time detections)](threat-explorer-about.md).

> [!NOTE]
> Jump to the remediation article [here](remediate-malicious-email-delivered-office-365.md).

## Before you begin

Make sure that the following requirements are met:

- Your organization has [Microsoft Defender for Office 365](defender-for-office-365.md) and [licenses are assigned to users](../../admin/manage/assign-licenses-to-users.md).

- [Audit logging](../../compliance/audit-log-enable-disable.md) is turned on for your organization (it's on by default).

- Your organization has policies defined for anti-spam, anti-malware, anti-phishing, and so on. See [Protect against threats in Office 365](protect-against-threats.md).

- You are a global administrator, or you have either the Security Administrator or the Search and Purge role assigned in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md). For some actions, you must also have the Preview role assigned.

### Preview role permissions

To perform certain actions, such as viewing message headers or downloading email message content, you must have the *Preview* role added to another appropriate role group. The following table clarifies required roles and permissions.

|Activity|Role group|Preview role needed?|
|---|---|---|
|Use Threat Explorer (and Real-time detections) to analyze threats|Global Administrator <p> Security Administrator <p> Security Reader|No|
|Use Threat Explorer (and Real-time detections) to view headers for email messages as well as preview and download quarantined email messages|Global Administrator <p> Security Administrator <p> Security Reader|No|
|Use Threat Explorer to view headers, preview email (only in the email entity page) and download email messages delivered to mailboxes|Global Administrator <p> Security Administrator <p> Security Reader <p> Preview|Yes|

> [!NOTE]
> **Preview** is a role, not a role group. The Preview role must be added to an existing role group or a new role group in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).
>
> The Global Administrator role is assigned the Microsoft 365 admin center at <https://admin.microsoft.com>. The Security Administrator and Security Reader roles are assigned in Microsoft 365 Defender portal.

We understand previewing and downloading email are sensitive activities, so auditing is enabled for these activities. Once an admin performs these activities on email, audit logs are generated for the same and can be seen in the Microsoft 365 Defender portal at <https://security.microsoft.com> at **Audit** \> **Search** tab, and filter on the admin name in **Users** box. The filtered results will show activity **AdminMailAccess**. Select a row to view details in the **More information** section about previewed or downloaded email.

## Find suspicious email that was delivered

Threat Explorer is a powerful report that can serve multiple purposes, such as finding and deleting messages, identifying the IP address of a malicious email sender, or starting an incident for further investigation. The following procedure focuses on using Explorer to find and delete malicious email from recipient's mailboxes.

> [!NOTE]
> Default searches in Explorer don't currently include delivered items that were removed from the cloud mailbox by zero-hour auto purge (ZAP). This limitation applies to all views (for example, the **Email \> Malware** or **Email \> Phish** views). To include items removed by ZAP, you need to add a **Delivery action** set to include **Removed by ZAP**. If you include all options, you'll see all delivery action results, including items removed by ZAP.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Explorer** . To go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorer>.

   On the **Explorer** page, the **Additional actions** column shows admins the outcome of processing an email. The **Additional actions** column can be accessed in the same place as **Delivery action** and **Delivery location**. Special actions might be updated at the end of Threat Explorer's email timeline, which is a new feature aimed at making the hunting experience better for admins.

2. In the **View** menu, choose **Email** \> **All email** from the dropdown list.

    :::image type="content" source="../../media/tp-InvestigateMalEmail-viewmenu.png" alt-text="The Malware drop-down list" lightbox="../../media/tp-InvestigateMalEmail-viewmenu.png":::

    The *Malware* view is currently the default, and captures emails where a malware threat is detected. The *Phish* view operates in the same way, for Phish.

    However, *All email* view lists every mail received by the organization, whether threats were detected or not. As you can imagine, this is a lot of data, which is why this view shows a placeholder that asks a filter be applied. (This view is only available for Defender for Office 365 P2 customers.)

    *Submissions* view shows up all mails submitted by admin or user that were reported to Microsoft.

3. **Search and filter in Threat Explorer**: Filters appear at the top of the page in the search bar to help admins in their investigations. Notice that multiple filters can be applied at the same time, and multiple comma-separated values added to a filter to narrow down the search. Remember:

    - Filters do exact matching on most filter conditions.
    - Subject filter uses a CONTAINS query. A CONTAINS query will look for an exact match of the substring. Wildcards or regular expressions are not supported.
    - URL filters work with or without protocols (ex. https).
    - URL domain, URL path, and URL domain and path filters don't require a protocol to filter.
    - You must click the Refresh icon every time you change the filter values to get relevant results.

4. **Advanced filters**: With these filters, you can build complex queries and filter your data set. Clicking on *Advanced Filters* opens a flyout with options.

   Advanced filtering is a great addition to search capabilities. A boolean NOT on the **Recipient**, **Sender** and **Sender domain** filters allows admins to investigate by excluding values. This option is the **Equals none of** selection. This option allows admins to exclude unwanted mailboxes from investigations (for example, alert mailboxes and default reply mailboxes), and is useful for cases where admins search for a specific subject (for example, Attention) where the Recipient can be set to *Equals none of: defaultMail@contoso.com*. This is an exact value search.

   :::image type="content" source="../../media/tp-InvestigateMalEmail-AdvancedFilter.png" alt-text="The Recipients pane" lightbox="../../media/tp-InvestigateMalEmail-AdvancedFilter.png":::

   Adding a time filter to the start date and end date helps your security team to drill down quickly. The shortest allowed time duration is 30 minutes. If you can narrow the suspicious action by time-frame (e.g., it happened 3 hours ago), this will limit the context and help pinpoint the problem.

   :::image type="content" source="../../media/tp-InvestigateMalEmail-FilterbyHours.png" alt-text="The filtering by hours option" lightbox="../../media/tp-InvestigateMalEmail-FilterbyHours.png":::

5. **Fields in Threat Explorer**: Threat Explorer exposes a lot more security-related mail information such as *Delivery action*, *Delivery location*, *Special action*, *Directionality*, *Overrides*, and *URL threat*. It also allows your organization's security team to investigate with a higher certainty.

    *Delivery action* is the action taken on an email due to existing policies or detections. Here are the possible actions an email can take:

    - **Delivered** – email was delivered to inbox or folder of a user and the user can directly access it.
    - **Junked** (Delivered to junk)– email was sent to either user's junk folder or deleted folder, and the user has access to email messages in their Junk or Deleted folder.
    - **Blocked** – any email messages that are quarantined, that failed, or were dropped.
    - **Replaced** – any email where malicious attachments are replaced by .txt files that state the attachment was malicious

    **Delivery location**: The Delivery location filter is available in order to help admins understand where suspected malicious mail ended-up and what actions were taken on it. The resulting data can be exported to spreadsheet. Possible delivery locations are:

    - **Inbox or folder** – The email is in the Inbox or a specific folder, according to your email rules.
    - **On-prem or external** – The mailbox doesn't exist in the Cloud but is on-premises.
    - **Junk folder** – The email is in a user's Junk mail folder.
    - **Deleted items folder** – The email is in a user's Deleted items folder.
    - **Quarantine** – The email in quarantine, and not in a user's mailbox.
    - **Failed** – The email failed to reach the mailbox.
    - **Dropped** – The email was lost somewhere in the mail flow.

    **Directionality**: This option allows your security operations team to filter by the 'direction' a mail comes from, or is going. Directionality values are *Inbound*, *Outbound*, and *Intra-org* (corresponding to mail coming into your org from outside, being sent out of your org, or being sent internally to your org, respectively). This information can help security operations teams spot spoofing and impersonation, because a mismatch between the Directionality value (ex. *Inbound*), and the domain of the sender (which *appears* to be an internal domain) will be evident! The Directionality value is separate, and can differ from, the Message Trace. Results can be exported to spreadsheet.

    **Overrides**: This filter takes information that appears on the mail's details tab and uses it to expose where organizational, or user policies, for allowing and blocking mails have been *overridden*. The most important thing about this filter is that it helps your organization's security team see how many suspicious emails were delivered due to configuration. This gives them an opportunity to modify allows and blocks as needed. This result set of this filter can be exported to spreadsheet.

    |Threat Explorer Overrides|What they mean|
    |---|---|
    |Allowed by Org Policy|Mail was allowed into the mailbox as directed by the organization policy.|
    |Blocked by Org policy|Mail was blocked from delivery to the mailbox as directed by the organization policy.|
    |File extension blocked by Org Policy|File was blocked from delivery to the mailbox as directed by the organization policy.|
    |Allowed by User Policy|Mail was allowed into the mailbox as directed by the user policy.|
    |Blocked by User Policy|Mail was blocked from delivery to the mailbox as directed by the user policy.|

    **URL threat**: The URL threat field has been included on the *details* tab of an email to indicate the threat presented by a URL. Threats presented by a URL can include *Malware*, *Phish*, or *Spam*, and a URL with *no threat* will say *None* in the threats section.

6. **Email timeline view**: Your security operations team might need to deep-dive into email details to investigate further. The email timeline allows admins to view actions taken on an email from delivery to post-delivery. To view an email timeline, click on the subject of an email message, and then click Email timeline. (It appears among other headings on the panel like Summary or Details.) These results can be exported to spreadsheet.

    Email timeline will open to a table that shows all delivery and post-delivery events for the email. If there are no further actions on the email, you should see a single event for the original delivery that states a result, such as *Blocked*, with a verdict like *Phish*. Admins can export the entire email timeline, including all details on the tab and email (such as, Subject, Sender, Recipient, Network, and Message ID). The email timeline cuts down on randomization because there is less time spent checking different locations to try to understand events that happened since the email arrived. When multiple events happen at, or close to, the same time on an email, those events show up in a timeline view.

7. **Preview / download**: Threat Explorer gives your security operations team the details they need to investigate suspicious email. Your security operations team can either:

    - [Check the delivery action and location](#check-the-delivery-action-and-location).

    - [View the timeline of your email](#view-the-timeline-of-your-email).

### Check the delivery action and location

In [Threat Explorer (and real-time detections)](threat-explorer-about.md), you now have **Delivery Action** and **Delivery Location** columns instead of the former **Delivery Status** column. This results in a more complete picture of where your email messages land. Part of the goal of this change is to make investigations easier for security operations teams, but the net result is knowing the location of problem email messages at a glance.

Delivery Status is now broken out into two columns:

- **Delivery action** - What is the status of this email?
- **Delivery location** - Where was this email routed as a result?

Delivery action is the action taken on an email due to existing policies or detections. Here are the possible actions an email can take:

- **Delivered** – email was delivered to inbox or folder of a user and the user can directly access it.
- **Junked** – email was sent to either user's junk folder or deleted folder, and the user has access to email messages in their Junk or Deleted folder.
- **Blocked** – any email messages that are quarantined, that failed, or were dropped.
- **Replaced** – any email where malicious attachments are replaced by .txt files that state the attachment was malicious.

Delivery location shows the results of policies and detections that run post-delivery. It's linked to a Delivery Action. This field was added to give insight into the action taken when a problem mail is found. Here are the possible values of delivery location:

- **Inbox or folder** – The email is in the inbox or a folder (according to your email rules).
- **On-prem or external** – The mailbox doesn't exist on cloud but is on-premises.
- **Junk folder** – The email is in a user's Junk folder.
- **Deleted items folder** – The email is in a user's Deleted items folder.
- **Quarantine** – The email in quarantine, and not in a user's mailbox.
- **Failed** – The email failed to reach the mailbox.
- **Dropped** – The email gets lost somewhere in the mail flow.

### View the timeline of your email

**Email Timeline** is a field in Threat Explorer that makes hunting easier for your security operations team. When multiple events happen at or close to the same time on an email, those events show up in a timeline view. Some events that happen post-delivery to email are captured in the **Special actions** column. Combining information from the timeline of an email message with any special actions that were taken post-delivery gives admins insight into policies and threat handling (such as where the mail was routed, and, in some cases, what the final assessment was).

> [!IMPORTANT]
> Jump to a remediation topic [here](remediate-malicious-email-delivered-office-365.md).

## Related topics

[Remediate malicious email delivered in Office 365](remediate-malicious-email-delivered-office-365.md)

[Microsoft Defender for Office 365](office-365-ti.md)

[Protect against threats in Office 365](protect-against-threats.md)

[View reports for Defender for Office 365](reports-defender-for-office-365.md)
