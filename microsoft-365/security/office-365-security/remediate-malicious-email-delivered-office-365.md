---
title: Remediate malicious email that was delivered in Office 365
author: msfttracyp
ms.author: tracyp
manager: dansimp
ms.topic: conceptual
ms.collection:
- m365-security
- tier1
audience: admin
f1.keywords:
  - NOCSH
ms.localizationpriority: medium
search.appverid: MET150
description: Threat remediation
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Remediate malicious email delivered in Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Remediation means to take a prescribed action against a threat. Malicious email sent to your organization can be cleaned up either by the system, through zero-hour auto purge (ZAP), or by security teams through remediation actions like *move to inbox*, *move to junk*, *move to deleted items*, *soft delete*, or *hard delete*. Microsoft Defender for Office 365 Plan 2/E5 enables security teams to remediate threats in email and collaboration functionality through manual and automated investigation.

> [!NOTE]
> To remediate malicious email, security teams need the *Search and Purge* role assigned to them. Role assignment is done through [permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

## What you need to know before you begin

Admins can take required action on emails, but to get those actions approved, they must have the *Search and Purge* role assigned to them in the **Email & collaboration** permissions in the Microsoft 365 Defender portal. Without the *Search and purge"*role added to one of the role-groups, they won't be able to execute the action.

Because email actions create automated investigations in the backend, you need to enable *Automated Investigation*. Go to **Settings** \> **Endpoints** \> **Advanced features** and turn on **Automated Investigation**.

## Manual and automated remediation

*Manual hunting* occurs when security teams identify threats manually by using the search and filtering capabilities in Explorer. Manual email remediation can be triggered through any email view (*Malware*, *Phish*, or *All email*) after you identify a set of emails that need to be remediated.

:::image type="content" source="../../media/microsoft-365-defender-threat-explorer-manual-remediation.png" alt-text="Screenshot of manual hunting in Office 365 Explorer by date.":::

Security teams can use Explorer to select emails in several ways:

- Choose emails by hand: Use filters in various views. Select up to 100 emails to remediate.

- Query selection: Select an entire query by using the top **select all** button. The same query is also shown in action center mail submission details. Customers can submit maximum 200,000 emails from threat explorer.

- Query selection with exclusion: Sometimes security operations teams may want to remediate emails by selecting an entire query and excluding certain emails from the query manually. To do so, an admin can use the **Select all** check box and scroll down to exclude emails manually. The query can hold a maximum of 200,000 emails.

Once emails are selected through Explorer, you can start remediation by taking direct action or by queuing up emails for an action:

- Direct approval: When actions like *move to inbox*, *move to junk*, *move to deleted items*, *soft delete*, or *hard delete* are selected by security personnel who have appropriate permissions, and the next steps in remediation are followed, the remediation process begins to execute the selected action.

  > [!NOTE]
  > As the remediation gets kicked-off, it generates an alert and an investigation in parallel. Alert shows up in the alerts queue with the name "Administrative action submitted by an Administrator" suggesting that security personnel took the action of remediating an entity. It presents details like name of the person who performed the action, supporting investigation link, time etc. It works really well to know every time a harsh action like remediation is performed on entities. All these actions can be tracked under the **Actions & Submissions** \> **Action center**  -> **History tab** (public preview).

- Two-step approval: An "add to remediation" action can be taken by admins who don't have appropriate permissions or who need to wait to execute the action. In this case, the targeted emails are added to a remediation container. Approval is needed before the remediation is executed.

**Automated investigation and response** actions are triggered by alerts or by security operations teams from Explorer. These may include recommended remediation actions that must be approved by a security operations team. These actions are included on the **Action** tab in the automated investigation.

> [!div class="mx-imgBorder"]
> [![Mail with malware in "Zapped" page showing time of Zap execution.](../../media/tp-RemediationArticle3.png)](../../media/tp-RemediationArticle3.png#lightbox)

All remediation (direct approvals) created in Explorer, Advanced hunting, or through Automated investigation are displayed in the Action center at **Actions & Submissions** \> **Action center** \> **History** tab (<https://security.microsoft.com/action-center/history>).

Manual actions pending approval using the two-step approval process (1. Add to remediation by one security operation team member, 2. Reviewed and approved by another security operation team member) are visible at **Actions & Submissions** \> **Action center** \> **Pending** tab (<https://security.microsoft.com/action-center/pending>). After approval, they're visible at **Actions & Submissions** \> **Action center** \> **History** tab (<https://security.microsoft.com/action-center/history>).

:::image type="content" source="../../media/microsoft-365-defender-action-center-history.png" alt-text="The unified Action Center shows you 30 days of remediation actions.":::

Unified Action Center shows remediation actions for the past 30 days. Actions taken through Explorer are listed by the name that the security operations team provided when the remediation was created as well as approval Id, Investigation Id. Actions taken through automated investigations have titles that begin with the related alert that triggered the investigation, such as *Zap email cluster*.

Open any remediation item to view details about it, including its remediation name, approval Id, Investigation Id, creation date, description, status, action source, action type, decided by, status. It also opens a side pane with action details, email cluster details, alert and Incident details.

- *Open Investigation page* this opens up an admin Investigation that contains fewer details and tabs. It shows details like: related alert, entity selected for remediation, action taken, remediation status, entity count, logs, approver of action. This investigation keeps a track of investigation done by the admin manually and  contains details to selections made by the admin, hence is called admin action investigation. No need to act on the investigation and alert its already in approved state.
- *Email count* Displays the number of emails submitted through Threat Explorer. These emails can be actionable or not actionable.
- *Action logs* Show the details of remediation statuses like successful, failed, and already in destination.

  :::image type="content" source="../../media/microsoft-365-defender-action-center-history-panel.png" alt-text="The Action Center with the Move to Inbox option open.":::

  - **Actionable**: Emails in the following cloud mailbox locations can be acted on and moved:
    - Inbox
    - Junk
    - Deleted folder
    - Soft-deleted folder

      > [!NOTE]
      > Currently, only a user with access to the mailbox can recover items from a soft-deleted folder.

  - **Not actionable**: Emails in the following locations can't be acted on or moved in remediation actions:
    - Quarantine
    - Hard-deleted folder
    - On-premises/external
    - Failed/dropped

  Suspicious messages are categorized as either remediable or nonremediable. In most cases, remediable and nonremediable messages combine equals total messages submitted. But in rare cases this may not be true. This can happen because of system delays, timeouts, or expired messages. Messages expire based on the Explorer retention period for your organization.

  Unless you're remediating old messages after your organization's Explorer retention period, it's advisable to retry remediating items if you see number inconsistencies. For system delays, remediation updates are typically refreshed within a few hours.

  If your organization's retention period for email in Explorer is 30 days and you're remediating emails going back 29-30 days, mail submission counts may not always add up. The emails might have started moving out of the retention period already.

  If remediations are stuck in the "In progress" state for a while, it's likely due to system delays. It could take up to a few hours to remediate. You might see variations in mail submission counts, as some of the emails may not have been included the query at the start of remediation due to system delays. It's a good idea to retry remediating in such cases.

  > [!NOTE]
  > For best results, remediation should be done in batches of 50,000 or fewer.

  Only remediable emails are acted on during remediation. Nonremediable emails can't be remediated by the Office 365 email system, as they aren't stored in cloud mailboxes.

  Admins can take actions on emails in quarantine if necessary, but those emails expire out of quarantine if they're not manually purged. By default, emails quarantined because of malicious content aren't accessible by users, so security personnel don't have to take any action to get rid of threats in quarantine. If the emails are on-premises or external, the user can be contacted to address the suspicious email. Or the admins can use separate email server/security tools for removal. These emails can be identified by applying the *delivery location = on-prem* external filter in Explorer. For failed or dropped email, or email not accessible by users, there won't be any email to mitigate, since these mails don't reach the mailbox.

- **Action logs**: This shows the messages remediated, successful, failed, already in destination.

  Status can be:

  - **Started**: Remediation is triggered.
    - **Queued**: Remediation is queued up for mitigation of emails.
    - **In progress**: Mitigation is in progress.
    - **Completed**: Mitigation on all remediable emails either completed successfully or with some failures.
    - **Failed**: No remediations were successful.

  As only remediable emails can be acted on, each email's cleanup is shown as successful or failed. From the total remediable emails, successful and failed mitigations are reported.

  - **Success**: The desired action on remediable emails was accomplished. For example: An admin wants to remove emails from mailboxes, so the admin takes the action of soft-deleting emails. If a remediable email isn't found in the original folder after the action is taken, the status will show as successful.

  - **Failure**: The desired action on remediable emails failed. For example: An admin wants to remove emails from mailboxes, so the admin takes the action of soft-deleting emails. If a remediable email is still found in the mailbox after the action is taken, status will show as failed.

  - **Already in destination**: The desired action was already taken on the email OR the email already existed in the destination location. For example: An email was soft deleted by the admin through Explorer on day one. Then similar emails show up on day 2, which are again soft deleted by the admin. While selecting these emails, admin ends up picking some emails from day one that are already soft deleted. Now these emails won't be acted upon again, they'll just show as "already in destination", since no action was taken on them as they existed in the destination location.

  - **New**: An *Already in destination* column has been added in the Action Log. This feature uses the latest delivery location in Threat Explorer to signal if the mail has already been remediated. *Already in destination* helps security teams understand the total number of messages that still need to be addressed.

Actions can only be taken on messages in Inbox, Junk, Deleted, and Soft Deleted folders of Threat Explorer. Here's an example of how the new column works. A *soft delete action* takes place on the message present in the Inbox, then the message is handled according to policies. The next time a soft delete is performed, this message will show under the column 'Already in destination' signaling it doesn't need to be addressed again.

Select any item in the action log to display remediation details. If the details say "successful" or "not found in mailbox", that item was already removed from the mailbox. Sometimes there's a system error during remediation. In those cases, it's a good idea to retry the remediation action.

In case of remediating large batches of email, export the messages sent for remediation via Mail Submission, and messages that were remediated via Action Logs. The export limit is increased to 100,000 records.

 Admins can take remediation actions like moving email messages to Junk, Inbox, or Deleted items folder and delete actions like soft deleted or hard delete from Advanced Hunting pages.

:::image type="content" source="../../media/microsoft-365-defender-advanced-hunting-actions-pane.png" alt-text="The Advanced Hunting, Take Actions panel with your choice of actions.":::

Remediation mitigates threats, addresses suspicious emails, and helps keep an organization secure.
