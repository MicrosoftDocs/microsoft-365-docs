---
title: "Use communication compliance reports and audits"
description: "Learn more about using communication compliance reports and audits."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
---

# Use communication compliance reports and audits

## Reports

The new **Reports** dashboard is the central location for viewing all communication compliance reports. Report widgets provide a quick view of insights most commonly needed for an overall assessment of the status of communication compliance activities. Information contained in the report widgets is not exportable. Detailed reports provide in-depth information related to specific communication compliance areas and offer the ability to filter, group, sort, and export information while reviewing. 

For the date range filter, the date and time for events are listed in Coordinated Universal Time (UTC). When filtering messages for reports, the requesting user's local date/time determines the results based on the conversion of the user's local date/time to UTC. For example, if a user in U.S. Pacific Daylight Time (PDT) filters a report from 8/30/2021 to 8/31/2021 at 00:00, the report includes messages from 8/30/2021 07:00 UTC to 8/31/2021 07:00 UTC. If the same user was in U.S. Eastern Daylight Time (EDT) when filtering at 00:00, the report includes messages from 8/30/2021 04:00 UTC to 8/31/2021 04:00 UTC.

![Communication compliance reports dashboard.](../media/communication-compliance-reports-dashboard.png)

The **Reports dashboard** contains the following report widgets and detailed reports links:

- **Recent policy matches** widget: displays the number of matches by active policy over time.
- **Resolved items by policy** widget: displays the number of policy match alerts resolved by policy over time.
- **Users with most policy match** widget: displays the users (or anonymized usernames) and number of policy matches for a given period.
- **Policy with most matches** widget: displays the policies and the number of matches for a given period, ranked highest to lowest for matches.
- **Escalations by policy** widget: displays the number of escalations per policy over a given time.
- **Policy settings and status** detailed report: provides a detailed look at policy configuration and settings, as well as the general status for each of the policy (matches and actions) on messages. Includes policy information and how policies are associated with users and groups, locations, review percentages, reviewers, status, and when the policy was last modified. Use the *Export* option to create a .csv file containing the report details.
- **Items and actions per policy** detailed report: Review and export matching items and remediation actions per policy. Includes policy information and how policies are associated with:

    - Items matched
    - Escalated items
    - Resolved items
    - Tagged as compliant
    - Tagged as non-compliant
    - Tagged as questionable
    - Items pending review
    - User notified
    - Case created

    Use the *Export* option to create a .csv file containing the report details.
- **Item and actions per location** detailed report: Review and export matching items and remediation actions per Microsoft 365 location. Includes information about how workload platforms are associated with:

    - Items matched
    - Escalated items
    - Resolved items
    - Tagged as compliant
    - Tagged as non-compliant
    - Tagged as questionable
    - Items pending review
    - User notified
    - Case created

    Use the *Export* option to create a .csv file containing the report details.
- **Activity by user** detailed report: Review and export matching items and remediation actions per user. Includes information about how users are associated with:

    - Items matched
    - Escalated items
    - Resolved items
    - Tagged as compliant
    - Tagged as non-compliant
    - Tagged as questionable
    - Items pending review
    - User notified
    - Case created

    Use the *Export* option to create a .csv file containing the report details.

- **Sensitive information type per location** detailed report (preview): Review and export information about the detection of sensitive information types and the associated sources in communication compliance policies. Includes the overall total and the specific breakdown of sensitive information type instances in the sources configured in your organization. Examples are:

    - **Email**: Sensitive information types detected in Exchange email messages.
    - **Teams**: Sensitive information types detected in Microsoft Teams channels and chat messages.
    - **Skype for Business**: Sensitive information types detected in Skype for business communications.
    - **Yammer**: Sensitive information types detected in Yammer inboxes, posts, chats, and replies.
    - **Third-party sources**: Sensitive information types detected for activities associated with third-party connectors configured in your organization. To view the breakdown of third-party sources for a specific sensitive information type in the report, hover your mouse over the value for the sensitive information type in the Third-party source column.
    - **Other**: Sensitive information types used for internal system processing. Selecting or deselecting this source for the report will not affect any values.

    Use the *Export* option to create a .csv file containing the report details. The values for each third-party source are displayed in separate columns in the .csv file.

## Audit

In some instances, you must provide information to regulatory or compliance auditors to prove supervision of user activities and communications. This information may be a summary of all activities associated with a defined organizational policy or anytime a communication compliance policy changes. Communication compliance policies have built-in audit trails for complete readiness for internal or external audits. Detailed audit histories of every create, edit, and delete action are captured by your communication policies to provide proof of supervisory procedures.

> [!IMPORTANT]
> Auditing must be enabled for your organization before communication compliance events will be recorded. To enable auditing, see [Enable the audit log](communication-compliance-configure.md#step-2-required-enable-the-audit-log). When activities trigger events that are captured in the Microsoft 365 Audit log, it may take up to 48 hours before these events can be viewed in communication compliance policies.

To view communication compliance policy update activities, select the **Export policy updates** control on the main page for any policy. You must be assigned the *Global Admin* or *Communication Compliance Admin* roles to export update activities. This action generates an audit file in the .csv format that contains the following information:

|**Field**|**Details**|
|:-----|:-----|
| **CreationDate** | The date the update activity was performed in a policy. |
| **UserIds** | The user that performed the update activity in a policy. |
| **Operations** | The update operations performed on the policy. |
| **AuditData** | This field is the main data source for all policy update activities. All update activities are recorded and separated by comma delimiters. |

To view communication compliance review activities for a policy, select the **Export review activities** control on the **Overview** page for a specific policy. You must be assigned the *Global Admin* or *Communication Compliance Admin* roles to export review activities. This action generates an audit file in the .csv format that contains the following information:

|**Field**|**Details**|
|:-----|:-----|
| **CreationDate** | The date the review activity was performed in a policy. |
| **UserIds** | The user that performed the review activity in a policy. |
| **Operations** | The review operations performed on the policy. |
| **AuditData** | This field is the main data source for all policy review activities. All review activities are recorded and separated by comma delimiters. |

You can also view audit activities in the unified audit log or with the [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog) PowerShell cmdlet. To learn more about audit log retention policies, see [Manage audit log retention policies](audit-log-retention-policies.md).

For example, the following example returns the activities for all the supervisory review activities (policies and rules):

```PowerShell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -RecordType AeD -Operations SupervisoryReviewTag
```

This example returns the update activities for your communication compliance policies:

```PowerShell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -RecordType Discovery -Operations SupervisionPolicyCreated,SupervisionPolicyUpdated,SupervisionPolicyDeleted
```

This example returns activities that match your current communication compliance policies:

```PowerShell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -Operations SupervisionRuleMatch
```

Communication compliance policy matches are stored in a supervision mailbox for each policy. In some cases, you may need to check the size of your supervision mailbox for a policy to make sure you aren't approaching the current 100-GB storage size or 1 million message limit. If the mailbox limit is reached, policy matches aren't captured and you'll need to create a new policy (with the same settings) to continue to capture matches for the same activities.

To check the size of a supervision mailbox for a policy, complete the following steps:

1. Use the [Connect-ExchangeOnline](/powershell/module/exchange/connect-exchangeonline) cmdlet in the Exchange Online PowerShell V2 module to connect to Exchange Online PowerShell using modern authentication.
2. Run the following command in PowerShell:

    ```PowerShell
    ForEach ($p in Get-SupervisoryReviewPolicyV2 | Sort-Object Name)
    {
       "<Name of your communication compliance policy>: " + $p.Name
       Get-MailboxStatistics $p.ReviewMailbox | ft ItemCount,TotalItemSize
    }
    ```
