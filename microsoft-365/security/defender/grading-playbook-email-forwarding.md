---
title: Investigate suspicious email forwarding activity
description: Investigate suspicious email forwarding activity.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid: 
  - MOE150
ms.technology: m365d
---
# Investigate suspicious email forwarding activity

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

DRAFT Content

Threat actors can use compromised user accounts for several malicious purposes, including reading emails in a user’s inbox, forwarding emails to external accounts, and sending phishing mails, among others. The targeted user might be unaware that their emails are being forwarded. This is a very common tactic that attackers use when accounts are compromised.

Emails can be forwarded either manually or automatically using forwarding rules. Automatic forwarding can be implemented in multiple ways like Inbox Rule, Exchange Transport Rule (ETR), and SMTP Forwarding. While manual forwarding requires direct action from users, they might not be aware of all the auto-forwarded emails. This alert is raised when a user auto-forwards an email to a potentially malicious email address.

## How to use this playbook

This playbook helps you investigate any incident related to suspicious email forwarding rules configured by attackers and take recommended actions to remediate the attack and protect your network.

### Recommendation

Please classify the alerts as TP/FP as soon as possible. This will also help in properly classifying the overall incident.

We would also like to receive feedback about the TPs and FPs, not only at the end of the investigation, but also during the investigation process.

## Planning phase

To ensure that you investigate the alerts accurately and achieve the desired outcome, it is essential to plan thoroughly in the beginning. Elements of planning include identifying scope, use cases, and success criteria.

### Scope

The scope of the playbook is to provide methodical steps to assess if the alert is a true positive case.  

### Use cases

Use cases represent user stories for intended users. For example:

- As an SOC analyst, I need to assess and review the generated alerts [incident management]
- As an SOC analyst, I need to search for data in my environment and check for potential threats and suspicious activities [advanced hunting]

### Success criteria

- We would have created correct alerts associated with auto-forwarded emails identified as suspicious or benign activities. For more information, see [how to stop email auto-forward](https://docs.microsoft.com/microsoft-365/business-video/stop-email-auto-forward).
- The necessary action is taken if emails are forwarded to a malicious email address

## Microsoft Defender for Office 365

Microsoft Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. 

>[!Note]
>Microsoft 365 Defender [https://security.microsoft.com](https://security.microsoft.com) brings together functionality from existing Microsoft security portals, like Microsoft Defender Security Center and the Office 365 Security & Compliance center. The security center emphasizes quick access to information, simpler layouts, and bringing related information together for easier use.
>

## Email forwarding rules

Email forwarding rule allows users to set up a rule to forward email messages sent to a user's mailbox to another user's mailbox in or outside of the organization. Some email users, particularly those with multiple mailboxes, configure forwarding rules to move corporate emails to their private email accounts. Email forwarding is a useful feature but can also pose a security risk due to the potential disclosure of information. Attackers might use this information to attack your organization or partners.

### Suspicious email forwarding rules

Adversaries might set up email rules to hide incoming emails in the compromised user mailbox in order to hide their malicious activities from the user. They might also set rules in the compromised user mailbox to delete emails, move the emails into another less noticeable folder, like RSS folder, or forward emails to an external account.  

Some rules might move all the emails to another folder and mark them as “read”, while some rules might move only mails which contain specific keywords in the email message or subject. For example, the inbox rule might be set to look for keywords like “invoice”, “phish”, “do not reply”, “suspicious email”, or “spam” among others, and move them to an external email account. Attackers might also use the compromised user mailbox to distribute spam, phishing emails, or malware.
 
Microsoft Defender for Office 365 can now detect and alert on suspicious email forwarding rules, giving you the ability to find and delete hidden rules at the source.

For more information, read the following blogs:

- [Business Email Compromise](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/business-email-uncompromised-part-one/ba-p/2159900)
- [Behind the scenes of business email compromise: Using cross-domain threat data to disrupt a large BEC campaign](https://www.microsoft.com/security/blog/2021/06/14/behind-the-scenes-of-business-email-compromise-using-cross-domain-threat-data-to-disrupt-a-large-bec-infrastructure/)

## Security alert classifications 

All alerts can be classified as one of the following activity types: 

- True positive (TP): An alert on a confirmed malicious activity. 
- Benign true positive (B-TP): An alert on suspicious but not malicious activity, such as a penetration test or other authorized suspicious action. 
- False positive (FP): An alert on a non-malicious activity.

## Prerequisites

The researcher or SOC analyst must have access to the Microsoft 365 Defender incidents and advanced hunting. 

## Alert details

To review the specific alert, open the **Alerts** page to see the **Activity list** section as show below.
 
TO BE ADDED: "List of activities related to the alert" figure

Click on **Activity**  to view details of that activity in the sidebar.
 
TO BE ADDED: "Details of the activity" figure

**Reason** contains the following information related to this alert.

1. Forwarding Type (FT) is one of the following:

    a. Exchange Transport Rule (ETR): Forwarded using and Exchange Transport Rule 

    b. SMTP: Forwarded using Mailbox Forwarding

    c. InboxRule: Forwarded using an Inbox Rule

2. Message Trace ID (MTI): This is the identifier (NetworkMessageId) of the forwarded email which triggered this alert. NetworkMessageId is the unique identifier of an email in your organization.
4. Forwarder (F): The user who forwarded this email.
5. Suspicious Recipient List (SRL): The list of recipients considered suspicious in this email.
6. Recipient List (RL): The  list of all the recipients in this email.

## Investigation workflow

While investigating this alert, you must determine the following:

- Is user/mailbox compromised?
- Are the activities malicious?

### Is the user/mailbox compromised?

By looking at sender’s past behavior and recent activities, you should be able to ascertain whether the user should be considered compromised or not. You can see the details of alerts raised from the user’s page in the Microsoft 365 Defender portal. You can also analyze additional activities of the user:

- Use Threat Explorer to understand email related threats
    a.	Observe how many of the recent email sent by the sender are detected as phish, spam or malware.
    b.	Observe how many of the sent emails contain sensitive information. 
- Assess risky sign-in behavior in the Microsoft Azure portal
- Check for any malicious activities on the user’s device

### Are activities malicious?
Investigate the email forwarding activity. For instance, check the type of email, recipient of this email, or the manner in which the email is forwarded. All these assessments will help you determine whether the emails are being forwarded with malicious intent or not. 

For more information, read the following articles:

- [Auto-forwarded messages insight - Office 365](/microsoft-365/security/office-365-security/mfi-auto-forwarded-messages-report?view=o365-worldwide)
- [New users forwarding email insight - Office 365](/microsoft-365/security/office-365-security/mfi-new-users-forwarding-email?view=o365-worldwide)
- [Responding to a Compromised Email Account - Office 365](/microsoft-365/security/office-365-security/responding-to-a-compromised-email-account?view=o365-worldwide)
- [Report false positives and false negatives in Outlook - Office 365](/microsoft-365/security/office-365-security/report-false-positives-and-false-negatives?view=o365-worldwide)

This figure illustrates the workflow to identify malicious/suspicious email forwarding activities.

TO BE ADDED: "Alert investigation workflow" figure

You can investigate this alert using Threat Explorere or audit logs, based on the availability of features in your Microsoft 365 Defender portal. You may choose to follow the entire process or a part of the process as needed.

## Using Threat Explorer

Threat Explorer provides an interactive investigation experience for email related threats. You can use Threat Explorer to determine whether this activity is suspicious or not. You can use the following indicators from the alert information:

1. SRL/RL: Use the (Suspicious) Recipients List (SRL) to find these details:
 
    TO BE ADDED: "List of recipients" figure

    a. Who else has forwarded emails to these recipients?

    b. How many emails have been forwarded to these recipients?

    c. How frequently are emails forwarded to these recipients?
 
    TO BE ADDED: "Network Message ID" figure

2. MTI: Use the Message Trace ID/Network Message ID to find these details:

    a.	What additional details are available for this email? For example: subject, return path, and timestamp.

    b.	What is the origin of this email? Are there any similar emails?

    c.	Does this email contain any URLs? Does the URL point to any sensitive data?

    d.	Does the email contain any attachments? Do the attachments contain sensitive information?

    e.	What was the action taken on the email? Was it deleted, marked as read, or moved to another folder?

    f.	Are there any threats associated with this email? Is this email part of any campaign?

Based on answers to the questions above, you should be able to determine whether this email is suspicious or benign.

## Using audit logs

If you have access to the following tables in [Advanced Hunting](https://security.microsoft.com/advanced-hunting), use these advanced hunting queries (AHQs) to gather information related to the alert and determine whether or not the activity is suspicious:

- EmailEvents - Contains information related to email flow.

- EmailUrlInfo - Contains information related to URLs in emails.

- CloudAppEvents -Contains audit log of user activities.

- IdentityLogonEvents - Contains login information for all users.

TO BE ADDED: "Advanced hunting page" figure

Use the following AHQs to gather information for the following questions.

>[!Note]
>Certain parameters are unique to your organization or network. Fill in these specific parameters as instructed in each query.
>

1. Who else has forwarded emails to these recipients (SRL/RL)?

   ```kusto
   let srl=pack_array("{SRL}"); //Put values from SRL here.
   EmailEvents
   | where RecipientEmailAddress in (srl)
   | distinct SenderDisplayName, SenderFromAddress, SenderObjectId
   ```

2. How many emails were forwarded to these recipients?

   ```kusto
   let srl=pack_array("{SRL}"); //Put values from SRL here.
   EmailEvents
   | where RecipientEmailAddress in (srl)
   | summarize Count=dcount(NetworkMessageId) by RecipientEmailAddress
   ```

3. How frequently are emails forwarded to these recipients?

   ```kusto
   let srl=pack_array("{SRL}"); //Put values from SRL here.
   EmailEvents
   | where RecipientEmailAddress in (srl)
   | summarize Count=dcount(NetworkMessageId) by RecipientEmailAddress, bin(Timestamp, 1d)
   ```

4. Does the email contain any URL?
 
   ```kusto
   let mti='{MTI}'; //Replace {MTI} with MTI from alert
   EmailUrlInfo
   | where NetworkMessageId == mti
   ```

5. Does the email contain any attachments?

   ```kusto
   let mti='{MTI}'; //Replace {MTI} with MTI from alert
   EmailAttachmentInfo
   | where NetworkMessageId == mti
   ```

6. Has the Forwarder (that is, sender) created  any new rules?

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

7. Are there any anomalous login events from this user? For example, unknown IPs, new applications, uncommon countries, multiple LogonFailed.

   ```kusto
   let sender = "{SENDER}"; //Replace {SENDER} with email of the Forwarder IdentityLogonEvents
   | where AccountUpn == sender
   ```

### Investigating forwarding rules

In addition to the AHQs previously described, you can find suspicious forwarding rules using the Exchange admin center, based on the rule type (FT value in alert).

1. ETR: Exchange transport rules are listed in the “Rules” section. Verify that all rules are as expected.

2. SMTP: You can see mailbox forwarding rules by selecting the sender’s mailbox >  Manage mail flow settings > Email forwarding >Edit.

3. InboxRule:  InboxRules are configured via e-mail client. You can use Get-InboxRule PowerShell cmdlet to list inbox rules created by users.

### Additional investigation

Along with the  evidence discovered so far, you can use the following additional investigation step.

- New forwarding rules: If you have observed new forwarding rules being created, you should investigate the IP address associated with the rule. Ensure that it is not an anomalous IP and is consistent with usual activities performed by the user.

## Recommended actions

Once you determine that the activities associated with this alert are true positive (TP), we recommend you take these actions for  remediation.

1. Disable and delete the rule.
2. In case of InboxRule, reset the user’s credentials.
3. In case of SMTP/ETR, investigate the activities of the user who created the alert.

   a. Investigate any other suspicious admin activities.

   b. Reset the user’s credentials.

4. Check for additional activities originated from impacted accounts, IP addresses, or suspicious senders.

## See also

- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Investigate incidents](investigate-incidents.md)
