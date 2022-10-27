---
title: Advanced Data Residency Commitments
description: Advanced Data Residency Commitments
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Advanced Data Residency Commitments

**Exchange Online Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

Exchange Online mailbox content, (e-mail body, calendar entries, and the content of e-mail attachments stored in the related _Local Region Geography_ or _Expanded Local Region Geography_.

**SharePoint Online/OneDrive for Business Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

SharePoint Online site content and the files stored within that site, and files uploaded to OneDrive for Business.

**Microsoft Teams Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

Microsoft Teams customer data consists of chat messages (including private messages, channel messages, meeting messages and images used in chats), and, for customers using Microsoft Stream (on SharePoint), meeting recordings present in the Tenant.

**Microsoft Defender for Office P1 Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- MDO P1 does not store any customer data within its service. In addition, all processing of data that is required to analyze threats and inspect suspicious emails, documents, messages, links, etc. is done in a sandbox environment and performed within the \_Local Region Geography\_ or \_Expanded Local Region Geography\_.

- Exchange Online Protection (EOP) stores at rest the following customer data in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- EOP service configuration data and policies

- Quarantined email and attachments

- Junk email

- Grading analysis

- Block lists (url, tenant, user)

- Spam domains

- Reports

- Alerts

**Office for the Web Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_: No customer data is stored at rest.

**Viva Connections Data Residency Commitments**

The following customer data will be stored in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- The Dashboard and Feed can have content sourced from SharePoint Online, Exchange Online and Microsoft Teams. All data sourced from these services that are covered by their data residency commitments will be stored in the relevant \_Geography\_. Please refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint Online](m365-dr-workload-spo.md) and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.

**Viva Topics Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- All the topics and customer data snippets discovered are stored within the relevant \_Geographies\_ in Exchange Online Substrate (site or arbitration mailboxes, and Substrate). All topic customer data is partitioned based on which \_Local Region Geography\_ or \_Expanded Local Region Geography\_ the data came from within your tenant.

- ML models are trained on public web data, and as such do not contain any customer data from your tenant. In the future it's possible we will use customer data to improve accuracy of the ML models, in which case the data handling of ML models will follow the same policies as any other customer content (including data residency, retention, access control, sensitivity)

- Topic highlighting is computed dynamically when the SharePoint Online page is rendered by running a language model against the content of the page and linking it with the knowledge base of Topics. The Topics data is sourced from the Substrate in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_.

- The administration configuration data is stored within the \_Local Region Geography\_ or \_Expanded Local Region Geography\_.

**Purview Audit (Standard) Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- Service configuration data

- Audited Activities

- Audit Records

- Audit log query permissions

**Purview Audit (Premium) Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

In addition to the data stored as part of Purview Audit (Standard), configuration and Customer Data related to high-value crucial events are stored in the relevant \_Local Region Geography\_ or \_Expanded Local Region Geography\_.

**Data lifecycle management - Data Retention Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- Retention policy settings

- Retention label definitions

- Customer Data stored in original locations for the following services:

- Exchange email

- SharePoint site

- OneDrive accounts

- Microsoft 365 Groups

- Exchange public folders

- Microsoft Teams chats and channel messages

- Customer Data copied and stored in Exchange Online hidden mailboxes

- Teams channel messages

- Teams chats

- Teams private channel messages

- SharePoint Online, OneDrive for Business, Exchange Online and Microsoft Teams follow the data residency commitments for those services. Please refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint Online](m365-dr-workload-spo.md) and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.

- Training classifiers

- Disposition data

- Mappings between retention labels and Data Loss Prevention (DLP) policies.

**Data lifecycle management - Records Management**** Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- Record retention label definitions.

- File plan definitions

- Event-based retention policy settings.

- Disposition review records

- Records of deletion

**Information Protection - Sensitivity labels**** Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- Label configuration

- Labels definition

- Label policies

- Custom help page

- Activity Explorer and Microsoft 365 unified audit logs

- Label change justification records.

**Information Protection - Data Loss Prevention (DLP)****Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- DLP admin configuration

- DLP policies in Compliance Center

- DLP monitored activities

- Violation history, Activity Explorer and Microsoft 365 unified audit logs

- Quarantine storage

- DLP Alerts and DLP Alert management dashboard

**Information Protection - Office Message Encryption**** Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- Encryption policies

- Admin settings

- Encrypted messages

**Insider Risk Management - Information Barriers**** Data Residency Commitments**

The following customer data will be stored at rest in the \_Local Region Geography\_ or \_Expanded Local Region Geography\_:

- Policy settings and risk indicators

- Admin settings