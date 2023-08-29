---
title: Advanced Data Residency Commitments
description: Advanced Data Residency Commitments
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 10/27/2022
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Advanced Data Residency Commitments

>[!NOTE]
>If you have purchased a Multi-Geo subscription, then Microsoft will store certain customer data at rest in more than one Geography based on your configuration even if you have purchased the Microsoft 365 Advanced Data Residency add-on ("ADR").  

Microsoft makes commitments to store certain customer data at rest in the applicable _Local Region Geography_ for [eligible customers](advanced-data-residency.md#eligibility) that purchase ADR. The commitments are specified below.  

## Exchange Online

The following customer data will be stored at rest in the _Local Region Geography_:

- Exchange Online mailbox content, (e-mail body, calendar entries, and the content of e-mail attachments stored in the related _Local Region Geography_.

## SharePoint Online/OneDrive for Business

The following customer data will be stored at rest in the _Local Region Geography_:

- SharePoint Online site content and the files stored within that site and files uploaded to OneDrive for Business

## Microsoft Teams

The following customer data will be stored at rest in the _Local Region Geography_:

- Microsoft Teams chat messages (including private messages, channel messages, meeting messages and images used in chats), and, for customers using Microsoft Stream (on SharePoint), meeting recordings

## Microsoft Defender for Office P1

The following customer data will be stored at rest in the _Local Region Geography_:

- MDO P1 does not store any customer data within its service.
- Exchange Online Protection (EOP). The following customer data will be stored at rest in the _Local Region Geography_: Service configuration data and policies, quarantined email and attachments, junk email, grading analysis, block lists (url, tenant, user), spam domains, reports, and alerts

## Office for the Web

The following customer data will be stored at rest in the _Local Region Geography_:

- Office for the Web stores files on a storage host which has its applicable promises to _Local Region Geography_.

## Viva Connections

The following customer data will be stored in the _Local Region Geography_:

- Viva Connections Dashboard and Feed can have content sourced from SharePoint Online, Exchange Online and Microsoft Teams. All customer data sourced from these services covered by data residency commitments will be stored in the _Local Region Geography_. Refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint Online](m365-dr-workload-spo.md) and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.

## Viva Topics

The following customer data will be stored at rest in the _Local Region Geography_:

- All the topics and customer data snippets discovered are stored within the relevant _Geographies_ in Exchange Online Substrate (site or arbitration mailboxes, and Substrate). All topic customer data is partitioned based on which _Local Region Geography_ the data came from within your tenant.
- Machine Learning ("ML") models are trained on public web data, and as such do not contain any customer data from your tenant. In the future it's possible we will use customer data to improve accuracy of the ML models, in which case the data handling of ML models will follow the same policies as any other customer content (including data residency, retention, access control, sensitivity).
- Topic highlighting is computed dynamically when the SharePoint Online page is rendered by running a language model against the content of the page and linking it with the knowledge base of Topics. The Topics data is sourced from the Substrate in the _Local Region Geography_.
- The administration configuration data is stored within the _Local Region Geography_.

## Purview Audit (Standard)

The following customer data will be stored at rest in the _Local Region Geography_:

- Service configuration data, audited Activities, audit Records, and audit log query permissions

## Purview Audit (Premium)

The following customer data will be stored at rest in the _Local Region Geography_:

- In addition to the customer data stored as part of Purview Audit (Standard), configuration and Customer Data related to high-value crucial events

## Data lifecycle management - Data Retention

The following customer data will be stored at rest in the _Local Region Geography_:

- Retention policy settings and retention label definitions
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
  - SharePoint Online, OneDrive for Business, Exchange Online and Microsoft Teams follow the data residency commitments for those services. Refer to [Exchange Online](m365-dr-workload-exo.md), [SharePoint Online](m365-dr-workload-spo.md) and [Microsoft Teams](m365-dr-workload-teams.md) workload data residency pages for more details.
- Training classifiers
- Disposition data
- Mappings between retention labels and Data Loss Prevention (DLP) policies

## Data lifecycle management - Records Management

The following customer data will be stored at rest in the _Local Region Geography_:

- Record retention label definitions, file plan definitions, event-based retention policy settings, disposition review records and records of deletion

## Information Protection - Sensitivity labels

The following customer data will be stored at rest in the _Local Region Geography_:

- Label configuration
- Labels definition
- Label policies
- Custom help page
- Activity Explorer and Microsoft 365 unified audit logs
- Label change justification records

## Information Protection - Data Loss Prevention (DLP)

The following customer data will be stored at rest in the _Local Region Geography_:

- DLP admin configuration, DLP policies in Compliance Center, DLP monitored activities, violation history, Activity Explorer and Microsoft 365 unified audit logs, quarantine storage,  DLP Alerts and DLP Alert management dashboard

## Information Protection - Office Message Encryption

The following customer data will be stored at rest in the _Local Region Geography_:

- Encryption policies, admin settings and encrypted messages

## Insider Risk Management - Information Barriers

The following customer data will be stored at rest in the _Local Region Geography_:

- Policy settings, risk indicators and admin settings
