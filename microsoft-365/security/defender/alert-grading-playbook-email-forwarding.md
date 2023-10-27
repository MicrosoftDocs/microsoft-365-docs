---
title: Alert classification for suspicious email forwarding activity
description: Alert classification for suspicious email forwarding activity to review the alerts and take recommended actions to remediate the attack and protect your network.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, alert classification, alert grading, classify alert
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
  - met150
ms.date: 04/05/2023
---

# Alert classification for suspicious email forwarding activity

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Threat actors can use compromised user accounts for several malicious purposes, including reading emails in a user's inbox, forwarding emails to external recipients, and sending phishing mails, among others. The targeted user might be unaware that their emails are being forwarded. This is a very common tactic that attackers use when user accounts are compromised.

Emails can be forwarded either manually or automatically using forwarding rules. Automatic forwarding can be implemented in multiple ways like Inbox Rules, Exchange Transport Rule (ETR), and SMTP Forwarding. While manual forwarding requires direct action from users, they might not be aware of all the auto-forwarded emails. In Microsoft 365, an alert is raised when a user auto-forwards an email to a potentially malicious email address.

This playbook helps you investigate Suspicious Email Forwarding Activity alerts and quickly grade them as either a true positive (TP) or a false positive (FP). You can then take recommended actions for the TP alerts to remediate the attack.

For an overview of alert classifications for Microsoft Defender for Office 365 and Microsoft Defender for Cloud Apps, see the [introduction article](alert-grading-playbooks.md).

The results of using this playbook are:

- You have identified the alerts associated with auto-forwarded emails as malicious (TP) or benign (FP) activities.

  If malicious, you have [stopped email auto-forwarding](../office-365-security/outbound-spam-policies-external-email-forwarding.md) for the affected mailboxes.

- You have taken the necessary action if emails have been forwarded to a malicious email address.

## Email forwarding rules

Email forwarding rules allow users to create a rule to forward email messages sent to a user's mailbox to another user's mailbox inside or outside of the organization. Some email users, particularly those with multiple mailboxes, configure forwarding rules to move employer emails to their private email accounts. Email forwarding is a useful feature but can also pose a security risk because of the potential disclosure of information. Attackers might use this information to attack your organization or its partners.

### Suspicious email forwarding activity

Attackers might set up email rules to hide incoming emails in the compromised user mailbox to obscure their malicious activities from the user. They might also set rules in the compromised user mailbox to delete emails, move the emails into another less noticeable folder such as an RSS folder, or forward emails to an external account.

Some rules might move all the emails to another folder and mark them as "read", while some rules might move only mails which contain specific keywords in the email message or subject. For example, the inbox rule might be set to look for keywords like "invoice", "phish", "do not reply", "suspicious email", or "spam" among others, and move them to an external email account. Attackers might also use the compromised user mailbox to distribute spam, phishing emails, or malware.

Microsoft Defender for Office 365 can detect and alert on suspicious email forwarding rules, allowing you to find and delete hidden rules at the source.

For more information, see these blog posts:

- [Business Email Compromise](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/business-email-uncompromised-part-one/ba-p/2159900)
- [Behind the scenes of business email compromise: Using cross-domain threat data to disrupt a large BEC campaign](https://www.microsoft.com/security/blog/2021/06/14/behind-the-scenes-of-business-email-compromise-using-cross-domain-threat-data-to-disrupt-a-large-bec-infrastructure/)

## Alert details

To review the Suspicious Email Forwarding Activity alert, open the **Alerts** page to see the **Activity list** section. Here's an example.

:::image type="content" source="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-activity-list.png" alt-text="List of activities related to the alert" lightbox="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-activity-list.png":::

Select **Activity**  to view the details of that activity in the sidebar. Here's an example.

:::image type="content" source="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-activity-details.png" alt-text="Details of the activity" lightbox="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-activity-details.png":::

## Investigation workflow

While investigating this alert, you must determine:

- Is the user account and its mailbox compromised?
- Are the activities malicious?

### Is the user account and its mailbox compromised?

By looking at sender's past behavior and recent activities, you should be able to determine whether the user's account should be considered compromised or not. You can see the details of alerts raised from the user's page in the Microsoft 365 Defender portal.

You can also analyze these additional activities for the affected mailbox:

- Use Threat Explorer to understand email related threats
  - Observe how many of the recent email sent by the sender are detected as phish, spam or malware.
  - Observe how many of the sent emails contain sensitive information.

- Assess risky sign-in behavior in the Microsoft Azure portal.
- Check for any malicious activities on the user's device.

### Are the activities malicious?

Investigate the email forwarding activity. For instance, check the type of email, recipient of this email, or the manner in which the email is forwarded.

For more information, see the following articles:

- [Auto-forwarded messages report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report)
- [New users forwarding email insight in the EAC](/exchange/monitoring/mail-flow-insights/mfi-new-users-forwarding-email-insight)
- [Responding to a Compromised Email Account](/microsoft-365/security/office-365-security/responding-to-a-compromised-email-account)
- [Report false positives and false negatives in Outlook](/microsoft-365/security/office-365-security/submissions-outlook-report-messages)

Here is the workflow to identify suspicious email forwarding activities.

:::image type="content" source="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-workflow.png" alt-text="Alert investigation workflow for email forwarding" lightbox="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-workflow.png":::

You can investigate an email forwarding alert using Threat Explorer or with advanced hunting queries, based on the availability of features in the Microsoft 365 Defender portal. You may choose to follow the entire process or a part of the process as needed.

## Using Threat Explorer

Threat Explorer provides an interactive investigation experience for email related threats to determine whether this activity is suspicious or not. You can use the following indicators from the alert information:

- SRL/RL: Use the (Suspicious) Recipients List (SRL) to find these details:

    :::image type="content" source="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-recipients-list.png" alt-text="Example of the list of recipients" lightbox="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-recipients-list.png":::

  - Who else has forwarded emails to these recipients?
  - How many emails have been forwarded to these recipients?
  - How frequently are emails forwarded to these recipients?

- MTI: Use the Message Trace ID/Network Message ID to find these details:

    :::image type="content" source="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-network-message-id.png" alt-text="Example of the Network Message ID" lightbox="../../media/alert-grading-playbook-email-forwarding/alert-grading-playbook-email-forwarding-network-message-id.png":::

  - What additional details are available for this email? For example: subject, return path, and timestamp.
  - What is the origin of this email? Are there any similar emails?
  - Does this email contain any URLs? Does the URL point to any sensitive data?
  - Does the email contain any attachments? Do the attachments contain sensitive information?
  - What was the action taken on the email? Was it deleted, marked as read, or moved to another folder?
  - Are there any threats associated with this email? Is this email part of any campaign?

Based on answers to these questions, you should be able to determine whether an email is malicious or benign.

## Advanced hunting queries

To use [advanced Hunting](advanced-hunting-overview.md) queries to gather information related to an alert and determine whether or not the activity is suspicious, make sure you have access to the following tables:

- EmailEvents - Contains information related to email flow.

- EmailUrlInfo - Contains information related to URLs in emails.

- CloudAppEvents -Contains audit log of user activities.

- IdentityLogonEvents - Contains login information for all users.

> [!NOTE]
> Certain parameters are unique to your organization or network. Fill in these specific parameters as instructed in each query.

Run this query to find out who else has forwarded emails to these recipients (SRL/RL).

```kusto
let srl=pack_array("{SRL}"); //Put values from SRL here.
EmailEvents
| where RecipientEmailAddress in (srl)
| distinct SenderDisplayName, SenderFromAddress, SenderObjectId
```

Run this query to find out how many emails were forwarded to these recipients.

```kusto
let srl=pack_array("{SRL}"); //Put values from SRL here.
EmailEvents
| where RecipientEmailAddress in (srl)
| summarize Count=dcount(NetworkMessageId) by RecipientEmailAddress
```

Run this query to find out how frequently are emails forwarded to these recipients.

```kusto
let srl=pack_array("{SRL}"); //Put values from SRL here.
EmailEvents
| where RecipientEmailAddress in (srl)
| summarize Count=dcount(NetworkMessageId) by RecipientEmailAddress, bin(Timestamp, 1d)
```

Run this query to find out if the email contains any URLs.

```kusto
let mti='{MTI}'; //Replace {MTI} with MTI from alert
EmailUrlInfo
| where NetworkMessageId == mti
```

Run this query to find out if the email contains any attachments.

   ```kusto
   let mti='{MTI}'; //Replace {MTI} with MTI from alert
   EmailAttachmentInfo
   | where NetworkMessageId == mti
   ```

Run this query to find out if the Forwarder (sender) has created any new rules.

```kusto
let sender = "{SENDER}"; //Replace {SENDER} with display name of Forwarder
let action_types = pack_array(
    "New-InboxRule",
    "UpdateInboxRules",
    "Set-InboxRule",
    "Set-Mailbox",
    "New-TransportRule",
    "Set-TransportRule");
CloudAppEvents
| where AccountDisplayName == sender
| where ActionType in (action_types)
```

Run this query to find out if there were any anomalous login events from this user. For example: unknown IPs, new applications, uncommon countries/regions, multiple LogonFailed events.

```kusto
let sender = "{SENDER}"; //Replace {SENDER} with email of the Forwarder
IdentityLogonEvents
| where AccountUpn == sender
```

### Investigating forwarding rules

You can also find suspicious forwarding rules using the Exchange admin center, based on the rule type (the FT value in the alert).

- ETR

  Exchange transport rules are listed in the **Rules** section. Verify that all rules are as expected.

- SMTP

  You can see mailbox forwarding rules by selecting the sender's mailbox **\>  Manage mail flow settings \> Email forwarding \> Edit**.

- InboxRule

  Inbox rules are configured with the e-mail client. You can use the [Get-InboxRule](/powershell/module/exchange/get-inboxrule) PowerShell cmdlet to list the inbox rules created by users.

### Additional investigation

Along with the evidence discovered so far, you can determine if there are new forwarding rules being created. Investigate the IP address associated with the rule. Ensure that it is not an anomalous IP address and is consistent with usual activities performed by the user.

## Recommended actions

Once you determine that the activities associated make this alert a True Positive, classify the alert and take these actions for remediation:

1. Disable and delete the inbox forwarding rule.
2. For the InboxRule forwarding type, reset the user's account credentials.
3. For the SMTP or ETR forwarding type, investigate the activities of the user account that created the alert.

    - Investigate any other suspicious admin activities.

    - Reset the user account's credentials.

4. Check for additional activities originated from impacted accounts, IP addresses, and suspicious senders.

## See also

- [Overview of alert classification](alert-grading-playbooks.md)
- [Suspicious inbox forwarding rules](alert-grading-playbook-inbox-forwarding-rules.md)
- [Suspicious inbox manipulation rules](alert-grading-playbook-inbox-manipulation-rules.md)
- [Investigate alerts](investigate-alerts.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
