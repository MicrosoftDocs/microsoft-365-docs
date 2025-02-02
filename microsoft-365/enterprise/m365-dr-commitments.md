---
title: Advanced Data Residency Commitments
description: Advanced Data Residency Commitments
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/29/2024
ms.reviewer: deanw
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Advanced Data Residency Commitments

> [!NOTE]
> If you have purchased a Multi-Geo subscription, then Microsoft will store certain customer data at rest in more than one Geography based on your configuration even if you have purchased the Microsoft 365 Advanced Data Residency add-on ("ADR").  

Microsoft makes commitments to store certain customer data at rest in the applicable _Local Region Geography_ for [eligible customers](advanced-data-residency.md#eligibility) that purchase ADR. The commitments are specified as follows.  

## Exchange Online

The following customer data is stored at rest in the _Local Region Geography_:

- Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments stored in the related _Local Region Geography_).

## SharePoint/OneDrive

The following customer data is stored at rest in the _Local Region Geography_:

- SharePoint site content and the files stored within that site and files uploaded to OneDrive

## Microsoft Teams

The following customer data is stored at rest in the _Local Region Geography_:

- Microsoft Teams chat messages (including private messages, channel messages, meeting messages and images used in chats), and, for customers using Microsoft Stream (on SharePoint), meeting recordings

## Microsoft 365 Copilot

The following customer data is stored at rest in the _Local Region Geography_:

- Any stored content of interactions with Microsoft 365 Copilot to the extent not included in the preceding commitments.

## Microsoft Defender for Office P1

The following customer data is stored at rest in the _Local Region Geography_:

- MDO P1 doesn't store any customer data within its service.
- Exchange Online Protection (EOP). The following customer data is stored at rest in the _Local Region Geography_: Service configuration data and policies, quarantined email and attachments, junk email, grading analysis, blocklists (url, tenant, user), spam domains, reports, and alerts

## Office for the Web

The following customer data is stored at rest in the _Local Region Geography_:

- Office for the Web stores files on a storage host that has its applicable promises to _Local Region Geography_.

## Viva Connections

The following customer data is stored in the _Local Region Geography_:

- Viva Connections Dashboard and Feed can have content sourced from SharePoint, Exchange Online and Microsoft Teams. All customer data sourced from these services covered by data residency commitments will be stored in the _Local Region Geography_. Refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint](m365-dr-workload-spo.md), and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.

## Viva Topics*

> [!NOTE]
> *Viva Topics will be retired on February 22, 2025. Therefore, as of October 31, 2024, Viva Topics will no longer be a supported workload in ADR. Starting with the upcoming local region launches in Taiwan and New Zealand, Viva Topics customer data will not be migrated to new local regions, nor will new customers have Viva Topics stored in existing local regions. For more details, please visit [aka.ms/TopicsFebSupport](https://aka.ms/TopicsFebSupport).

The following customer data is stored at rest in the _Local Region Geography_:

- All the topics and customer data snippets discovered are stored within the relevant _Geographies_ in Exchange Online Substrate (site or arbitration mailboxes, and Substrate). All topic customer data is partitioned based on which _Local Region Geography_ the data came from within your tenant.
- Machine Learning ("ML") models are trained on public web data, and as such don't contain any customer data from your tenant. In the future, it's possible we'll use customer data to improve accuracy of the ML models, in which case the data handling of ML models will follow the same policies as any other customer content (including data residency, retention, access control, sensitivity).
- Topic highlighting is computed dynamically when the SharePoint page is rendered by running a language model against the content of the page and linking it with the knowledge base of Topics. The Topics data is sourced from the Substrate in the _Local Region Geography_.
- The administration configuration data is stored within the _Local Region Geography_.

## Microsoft Purview

### Data Loss Prevention (DLP)

The following customer data is stored at rest in the _Local Region Geography_:

- DLP Admin Configuration
- DLP policies in Compliance Portal
- DLP monitored activities
- Violation history
- Activity Explorer and Microsoft 365 unified audit logs
- Quarantine storage
- DLP Alerts and DLP Alert management dashboard

### Information Barriers

The following customer data is stored at rest in the _Local Region Geography_:

- Policy settings
- Risk indicators
- Segments Configuration

### Information Protection (MIP)

#### Sensitivity labels

The following customer data is stored at rest in the _Local Region Geography_:

- Label configuration
- Labels definition
- Label policies
- Custom help page
- Activity Explorer and Microsoft 365 unified audit logs
- Label change justification records

#### Office Message Encryption (OME)

The following customer data is stored at rest in the _Local Region Geography_:

- Encryption policies
- Admin settings
- Encrypted messages

#### Classifiers

- Sensitive information types, including Enhanced Data Match (EDM) and Trainable Classifiers, configured by customers

### Audit (Standard)

The following customer data is stored at rest in the _Local Region Geography_:

- Service configuration data
- Audited Activities
- Audit Records
- Audit log query permissions

### Audit (Premium)

The following customer data is stored at rest in the _Local Region Geography_:

- All data covered under Audit (Standard)
- Configuration and Customer Data related to high-value crucial events

### Data lifecycle Management (DLM)

#### Data Retention

The following customer data is stored at rest in the _Local Region Geography_:

- Retention policy settings and retention label definitions
- Customer Data stored in original locations for the following services:
  - Exchange email
  - SharePoint site
  - OneDrive accounts
  - Microsoft 365 Groups
  - Exchange public folders
  - Microsoft Teams chats and channel messages
  - Yammer user and community messages
- Customer Data copied and stored in Exchange Online hidden mailboxes
  - Teams channel messages
  - Teams chats
  - Teams private channel messages
  - Yammer user and community messages
  - SharePoint, OneDrive, Exchange Online and Microsoft Teams follow the data residency commitments for those services. Refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint](m365-dr-workload-spo.md), and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.
- Training classifiers
- Disposition data
- Mappings between retention labels and Data Loss Prevention (DLP) policies

#### Records Management

The following customer data is stored at rest in the _Local Region Geography_:

- Record retention label definitions
- File plan definitions
- Event-based retention policy settings
- Disposition review records and records of deletion
