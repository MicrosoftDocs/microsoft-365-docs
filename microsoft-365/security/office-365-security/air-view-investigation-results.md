---
title: "View the results of an automated investigation in Office 365"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: M365-security-compliance
description: "During and after an automated investigation in Office 365, you can view the results and key findings."
---

# Details and results of an automated investigation in Office 365

When an [automated investigation](office-365-air.md) occurs in [Office 365 Advanced Threat Protection](office-365-atp.md), details about that investigation are available during and after the automated investigation process. If you have the necessary permissions, you can view those details in an investigation details view. The investigation details view provides you with up-to-date status and the ability to approve any pending actions. 

## View details of an investigation

1. Go to [https://protection.office.com](https://protection.office.com) and sign in. This takes you to the the Security & Compliance Center.

2. Do one of the following:

    - Go to **Threat management** > **Dashboard**. This takes you to the [Security Dashboard](security-dashboard.md). Your AIR widgets appear across the top of the [Security Dashboard](security-dashboard.md). Select a widget, such as **Investigations summary**.

    - Go to **Threat management** > **Investigations**. 

    Either method takes you to a list of investigations.

    ![Main investigation page for AIR](../../media/air-maininvestigationpage.png) 

3. In the list of investigations, select an item in the **ID** column. This opens investigation details page, starting with the investigation graph in view.

    ![AIR investigation graph page](../../media/air-investigationgraphpage.png)

   Use the various tabs to learn more about the investigation.

## View details about an alert related to an investigation

Certain kinds of alerts trigger automated investigation in Office 365. To learn more, see [Alerts](automated-investigation-response-office.md#alerts). Use the following procedure to view details about an alert that is associated with an automated investigation.

1. Go to [https://protection.office.com](https://protection.office.com) and sign in. This takes you to the the Security & Compliance Center.

2. Go to **Threat management** > **Investigations**.

3. In the list of investigations, select an item in the **ID** column. 

4. With details of an investigation open, select the **Alerts** tab. Any alerts that triggered the investigation are listed here.

5. Select an item in the list. A flyout opens, with details about the alert and links to additional information and actions.

6. Review the information on the flyout, and, depending on the particular alert, take an action, such as **Resolve**, **Suppress**, or **Notify users**. 

    - **Resolve** is equivalent to closing an alert
    
    - **Suppress** causes a policy to not trigger alerts for a specified period of time
    
    - **Notify users** starts an email with users' email addresses already entered, and enables your security operations team to type a message to those users. (This is similar to sending a message to recipients using [Threat Explorer](threat-explorer.md).)  

## How to use the various tabs

The following sections walk you through the various tabs on the automated investigations page and how you can use the information.

### Automated investigations page

The automated investigations page shows your organization's investigations and their current states.

![Main investigation page for AIR](../../media/air-maininvestigationpage.png) 
  
You can:
- Navigate directly to an investigation (select an **Investigation ID**).
- Apply filters. Choose from **Investigation Type**, **Time range**, **Status**, or a combination of these.
- Export the data to a .csv file.

The investigation status indicates the progress of the analysis and actions. As the investigation runs, status changes to indicate whether threats were found, and whether actions have been approved. 

|Status  |What it means  |
|---------|---------|
|Starting | The investigation has been triggered and waiting to start running​. This is the first step. |
|Running | The investigation process has started and is underway. This state also occurs when [pending actions](https://docs.microsoft.com/microsoft-365/security/office-365-security/air-review-approve-pending-completed-actions?view=o365-worldwide#approve-or-reject-pending-actions) are approved. |
|No Threats Found | The investigation has finished and no threats (user account, email message, URL, or file) were identified. <br/><br/>**TIP**: If you suspect something was missed (such as a false negative), you can take action using [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer)​. |
|Terminated By System | The investigation stopped. This can happen for a number of reasons. Here are the two most common reasons:​<br/>- The investigation's pending actions expired. Pending actions time out after awaiting approval for one week. <br/>- There are too many actions. For example, if there are too many users clicking on malicious URLs, it can exceed the investigation's ability to run all the analyzers, so the investigation halts​. <br/><br/>**TIP**: If an investigation halts before actions were taken, try using [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer) to find and address threats.  |
|Pending Action | The investigation has found a threat, such as a malicious email, a malicious URL, or a risky mailbox setting​, and an action to remediate that threat is awaiting [approval](https://docs.microsoft.com/microsoft-365/security/office-365-security/air-review-approve-pending-completed-actions).<br/><br/>The Pending Action state is triggered when any threat with a corresponding action is found; however, note that the investigation might not be entirely complete yet.  Check the [investigation log](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/air-view-investigation-results?view=o365-worldwide#playbook-log) to see if other items are still pending completion.​ |
|Remediated |The investigation had actions that were fully approved and completed​. <br/> |    
|Threats Found | The investigation found threats, but the threats do not have actions available within AIR.  These are user actions where there is no direction AIR action yet. |
|Remediated | The investigation finished and all actions were approved (fully remediated).<br/><br/>**NOTE**: Approved remediation actions can have errors that prevent the actions from being taken. This does not change investigation status. Check the [investigation log](https://docs.microsoft.com/microsoft-365/security/office-365-security/air-view-investigation-results) for detailed results.​ |
|Partially Remediated | The investigation finished and some of the recommended actions were approved |
|Terminated By User | An admin terminated the investigation |
|Failed | An error occurred during the investigation that prevented it from reaching a conclusion on threats |
|Queued By Throttling | The investigation is waiting for analysis due to system processing limitations (to protect service performance) |
|Terminated By Throttling | The investigation could not be completed in sufficient time due to investigation volume and system processing limitations. You can retrigger the investigation by selecting the email in Explorer and selecting the Investigate action. |

### Investigation graph

When you open a specific investigation, you see the investigation graph page. This page shows all the different entities: email messages, users (and their activities), and devices that were automatically investigated as part of the alert that was triggered.

![AIR investigation graph page](../../media/air-investigationgraphpage.png)

You can:
- Get a visual overview of the current investigation.
- View a summary of the investigation duration.
- Select a node in the visualization to view details for that node.
- Select a tab across the top to view details for that tab.

### Alert investigation

On the **Alerts** tab for an investigation, you can see alerts relevant to the investigation. Details include the alert that triggered the investigation and other correlated alerts, such as risky sign-in, DLP policy violations, etc., that are correlated to the investigation. From this page, a security analyst can also view additional details on individual alerts.

![AIR alerts page](../../media/air-investigationalertspage.png)

You can:
- Get a visual overview of the current triggering alert and any associated alerts.
- Select an alert in the list to open a fly-out page that shows full alert details.

### Email investigation

On the **Email** tab for an investigation, you can see the original emails and the clusters of similar email identified as part of the investigation. 

Given the sheer volume of email that users in an organization send and receive, plus the multi-user nature of email communications and attacks, the process of 
- clustering email messages based on similar attributes from a message header, body, URL, and attachments; 
- separating malicious email from the good email; and 
- taking action on malicious email messages 

can take significant time. AIR now automates this process, saving your organization's security team time and effort. 

Two different types of email clusters may be identified during the email analysis step: similarity clusters and indicator clusters. 
- Similarity clusters are email messages identified by hunting for emails with similar sender and content attributes. These clusters are evaluated for malicious content based on the original detection findings. Email clusters that contain enough malicious email detections are considered malicious.
- Indicator clusters are email messages that are identified by hunting for the same indicator entity (file hash or URL) from the original email. When the original file/URL entity is identified as malicious, AIR applies the indicator verdict to the entire cluster of email messages containing that entity. A file identified as malware means that the cluster of email messages containing that file are treated as malware email messages.

The goal of clustering is to hunt and find other related email messages that are sent by the same sender as part of an attack or a campaign.  In some cases, legitimate email may trigger an investigation (e.g. a user reports a marketing email).  In these scenarios, the email clustering should identify that email clusters are not malicious – when it appropriately does so, it will **not** indicate a threat nor will it recommend email removal.

The **Email** tab also shows email items related to the investigation, such as the user-reported email details, the original email reported, the email message(s) zapped due to malware/phish, etc.

The email count identified on the email tab currently represents the sum total of all email messages shown on the **Email** tab. Because email messages are present in multiple clusters, the actual total count of email messages identified (and affected by remediation actions) is the count of unique email messages present across all of the clusters and original recipients' email messages. 

Both Explorer and AIR count email messages on a per recipient basis, since the security verdicts, actions, and delivery locations vary on a per recipient basis. Thus an original email sent to three users count as a total of three email messages instead of one email. Note there may be cases where an email gets counted two or more times, since the email may have multiple actions on it and there may be multiple copies of the email once all actions occur. For example, a malware email that is detected at delivery may result in both a blocked (quarantined) email and a replaced email (threat file replaced with a warning file, then delivered to user's mailbox). Since there are literally two copies of the email in the system, both might be counted in cluster counts. 

Email counts are calculated at the time of the investigation and some counts are recalculated when you open investigation flyouts (based on an underlying query). The email counts shown for the email clusters on the email tab and the email quantity value shown on cluster flyout are calculated at the time of investigation and do not change. The email count shown at the bottom of the email tab of the email cluster flyout and the count of email messages shown in Explorer reflect email messages received after the investigation's initial analysis. Thus an email cluster that shows an original quantity of 10 email messages would show an email list total of 15 when five more email messages arrive between the investigation analysis phase and when the admin reviews the investigation.  Likewise old investigations may start having bigger counts than Explorer queries show, since ATP P2 expires data after 7 days for trials and 30 days for paid licenses.  Showing both count historical and current counts in different views is done to indicate the email impact at the time of investigation and the current impact up until the time that remediation is run.

As an example, consider the following scenario. The first cluster of three email messages were deemed to be phish. Another cluster of similar messages with the same IP and subject was found and considered malicious, as some of them were identified as phish during initial detection. 

![AIR email investigation page](../../media/air-investigationemailpage.png)

You can:
- Get a visual overview of the current clustering results and threats found.
- Click a cluster entity or a threat list to open a fly-out page that shows the full alert details.
- Further investigate the email cluster by clicking the 'Open in Explorer' link at the top of the 'Email cluster details' tab

![AIR investigation email with flyout details](../../media/air-investigationemailpageflyoutdetails.png)

> [!NOTE]
> In the context of email, you may see a volume anomaly threat surface as part of the investigation. A volume anomaly indicates a spike in similar email messages around the investigation event time compared to earlier timeframes. This spike in email traffic with similar characteristics (e.g. subject and sender domain, body similarity and sender IP) is typical of the start of email campaigns or attacks. However, bulk, spam, and legitimate email campaigns commonly share these characteristics. Volume anomalies represent a potential threat, and accordingly could be less severe compared to malware or phish threats that are identified using anti-virus engines, detonation or malicious reputation.

### User investigation

On the **Users** tab, you can see all the users identified as part of the investigation. User accounts appear in the investigation when there is an event or indication that those user accounts might be affected or compromised.

For example, in the following image, AIR has identified indicators of compromise and anomalies based on a new inbox rule that was created. Additional details (evidence) of the investigation are available through detailed views within this tab. Indicators of compromise and anomalies may also include anomaly detections from [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security).

![AIR investigation users page](../../media/air-investigationuserspage.png)

You can:
- Get a visual overview of identified user results and risks found.
- Select a user to open a fly-out page that shows the full alert details.

### Machine investigation

On the **Machines** tab, you can see all the machines identified as part of the investigation. 

![AIR investigation machine page](../../media/air-investigationmachinepage.png)

As part of some playbooks, AIR correlates email threats to devices (e.g. Zapped malware). For example, an investigation passes a malicious file hash across to [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection
) to investigate. This allows for automated investigation of relevant machines for your users, to help ensure that threats are addressed both in the cloud and across your endpoints. 

You can:
- Get a visual overview of the current machines and threats found.
- Select a machine to open a view that into the related [Microsoft Defender ATP investigations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) in the Microsoft Defender Security Center.

### Entity investigation

On the **Entities** tab, you can see the entities identified and analyzed as part of the investigation. 

Here, you can see the investigated entities and details of the types of entities, such as email messages, clusters, IP addresses, users, and more. You can also see how many entities were analyzed, and the threats that were associated with each. 

![AIR investigation entities page](../../media/air-investigationentitiespage.png)

You can:
- Get a visual overview of the investigation entities and threats found.
- Select an entity to open a fly-out page that shows the related entity details.

![AIR investigation entities details](../../media/air-investigationsentitiespagedetails.png)

### Playbook log

On the **Log** tab, you can see all the playbook steps that have occurred during the investigation. The log captures a complete inventory of all analyzers and actions completed by Office 365 auto-investigation capabilities as part of AIR. It provides a clear view of all the steps taken, including the action itself, a description, and the duration of the actual from start to finish. 

![AIR investigation log page](../../media/air-investigationlogpage.png)

You can:
- Get see a visual overview of the playbook steps taken.
- Export the results to a CSV file.
- Filter the view.

|Analyzer | Description |
|-----|-----|
|DLP violations investigation |Investigate any violations detected by [Office 365 Data Loss Prevention](../../compliance/data-loss-prevention-policies.md) (DLP) |
|Email indicators extraction |Extract indicators from the header, body, and content of an email message for investigation |
|File Hash Reputation |Detect anomalies based on file hashes for users and machines in your organization |
|Mail cluster identification |Email cluster analysis based on header, body, content, and URLs |
|Mail cluster volume analysis |Email cluster analysis based on outbound mail flow volume patterns |
|Mail delegation investigation |Investigate mail delegation access for user mailboxes related to this investigation |
|Mail forwarding rules investigation |Investigate any mail forwarding rules for user mailboxes related to this investigation |
|Missed malware detected |Detect missed malware delivered to user's mailbox in your organization |
|On-demand detonation |On-demand detonation triggered for email messages, attachments, and URLs |
|Outbound mail anomaly investigation |Detect anomalies based on historical mail flow sending patterns for users in your organization |
|Outbound malware and spam anomaly investigation |Detect intra-org and outbound malware, phish, or spam originating from users in your organization |
|Sender domain investigation |On-demand check of domain reputation from the [Microsoft Intelligent Security Graph](https://www.microsoft.com/security/operations/intelligence) and external threat intelligence sources |
|Sender IP investigation | On-demand check of IP reputation from the [Microsoft Intelligent Security Graph](https://www.microsoft.com/security/operations/intelligence) and external threat intelligence sources |
|URL clicks investigation | Investigate clicks  from users protected by [Office 365 ATP Safe Links](atp-safe-links.md) in your organization |
|URL reputation investigation |On-demand check on URL reputation from the [Microsoft Intelligent Security Graph](https://www.microsoft.com/security/operations/intelligence) and external threat intelligence sources |
|User activity investigation |Analyze user activity anomalies in [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) |
|User-reported emails indicators extraction |Extract indicators from the header, body, and content of [user-reported email](enable-the-report-message-add-in.md) for investigation |

### Recommended actions

On the **Actions** tab, you can see all the playbook actions that are recommended for remediation after the investigation has completed. 

Actions capture the steps Microsoft recommends you take at the end of an investigation. You can take remediation actions here by selecting one or more actions. Clicking **Approve** allows remediation to begin. (Appropriate permissions are needed - the 'Search And Purge' role is required to run actions from Explorer and AIR). For example, a Security Reader can view actions but not approve them. Note: You do not have to approve every action. If you do not agree with the recommended action or your organization does not choose certain types of actions, then you can choose to **Reject** the actions or simply ignore them and take no action. Approving and/or rejecting all actions lets the investigation fully close (status becomes remediated), while leaving some actions incomplete results in the investigation status changing to a partially remediated state.

![AIR investigations action page](../../media/air-investigationactionspage.png)

You can:
- Get a visual overview of the playbook-recommended actions.
- Select a single action or multiple actions.
- Approve or reject recommended actions with comments.
- Export the results to a CSV file.
- Filter the view.

## Next steps

- [Review and approve pending actions](https://review.docs.microsoft.com/microsoft-365/security/office-365-security/air-review-approve-pending-completed-actions)

- [Learn about automated investigation and response in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)
