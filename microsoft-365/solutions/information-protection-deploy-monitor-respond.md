---
title: "Monitor and respond to data privacy incidents in your organization"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: laurawi
ms.date: 01/04/2021
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- m365solution-infoprotection
- m365solution-scenario
ms.custom: 
description: Use auditing and alert policies and data subject requests to monitor and respond to personal data incidents.
---

# Monitor and respond to data privacy incidents in your organization

Microsoft 365 features are available to help you monitor, investigate, and respond to data privacy incidents in your organization as you operationalize related capabilities. Having processes, procedures, and other documentation for each of these may also be important to demonstrate compliance to regulatory bodies.

These include: 

- Auditing and alert policies
- Data subject requests (including content search and eDiscovery)
- Additional investigative tools and reporting

## Data privacy regulations impacting the use of monitoring and response tools

Here is a sample listing of data privacy regulations that may relate to information governance controls:

- LGPD Article 46
- LGPD Article 48
- GDPR Article (5)(1)(f)
- GDPR Article (15)(1)(e)
- HIPAA-HITECH (45 C.F.R. 164.308(a)(1)(ii)(D))
- HIPAA-HITECH (45 C.F.R. 164.308(a)(6)(ii)
- HIPAA-HITECH (45 C.F.R. 164.312(b))
- CCPA (1798.105(c))

For more information, see [Assess data privacy risks and identify sensitive information](information-protection-deploy-assess.md).

The data privacy regulations generally call for the following for monitoring and response:

- Auditing, alerting, and reporting for activities related to the storage, sharing and processing of personal data
- The ability to respond to a data subject request (DSR) and in some cases, perform investigative and other administrative measures to comply with such requests.

Your organization may also wish to perform monitoring and response activities for other purposes, such as other compliance needs or for business reasons. Establishing your monitoring and response scheme for data privacy should be done as part of overall monitoring and response planning, implementation, and management.

To help you get started with a monitoring and response scheme in Microsoft 365 for data privacy regulations, this article lists useful capabilities in Microsoft 365 to answer questions such as: 

- What sort of day-to-day monitoring, investigative and reporting techniques are available for the different data types and sources?
- What mechanisms will be needed to handle data subject requests (DSRs) and any remedial actions, such as anonymization, redaction, and deletion.

## Auditing and Alert Policies in the Security and Compliance Center

See these articles for setting up auditing, advanced auditing, and alert policies:

- [Unified auditing](../compliance/search-the-audit-log-in-security-and-compliance.md)
- [Mailbox auditing](../compliance/enable-mailbox-auditing.md)
- [Advanced audit](../compliance/advanced-audit.md)
- [Alert policies](../compliance/alert-policies.md)

## Data subject requests for the GDPR and CCPA

See [Data Subject Requests for the GDPR and CCPA](/compliance/regulatory/gdpr-dsr-Office365) for information on responding to a DSR in Microsoft 365.

## Manage deleted users in Microsoft Stream

For Microsoft Stream, when a user is deleted from Azure Active Directory (Azure AD), if their name was associated with a posted Stream video prior to that point, their email address remains associated with the video. See [Manage deleted users from Microsoft Stream](/stream/managing-deleted-users) to remove it.

## Insider risk management as an investigative tool

[Insider risk management in Microsoft 365](../compliance/insider-risk-management.md) is a feature of the Microsoft Compliance admin center to help you minimize internal risk by enabling you to detect, investigate, and take action on risky activities in your organization.