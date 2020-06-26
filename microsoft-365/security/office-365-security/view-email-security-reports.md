---
title: View email security reports in the Security & Compliance Center
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 01/16/2020
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 3a137e28-1174-42d5-99af-f18868b43e86
ms.collection:
- M365-security-compliance
description: "Learn how to find and use email security reports for your organization. Email security reports are available in the Security & Compliance Center."
ms.custom: seo-marvel-apr2020
---

# View email security reports in the Security & Compliance Center

A variety of reports are available in the [Security & Compliance Center](https://protection.office.com) to help you see how email security features, such as anti-spam, anti-malware, and encryption features in Microsoft 365 are protecting your organization. If you have the [necessary permissions](#what-permissions-are-needed-to-view-these-reports), you can view these reports in the Security & Compliance Center by going to **Reports** \> **Dashboard**.

![Reports dashboard in the Security & Compliance Center](../../media/6b213d34-adbb-44af-8549-be9a7e2db087.png)

Your email security reports include the following:

- [URL Threat Protection report](#url-threat-protection-report-new) (**NEW!**)
- [Compromised Users report](#compromised-users-report)
- [Encryption report](#encryption-report)
- [Threat Protection Status report](#threat-protection-status-report)
- [Malware Detections report](#malware-detections-report)
- [Top Malware report](#top-malware-report)
- [Top Senders and Recipients report](#top-senders-and-recipients-report)
- [Spoof Detections report](#spoof-detections-report)
- [Spam Detections report](#spam-detections-report)
- [Sent and received email report](#sent-and-received-email-report)
- [User-reported messages report](#user-reported-messages-report)

## URL Threat Protection report (**NEW!**)

The URL Threat Protection report is available to anyone with:

- An Exchange Online Protection, *and* Advanced Threat Protection add-on (Plan 1 *or* Plan 2)
- A Microsoft 365 E5 subscription

This is a 'click-centric' report that has two aggregated views which shows data for the last 90 days.

1. The first view is by *URL click-protection action*, which is focused on showing the number of URL clicks by users within the tenant, and the result of the click. A click here indicates that the user has clicked through the block page to the malicious website (this can be disabled by the administrator within a Safe Links policy).

2. The second view is *URL click by applications*, which shows the number of URLs click in different applications that support Safe Links today, such as in an email client or in Microsoft Word. Data in both aggregated views are refreshed once every 4 hours.

The details table of the URL Threat Protection report provides a near-real-time view of all clicks that happen within the tenant for the last 7 days, and it includes investigative information such as *username*, *URL*, the *network message ID* (if the URL was clicked from an email), and other valuable pieces of information useful for investigations and analyses.

By default, the report only shows data on clicks from URLs that were blocked by Safe Links, but it is also possible to see information for all URL clicks through selecting *Allowed URLs* checkbox in the filters.

This report will not have data of clicks from users where the Safe Links policy applied has the *Do not track user clicks* option selected.

![Graphic of the URL Threat Protection Report in action.](../../media/tp-URLThreatProRpt1.PNG)

## Compromised Users report

This report, available to anyone with Exchange Online Protection, shows the number of user accounts marked as Suspicious or Restricted users, data particularly useful as accounts enter either of the states that indicate the user account may be problematic, or even compromised. With frequent use, the Compromised User report can spot spikes, and even trends, in accounts marked in suspicious or restricted states, giving evidence there could be an issue with security and the wellness of your tenant. The aggregate view shows data for the last 90 days and the detail view shows data for the last 30 days. 

![The compromised users report as it appears in Microsoft 365.](../../media/tp-threatProtectStatRpt-CompromisedUserRpt.png)

## Encryption report

The **Encryption report** shows information about email messages that were encrypted, either through your organization's policies, or through end-user controls. Your organization's security team can use information in this report to identify patterns and proactively apply or adjust policies for sensitive email messages.

To view this report, in the Security & Compliance Center, go to **Reports** \> **Dashboard** \> **Encryption report**.

![Encryption report](../../media/encryptionreport-defaultview.png)

When the report first opens, you'll see data about encryption methods used on email messages for the past seven (7) days. You can change the date range and the details that are displayed in the report by clicking **Filters** in the upper right corner of the screen. The aggregate view allows for filtering for the last 90 days while the detail view allows for 10 days. 

![Encryption report filters](../../media/encryptionreport-filters.png)

You can also use the **Break down by** menu to view data by encryption template (or method).

![Encryption method or template](../../media/encryptionreport-breakdownby.png)

And, you can use the **View data by** menu to change the view to see counts of encrypted messages to the top five recipient domains.

![Encryption report view data by menu](../../media/encryptionreport-viewdataby.png)

With the flexibility of the new Encryption report, you can view trends and take appropriate actions. For example, if you see a high number of email messages encrypted by users, you might want to add an encryption policy to automate encryption for certain use cases. (To get help with that, see [Define mail flow rules to encrypt email messages in Microsoft 365](../../compliance/define-mail-flow-rules-to-encrypt-email.md).) As another example, if you have a number of encryption templates available but no one is using them, you might explore whether users need training for that feature.

Use this report enables your organization's security and compliance team to monitor how message encryption is being used, and whether further actions are needed. To learn more about encryption, see [Email encryption in Microsoft 365](../../compliance/email-encryption.md).

## Threat Protection Status report

The **Threat Protection Status** report is a smart report that shows malicious email that was detected and blocked by Exchange Online Protection. This report is useful for viewing email identified as malware or a phishing attempt over time (up to 90 days), and it enables security administrators to identify trends or determine whether policies need adjustments.

> [!NOTE]
> A Threat Protection Status report is available to customers who have either [Office 365 ATP](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) or [Exchange Online Protection](exchange-online-protection-overview.md) (EOP); however, the information that is displayed in the Threat Protection Status report for ATP customers will likely contain different data than what EOP customers might see. For example, EOP customers can view information about malware detected in email, but not information about [malicious files detected in SharePoint Online, OneDrive, or Microsoft Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-for-spo-odb-and-teams), an ATP-specific capability. ([Learn more about ATP reports](https://docs.microsoft.com/microsoft-365/security/office-365-security/view-reports-for-atp).)

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Threat Protection Status**.

![Threat Protection Status report](../../media/0ff86e12-c2b2-4d89-92a5-cefb054dc070.png)

When you first open the Threat Protection Status report, the report shows data for the past seven days by default; however, you can click **Filters** and change the date range for up to 90 days of detail. (If you are using a trial subscription, you might be limited to 30 days' of data.) note that the detail view filtering only allows for 30 days

This report is useful for viewing the effectiveness and impact of your organization's [Exchange Online Protection features](https://docs.microsoft.com/microsoft-365/security/office-365-security/eop-features), and for longer-term trending.

![Threat Protection Status report filters](../../media/ab6b6b8d-e97a-4c3a-8fb1-c4940dcb7a07.png)

You can also choose whether to view data for email identified as malicious, email identified as a phishing attempts, or email identified as containing malware.

![Threat Protection Status report view options](../../media/d429ecd7-cb7a-4c99-8d27-79a2832cf467.png)

## Malware Detections report

The **Malware Detections** report shows how many incoming and outgoing messages were detected as containing malware for your organization.

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Malware Detections**.

![Malware Detections Report example](../../media/a1ba61a3-565a-46d6-b0d5-6a6cff6b31d7.png)

Similar to other reports, like the [Threat Protection Status report](#threat-protection-status-report), the report displays data for the past seven days by default. However, you can choose **Filters** to change the date range. For the aggregate view filter, it only allows for 90 days while the detail view filter only allows for 10 days

## Top Malware report

The **Top Malware** report shows the various kinds of malware that was detected by [Exchange Online](https://docs.microsoft.com/microsoft-365/security/office-365-security/eop-features).

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Top Malware**.

![SCC - EOP Top Malware](../../media/763330b3-f56e-4ba4-b0bb-051500ae950a.png)

When you hover over a wedge in the pie chart, you can see the name of a kind of malware and how many messages were detected as having that malware.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

![This report shows the top malware detected for your organization](../../media/3fded224-fb31-4713-86f2-8afce5ce2991.png)

Below the chart, you'll see a list of detected malware and how many messages were detected as having that malware. The aggregate view filter only allows for 90 days. 

## Top Senders and Recipients report

The **Top Senders and Recipients** report is a pie chart showing your top email senders.

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Top Senders and Recipients**.

![To view this report, in the Security & Compliance Center, go to Reports \> Dashboard \> Top Senders and Recipients](../../media/b5506b5c-2420-4a5a-9ea3-d654294ac838.png)

When you hover over a wedge in the pie chart, you can see a count of messages sent or received.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

Use the **Show data for** list to choose whether to view data for top senders, receivers, spam recipients, and malware recipients. You can also see who received malware that was detected by [Exchange Online Protection](exchange-online-protection-overview.md).

![Use the Show Data For list to view specific information](../../media/bd91449f-7d42-4749-8666-7b44044049b8.png)

Below the chart, you'll see who the top email senders or recipients were, along with a count of messages sent or received for the given time period. note that the aggregate view only allows for 90 days filtering. 

## Spoof Detections report

The **Spoof Detections** report shows how many spoof mail messages were detected, and of those, which ones were considered "good" (spoof mail done for legitimate business reasons).

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Spoof Mail**.

![In the Security & Compliance Center, go to Reports \> Dashboard \> Spoof Mail](../../media/0427e85c-9e40-4225-a0f0-e21a4e8b0e44.png)

When you hover over a day in the chart, you can see how many spoof mail messages came through.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report. To learn more about anti-spoof protection, see [Anti-spoofing protection in Microsoft 365](anti-spoofing-protection.md). the aggregate view of the report only allows for 90 days filtering, while the detial view only allows for 10 days filtering. 

## Spam Detections report

The **Spam Detections** report shows all the spam content blocked by Exchange Online. Messages are counted per message, and not per recipient. For example, if an email message was sent to 100 recipients in your organization, it is counted as one message.

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Spam Detections**.

![To view this report, in the Security & Compliance Center, go to Reports \> Dashboard \> EOP Spam Detections](../../media/028cff3c-79ce-4ec0-8f0f-ec32ac28243a.png)

When you hover over a day in the chart, you can see how many items were blocked that day, as well as how those items are categorized. For example, you can see how many spam messages were filtered, and how many items came from a blocked Internet Protocol (IP) address.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

![The Spam Detections report tells you how many spam messages were blocked or filtered out](../../media/370ec67d-eb30-4863-bfcf-68a41be02295.png)

Below the chart, you'll see a list of spam items that were detected. Select an item to view additional information, such as whether the spam item was inbound or outbound, its message ID, and its recipient. To learn more about anti-spam protection, see [Office 365 email anti-spam protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/anti-spam-and-anti-malware-protection). the aggregate view of the report only allows for 90 days filtering, while the detial view only allows for 10 days filtering. 

## Sent and received email report

The **Sent and received email** report is a smart report that shows information about incoming and outgoing email, including spam detections, malware, and email identified as "good."

To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Sent and received email**.

![To view this report, in the Security & Compliance Center, go to Reports \> Dashboard \> Sent and received email](../../media/0e710ed0-1b0e-4dac-8796-94a01a710f3a.png)

When you hover over a day in the chart, you can see how many messages came in, and how those messages are categorized. For example, you can see how many messages were detected as containing malware, and how many were identified as spam.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

You can use the **Break down by** list to view information by type or by direction (incoming and outgoing).

![Use the Break Down By list to view information by type or direction](../../media/a5b30c94-d75f-4bfc-851a-cb155685b177.png)

Below the chart, you'll see a list of email categories, such as **GoodMail**, **SpamContentFiltered**, and so on. Select a category to view additional information, such as actions that were taken for malware, and whether email was incoming or outgoing.

![This report tells you about anti-malware, anti-spam, and other message detections](../../media/9ea4b606-f27a-46ee-97a7-be018e2b839c.png)

To learn more about email intelligence, see [Mail flow intelligence in Microsoft 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/mail-flow-intelligence-in-office-365). the aggregate view of the report only allows for 90 days filtering as well as the detail view. 

## User-reported messages report

The **User-reported messages** report shows information about email messages that users have reported as junk, phishing attempts, or good mail by using the [Report Message add-in](https://docs.microsoft.com/microsoft-365/security/office-365-security/enable-the-report-message-add-in).

Details are available for each message, including the delivery reason, such a spam policy exception or mail flow rule configured for your organization. To view details, select an item in the user-reports list, and then view the information on the **Summary** and **Details** tabs.

![The User-Reported Messages report shows messages users labeled as junk, not junk, or phishing attempts.](../../media/ad5e9a3d-b833-419c-bcc9-3425d9604ead.png)

To view this report, in the [Security & Compliance Center](https://protection.office.com), do one of the following:

- Go to **Threat management** \> **Dashboard** \> **User-reported messages**.

- Go to **Threat management** \> **Review** \> **User-reported messages**.

![In the Security & Compliance Center, choose Threat management \> Review \> User reported messages](../../media/e372c57c-1414-4616-957b-bc933b8c8711.png)

> [!IMPORTANT]
> In order for the User-reported messages report to work correctly, **audit logging must be turned on** for your Office 365 environment. This is typically done by someone who has the Audit Logs role assigned in Exchange Online. For more information, see [Turn Microsoft 365 audit log search on or off](https://docs.microsoft.com/microsoft-365/compliance/turn-audit-log-search-on-or-off).

## What permissions are needed to view these reports?

In order to view and use the reports described in this article, **you must have an appropriate role assigned for both the Security & Compliance Center and the Exchange admin center**.

- For the Security & Compliance Center, you must have one of the following roles assigned:

  -Organization Management
  -Security Administrator (this can be assigned in the Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com))
  -Security Reader

- For Exchange Online, you must have one of the following roles assigned in either the Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) or with PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell)):

  -Organization Management
  -View-only Organization Management
  -View-Only Recipients role
  -Compliance Management

To learn more, see the following resources:

- [Permissions in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center)
 
- [Feature permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions)

## What if the reports aren't showing data?

If you are not seeing data in your reports, double-check that your policies are set up correctly. To learn more, see [Protect against threats in Microsoft 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats).

## Related topics

[Microsoft 365 Email Anti-Spam Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/anti-spam-and-anti-malware-protection)

[Reports and insights in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/reports-and-insights-in-security-and-compliance)
