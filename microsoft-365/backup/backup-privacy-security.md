---
title: Privacy, security, and compliance in Microsoft 365 Backup
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 02/26/2025
ms.topic: article
ms.service: microsoft-365-backup
search.appverid: 
ms.collection: 
    - essentials-privacy
    - essentials-security
    - essentials-compliance
ms.localizationpriority:  medium
description: Learn about privacy, security, and compliance in Microsoft 365 Backup.
---

# Privacy, security, and compliance in Microsoft 365 Backup

Microsoft is transparent about the specific policies, operational practices, and technologies that help you ensure the privacy, security, and compliance of your data across Microsoft 365 Backup.

- Microsoft respects the privacy and ownership of data you use.

- None of your organization's data is used or transferred by Microsoft to train AI models, large-language models, or any other models.

- Your data remains securely within your organization’s tenant.

## Privacy

Privacy is built into all Microsoft 365 Backup experiences. Microsoft 365 Backup services adhere to the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and follow Microsoft's compliance with [General Data Protection Regulation](/compliance/regulatory/gdpr) and the [Microsoft EU Data Boundary](https://www.microsoft.com/trust-center/privacy/european-data-boundary-eudb).

Microsoft 365 Backup inherits privacy features and settings from Microsoft 365 and SharePoint, where applicable.

### GDPR compliance

Microsoft 365 Backup supports compliance with [General Data Protection Regulation](/compliance/regulatory/gdpr) (GDPR) requirements, except:

- GDPR workflows aren't directly executable on all data in Microsoft 365 Backup.

- GDPR data service request (DSR) data deletion actions operated on the tenant don't delete data in the backups. Those actions must be executed again after a Backup restoration to ensure the original DSR is honored.

- DSRs related to the discovery of data using eDiscovery are **not** possible for Exchange Online, OneDrive, or SharePoint backups.

### eDiscovery

Data in the Exchange Online backups isn't eDiscoverable via existing eDiscovery tooling.

Data in the OneDrive account and SharePoint site backups that aren't currently part of your live latest version data in your tenant aren't eDiscoverable. An eDiscovery search doesn't discover data that exists solely in the OneDrive or SharePoint backups.

### Retention policies

Retention and deletion policies don't "flow through" to the backups. This means that backup retention is governed solely by the backup policy. That policy currently has an invariable one-year retention period. Once data is restored from the backups, that now-live data will be governed by applicable retention or deletion policies.

### Sensitivity labels

Restoration of any data (such as sites or mailbox items) reverts the data's sensitivity labels to the state of that protected item at the prior point from which it's being restored. That is, the state of labeling at the point in time from which the content is being restored; in other words, the state reverts to the prior point in time.

### Data residency

Data residency refers to the geographic location where data is stored at rest. The way that data is transferred and stored in Microsoft 365 Backup is defined in the [Microsoft Products and Services Data Protection Addendum](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) (DPA).

All data within Microsoft 365 Backup is stored within the customer tenant for any given service and follows the standard Microsoft 365 data storage guidelines by available geography. The metadata used for billing purposes is sent to Azure and includes: entitlement_id, event_id, usage_date_time, metered_resource_id, quantity, resourceUri, location, tags.isinternaltenant, tags.protectionunitid, tags.servicetype, tags.tenants, tags.applications, and azure_cloud.

## Security

Microsoft 365 Backup works with and integrates into Microsoft 365. This means that the Microsoft 365 security capabilities—such as identity and app management—apply to Microsoft 365 Backup.

## Compliance

Microsoft offers a [comprehensive set of compliance offerings](/compliance) to help your organization comply with national, regional, and industry-specific requirements governing the collection and use and data.

Microsoft 365 Backup is a Microsoft 365 service built on the same underlying infrastructure and follows the same compliance standards. Microsoft 365 Backup is covered by any or all of the standards (for example, ISO and SCO) and certifications listed on the [Service Trust Portal](https://servicetrust.microsoft.com/).

Microsoft 365 Backup directly supports the Digital Operational Resilience Act's (DORA) business continuity and recovery provisions, enhancing your organization’s overall operational resilience by enabling regulated entities to develop resilient operations and recover quickly from disruptions.

> [!IMPORTANT]
> Given that compliance tooling actions might destroy primary data, we administratively isolate those destructive actions from flowing through to backed up data automatically. In other words, **compliance actions that automatically delete your primary data will not automatically delete data from your backups**.

The core purpose of the backup and restore service is to provide you with a way to recover from common data deletion, overwrite, or encryption events.

### Compliance resources

Microsoft offers a [comprehensive set of compliance offerings](/compliance) to help your organization comply with national, regional, and industry-specific requirements governing the collection and use and data.

Microsoft 365 Backup is also covered under the [Microsoft Product Terms](https://www.microsoft.com/licensing/docs/view/Product-Terms) and [Data Protection Agreement](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA?year=2021#:%7E:text=Microsoft%20Products%20and%20Services%20Data%20Protection%20Addendum%20%28DPA%29,to%20the%20Product%20Terms%20site%20%28and%20formerly%20OST%29) (DPA). Learn more on the [Microsoft Trust Center](https://www.microsoft.com/trustcenter).

For more detailed information, see the following resources:

- **Microsoft 365** – [Quick tasks for getting started with compliance in Microsoft Purview](/purview/compliance-quick-tasks)

- **Microsoft 365 Copilot** – [Data, privacy, and security for Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-privacy)

- **Microsoft SharePoint** – [Plan compliance requirements for SharePoint and OneDrive](/SharePoint/compliant-environment)

- **Microsoft Graph** – [Use the Microsoft Graph compliance and privacy APIs](/graph/api/resources/complianceapioverview)

- **Microsoft Entra ID** – [Microsoft Entra security baseline for Microsoft Entra ID](/security/benchmark/azure/baselines/aad-security-baseline)

- **Azure** – [Azure, Dynamics 365, Microsoft 365, and Power Platform compliance offerings](/azure/compliance/offerings/)
