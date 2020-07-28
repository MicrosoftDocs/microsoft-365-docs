---
title: "Protect information using Microsoft 365"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: a6ef28a4-2447-4b43-aae2-f5af6d53c68e
description: "Identify the Microsoft 365 capabilities and supporting documentation to help you protect your organization's important data."
---

# Protect information using Microsoft 365

>*[Licensing for Microsoft 365 Security & Compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)*

Discovering and managing data is challenging. Use Microsoft Information Protection capabilities to help discover, classify, and protect sensitive information wherever it lives or travels.

## Know your data

To understand your data landscape and identify important data across your hybrid environment, use the following capabilities:
 
|Capability|What problems does it solve?|Documentation|
|:------|:------------|:--------------------|:-----------------------------|
|[Trainable classifers](classifier-creating-a-trainable-classifier.md)| Classifies data for you, using one of the built-in classifiers or train a classifer with your own content | [Getting started with trainable classifiers (preview)](classifier-creating-a-trainable-classifier.md) |
|[Sensitive information types](what-the-sensitive-information-types-look-for.md)| Identifies sensitive data by using built-in or custom regular expressions or a function, together with corroborative evidence that includes keywords, confidence levels, and proximity.| Get started with sensitive information types|
|[Content explorer](data-classification-content-explorer.md) | Identifies items that have a sensitivity label, a retention label, or have been classified as a sensitive information type in your organization  | Get started with content explorer |
|[Activity explorer](data-classification-activity-explorer.md) |Identifies what's being done with your labeled content | Get started with activity explorer |

## Protect your data

To apply flexible protection actions including encryption, access restrictions, and visual markings, use the following capabilities:

|Capability|What problems does it solve?|Documentation|
|:------|:------------|---------------------|:----------------------------|
|[Sensitivity labels](sensitivity-labels.md)| A single solution across apps, services, and devices to label and protect your data as it travels inside and outside your organization|[ Get started with sensitivity labels](get-started-with-sensitivity-labels.md) |
|[Azure Information Protection unified labeling client](https://docs.microsoft.com/azure/information-protection/rms-client/aip-clientv2)| For Windows computers, extends sensitivity labels for additional features and functionality that includes labeling and protecting files from File Explorer and PowerShell, in addition to labeling in Office apps.| [Azure Information Protection unified labeling client administrator guide](https://docs.microsoft.com/azure/information-protection/rms-client/clientv2-admin-guide)|
|[Office 365 Message Encryption](ome.md) (OME)| Encrypts email messages and attached documents that are sent to any user on any device, so only authorized recipients can read emailed information | [Get started with Office 365 Message Encryption](set-up-new-message-encryption-capabilities.md)|
|[Service encryption with Customer Key](customer-key-overview.md) | Protects against viewing of data by unauthorized systems or personnel, and complements BitLocker disk encryption in Microsoft datacenters | [Set up Customer Key for Office 365](customer-key-set-up.md)|
|[Azure Information Protection scanner](https://docs.microsoft.com/azure/information-protection/deploy-aip-scanner#overview-of-the-azure-information-protection-scanner)| Labels and protects sensitive information that resides in data stores that are on premises | [Deploying the Azure Information Protection scanner to automatically classify and protect files](https://docs.microsoft.com/azure/information-protection/deploy-aip-scanner)|
|[Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)| Labels and protects sensitive information that resides in data stores that are in the cloud | [Discover, classify, label, and protect regulated and sensitive data stored in the cloud](https://docs.microsoft.com/cloud-app-security/best-practices#discover-classify-label-and-protect-regulated-and-sensitive-data-stored-in-the-cloud)|

## Prevent data loss

To detect risky behavior and prevent accidental oversharing of sensitive information, use the following capabilities:


|Capability|What problems does it solve?|Documentation|
|:------|:------------|:---------------------|:-----------------------------|
|[Data loss prevention](data-loss-prevention-policies.md) (DLP)| Prevents data leaking from your organization's boundaries | [Get started with DLP policy recommendations](get-started-with-dlp-policy-recommendations.md) <br /><br /> [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)|
|[Endpoint protection](endpoint-dlp-learn-about.md)| Help prevents risky behavior that might compromise sensitive items that are used and shared on Windows 10 computers. | [Get started with Endpoint data loss prevention (preview)](endpoint-dlp-getting-started.md)|
