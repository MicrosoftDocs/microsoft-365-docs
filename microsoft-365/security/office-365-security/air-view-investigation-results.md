---
title: View the results of an automated investigation in Microsoft 365
keywords: AIR, autoIR, ATP, automated, investigation,  remediation, actions
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
localization_priority: Normal
search.appverid: 
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
description: During and after an automated investigation in Microsoft 365, you can view the results and key findings.
ms.date: 01/29/2021
ms.technology: mdo
ms.prod: m365-security
---

# Details and results of an automated investigation in Microsoft 365

**Applies to**
- [Microsoft Defender for Office 365 plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

When an [automated investigation](office-365-air.md) occurs in [Microsoft Defender for Office 365](defender-for-office-365.md), details about that investigation are available during and after the automated investigation process. If you have the necessary permissions, you can view those details in the Microsoft 365 security center. Investigation details provide you with up-to-date status, and the ability to approve any pending actions.

> [!TIP]
> Check out the new, unified investigation page in the Microsoft 365 security center. To learn more, see [(NEW!) Unified investigation page](../mtp/mtp-autoir-results.md#new-unified-investigation-page).

## Investigation status

The investigation status indicates the progress of the analysis and actions. As the investigation runs, status changes to indicate whether threats were found, and whether actions have been approved.

|Status|Description|
|:---|:---|
|**Starting**|The investigation has been triggered and waiting to start running​.|
|**Running**|The investigation process has started and is underway. This state also occurs when [pending actions](air-review-approve-pending-completed-actions.md#approve-or-reject-pending-actions) are approved.|
|**No Threats Found**|The investigation has finished and no threats (user account, email message, URL, or file) were identified. <p> **TIP**: If you suspect something was missed (such as a false negative), you can take action using [Threat Explorer](threat-explorer.md)​.|
|**Threats Found**|The automated investigation found issues, but there are no specific remediation actions to resolve those issues. <p> The **Threats Found** status can occur when some type of user activity was identified but no cleanup actions are available. Examples include any of the following user activities: <br/>- A [data loss prevention](https://docs.microsoft.com/Microsoft-365/compliance/data-loss-prevention-policies) (DLP) event<br/>- An email sending anomaly<br/>- Sent malware<br/>- Sent phish <p> The investigation found no malicious URLs, files, or email messages to remediate, and no mailbox activity to fix, such as turning off forwarding rules or delegation. <p> **TIP**: If you suspect something was missed (such as a false negative), you can investigate and take action using [Threat Explorer](threat-explorer.md)​.|
|**Terminated By System**|The investigation stopped. An investigation can stop for several reasons:​ <br/>- The investigation's pending actions expired. Pending actions time out after awaiting approval for one week.<br/>- There are too many actions. For example, if there are too many users clicking on malicious URLs, it can exceed the investigation's ability to run all the analyzers, so the investigation halts​.<p> **TIP**: If an investigation halts before actions were taken, try using [Threat Explorer](threat-explorer.md) to find and address threats.|
|**Pending Action**|The investigation has found a threat, such as a malicious email, a malicious URL, or a risky mailbox setting​, and an action to remediate that threat is [awaiting approval](air-review-approve-pending-completed-actions.md). <p> The **Pending Action** state is triggered when any threat with a corresponding action is found. However, the list of pending actions can increase as an investigation runs. View investigation details to see if other items are still pending completion.​|
|**Remediated**|The investigation finished and all remediation actions were approved (noted as fully remediated). <p> **NOTE**: Approved remediation actions can have errors that prevent the actions from being taken. Regardless of whether remediation actions are successfully completed, the investigation status does not change. View investigation details.​|
|**Partially Remediated**|The investigation resulted in remediation actions, and some were approved and completed​. Other actions are still [pending](air-review-approve-pending-completed-actions.md).|
|**Failed**|At least one investigation analyzer ran into a problem where it could not complete properly​. <p> **NOTE**: If an investigation fails after remediation actions were approved, the remediation actions might still have succeeded. View the investigation details. ​​|
|**Queued By Throttling**|An investigation is being held in a queue. When other investigations complete, queued investigations begin. Throttling helps avoid poor service performance.  <p> **TIP**: Pending actions can limit how many new investigations can run. Make sure to [approve (or reject) pending actions](air-review-approve-pending-completed-actions.md#approve-or-reject-pending-actions).|
|**Terminated By Throttling**|If an investigation is held in the queue too long, it stops. <p> **TIP**: You can [start an investigation from Threat Explorer](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).|
|

## View details of an investigation

1. Go to the Microsoft 365 security center [https://security.microsoft.com](https://security.microsoft.com)) and sign in.
2. In the navigation pane, select **Action center**.
3. On either the **Pending** or **History** tabs, select an action. Its flyout pane opens.
4. In the flyout pane, select **Open investigation page**. 
5. Use the various tabs to learn more about the investigation.

## View details about an alert related to an investigation

Certain kinds of alerts trigger automated investigation in Microsoft 365. To learn more, see [alert policies that trigger automated investigations](office-365-air.md#which-alert-policies-trigger-automated-investigations).

1. Go to the Microsoft 365 security center [https://security.microsoft.com](https://security.microsoft.com)) and sign in.
2. In the navigation pane, select **Action center**.
3. On either the **Pending** or **History** tabs, select an action. Its flyout pane opens.
4. In the flyout pane, select **Open investigation page**. 
5. Select the **Alerts** tab to view a list of all of the alerts associated with that investigation.
6. Select an item in the list to open its flyout pane. There, you can view more information about the alert.

## Keep the following points in mind

- Email counts are calculated at the time of the investigation, and some counts are recalculated when you open investigation flyouts (based on an underlying query).

- The email counts shown for the email clusters on the **Email** tab and the email quantity value shown on cluster flyout are calculated at the time of investigation, and do not change.

- The email count shown at the bottom of the **Email** tab of the email cluster flyout and the count of email messages shown in Explorer reflect email messages received after the investigation's initial analysis.

  Thus, an email cluster that shows an original quantity of 10 email messages would show an email list total of 15 when five more email messages arrive between the investigation analysis phase and when the admin reviews the investigation. Likewise, old investigations might start showing higher counts than Explorer queries show, because data in Microsoft Defender for Office 365 Plan 2 expires after seven days for trials and after 30 days for paid licenses.

  Showing both count historical and current counts in different views is done to indicate the email impact at the time of investigation and the current impact up until the time that remediation is run.

- In the context of email, you might see a volume anomaly threat surface as part of the investigation. A volume anomaly indicates a spike in similar email messages around the investigation event time compared to earlier timeframes. A spike in email traffic together with certain characteristics (for example, subject and sender domain, body similarity, and sender IP) is typical of the start of email campaigns or attacks. However, bulk, spam, and legitimate email campaigns commonly share these characteristics.

- Volume anomalies represent a potential threat, and accordingly could be less severe compared to malware or phish threats that are identified using anti-virus engines, detonation, or malicious reputation.

- You do not have to approve every action. If you do not agree with the recommended action or your organization does not choose certain types of actions, then you can choose to **Reject** the actions or simply ignore them and take no action.

- Approving and/or rejecting all actions lets the investigation fully close (status becomes remediated), while leaving some actions incomplete results in the investigation status changing to a partially remediated state.

## Next steps

- [Review and approve pending actions](air-review-approve-pending-completed-actions.md#approve-or-reject-pending-actions)
