---
title: "Advanced audit in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MET150
ms.assetid: 
description: "."
---

# Advanced audit in Microsoft 365

The [unified auditing functionality](search-the-audit-log-in-security-and-compliance.md) in Microsoft 365 provides organizations with visibility into many types of audited activities across many different services in Microsoft 365. Now with the release of Advanced audit in Microsoft 365, we're adding new auditing capabilities that can help your organization with forensic and compliance investigations.

> [!NOTE]
> Advanced audit is available for organizations with an Office 365 or Microsoft 365 Enterprise E5 subscription. Additionally, a Microsoft 365 E5 Compliance add-on subscription can be assigned to users when per-user licensing is required as is the case for long-term retention of audit logs and high-value audit events.

This article provides a overview of these Advanced Audit capabilities.

## Long-term retention of audit logs

Advanced audit retains all Exchange, SharePoint, and Azure Active Directory audit records for one year. This is accomplished by a default audit log retention policy that retains any audit record that contains the value of **Exchange**, **SharePoint**, or **AzureActiveDirectory** for the **Workload** property (which indicates the service in which the activity occurred) for one year. This can help with on-going forensic or compliance investigations.

## Audit log retention policies

All audit records generated in other services that aren't covered by the default audit log retention policy (described in the previous section) are retained for 90 days. However, now you can create customized audit log retention policies to retain other audit records for up to one year. You can create a policy to retain audit records based on one or more of the following criteria:

- The Microsoft 365 service where the audited activities occur

- Specific audited activities

- The user who performs an audited activity

You can also specify how long to retain audit records that match the policy and a priority level so that specific policies will take priority over other policies. Also note that any custom audit log retention policy will take precedence over the default audit retention policy in case you need retain Exchange, SharePoint, or Azure Active Directory audit records for less than a year for some or all the users in your organization. For more information, see [Manage audit log retention policies](audit-log-retention-policies.md).

## High-value audit events

High-value security- and compliance-related audit events are ones that can help you investigate possible breaches or other forensic-related investigations. The first such high-value event that we're releasing is the *MailItemsAccessed* mailbox auditing event. This event is trigger when mail data is accessed by mail protocols and clients. The MailItemsAccessed event can help investigators identify data breaches and determine the scope of messages that may have been compromised. If an attacker gained access to email messages, MailItemsAccessed event will be triggered even if there is no explicit signal that it was actually read (in other words, the type of access such as via bind or sync is recorded in the audit record).

The new MailItemsAccessed mailbox action replaces MessageBind in mailbox auditing logging in Exchange Online and provides these improvements:

- MessageBind was only configurable for AuditAdmin user logon type; it did not apply to delegate or owner actions. MailItemsAccessed applies to all logon types.

- MessageBind only covered access by an mail client. It didn't apply to sync activities. MailItemsAccessed events are trigger by both bind and sync access types.

- 

- 

- 


## High bandwidth access to the Office 365 Management Activity API

You can find details on what is currently available [here](https://docs.microsoft.com/microsoft-365/compliance/search-the-audit-log-in-security-and-compliance). 

The following new capabilities are covered in this release.

- High value events - Mail Accessed. For more information, go to [link](https://products.office.com/)

- Customizable long term retention. For more information, go to [link](https://products.office.com/)

- High bandwidth log access. For more information, go to [link](https://products.office.com/)

For more details on prerequisites for these features, go [here](https://products.office.com/).
