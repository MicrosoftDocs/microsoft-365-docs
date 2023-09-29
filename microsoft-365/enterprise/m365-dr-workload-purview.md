---
title: Data Residency for Microsoft Purview
description: Data Residency for Microsoft Purview
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Data Residency support for Microsoft Purview

This article lists the Data Residency commitments (available with the Advanced Data Residency add-on) for supported Microsoft Purview services and solutions.

The required conditions for the related commitments for the services described below are:

1. _Tenant_ has a sign up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_.
1. The Purview service Customer Data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

## Migration

Customer Data supporting Purview services is closely aligned with the Exchange Online and SharePoint Online services, and the bulk of the data migrated, if required to fulfill the data residency commitments for the Purview services, will be handled by those services. In the cases where supporting Customer Data is maintained in an Azure Service, for example, the migration of that data is tied to the migration of the underlying Exchange Online/SharePoint Online data.

## How can I determine Customer Data location?

We are in the process of updating the actual data location in _Tenant_ Admin Center.  When this change is complete you will be able to see the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.  Until that change is visible, you can view the Exchange Online data location information in order to understand where your committed data is stored for this service.

### Purview Audit (Standard)

#### Summary

Service documentation: [Microsoft Purview auditing solutions](/microsoft-365/compliance/auditing-solutions-overview)

Capability summary: Microsoft Purview Audit (Standard) provides you with the ability to log and search your data for audit activities and power your forensics, IT, and compliance efforts and legal investigations.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#purview-audit-standard) for the specific Customer Data at rest commitment for Purview Audit (Standard).

### Purview Audit (Premium)

#### Summary

Service documentation: [Microsoft Purview auditing solutions](/microsoft-365/compliance/auditing-solutions-overview)

Capability summary: Microsoft Purview Audit (Premium) builds on the capabilities of Audit (Standard) by providing audit log retention policies, longer retention of audit records, capability to identify high-value crucial events, and higher bandwidth access to the Office 365 Management Activity API.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#purview-audit-premium) for the specific Customer Data at rest commitment for Purview Audit (Premium).

### Data lifecycle management - Data Retention

#### Summary

ADR applies to the following services within Purview Data lifecycle management, Data Retention:

- Manual retention labels
- Basic org-wide or location-wide retention policies
- Rules-based automatic retention policies
- Machine Learning-based retention
- Teams message retention policies

Service documentation:  [Learn about retention policies & labels](/microsoft-365/compliance/retention)

For more detailed information about how retention settings work for different workloads, see the following articles:

- [Learn about retention for Exchange](/microsoft-365/compliance/retention-policies-exchange)
- [Learn about retention for SharePoint and OneDrive](/microsoft-365/compliance/retention-policies-sharepoint)
- [Learn about retention for Microsoft Teams](/microsoft-365/compliance/retention-policies-teams)

Capability summary: Lets you retain or delete content with policy management for email, documents, and Teams.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#data-lifecycle-management---data-retention) for the specific Customer Data at rest commitment for Data lifecycle management - Data Retention.

### Data lifecycle management - Records Management

#### Summary

Service documentation: [Learn about Microsoft Purview Records Management](/microsoft-365/compliance/records-management)

Capability summary: Organizations of all types require a records-management solution to manage regulatory, legal, and business-critical records across their corporate data. Records management for Microsoft Purview helps an organization manage their legal obligations, provides the ability to demonstrate compliance with regulations, and increases efficiency with regular disposition of items that are no longer required to be retained, no longer of value, or no longer required for business purposes.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#data-lifecycle-management---records-management) for the specific Customer Data at rest commitment for Data lifecycle management - Records Management.

### Information Protection - Sensitivity labels

#### Summary

ADR applies to the following services within Purview Information Protection, Sensitivity labels:

- Manual, default, and mandatory sensitivity labeling in Office 365
- Automatic sensitivity labeling in Office 365 apps
- Automatic sensitivity labels in Exchange, SharePoint, and OneDrive
- Sensitivity labels based on advanced classification
- Sensitivity labeling for containers in Office 365

Service documentation:

- [Learn about sensitivity labels](/microsoft-365/compliance/sensitivity-labels)
- [Get started with Activity explorer](/microsoft-365/compliance/data-classification-activity-explorer)

Capability summary: Sensitivity labels from Microsoft Purview Information Protection let you classify and protect your organization's data, while making sure that user productivity and their ability to collaborate isn't hindered.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#information-protection---sensitivity-labels) for the specificCustomer Data at rest commitment for Information Protection - Sensitivity labels.

### Information Protection - Data Loss Prevention (DLP)

#### Summary

ADR applies to the following services within Purview Information Protection, Data Loss Prevention (DLP):

- Office 365 Data Loss Prevention (DLP) for emails and files
- DLP for Teams chat

Service documentation: [Learn about data loss prevention](/microsoft-365/compliance/dlp-learn-about-dlp)

Capability summary:

Organizations have sensitive information under their control such as financial data, proprietary data, credit card numbers, health records, or social security numbers. To help protect this sensitive data and reduce risk, they need a way to prevent their users from inappropriately sharing it with people who shouldn't have it. This practice is called data loss prevention (DLP).

In Microsoft Purview, you implement data loss prevention by defining and applying DLP policies. With a DLP policy, you can identify, monitor, and automatically protect sensitive items across:

- Microsoft 365 services such as Teams, Exchange, SharePoint, and OneDrive
- Office applications such as Word, Excel, and PowerPoint
- Windows 10, Windows 11 and macOS (Catalina 10.15 and higher) endpoints
- non-Microsoft cloud apps
- on-premises file shares and on-premises SharePoint.

DLP detects sensitive items by using deep content analysis, not by just a simple text scan. Content is analyzed for primary data matches to keywords, by the evaluation of regular expressions, by internal function validation, and by secondary data matches that are in proximity to the primary data match. Beyond that DLP also uses machine learning algorithms and other methods to detect content that matches your DLP policies.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#information-protection---data-loss-prevention-dlp) for the specific Customer Data at rest commitment for Information Protection - Data Loss Prevention (DLP).

### Information Protection - Office Message Encryption

#### Summary

ADR applies to the following services within Purview Information Protection, Office Message Encryption:

- Basic Office Message Encryption
- Advanced Office Message Encryption

Service documentation: [Office 365 Message Encryption - Microsoft Purview](/microsoft-365/compliance/ome)

Capability summary: With Office 365 Message Encryption, your organization can send and receive encrypted email messages between people inside and outside your organization. Office 365 Message Encryption works with Outlook.com, Yahoo!, Gmail, and other email services. Email message encryption helps to ensure that only intended recipients can view message content.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#information-protection---office-message-encryption) for the specific Customer Data at rest commitment for Information Protection - Office Message Encryption.

### Risk and compliance - information barriers

#### Summary

Service documentation: [Learn about information barriers](/microsoft-365/compliance/information-barriers)

Capability summary: Microsoft Purview Information Barriers (IB) is a compliance solution that allows you to restrict two-way communication and collaboration between groups and users in Microsoft Teams, SharePoint, and OneDrive. Often used in highly regulated industries, IB can help to avoid conflicts of interest and safeguard internal information between users and organizational areas.

#### Data Residency commitments available

Commitment:

Please refer to the [ADR Commitment page](m365-dr-commitments.md#risk-and-compliance---information-barriers) for the specific Customer Data at rest commitment for IB.
