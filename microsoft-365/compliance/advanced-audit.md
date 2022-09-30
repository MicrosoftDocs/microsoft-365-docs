---
title: "Microsoft Purview Audit (Premium)"
description: "Microsoft Purview Audit (Premium) provides new auditing capabilities to help your organization with forensic and compliance investigations."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- m365solution-audit
- m365initiative-compliance
- highpri
- audit
search.appverid:
- MOE150
- MET150
---

# Microsoft Purview Audit (Premium)

> [!TIP]
> *Did you know you can try the premium versions of all nine Microsoft Purview solutions for free?* Use the 90-day Purview solutions trial to explore how robust Purview capabilities can help your organization meet its compliance needs. Microsoft 365 E3 and Office 365 E3 customers can start now at the [Microsoft Purview compliance portal trials hub](https://compliance.microsoft.com/trialHorizontalHub?sku=ComplianceE5&ref=DocsRef). Learn details about [who can sign up and trial terms](compliance-easy-trials.md).

The [Audit functionality](search-the-audit-log-in-security-and-compliance.md) in Microsoft Purview provides organizations with visibility into many types of audited activities across many different services in Microsoft 365. Microsoft Purview Audit (Premium) helps organizations to conduct forensic and compliance investigations by increasing audit log retention required to conduct an investigation, providing access to crucial events (by using Audit log search in the Microsoft Purview compliance portal and the Office 365 Management Activity API) that help determine scope of compromise, and faster access to Office 365 Management Activity API.

> [!NOTE]
> Audit (Premium) is available for organizations with an Office 365 E5/A5/G5 or Microsoft 365 Enterprise E5/A5/G5 subscription. A Microsoft 365 E5/A5/G5 Compliance or E5/A5/G5 eDiscovery and Audit add-on license should be assigned to users for Audit (Premium) features such as long-term retention of audit logs and the generation of Audit (Premium) events for investigations. For more information about licensing, see:<br/>- [Audit (Premium) licensing requirements](auditing-solutions-overview.md#licensing-requirements)<br/>- [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#advanced-audit).

This article provides an overview of Audit (Premium) capabilities and shows you how to set up users for Audit (Premium).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Long-term retention of audit logs

Audit (Premium) retains all Exchange, SharePoint, and Azure Active Directory audit records for one year. This is accomplished by a default audit log retention policy that retains any audit record that contains the value of **Exchange**, **SharePoint**, or **AzureActiveDirectory** for the **Workload** property (which indicates the service in which the activity occurred) for one year. Retaining audit records for longer periods can help with on-going forensic or compliance investigations. For more information, see the "Default audit log retention policy" section in [Manage audit log retention policies](audit-log-retention-policies.md#default-audit-log-retention-policy).

In addition to the one-year retention capabilities of Audit (Premium), we have also released the capability to retain audit logs for 10 years. The 10-year retention of audit logs helps support long running investigations and respond to regulatory, legal, and internal obligations.

> [!NOTE]
> Retaining audit logs for 10 years will require an additional per-user add-on license. After this license is assigned to a user and an appropriate 10-year audit log retention policy is set for that user, audit logs covered by that policy will start to be retained for the 10-year period. This policy is not retroactive and can't retain audit logs that were generated before the 10-year audit log retention policy was created. For more information, see the [FAQs for Audit (Premium)](#faqs-for-audit-premium) section in this article.

### Audit log retention policies

All audit records generated in other services that aren't covered by the default audit log retention policy (described in the previous section) are retained for 90 days. But you can create customized audit log retention policies to retain other audit records for longer periods of time up to 10 years. You can create a policy to retain audit records based on one or more of the following criteria:

- The Microsoft 365 service where the audited activities occur.

- Specific audited activities.

- The user who performs an audited activity.

You can also specify how long to retain audit records that match the policy and a priority level so that specific policies will take priority over other policies. Also note that any custom audit log retention policy will take precedence over the default audit retention policy in case you need retain Exchange, SharePoint, or Azure Active Directory audit records for less than a year (or for 10 years) for some or all users in your organization. For more information, see [Manage audit log retention policies](audit-log-retention-policies.md).

## Audit (Premium) events

Audit (Premium) helps organizations to conduct forensic and compliance investigations by providing access to important events such as when mail items were accessed, when mail items were replied to and forwarded, and when and what a user searched for in Exchange Online and SharePoint Online. These events can help you investigate possible breaches and determine the scope of compromise. In addition to these events in Exchange and SharePoint, there are events in other Microsoft 365 services that are considered important events and require that users are assigned the [appropriate Audit (Premium) license](auditing-solutions-overview.md#licensing-requirements). Users must be assigned an Audit (Premium) license so that audit logs will be generated when users perform these events.

Audit (Premium) provides the following events:

- [MailItemsAccessed](#mailitemsaccessed)

- [Send](#send)

- [SearchQueryInitiatedExchange](#searchqueryinitiatedexchange)

- [SearchQueryInitiatedSharePoint](#searchqueryinitiatedsharepoint)

- [Other Audit (Premium) events in Microsoft 365](#other-audit-premium-events-in-microsoft-365)

### MailItemsAccessed

The MailItemsAccessed event is a mailbox auditing action and is triggered when mail data is accessed by mail protocols and mail clients. This event can help investigators identify data breaches and determine the scope of messages that may have been compromised. If an attacker gained access to email messages, the MailItemsAccessed action will be triggered even if there is no explicit signal that messages were actually read (in other words, the type of access such as a bind or sync is recorded in the audit record).

The MailItemsAccessed event replaces MessageBind in mailbox auditing logging in Exchange Online and provides these improvements:

- MessageBind was only configurable for AuditAdmin user logon type; it did not apply to delegate or owner actions. MailItemsAccessed applies to all logon types.

- MessageBind only covered access by a mail client. It didn't apply to sync activities. MailItemsAccessed events are triggered by both bind and sync access types.

- MessageBind actions would trigger the creation of multiple audit records when the same email message was accessed, which resulted in auditing "noise". In contrast, MailItemsAccessed events are aggregated into fewer audit records.

For information about audit records for MailItemsAccessed activities, see [Use Audit (Premium) to investigate compromised accounts](mailitemsaccessed-forensics-investigations.md).

To search for MailItemsAccessed audit records, you can search for the **Accessed mailbox items** activity in the **Exchange mailbox activities** drop-down list in the [audit log search tool](search-the-audit-log-in-security-and-compliance.md) in the compliance portal.

![Searching for MailItemsAccessed actions in the audit log search tool.](../media/AdvAudit_MailItemsAccessed.png)

You can also run the [Search-UnifiedAuditLog -Operations MailItemsAccessed](/powershell/module/exchange/search-unifiedauditlog) or [Search-MailboxAuditLog -Operations MailItemsAccessed](/powershell/module/exchange/search-mailboxauditlog) commands in Exchange Online PowerShell.

### Send

The Send event is also a mailbox auditing action and is triggered when a user performs one of the following actions:

- Sends an email message

- Replies to an email message

- Forwards an email message

Investigators can use the Send event to identify email sent from a compromised account. The audit record for a Send event contains information about the message, such as when the message was sent, the InternetMessage ID, the subject line, and if the message contained attachments. This auditing information can help investigators identify information about email messages sent from a compromised account or sent by an attacker. Additionally, investigators can use a Microsoft 365 eDiscovery tool to search for the message (by using the subject line or message ID) to identify the recipients the message was sent to and the actual contents of the sent message.

To search for Send audit records, you can search for the **Sent message** activity in the **Exchange mailbox activities** drop-down list in the [audit log search tool](search-the-audit-log-in-security-and-compliance.md) in the compliance portal.

![Searching for Sent message actions in the audit log search tool.](../media/AdvAudit_SentMessage.png)

You can also run the [Search-UnifiedAuditLog -Operations Send](/powershell/module/exchange/search-unifiedauditlog) or [Search-MailboxAuditLog -Operations Send](/powershell/module/exchange/search-mailboxauditlog) commands in Exchange Online PowerShell.

### SearchQueryInitiatedExchange

The SearchQueryInitiatedExchange event is triggered when a person uses Outlook to search for items in a mailbox. Events are triggered when searches are performed in the following Outlook environments:

- Outlook (desktop client)

- Outlook on the web (OWA)

- Outlook for iOS

- Outlook for Android

- Mail app for Windows 10

Investigators can use the SearchQueryInitiatedExchange event to determine if an attacker who may have compromised an account looked for or tried to access sensitive information in the mailbox. The audit record for a SearchQueryInitiatedExchange event contains information such as the actual text of the search query. The audit record also indicates the Outlook environment the search was performed in. By looking at the search queries that an attacker may have performed, an investigator can better understand the intent of the email data that was searched for.

To search for SearchQueryInitiatedExchange audit records, you can search for the **Performed email search** activity in the **Search activities** drop-down list in the [audit log search tool](search-the-audit-log-in-security-and-compliance.md) in the compliance center.

![Searching for Performed email search actions in the audit log search tool.](../media/AdvAudit_SearchExchange.png)

You can also run the [Search-UnifiedAuditLog -Operations SearchQueryInitiatedExchange](/powershell/module/exchange/search-unifiedauditlog) in Exchange Online PowerShell.

> [!NOTE]
> You must enable SearchQueryInitiatedExchange to be logged so you can search for this event in the audit log. For instructions, see [Set up Audit (Premium)](set-up-advanced-audit.md#step-2-enable-audit-premium-events).

### SearchQueryInitiatedSharePoint

Similar to searching for mailbox items, the SearchQueryInitiatedSharePoint event is triggered when a person searches for items in SharePoint. Events are triggered when searches are performed on the root or default page of the following types of SharePoint sites:

- Home sites

- Communication sites

- Hub sites

- Sites associated with Microsoft Teams

Investigators can use the SearchQueryInitiatedSharePoint event to determine if an attacker tried to find (and possibly accessed) sensitive information in SharePoint. The audit record for a SearchQueryInitiatedSharePoint event contains also contains the actual text of the search query. The audit record also indicates the type of SharePoint site that was searched. By looking at the search queries that an attacker may have performed, an investigator can better understand the intent and scope of the file data being searched for.

To search for SearchQueryInitiatedSharePoint audit records, you can search for the **Performed SharePoint search** activity in the **Search activities** drop-down list in the [audit log search tool](search-the-audit-log-in-security-and-compliance.md) in the compliance center.

![Searching for Performed SharePoint search actions in the audit log search tool.](../media/AdvAudit_SearchSharePoint.png)

You can also run the [Search-UnifiedAuditLog -Operations SearchQueryInitiatedSharePoint](/powershell/module/exchange/search-unifiedauditlog) in Exchange Online PowerShell.

> [!NOTE]
> You must enable SearchQueryInitiatedSharePoint to be logged so you can search for this event in the audit log. For instructions, see [Set up Audit (Premium)](set-up-advanced-audit.md#step-2-enable-audit-premium-events).

### Other Audit (Premium) events in Microsoft 365

In addition to the events in Exchange Online and SharePoint Online, there are events in other Microsoft 365 services that are logged when users are assigned the appropriate Audit (Premium) licensing. The following Microsoft 365 services provide Audit (Premium) events. Select the corresponding link to go to an article that identifies and describes these events.

- [Microsoft Forms](search-the-audit-log-in-security-and-compliance.md#microsoft-forms-activities)

- [Microsoft Stream](/stream/audit-logs#actions-logged-in-stream)

- [Microsoft Teams](/microsoftteams/audit-log-events#teams-activities)

- [Yammer](search-the-audit-log-in-security-and-compliance.md#yammer-activities)

## High-bandwidth access to the Office 365 Management Activity API

Organizations that access auditing logs through the Office 365 Management Activity API were restricted by throttling limits at the publisher level. This means that for a publisher pulling data on behalf of multiple customers, the limit was shared by all those customers.

With the release of Audit (Premium), we're moving from a publisher-level limit to a tenant-level limit. The result is that each organization will get their own fully allocated bandwidth quota to access their auditing data. The bandwidth is not a static, predefined limit but is modeled on a combination of factors including the number of seats in the organization and that E5/A5/G5 organizations will get more bandwidth than non-E5/A5/G5 organizations.

All organizations are initially allocated a baseline of 2,000 requests per minute. This limit will dynamically increase depending on an organization's seat count and their licensing subscription. E5/A5/G5 organizations will get about twice as much bandwidth as non-E5/A5/G5 organizations. There will also be a cap on the maximum bandwidth to protect the health of the service.

For more information, see the "API throttling" section in [Office 365 Management Activity API reference](/office/office-365-management-api/office-365-management-activity-api-reference#api-throttling).

## FAQs for Audit (Premium)

**Does every user need an E5/A5/G5 license to benefit from Audit (Premium)?**

To benefit from user-level Audit (Premium) capabilities, a user needs to be assigned an E5/A5/G5 license. There are some capabilities that will check for the appropriate license to expose the feature for the user. For example, if you're trying to retain the audit records for a user who isn't assigned the appropriate license for longer than 90 days, the system will return an error message.

**My organization has an E5/A5/G5 subscription, do I need to do anything to get access to audit records for Audit (Premium) events?**

For eligible customers and users assigned the appropriate E5/A5/G5 license, there is no action needed to get access to Audit (Premium) events, except for enabling the SearchQueryInitiatedExchange and SearchQueryInitiatedSharePoint events (as previously described in this article). Audit (Premium) events will only be generated for users with E5/A5/G5 licenses once those licenses have been assigned.

**Are the new events in Audit (Premium) available in the Office 365 Management Activity API?**

Yes. As long as audit records are generated for users with the appropriate license, you'll be able to access these records via the Office 365 Management Activity API.

**What happens to my organization's audit log data if I create a 10-year audit log retention policy when the feature was released to general availability but before the required add-on license was made available?**

Any audit log data covered by a 10-year audit log retention policy that you created after the feature was released to general availability in the last quarter of 2020 will be retained for 10 years. This includes 10-year audit log retention policies that were created before the required add-on license was released for purchase in March 2021. However, because the 10-Year Audit Log Retention Add On license is now available, you'll need to purchase and assign those add-on licenses for all users whose audit data is covered by a 10-year audit retention policy.
